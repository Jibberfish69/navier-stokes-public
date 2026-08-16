#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class VPIFullTowerCustodyTest < Minitest::Test
  NOTE_PATH = File.expand_path(
    "../theorem-construction/" \
    "mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md",
    __dir__
  )
  TARGET_CONTRACT_PATH = File.expand_path("../target-operating-contract.yaml", __dir__)
  DISALLOWED_SUM_RECASTS = [
    "actual summation is the factorial sum forced by the binomial NS recurrence",
    "full NS-level summation-to-smoothness theorem",
    "complete positive factorial sum",
    "Bessel-weighted entire spatial Sobolev tower"
  ].freeze

  def test_vpi_is_the_full_derivative_tower_not_the_quadratic_transport_row
    section = extract_section("8.39", "8.40")

    assert_includes section, "the full derivative tower is already the global normal form"
    assert_includes section, "(D_t-\\nu\\Delta)\\partial^\\alpha u"
    assert_includes section, "-[\\partial^\\alpha,u\\cdot\\nabla]u"
    assert_includes section, "The scalar critical current in (SH.263) is the \\(s=1/2\\) face"
    refute_includes section, "VPI nonlinearity"
  end

  def test_time_dependent_zeroth_row_is_distinct_from_initial_energy
    section = extract_section("8.39", "8.40")

    assert_includes section, "E_0(t)=\\frac12\\|u(t)\\|_2^2"
    assert_includes section, "\\mathcal E_0:=E_0(0)"
    assert_includes section, "Thus \\(E_0(t)\\)"
    refute_includes section, "Thus \\(E_0\\) decreases"
  end

  def test_full_mixed_tower_is_the_compatible_intersection_not_a_sum
    section = extract_section("8.39", "8.40")
    contract = File.read(TARGET_CONTRACT_PATH)
    normalized_contract = contract.gsub(/\s+/, " ")

    assert_includes section, "The smoothness object carried by these rows is the compatible all-orders"
    assert_includes section, "\\mathcal J^\\infty(I)"
    assert_includes section, "This is a projective-limit statement"
    assert_includes section, "It is not an arithmetic sum of the rows"
    assert_includes section, "not define or replace the all-orders intersection"
    assert_includes section, "It is not to bound a sum of tower rows"

    assert_includes contract, "object_kind: compatible-all-orders-intersection"
    assert_includes contract, "not_a_sum: true"
    assert_includes normalized_contract, "N and M remain independent coordinates"
    assert_includes contract, "Such a series is"
    assert_includes contract, "it does not define, replace,"

    DISALLOWED_SUM_RECASTS.each do |recast|
      refute_includes section, recast
      refute_includes contract, recast
    end
  end

  def test_no_constant_energy_redistribution_claim_survives
    text = File.read(NOTE_PATH)

    refute_includes text,
                    "Energy can remain constant while being rearranged toward high frequencies"
    refute_includes text, "the energy that remains"
    assert_match(/There is no energy in this history which is being asserted to remain\s+constant/,
                 text)
  end

  def test_terminal_survivor_is_preserved_but_not_the_active_route
    section = extract_section("8.40", "8.41")

    assert_includes section, "It is not the active proof lane"
    assert_includes section, "record-free signed q-adic scale-current descent"
    assert_includes section, "FullVPITowerTerminalSurvivorCoherencePrefix.A"
    assert_includes section, "\\ge\\log q"
    assert_includes section, "This is a sufficient theorem, not a proved strict"
    assert_includes section, "the cumulative upper bound in (SH.272) is open"
  end

  def test_one_sided_orientation_profile_fails_bounded_endpoint_compatibility
    # Integral from -1 to 0 of (1-c^2)(-c) dc.
    inward_compatibility = Rational(1, 2) - Rational(1, 4)
    # Integral from -1 to 1 of (1-c^2)(-c) dc is zero by oddness.
    signed_compatibility = 0

    assert_equal Rational(1, 4), inward_compatibility
    assert_equal 0, signed_compatibility

    section = extract_section("8.41", "9.")
    assert_match(/One-sided clipping is\s+off the active proof lane/, section)
    assert_includes section, "For the inward part \\(G(c)=(-c)_+\\)"
    assert_includes section, "the integral equals \\(1/4\\)"
    assert_includes section, "It does not obstruct the full VPI tower"
  end

  private

  def extract_section(start_label, end_label)
    text = File.read(NOTE_PATH)
    start_index = text.index("### #{start_label}") || text.index("## #{start_label}")
    raise "missing section #{start_label}" unless start_index

    tail = text[start_index..]
    end_pattern = /^#{end_label == "9." ? "## 9\\." : "### #{Regexp.escape(end_label)}"}/
    finish = tail.match(end_pattern, 1)
    return tail unless finish

    tail[0...finish.begin(0)]
  end
end
