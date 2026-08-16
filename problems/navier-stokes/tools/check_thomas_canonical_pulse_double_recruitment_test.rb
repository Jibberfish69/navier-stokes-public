#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasCanonicalPulseDoubleRecruitmentTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-canonical-pulse-double-recruited-parent-synchronization-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_keeps_one_fluid_pressure_complete_parent_custody
    assert_includes text, "one smooth datum \\(u_0\\)"
    assert_includes text, "one fixed viscosity \\(\\nu>0\\)"
    assert_includes text, "not two fluids"
    assert_includes text, "\\mathcal B(a,b):=\\mathbb P((a\\cdot\\nabla)b)"
    assert_includes text, "Q_{\\rm ic}+Q_{\\rm rr}"
    assert_includes text, "both ordered parents"
    assert_includes text, "Full modal recombination"
    refute_includes text.downcase, "rectangle"
  end

  def test_pulse_signed_current_localizes_source_square
    nu = 0.7
    record = 256.0
    initial_height = 3.0
    signed_pulse = record / 8.0
    receiver_action = (record + initial_height) / nu

    localized_square = signed_pulse**2 / receiver_action
    exact = nu * record**2 / (64.0 * (record + initial_height))

    assert_in_delta exact, localized_square, TOL
    assert_operator localized_square, :>=, nu * record / 128.0
  end

  def test_initial_containing_terms_are_absolutely_paid_on_disjoint_sets
    z0 = 5.0
    enstrophy_masses = [0.4, 0.08, 0.016, 0.0032]
    pulse_measures = [0.02, 0.004, 0.0008, 0.00016]

    bounds = enstrophy_masses.zip(pulse_measures).map do |mass, measure|
      z0 * mass + z0**2 * measure
    end

    assert_operator bounds.sum, :<, Float::INFINITY
    assert_operator bounds.last, :<, bounds.first
    assert_operator bounds.last, :<, 0.1
    assert_includes text, "\\sum_n\\mathsf S_n^{\\rm ic}"
    assert_includes text, "Z_0\\|u_0\\|_2^2\\over\\nu"
  end

  def test_reverse_triangle_forces_double_recruited_square
    full_square = 64.0
    initial_containing_square = 4.0
    recruited_norm_lower =
      Math.sqrt(full_square) - Math.sqrt(initial_containing_square)
    recruited_square_lower = recruited_norm_lower**2

    assert_in_delta 36.0, recruited_square_lower, TOL
    assert_operator recruited_square_lower, :>=, full_square / 4.0
  end

  def test_intrinsic_cutoff_removes_only_one_quarter_of_lower_bound
    c_rr = 1.0 / 512.0
    nu = 0.7
    record = 4096.0
    energy = 3.0
    pulse_measure = 1.0e-8
    low_constant = 2.5

    cutoff_fourth =
      c_rr * nu * record /
      (4.0 * low_constant * energy**2 * pulse_measure)
    cutoff = cutoff_fourth**0.25
    low_square = low_constant * energy**2 * cutoff**4 * pulse_measure
    recruited_lower = c_rr * nu * record

    assert_operator cutoff, :>, 1.0
    assert_in_delta recruited_lower / 4.0, low_square, 1.0e-10
    assert_in_delta 3.0 * recruited_lower / 4.0,
                    recruited_lower - low_square, 1.0e-10
  end

  def test_pulse_size_forces_cutoff_to_diverge
    nu = 0.7
    energy = 3.0
    masses = [0.2, 0.05, 0.0125, 0.003125]
    records = [64.0, 256.0, 1024.0, 4096.0]

    cutoffs = records.zip(masses).map do |record, mass|
      Math.sqrt(nu * record / (energy * mass))
    end

    cutoffs.each_cons(2) do |left, right|
      assert_operator right, :>, left
    end
  end

  def test_high_output_requires_a_high_ordered_parent
    total_enstrophy = 11.0
    high_parent_enstrophy = 2.5
    bilinear_constant = 3.0
    output_square_upper =
      bilinear_constant * total_enstrophy * high_parent_enstrophy

    required_output_square = 41.0
    parent_product_lower = required_output_square / bilinear_constant

    assert_operator output_square_upper, :>=, required_output_square
    assert_in_delta required_output_square,
                    bilinear_constant * parent_product_lower, TOL
    assert_operator total_enstrophy * high_parent_enstrophy,
                    :>=, parent_product_lower
  end

  def test_exact_ns_scaling_keeps_square_pulse_and_shrinks_first_moments
    dilation = 13.0
    duration = 0.08
    current = 2.7
    source_square = 4.2
    energy = 1.9
    source_mass = 0.6
    enstrophy_action = 0.8

    scaled_duration = duration / dilation**2
    scaled_current = dilation**2 * current * scaled_duration / duration
    scaled_square =
      dilation**2 * source_square * scaled_duration / duration

    assert_in_delta current, scaled_current, TOL
    assert_in_delta source_square, scaled_square, TOL
    assert_in_delta energy / dilation, energy * dilation**(-1), TOL
    assert_in_delta source_mass / dilation,
                    source_mass * dilation**(-1), TOL
    assert_in_delta enstrophy_action / dilation,
                    enstrophy_action * dilation**(-1), TOL
  end

  def test_finite_scaled_windows_are_disjoint
    left = 0.2
    right = 0.5
    ratio = 2.0
    common_scale = 100.0
    count = 6
    scales =
      count.times.map { |j| common_scale * ratio**(count - 1 - j) }
    windows = scales.map { |scale| [left / scale**2, right / scale**2] }

    windows.each_cons(2) do |earlier, later|
      assert_operator earlier[1], :<, later[0]
    end
  end

  def test_boundary_is_honest_and_does_not_rename_the_payment
    assert_includes text, "CanonicalDoubleRecruitedParentDesynchronization.A"
    assert_includes text, "not a\nproved reduction to a smaller critical payment"
    assert_includes text, "cannot be counted as strict theorem progress"
    assert_includes text, "finite-chain stress-test sketch"
    assert_includes text, "not used as a proved input"
    assert_includes text, "not an infinite Zeno history"
    assert_includes text, "does not prove"
    assert_includes text, "does not claim"
    assert_includes text, "a counterexample to"
    refute_includes text, "Status: MPP is closed"
  end
end
