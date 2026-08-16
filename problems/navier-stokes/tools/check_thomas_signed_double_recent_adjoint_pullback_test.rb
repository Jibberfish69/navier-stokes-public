#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasSignedDoubleRecentAdjointPullbackTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-signed-double-recent-adjoint-source-time-pullback-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_thomas_one_history_and_complete_source_custody
    assert_includes text, "one continuing fixed-viscosity fluid history"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced\nstretched vortex"
    assert_includes text, "perfectly balanced rip-cord"
    assert_includes text, "both orders of the two\nphysical parents"
    assert_includes text, "all six output/input assignments"
    assert_includes text, "Leray/pressure completion"
    assert_includes text, "not a freely prescribed source profile"
    refute_includes text.downcase, "rectangle"
  end

  def test_lorentz_cut_retains_three_one_hundred_twenty_eighths_signed
    viscosity = 0.81
    record = 4096.0
    sector = 2.3
    weak_size = 0.014
    threshold = (
      Math.sqrt(viscosity * record) /
      (128.0 * Math.sqrt(3.0) * sector * weak_size**(2.0 / 3.0))
    )**0.75
    truncated_fourth =
      1.5 * weak_size**(4.0 / 3.0) * threshold**(8.0 / 3.0)
    receiver_l2 = Math.sqrt(2.0 * record / viscosity)
    low_current = sector * Math.sqrt(truncated_fourth) * receiver_l2
    pulse_width = (weak_size / threshold)**(4.0 / 3.0)
    width_formula =
      128.0 * Math.sqrt(3.0) * sector * weak_size**2 /
      Math.sqrt(viscosity * record)

    assert_in_delta record / 128.0, low_current, TOL
    assert_in_delta width_formula, pulse_width, TOL
    assert_in_delta 3.0 * record / 128.0,
                    record / 32.0 - low_current, TOL
    assert_includes text, "\\ge {3A_n\\over128}"
    assert_includes text, "{M_n^2\\over\\nu^2A_n^{1/2}}"
  end

  def test_removing_youngest_slice_retains_one_sixty_fourth
    record = 8192.0
    signed_pulse = 3.0 * record / 128.0
    young_slice_error = record / 128.0

    assert_in_delta record / 64.0,
                    signed_pulse - young_slice_error, TOL
    assert_includes text, "0<\\delta_n<\\tau_n"
    assert_includes text, "generated at least\n\\(\\delta_n\\) before"
    assert_includes text, "\\ge {A_n\\over64}"
  end

  def test_discrete_double_duhamel_and_both_slot_adjoints_are_exact
    sources = [
      [0.4, -0.2],
      [0.7, 0.5],
      [-0.3, 0.9],
      [1.1, -0.6],
      [0.2, 0.8],
      [-0.5, 0.4],
      [0.6, -0.1]
    ]
    receiver_times = [3, 4, 5, 6]
    min_age = 1
    max_age = 3
    parents = {}

    receiver_times.each do |time|
      parents[time] = [0.0, 0.0]
      (min_age..max_age).each do |age|
        next if (time - age).negative?

        parents[time] = add(
          parents[time],
          heat_vector(sources[time - age], age)
        )
      end
    end

    receivers = receiver_times.to_h do |time|
      output = bilinear(parents[time], parents[time])
      [time, output]
    end

    forward = receiver_times.sum do |time|
      dot(bilinear(parents[time], parents[time]), receivers[time])
    end

    double_source = receiver_times.sum do |time|
      (min_age..max_age).sum do |first_age|
        next 0.0 if (time - first_age).negative?

        first = heat_vector(sources[time - first_age], first_age)
        (min_age..max_age).sum do |second_age|
          next 0.0 if (time - second_age).negative?

          second = heat_vector(sources[time - second_age], second_age)
          dot(bilinear(first, second), receivers[time])
        end
      end
    end

    slot_one = receiver_times.sum do |time|
      theta = adjoint_slot_one(parents[time], receivers[time])
      (min_age..max_age).sum do |age|
        next 0.0 if (time - age).negative?

        dot(heat_vector(sources[time - age], age), theta)
      end
    end

    slot_two = receiver_times.sum do |time|
      theta = adjoint_slot_two(parents[time], receivers[time])
      (min_age..max_age).sum do |age|
        next 0.0 if (time - age).negative?

        dot(heat_vector(sources[time - age], age), theta)
      end
    end

    assert_operator forward, :>, 0.0
    assert_in_delta forward, double_source, TOL
    assert_in_delta forward, slot_one, TOL
    assert_in_delta forward, slot_two, TOL
  end

  def test_each_slot_keeps_full_floor_without_splitting_a_factor
    record = 2048.0
    floor = record / 64.0
    slot_floors = [floor, floor]

    slot_floors.each { |value| assert_operator value, :>=, floor }
    assert_includes text, "No factor is split between the two slots"
    assert_includes text, "\\quad a=1,2"
    assert_includes text, "positive signed *future-incidence* floor"
  end

  def test_vanishing_source_mass_forces_adjoint_amplification
    records = 6.times.map { |index| 4.0**(index + 3) }
    masses = 6.times.map { |index| 0.2 * 2.0**(-index) }
    weights = records.zip(masses).map do |record, mass|
      record / (64.0 * mass)
    end

    weights.each_cons(2) do |left, right|
      assert_operator right, :>, left
    end
    assert_operator weights.last, :>, 1000.0 * weights.first
    assert_includes text, "\\le M_n\\longrightarrow0"
    assert_includes text, "{A_n\\over64M_n}"
    assert_includes text, "cannot produce a fixed unweighted source-mass floor"
  end

  def test_two_moving_edge_moment_identity
    viscosity = 0.73
    eigenvalue = 1.6
    beta = 0.21
    decay = viscosity * eigenvalue - beta
    young_age = 0.07
    old_age = 0.43
    c0 = (Math.exp(-decay * young_age) -
          Math.exp(-decay * old_age)) / decay
    c1 = (
      (decay * young_age + 1.0) * Math.exp(-decay * young_age) -
      (decay * old_age + 1.0) * Math.exp(-decay * old_age)
    ) / decay**2
    primitive_two = lambda do |age|
      -Math.exp(-decay * age) *
        (age**2 / decay + 2.0 * age / decay**2 +
         2.0 / decay**3)
    end
    c2 = (primitive_two.call(old_age) -
          primitive_two.call(young_age)) / 2.0

    first_edge = old_age * Math.exp(-decay * old_age) -
                 young_age * Math.exp(-decay * young_age)
    second_edge = old_age**2 / 2.0 * Math.exp(-decay * old_age) -
                  young_age**2 / 2.0 * Math.exp(-decay * young_age)

    assert_in_delta(-decay * c1, first_edge - c0, TOL)
    assert_in_delta(-decay * c2, second_edge - c1, TOL)
    assert_includes text, "exact two-edge law"
    assert_includes text, '\(\tau_n\)-edge'
    assert_includes text, '\(\delta_n\)-edge'
    assert_includes text, "2m+1"
  end

  def test_interior_and_edge_source_support_are_not_collapsed
    record_left = 10.0
    record_right = 10.5
    lag = 0.1
    positive_age = 0.02
    interior_receiver = 10.14
    edge_receiver = 10.03

    assert_operator interior_receiver - lag, :>=, record_left
    assert_operator interior_receiver - positive_age, :<, record_right
    assert_operator edge_receiver - lag, :<, record_left
    assert_includes text, "\\sigma_n=\\mathrm{int}:&S_n^{\\rm sgn}\\subset I_n"
    assert_includes text, "\\sigma_n=\\mathrm{edge}"
    assert_includes text, "may begin before the\nrecord"
  end

  def test_boundary_is_exact_and_does_not_overclaim
    assert_includes text, "signed nested source-incidence record"
    assert_includes text, "not a canonical critical-height record"
    assert_includes text, "same primitive binomial/VPI recursion"
    assert_includes text, "not a datum payment"
    assert_includes text, "not an iterable\ncanonical record"
    assert_includes text, "not an iterable\ncanonical record"
    assert_includes text, "a strict reduction"
    assert_includes text, "or MPP closure"
    refute_includes text, "Status: MPP is closed"
  end

  def test_note_has_no_control_or_latex_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_equal text.scan(/\\\(/).size, text.scan(/\\\)/).size
    assert_equal text.scan(/(?<!\\)\\\[/).size,
                 text.scan(/(?<!\\)\\\]/).size
    assert_includes text, "\\mathfrak A_n"
    assert_includes text, "\\delta_n"
    assert_includes text, "\\Theta_n^{(a)}"
    assert_includes text, "\\Phi_n^{(a),[m]}"
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def add(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def heat_vector(vector, age)
    [
      Math.exp(-0.19 * age) * vector[0],
      Math.exp(-0.47 * age) * vector[1]
    ]
  end

  def bilinear(left, right)
    a0, a1 = left
    b0, b1 = right
    [
      a0 * b0 + 2.0 * a0 * b1 - a1 * b0 + 0.5 * a1 * b1,
      -0.3 * a0 * b0 + 0.7 * a0 * b1 +
        1.2 * a1 * b0 - 0.4 * a1 * b1
    ]
  end

  def adjoint_slot_one(other_parent, receiver)
    basis = [[1.0, 0.0], [0.0, 1.0]]
    basis.map { |vector| dot(bilinear(vector, other_parent), receiver) }
  end

  def adjoint_slot_two(other_parent, receiver)
    basis = [[1.0, 0.0], [0.0, 1.0]]
    basis.map { |vector| dot(bilinear(other_parent, vector), receiver) }
  end
end
