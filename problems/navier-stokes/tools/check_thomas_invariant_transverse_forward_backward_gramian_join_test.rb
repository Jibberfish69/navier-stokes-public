#!/usr/bin/env ruby
# frozen_string_literal: true

require "matrix"
require "minitest/autorun"

class ThomasInvariantTransverseForwardBackwardGramianJoinTest < Minitest::Test
  TOL = 1.0e-9
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-invariant-transverse-future-incidence-forward-backward-" \
    "gramian-join-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def generator
    Matrix[[-1.0, 2.0], [0.0, -3.0]]
  end

  def flow(time)
    Matrix[
      [Math.exp(-time), Math.exp(-time) - Math.exp(-3.0 * time)],
      [0.0, Math.exp(-3.0 * time)]
    ]
  end

  def receiver(time)
    Matrix.column_vector([1.0 + time, 2.0 - time**2])
  end

  def receiver_derivative(time)
    Matrix.column_vector([1.0, -2.0 * time])
  end

  def outer(left, right)
    left * right.transpose
  end

  def quadratic(vector, operator)
    (vector.transpose * operator * vector)[0, 0]
  end

  def simpson_scalar(left, right, intervals)
    raise ArgumentError, "interval count must be even" unless intervals.even?

    step = (right - left) / intervals.to_f
    sum = yield(left) + yield(right)
    (1...intervals).each do |index|
      weight = index.odd? ? 4.0 : 2.0
      sum += weight * yield(left + index * step)
    end
    sum * step / 3.0
  end

  def simpson_matrix(left, right, intervals)
    raise ArgumentError, "interval count must be even" unless intervals.even?

    step = (right - left) / intervals.to_f
    sum = yield(left) + yield(right)
    (1...intervals).each do |index|
      weight = index.odd? ? 4.0 : 2.0
      sum += yield(left + index * step) * weight
    end
    sum * (step / 3.0)
  end

  def test_point_gramian_defect_is_the_exact_forward_backward_cross_term
    time = 0.37
    zeta = receiver(time)
    zeta_prime = receiver_derivative(time)
    eta = zeta_prime + generator.transpose * zeta
    gramian_prime = outer(zeta_prime, zeta) + outer(zeta, zeta_prime)
    gramian = outer(zeta, zeta)

    left = gramian_prime + generator.transpose * gramian + gramian * generator
    right = outer(eta, zeta) + outer(zeta, eta)

    left.to_a.flatten.zip(right.to_a.flatten).each do |actual, expected|
      assert_in_delta expected, actual, TOL
    end

    initial_parent = Matrix.column_vector([0.4, -0.7])
    parent = flow(time) * initial_parent
    parent_prime = generator * parent
    incidence = (parent.transpose * zeta)[0, 0]
    incidence_prime =
      (parent_prime.transpose * zeta)[0, 0] +
      (parent.transpose * zeta_prime)[0, 0]

    assert_in_delta((parent.transpose * eta)[0, 0], incidence_prime, TOL)
    assert_in_delta incidence**2, quadratic(parent, gramian), TOL
    assert_includes text, '\eta_n^{(\ell)}\otimes\zeta_n^{(\ell)}'
    assert_includes text, 'E_{n,\tau}^{(\ell)}-E_{n,\delta}^{(\ell)}'
  end

  def test_backward_pullback_gramian_equals_squared_actual_incidence
    horizon = 0.61
    initial_parent = Matrix.column_vector([0.4, -0.7])

    gramian = simpson_matrix(0.0, horizon, 20_000) do |time|
      propagator = flow(time)
      zeta = receiver(time)
      propagator.transpose * outer(zeta, zeta) * propagator
    end

    squared_incidence = simpson_scalar(0.0, horizon, 20_000) do |time|
      parent = flow(time) * initial_parent
      ((parent.transpose * receiver(time))[0, 0])**2
    end

    assert_in_delta squared_incidence,
                    quadratic(initial_parent, gramian), TOL
    assert_operator quadratic(initial_parent, gramian), :>, 0.0
    assert_includes text, '{A_n^2\over4096|S_n^{\rm sgn}|}'
    assert_includes text, '\mathfrak o_n^{(\ell)}[F(a_n)]'
    assert_includes text, 'finite-cutoff/form-domain Gramian representation'
    refute_includes text, '\|\mathsf O_n^{(\ell)}(a_n)\|_{\rm op}'
  end

  def test_one_sixty_fourth_signed_floor_gives_exact_4096_square_constant
    record = 8192.0
    width = 0.03125
    constant_incidence = record / (64.0 * width)
    signed_integral = width * constant_incidence
    square_action = width * constant_incidence**2
    cauchy_floor = record**2 / (4096.0 * width)

    assert_in_delta record / 64.0, signed_integral, TOL
    assert_in_delta cauchy_floor, square_action, TOL
  end

  def test_formal_forward_storage_loses_exactly_the_backward_gramian_value
    horizon = 0.61
    initial_parent = Matrix.column_vector([0.4, -0.7])
    initial_metric = Matrix[[2.0, 0.3], [0.3, 1.4]]

    observation_action = simpson_matrix(0.0, horizon, 20_000) do |time|
      propagator = flow(time)
      zeta = receiver(time)
      propagator.transpose * outer(zeta, zeta) * propagator
    end

    terminal_flow = flow(horizon)
    inverse_flow = terminal_flow.inverse
    terminal_metric =
      inverse_flow.transpose * (initial_metric - observation_action) * inverse_flow
    terminal_parent = terminal_flow * initial_parent

    expected = quadratic(initial_parent, initial_metric - observation_action)
    actual = quadratic(terminal_parent, terminal_metric)
    assert_in_delta expected, actual, TOL
    assert_in_delta(
      quadratic(initial_parent, initial_metric) -
        quadratic(initial_parent, observation_action),
      actual,
      TOL
    )

    assert_includes text, "forward only in the direction of integration"
    assert_includes text, "not a datum-computable causal law"
    assert_includes text, "merely stores the future action"
  end

  def test_symmetric_formal_slots_have_no_factor_two
    record = 4096.0
    each_slot = [record / 64.0, record / 64.0]

    each_slot.each do |incidence|
      assert_in_delta record / 64.0, incidence, TOL
    end
    refute_in_delta record / 32.0, each_slot.first, TOL
    assert_includes text, '\Phi_n^{(1)}=\Phi_n^{(2)}'
    assert_includes text, 'not \(A_n/32\) from a fictitious double count'
    assert_includes text, "with no factor two after the symmetric join"
  end

  def test_disjoint_normalized_pulses_only_spend_datum_paid_source_mass
    source_masses = [0.08, 0.03, 0.011, 0.004]
    directional_incidences = [0.7, -0.4, 0.9, -0.2].zip(source_masses).map do |direction, mass|
      direction.abs * mass
    end
    future_amplitudes = [100.0, 1_000.0, 10_000.0, 1_000_000.0]
    weighted = directional_incidences.zip(future_amplitudes).map do |incidence, amplitude|
      incidence * amplitude
    end

    assert_operator directional_incidences.sum, :<=, source_masses.sum
    weighted.each_cons(2) do |left, right|
      assert_operator right, :>, left
    end
    assert_includes text, "indexes a pairwise-disjoint subfamily of the source"
    assert_includes text, '\sum_{n\in\mathcal I}\int_{S_n^{\rm sgn}}'
    assert_includes text, '\mu_n\longrightarrow0'
    assert_includes text, "divergent future receiver amplitude"
  end

  def test_form_domain_and_finite_depth_qualifications_are_explicit
    assert_includes text, 'unbounded on the energy-controlled'
    assert_includes text, '(UPG.22)--(UPG.24)'
    assert_includes text, '\operatorname{rank}\mathcal N(r)=\operatorname{rank}\Pi_r'
    assert_includes text, 'integrated Gramian in `(IFG.25)` generally need not have rank one'
    assert_includes text, "At least one of the \\(2m+1\\) signed terms is at\nleast"
    assert_includes text, "No bounded\ncontinuum parent-space Gramian has been proved"
  end

  def test_note_preserves_exact_theory_and_honest_boundary
    assert_includes text, "one continuing fixed-viscosity fluid history"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced\nstretched vortex"
    assert_includes text, "perfectly balanced rip-cord"
    assert_includes text, "primitive pressure-explicit rows"
    assert_includes text, "two ordered parent insertions"
    assert_includes text, "Leray/pressure completion"
    assert_includes text, 'oldest \(\tau_n\)-edge'
    assert_includes text, 'youngest \(\delta_n\)-edge'
    assert_includes text, "not a strict reduction"
    assert_includes text, "not MPP closure"
    refute_includes text.downcase, "rectangle"
    refute_includes text, "Status: MPP is closed"
  end

  def test_note_has_no_control_or_latex_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_equal text.scan(/\\\(/).size, text.scan(/\\\)/).size
    assert_equal text.scan(/(?<!\\)\\\[/).size,
                 text.scan(/(?<!\\)\\\]/).size
    %w[IFG.4 IFG.13 IFG.20 IFG.22 IFG.27a IFG.28 IFG.30 IFG.33 IFG.41 IFG.43].each do |label|
      assert_includes text, label
    end
  end
end
