#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasFullSignedCurrentAdjacentEndpointPropagationTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-signed-current-adjacent-record-endpoint-propagation-and-zero-response-countercalibration-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_note_keeps_exact_one_history_scope_and_honest_status
    assert_includes text, "Thomas Birnie's one-fluid"
    assert_includes text, "pressure-explicit"
    assert_includes text, "every material-pair\norientation"
    assert_includes text, "pressure, viscosity, angular\nresponse, and longitudinal response"
    assert_includes text, "not an admitted Navier--Stokes history"
    assert_includes text, "not a\ncounterexample to Thomas's theory"
    assert_includes text, "No monotonicity is assumed"
    assert_includes text, "No terminal trace"
    assert_includes text, "remain unproved"
    refute_includes text.downcase, "rectangle"
  end

  def test_adjacent_record_levels_are_exact
    record = 13.to_r

    assert_equal 2 * record, 4 * record / 2
    assert_equal 4 * record, 4 * record
    assert_includes text, "t_n<s_{n+1}<t_{n+1}"
    assert_includes text, "\\mathscr W(t_n)=A_n"
    assert_includes text, "\\mathscr W(s_{n+1})=2A_n"
    assert_includes text, "\\mathscr W(t_{n+1})=4A_n"
    assert_includes text, "not a pasted interval"
  end

  def test_half_turn_down_identity_has_exact_constant
    height = 20.to_r
    final_height = height / 2
    endpoint_refund = (height - final_height) / 4

    assert_equal height / 8, endpoint_refund
    assert_includes text, "Q(\\rho_n)=M/2"
    assert_includes text, "{5\\over16}\\int_{t_n}^{\\rho_n}{Q(t)^2\\over H(t)}\\,dt"
    assert_includes text, "+{M\\over8}"
    assert_includes text, "\\ge {M\\over8}"
    assert_includes text, "[\\widehat{\\mathcal C}(t)]_+"
  end

  def test_persistent_right_endpoint_crosses_whole_next_record_quickly
    record = 17.to_r
    endpoint = 11.to_r
    span_bound = 6 * record / endpoint

    assert_equal Rational(102, 11), span_bound
    assert_includes text, "3A_n"
    assert_includes text, ">{M\\over2}(t_{n+1}-t_n)"
    assert_includes text, "t_{n+1}-t_n<{6A_n\\over M}"
    assert_includes text, "t_{n+1}-t_n<24\\Delta_n"
    assert_includes text, "Q(s_{n+1})>{M\\over2}"
    assert_includes text, "Q(t_{n+1})>{M\\over2}"
  end

  def test_left_endpoint_turns_or_propagates_to_right_endpoint
    record = 19.to_r
    endpoint = 7.to_r
    propagated_endpoint = endpoint / 2 + Rational(1, 100)

    assert_equal record / endpoint, Rational(19, 7)
    assert_operator propagated_endpoint / 8, :>, endpoint / 16
    assert_operator 6 * record / propagated_endpoint, :<, 12 * record / endpoint
    assert_includes text, "\\int_{s_n}^{\\sigma_n}\\widehat{\\mathcal C}(t)\\,dt"
    assert_includes text, "\\ge {M\\over8}"
    assert_includes text, "\\Delta_n<{A_n\\over M}"
    assert_includes text, "Q(t_n)>{M\\over2}"
    assert_includes text, "M_1:=Q(t_n)>M/2"
    assert_includes text, "{M_1\\over8}>{M\\over16}"
    assert_includes text, "<{12A_n\\over M}"
    assert_includes text, "Q(s_{n+1}),Q(t_{n+1})>{M_1\\over2}>{M\\over4}"
    assert_includes text, ">{A_n\\over64\\Delta_n}"
    assert_includes text, "t_{n+1}-t_n<48\\Delta_n"
  end

  def test_equal_level_bracketing_is_the_exact_completed_pulse_condition
    assert_includes text, "Q(a)=Q(b)=\\lambda>0"
    assert_includes text, "Q>\\lambda"
    assert_includes text, "\\int_a^b\\widehat{\\mathcal C}(t)\\,dt"
    assert_includes text, "={5\\over16}\\int_a^b{Q(t)^2\\over H(t)}\\,dt"
    assert_includes text, "prefix levels constrain \\(\\mathscr W\\)"
    assert_includes text, "not values of\n\\(Q=\\mathscr W'_+\\)"
  end

  def test_zero_response_calibration_satisfies_full_current_law
    [0.to_r, Rational(1, 5), Rational(3, 5)].each do |time|
      q = 4.to_r / (5 * (1 - time))
      derivative = 4.to_r / (5 * (1 - time)**2)
      rhs = 4 * (5 * q**2 / 16)

      assert_equal derivative, rhs
    end

    assert_includes text, "Q(t)=\\mathcal P_{1/2}(t)={4\\over5(1-t)}"
    assert_includes text, "\\widehat{\\mathcal C}(t)=0"
    assert_includes text, "Q'(t)={4\\over5(1-t)^2}"
    assert_includes text, "complete recombined law"
  end

  def test_scalar_calibration_is_only_an_identity_level_insufficiency_test
    assert_includes text, "supplies no velocity field, pressure, material\nflow"
    assert_includes text, "pressure-explicit binomial tower"
    assert_includes text, "neither a Navier--Stokes history nor an obstruction to\nThomas's theory"
    assert_includes text, "implication-level\ninsufficiency result"
  end

  def test_calibration_retains_critical_balance_and_height_mass_form
    [Rational(1, 10), Rational(1, 2), Rational(9, 10)].each do |time|
      current_integral = -4.to_r / 5 * Math.log(1 - time)
      dissipation_integral = current_integral

      assert_in_delta current_integral, dissipation_integral, 1e-12
    end

    assert_includes text, "D(t):=Q(t)"
    assert_includes text, "\\mathscr W(t)=H(t)-H(0)+\\nu\\int_0^tD(r)\\,dr"
    assert_includes text, "B(J):=\\int_JH(t)\\,dt=|J|\\le\\sqrt{|J|}"
    assert_includes text, "datum-bound form"
  end

  def test_calibration_has_exact_canonical_crossing_order
    crossing = ->(level) { 1 - Math.exp(-5 * level / 4.0) }
    record = 4.0

    assert_operator crossing.call(record / 4), :<, crossing.call(record / 2)
    assert_operator crossing.call(record / 2), :<, crossing.call(record)
    assert_operator crossing.call(record), :<, crossing.call(2 * record)
    assert_operator crossing.call(2 * record), :<, crossing.call(4 * record)
    assert_includes text, "T(L)=1-e^{-5L/4}"
    assert_includes text, "t_{n-1}&=T(A_n/4)<s_n<t_n"
    assert_includes text, "s_{n+1}&=T(2A_n)<t_{n+1}=T(4A_n)"
  end

  def test_every_calibrated_record_takes_endpoint_branch
    [Rational(1, 10), 1.to_r, 4.to_r, 9.to_r].each do |record|
      x = Math.exp(-5 * record.to_f / 8)
      duration = x - x**2
      endpoint = 4.0 / (5 * x**2)
      normalized = duration * endpoint / record.to_f

      assert_operator normalized, :>=, 0.5 - 1e-12
      assert_operator normalized, :>, 0.25
    end

    assert_includes text, "{4\\over5A_n}\\left(e^{5A_n/8}-1\\right)"
    assert_includes text, "\\ge {1\\over2}>{1\\over4}"
    assert_includes text, "is empty"
    assert_includes text, "response term is identically\nzero"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
  end
end
