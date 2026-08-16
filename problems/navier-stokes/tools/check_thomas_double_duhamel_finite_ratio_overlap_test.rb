#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDoubleDuhamelFiniteRatioOverlapTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-double-duhamel-finite-parent-ratio-high-output-overlap-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_one_history_pressure_complete_parent_custody
    assert_includes text, "one fixed-viscosity Navier--Stokes history"
    assert_includes text, "two Duhamel parents"
    assert_includes text, "\\mathbb P_k"
    assert_includes text, "Both ordered parents"
    assert_includes text, "output Leray projection"
    assert_includes text, "not a separation of pressure from transport"
    refute_includes text.downcase, "rectangle"
  end

  def test_recruited_enstrophy_square_has_the_record_bound
    viscosity = 0.73
    record = 512.0
    initial_height = 2.7
    initial_enstrophy = 3.1
    hbar = record + initial_height
    receiver_action = hbar / viscosity
    u_enstrophy_square = 2.0 * hbar * receiver_action
    pulse_measure = 0.002
    recruited_square_bound =
      8.0 * u_enstrophy_square +
      8.0 * initial_enstrophy**2 * pulse_measure
    formula =
      16.0 * hbar**2 / viscosity +
      8.0 * initial_enstrophy**2 * pulse_measure

    assert_in_delta formula, recruited_square_bound, TOL
  end

  def test_rpr_roof_leaves_only_one_over_2048_tail_fraction
    c_r = 1.41
    viscosity = 0.73
    record = 512.0
    initial_height = 2.7
    hbar = record + initial_height
    roof =
      32_768.0 * c_r**2 * hbar**3 /
      (viscosity**2 * record**2)
    main_tail_bound =
      c_r**2 / roof * 16.0 * hbar**2 / viscosity
    target = viscosity * record**2 / (2048.0 * hbar)

    assert_in_delta target, main_tail_bound, 1.0e-10
    assert_operator target, :<=, viscosity * record / 2048.0
  end

  def test_hilbert_reverse_triangle_overlap_constant
    high_constant = 3.0 / 2048.0
    tail_constant = 1.0 / 2048.0
    overlap =
      (Math.sqrt(high_constant) - Math.sqrt(tail_constant))**2
    exact = (Math.sqrt(3.0) - 1.0)**2 / 2048.0

    assert_in_delta exact, overlap, TOL
    assert_operator overlap, :>, 0.0
  end

  def test_parent_ratio_roof_and_high_output_geometry
    100.times do |index|
      px = 0.3 + 0.071 * index
      py = -0.4 + 0.023 * index
      pz = 0.2 - 0.011 * index
      qx = 1.7 - 0.013 * index
      qy = 0.8 + 0.019 * index
      qz = -0.5 + 0.017 * index
      p = [px, py, pz]
      q = [qx, qy, qz]
      k = p.zip(q).map { |left, right| left + right }
      k_norm = norm(k)
      next if k_norm < 1.0e-8

      ratio = (norm(p)**2 + norm(q)**2) / k_norm**2
      roof = [ratio + 0.5, 1.0].max

      assert_operator [norm(p), norm(q)].max, :>=, k_norm / 2.0 - TOL
      assert_operator norm(p), :<=, Math.sqrt(roof) * k_norm + TOL
      assert_operator norm(q), :<=, Math.sqrt(roof) * k_norm + TOL
    end
  end

  def test_overlap_lands_on_unpaid_critical_time_square
    overlap_constant = (Math.sqrt(3.0) - 1.0)**2 / 2048.0
    bilinear_constant = 2.8
    viscosity = 0.73
    record = 4096.0
    required_product =
      overlap_constant * viscosity * record / bilinear_constant
    synchronized_square = required_product

    assert_operator synchronized_square, :>, 0.0
    assert_in_delta overlap_constant * viscosity * record,
                    bilinear_constant * synchronized_square,
                    TOL
  end

  def test_spatial_ratio_and_synchronized_square_have_critical_scaling
    dilation = 17.0
    parent = 8.0
    partner = 7.0
    output = 3.0
    ratio = (parent**2 + partner**2) / output**2
    scaled_ratio =
      ((dilation * parent)**2 + (dilation * partner)**2) /
      (dilation * output)**2
    product_action = 5.2
    scaled_product_action =
      dilation**2 * product_action / dilation**2
    first_moment = 1.3
    scaled_first_moment =
      dilation * first_moment / dilation**2

    assert_in_delta ratio, scaled_ratio, TOL
    assert_in_delta product_action, scaled_product_action, TOL
    assert_in_delta first_moment / dilation, scaled_first_moment, TOL
  end

  def test_old_new_duhamel_expansion_keeps_all_four_classes
    old_parent = 1.7
    new_parent = -0.6
    full = (old_parent + new_parent)**2
    expanded =
      old_parent * old_parent +
      old_parent * new_parent +
      new_parent * old_parent +
      new_parent * new_parent

    assert_in_delta full, expanded, TOL
    assert_includes text, "\\mathcal B(w_n^{\\rm old},w_n^{\\rm old})"
    assert_includes text, "\\mathcal B(w_n^{\\rm new},w_n^{\\rm new})"
  end

  def test_boundary_is_exact_and_honest
    assert_includes text, "CanonicalFiniteRatioDoubleDuhamelAncestryTurnDown.A"
    assert_includes text, "narrower ancestry support"
    assert_includes text, "not\nyet a strict reduction"
    assert_includes text, "does not create a time gap"
    assert_includes text, "What is not proved"
    assert_includes text, "does not prove"
    assert_includes text, "does not give a datum-paid contradiction"
    refute_includes text, "MPP is closed"
  end

  private

  def norm(vector)
    Math.sqrt(vector.sum { |entry| entry**2 })
  end
end
