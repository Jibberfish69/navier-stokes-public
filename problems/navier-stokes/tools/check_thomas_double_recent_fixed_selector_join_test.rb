#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDoubleRecentFixedSelectorJoinTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-double-recent-core-fixed-selector-imbalance-collar-finite-chord-join-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_thomas_one_fluid_physical_order_and_pressure
    assert_includes text, "one continuing fixed-viscosity\nfluid"
    assert_includes text, "pulse or spring winding"
    assert_includes text, "imbalanced stretched vortex"
    assert_includes text, "perfectly balanced rip-cord"
    assert_includes text, "pressure-explicit\nbinomial/VPI"
    assert_includes text, "six output/input assignments"
    assert_includes text, "Pressure is never assigned a regional sign"
    refute_includes text.downcase, "rectangle"
  end

  def test_low_output_signed_pairing_costs_one_sixteenth
    viscosity = 0.73
    record = 4096.0
    source_square = viscosity * record / 512.0
    receiver_square = 2.0 * record / viscosity
    signed_cost = Math.sqrt(source_square * receiver_square)

    assert_in_delta record / 16.0, signed_cost, TOL
    assert_includes text, '=\\frac{A_n}{16}'
    assert_includes text, "signed high-output current"
  end

  def test_datum_heat_pairing_is_little_o_of_the_record
    viscosity = 0.9
    ratios = 6.times.map do |index|
      record = 4.0**(index + 4)
      epsilon = 1.0 / (index + 2)
      epsilon * Math.sqrt(2.0 * record / viscosity) / record
    end

    ratios.each_cons(2) { |left, right| assert_operator right, :<, left }
    assert_operator ratios.last, :<, ratios.first / 10.0
    assert_includes text, "No hidden rate is needed"
    assert_includes text, "=o(A_n)"
  end

  def test_old_containing_source_error_costs_one_sixteenth
    viscosity = 0.61
    record = 2048.0
    eta = 1.0 / 512.0
    source_square = eta * viscosity * record
    receiver_square = 2.0 * record / viscosity
    signed_cost = Math.sqrt(source_square * receiver_square)

    assert_in_delta record / 16.0, signed_cost, TOL
    assert_includes text, '\\eta=\\frac1{512}'
    assert_includes text, "signed double-recent current"
  end

  def test_signed_double_recent_fraction_is_retained
    record = 1024.0
    core = record / 4.0
    low = record / 16.0
    datum_heat = record / 16.0
    old = record / 16.0
    recent = core - low - datum_heat - old

    assert_in_delta record / 16.0, recent, TOL
    assert_includes text, '\\geq \\frac{A_n}{16}'
    assert_includes text, "same unsplit receiver"
  end

  def test_static_floor_applies_to_both_parents_for_every_output_choice
    viscosity = 0.8
    datum_l2 = 2.1
    cutoff = 50_000.0
    static_constant = 0.025
    floor = static_constant * (viscosity / datum_l2)**0.4 * cutoff**0.8
    legs = [1.1 * cutoff, 1.6 * cutoff, 2.0 * cutoff]

    3.times do |output_index|
      parents = legs.each_with_index.map do |leg, index|
        leg unless index == output_index
      end.compact
      parents.each { |parent| assert_operator parent, :>=, floor }
    end

    assert_includes text, "minimum of all three geometric legs"
    assert_includes text, "both physical parents are above"
  end

  def test_balanced_first_jet_is_favorable_and_only_d_greater_than_a_is_adverse
    balanced = [[2.0, 0.0], [2.0, 0.7], [2.0, 2.0]]
    imbalanced = [[2.0, 2.1], [2.0, 4.0], [2.0, 5.9]]

    balanced.each do |a, d|
      assert_operator a * (d**2 - a**2), :<=, 0.0
    end
    imbalanced.each do |a, d|
      assert_operator a * (d**2 - a**2), :>, 0.0
    end

    assert_includes text, 'Perfect balance is \(d=0\)'
    assert_includes text, "one contraction, two expansions"
  end

  def test_same_record_alternative_has_the_claimed_one_thirty_second_constants
    record = 320.0
    threshold = record / 32.0
    cases = [
      [threshold, threshold],
      [1.5 * threshold, 0.5 * threshold],
      [0.25 * threshold, 1.75 * threshold]
    ]

    cases.each do |imbalance, defect|
      assert_operator imbalance + defect, :>=, record / 16.0
      assert imbalance >= threshold || defect >= threshold
    end

    assert_includes text, "Every sufficiently large failed record consequently obeys"
    assert_operator text.scan('\\frac{A_n}{32}').length, :>=, 2
  end

  def test_imbalance_face_keeps_the_weighted_betchov_interface_collar
    assert_includes text, "weighted Betchov identity"
    assert_includes text, "\\nabla\\theta_\\varepsilon(\\mathfrak q)"
    assert_includes text, "(\\operatorname{cof}\\nabla u)^Tu"
    assert_includes text, "exact imbalance-interface cofactor collar"
    assert_includes text, "trace-free\npressure Hessian"
  end

  def test_complete_defect_rejoins_every_removed_pressure_complete_class
    assert_includes text, "\\mathcal D_{\\zeta,n}^{\\rm rr}"
    assert_includes text, "\\mathcal E_\\zeta"
    assert_includes text, "J_n^{\\rm old}"
    assert_includes text, "J_n^{\\rm ic}"
    assert_includes text, "J_n^{\\rm lo}"
    assert_includes text, "\\mathcal P_{1/2}^{\\rm ext}"
    assert_includes text, "\\mathcal P_{1/2}^{\\rm bd}"
    assert_includes text, "No pressure piece has been extracted"
  end

  def test_static_floor_and_recent_ancestry_are_not_misreported_as_payment
    assert_includes text, "It therefore supplies no\nupper bound"
    assert_includes text, "grows linearly"
    assert_includes text, "permits the fourth\nmoment to concentrate"
    assert_includes text, "Neither the static floor nor two-recent ancestry proves a datum-finite"
    assert_includes text, "same-critical localization"
    assert_includes text, "not a proof of\n(TIR.37a)"
    assert_includes text, "not MPP closure"
    refute_includes text, "Status: MPP is closed"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, '\\varepsilon_n'
    assert_includes text, '\\tau_n'
    assert_includes text, '\\theta_\\varepsilon'
    assert_includes text, '\\mathfrak J_n\\!\\left['
    assert_includes text, '\\text{or a quantified complete finite-chord/pressure-heat defect}'
  end
end
