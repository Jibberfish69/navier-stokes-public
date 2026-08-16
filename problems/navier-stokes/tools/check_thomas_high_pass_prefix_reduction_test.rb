#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasHighPassPrefixReductionTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-one-fluid-high-pass-prefix-first-moment-reduction-20260803.md"
  )
  TOLERANCE = 1.0e-12

  def test_note_keeps_exact_energy_conventions_and_factors
    note = File.read(NOTE_PATH)

    assert_includes note, "Use the unitary Fourier transform"
    assert_includes note, "E_s(t):=\\frac12\\|\\Lambda^su(t)\\|_2^2"
    assert_includes note, "+2\\nu E_{1,>K}(t)=\\Phi_K(t)"
    assert_includes note, "d\\varepsilon_t(\\xi):=\\frac12|\\widehat u(t,\\xi)|^2"
    assert_includes note, "+2\\nu\\int_0^T|\\xi|^2\\,d\\varepsilon_t"
    assert_includes note, "=E_0(T)+2\\nu\\int_0^TE_1(t)\\,dt"
  end

  def test_negative_tail_is_datum_paid_before_weighted_layer_cake
    note = File.read(NOTE_PATH)

    assert_order note,
                 "\\tag{HPF.7}",
                 "\\tag{HPF.10}",
                 "\\tag{HPF.12}",
                 "\\tag{HPF.16}"
    assert_includes note, "F_K(T)^-\\leq E_{0,>K}(0)"
    assert_includes note, "\\int_0^\\infty F_K(T)^-\\,dK\\leq E_{1/2}(0)"
    assert_includes note, "Equation `(HPF.16)` is a tail formula, not a datum-finite tail theorem"
  end

  def test_power_weighted_layer_cake_factor_on_discrete_measures
    frequencies = [0.5, 2.0, 5.0]
    initial_weights = [0.4, 0.2, 0.1]
    history_weights = [0.2, 0.1, 0.4]
    alpha = 1.7
    differences = frequencies.each_index.map do |index|
      history_weights[index] - initial_weights[index]
    end
    breakpoints = [0.0] + frequencies.sort

    weighted_tail = breakpoints.each_cons(2).sum do |left, right|
      midpoint = (left + right) / 2.0
      tail = frequencies.each_index.sum do |index|
        frequencies[index] > midpoint ? differences[index] : 0.0
      end
      (right**alpha - left**alpha) * tail
    end
    moment_difference = frequencies.each_index.sum do |index|
      frequencies[index]**alpha * differences[index]
    end

    assert_in_delta moment_difference, weighted_tail, TOLERANCE
  end

  def test_duhamel_action_is_exact_and_old_data_is_uniformly_paid
    note = File.read(NOTE_PATH)

    assert_includes note, "Q=w_t+\\nu\\Lambda^2w"
    assert_includes note, "\\frac12\\|M_K^{1/2}w(T)\\|_2^2"
    assert_includes note, "+\\nu\\int_0^T"
    assert_includes note, "not by replacing the complete current with its absolute value"
    assert_includes note, "Assume \\(u_0\\in L^2\\) and \\(\\widehat u_0\\in L^1\\)"
    assert_includes note, "\\sup_{K\\geq0,\\,T<T_*}|I_{K,0}(T)|"
    assert_includes note, "\\frac C\\nu\\|u_0\\|_2^2\\|\\widehat u_0\\|_1"
  end

  def test_closure_equivalence_is_not_reported_as_proved_closure
    note = File.read(NOTE_PATH)

    assert_order note,
                 "## 8. The smallest signed tail estimate is closure-equivalent",
                 "\\tag{HPF.36}",
                 "\\tag{HPF.38}",
                 "## 9. Structurally local sufficient target"
    assert_includes note, "not a smaller theorem already proved from the datum"
    assert_includes note, "It is not proved in this note"
    refute_includes note, "This proves global regularity"
    refute_includes note, "The MPP is closed"
  end

  def test_shell_contraction_requires_an_independently_paid_residual
    note = File.read(NOTE_PATH)

    assert_includes note, "b_{j+1}(T)"
    assert_includes note, "\\leq(1-\\varepsilon)b_j(T)+r_j(T)"
    assert_includes note, "\\sup_{T<T_*}\\sum_{j\\geq J}r_j(T)"
    assert_includes note, "r_j\\) must be derived from an independently"
    assert_includes note, "datum-finite signed action of the complete pressure-coupled parent field"
  end

  private

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
