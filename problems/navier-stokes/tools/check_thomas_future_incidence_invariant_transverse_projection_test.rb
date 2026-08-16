#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFutureIncidenceInvariantTransverseProjectionTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-future-incidence-invariant-transverse-projection-gramian-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_both_slots_retain_the_full_incidence_after_tangent_projection
    energy_direction = [1.0, 0.4, -0.2, 0.3, 0.1]
    helicity_direction = [-0.1, 0.7, 0.5, -0.4, 0.2]
    source = orthogonalize(
      [0.6, -0.3, 0.8, 0.2, -0.5],
      [energy_direction, helicity_direction]
    )
    receivers = [
      [2.0, -1.0, 0.7, 1.3, -0.4],
      [-0.8, 1.5, 0.2, -1.1, 0.9]
    ]

    assert_in_delta 0.0, dot(source, energy_direction), TOL
    assert_in_delta 0.0, dot(source, helicity_direction), TOL

    receivers.each do |receiver|
      tangent = project(receiver, [energy_direction, helicity_direction])
      transverse = subtract(receiver, tangent)

      assert_in_delta dot(source, receiver), dot(source, transverse), TOL
      assert_in_delta 0.0, dot(transverse, energy_direction), TOL
      assert_in_delta 0.0, dot(transverse, helicity_direction), TOL
      assert_in_delta(
        dot(receiver, receiver) - dot(tangent, tangent),
        dot(transverse, transverse),
        TOL
      )
    end

    assert_includes text, "\\qquad \\ell=1,2"
    assert_includes text, "No high-pass tangency is asserted or needed"
    assert_includes text, "slot\nreceivers coincide"
    assert_includes text, "does not\ncreate two independent observability resources"
    assert_includes text, "R(r):=\\|a(r)\\|_2^2"
  end

  def test_vanishing_full_source_mass_forces_transverse_observability_divergence
    records = 7.times.map { |index| 4.0**(index + 1) }
    source_masses = 7.times.map { |index| 0.4 * 2.0**(-index) }
    lower_bounds = records.zip(source_masses).map do |record, mass|
      record / (64.0 * mass)
    end

    lower_bounds.each_cons(2) do |left, right|
      assert_operator right, :>, left
    end
    assert_operator lower_bounds.last, :>, 10_000.0 * lower_bounds.first
    assert_includes text, "absolute continuity of the integral"
    assert_includes text, "{A_n\\over64\\mu_n}"
    assert_includes text, "invariant-transverse in each ordered slot"
  end

  def test_rank_at_most_one_quotient_gramian_is_positive_and_has_receiver_norm_square
    transverse_receiver = [0.7, -1.2, 0.4, 0.9]
    gramian = outer(transverse_receiver, transverse_receiver)
    probes = [
      [1.0, 0.0, 0.0, 0.0],
      [0.3, -0.5, 1.1, 0.2],
      [-0.8, 0.4, -0.2, 1.3]
    ]

    probes.each do |probe|
      quadratic = dot(probe, matrix_vector(gramian, probe))
      assert_operator quadratic, :>=, -TOL
      assert_in_delta dot(probe, transverse_receiver)**2, quadratic, TOL
    end

    eigenvector = scale(
      1.0 / Math.sqrt(dot(transverse_receiver, transverse_receiver)),
      transverse_receiver
    )
    operator_read = dot(eigenvector, matrix_vector(gramian, eigenvector))
    assert_in_delta dot(transverse_receiver, transverse_receiver), operator_read, TOL
    assert_includes text, "anti-causal quotient observability"
    assert_includes text, "rank-at-most-one Gramian"
    assert_includes text, "not\ngrowth of a datum-computable physical stock"
  end

  def test_first_binomial_tangent_frame_cancels_for_two_receivers_and_two_edges
    q = [0.0, 0.0, 1.3, -0.6]
    u = [1.0, 0.0, 0.0, 0.0]
    omega = [0.0, 1.0, 0.0, 0.0]
    dminus_u = [0.4, -0.2, 0.7, 0.1]
    dminus_omega = [-0.3, 0.5, -0.4, 0.9]

    # These first-row tangent components are exactly the differentiated
    # energy/helicity tangencies in FIP.28.
    q_one = [
      -dot(q, dminus_u),
      -dot(q, dminus_omega),
      0.8,
      -0.35
    ]

    slots = [
      {
        receiver: [0.7, -1.1, 0.5, 1.4],
        old_edge: [0.2, 0.1, -0.6, 0.8],
        young_edge: [-0.4, 0.3, 0.2, -0.1],
        alpha: 0.45,
        beta: -0.7,
        alpha_prime: 0.9,
        beta_prime: -0.25
      },
      {
        receiver: [-0.5, 0.8, 1.2, -0.9],
        old_edge: [0.6, -0.2, 0.4, 0.3],
        young_edge: [0.1, 0.5, -0.7, 0.2],
        alpha: -0.3,
        beta: 0.55,
        alpha_prime: -0.4,
        beta_prime: 0.75
      }
    ]

    assert_in_delta 0.0, dot(q, u), TOL
    assert_in_delta 0.0, dot(q, omega), TOL
    assert_in_delta 0.0, dot(q_one, u) + dot(q, dminus_u), TOL
    assert_in_delta 0.0, dot(q_one, omega) + dot(q, dminus_omega), TOL

    slots.each do |slot|
      edge_difference = subtract(slot[:old_edge], slot[:young_edge])
      transverse_receiver = subtract(
        subtract(slot[:receiver], scale(slot[:alpha], u)),
        scale(slot[:beta], omega)
      )
      dminus_transverse = subtract(
        subtract(
          subtract(
            subtract(edge_difference, scale(slot[:alpha_prime], u)),
            scale(slot[:beta_prime], omega)
          ),
          scale(slot[:alpha], dminus_u)
        ),
        scale(slot[:beta], dminus_omega)
      )

      projected_derivative =
        dot(q_one, transverse_receiver) + dot(q, dminus_transverse)
      unprojected_derivative =
        dot(q_one, slot[:receiver]) + dot(q, edge_difference)

      assert_in_delta unprojected_derivative, projected_derivative, TOL
    end

    assert_includes text, "both ordered nonlinear insertions"
    assert_includes text, "E_{n,\\tau}^{(\\ell)}-E_{n,\\delta}^{(\\ell)}"
    assert_includes text, "produces no restoring term"
    assert_includes text, "distributional derivative is zero"
  end

  def test_complete_finite_depth_tangent_tower_is_zero
    # A rotating two-vector with scalar A checks the nontrivial D_+/D_-
    # product binomial.  It is the algebra in FIP.32; the pressure-complete
    # meaning of Q^[j] stays fixed by FIP.21 and SAP.37.
    viscosity = 0.43
    eigenvalue = 1.7
    time = 0.37
    source = [Math.cos(time), Math.sin(time)]
    tangent = [-Math.sin(time), Math.cos(time)]
    rotation = [[0.0, -1.0], [1.0, 0.0]]
    identity = [[1.0, 0.0], [0.0, 1.0]]
    dplus = matrix_add(rotation, matrix_scale(viscosity * eigenvalue, identity))
    dminus = matrix_add(rotation, matrix_scale(-viscosity * eigenvalue, identity))

    assert_in_delta 0.0, dot(source, tangent), TOL

    (0..4).each do |depth|
      sum = (0..depth).sum do |row|
        source_row = apply_power(dplus, row, source)
        tangent_row = apply_power(dminus, depth - row, tangent)
        binomial(depth, row) * dot(source_row, tangent_row)
      end
      assert_in_delta 0.0, sum, TOL
    end

    assert_includes text, "exact zero binomial telescope"
    assert_includes text, "This is `(SAP.38)` itself"
    assert_includes text, "\\(\\tau_n\\)-edge"
    assert_includes text, "\\(\\delta_n\\)-edge"
  end

  def test_note_preserves_thomas_custody_and_honest_boundary
    assert_includes text, "one continuing fixed-viscosity fluid history"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced stretched vortex"
    assert_includes text, "perfectly balanced rip-cord"
    assert_includes text, "all six output/input assignments"
    assert_includes text, "both ordered\ninput slots"
    assert_includes text, "edge/interior fork"
    assert_includes text, "same one-fluid history"
    assert_includes text, "does not prove `(TIR.37a)`"
    assert_includes text, "does not prove `(TIR.37a)` or MPP\nclosure"
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
    %w[FIP.7 FIP.15 FIP.21 FIP.30 FIP.32 FIP.33 FIP.35 FIP.36].each do |label|
      assert_includes text, label
    end
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def add(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def subtract(left, right)
    left.zip(right).map { |a, b| a - b }
  end

  def scale(coefficient, vector)
    vector.map { |value| coefficient * value }
  end

  def orthogonalize(vector, directions)
    directions.reduce(vector) do |residual, direction|
      subtract(
        residual,
        scale(dot(residual, direction) / dot(direction, direction), direction)
      )
    end.then do |residual|
      # The two supplied directions are not orthogonal; solve the actual Gram
      # projection once more rather than treating sequential subtraction as
      # the final projection.
      subtract(vector, project(vector, directions))
    end
  end

  def project(vector, directions)
    first, second = directions
    g11 = dot(first, first)
    g12 = dot(first, second)
    g22 = dot(second, second)
    z1 = dot(vector, first)
    z2 = dot(vector, second)
    determinant = g11 * g22 - g12 * g12
    alpha = (g22 * z1 - g12 * z2) / determinant
    beta = (g11 * z2 - g12 * z1) / determinant
    add(scale(alpha, first), scale(beta, second))
  end

  def outer(left, right)
    left.map { |a| right.map { |b| a * b } }
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def matrix_add(left, right)
    left.zip(right).map do |left_row, right_row|
      left_row.zip(right_row).map { |a, b| a + b }
    end
  end

  def matrix_scale(coefficient, matrix)
    matrix.map { |row| row.map { |value| coefficient * value } }
  end

  def apply_power(matrix, exponent, vector)
    exponent.times.reduce(vector) do |result, _index|
      matrix_vector(matrix, result)
    end
  end

  def binomial(n, k)
    return 1 if k.zero? || k == n

    (1..k).reduce(1) { |value, index| value * (n - index + 1) / index }
  end
end
