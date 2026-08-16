#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasCausalActualReceiverConormalPulseTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-causal-actual-receiver-conormal-pulse-and-complement-refund-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  # Polynomials are coefficient arrays in increasing powers of t.
  def poly_add(left, right)
    length = [left.length, right.length].max
    Array.new(length) { |i| (left[i] || 0.to_r) + (right[i] || 0.to_r) }
  end

  def poly_neg(value)
    value.map(&:-@)
  end

  def poly_sub(left, right)
    poly_add(left, poly_neg(right))
  end

  def poly_mul(left, right)
    result = Array.new(left.length + right.length - 1, 0.to_r)
    left.each_index do |i|
      right.each_index { |j| result[i + j] += left[i] * right[j] }
    end
    result
  end

  def poly_scale(scalar, value)
    value.map { |coefficient| scalar * coefficient }
  end

  def poly_derivative(value)
    return [0.to_r] if value.length == 1

    value.each_index.drop(1).map { |i| i * value[i] }
  end

  def poly_integral_01(value)
    value.each_index.sum { |i| value[i] / (i + 1).to_r }
  end

  def poly_at_one(value)
    value.sum
  end

  def poly_trim(value)
    result = value.dup
    result.pop while result.length > 1 && result.last.zero?
    result
  end

  def product(values)
    values.reduce([1.to_r]) { |memo, value| poly_mul(memo, value) }
  end

  def each_pattern
    [0, 1].repeated_permutation(3)
  end

  def setup_receiver
    @kernels = 6.times.map do |rho|
      [Rational(rho + 2, 7), Rational((-1)**rho, rho + 3)]
    end
    @legs = 6.times.map do |rho|
      3.times.map do |slot|
        [Rational(rho + slot + 2, 9),
         Rational(2 * rho - slot + 1, 13),
         Rational((-1)**(rho + slot), 17)]
      end
    end
    @weights = [
      [Rational(1, 3), Rational(1, 5), Rational(1, 7)],
      [Rational(2, 5), Rational(-1, 6), Rational(1, 8)],
      [Rational(1, 4), Rational(1, 9), Rational(-1, 10)]
    ]
    @membership_rates = [
      [Rational(1, 11)],
      [0.to_r, Rational(1, 13)],
      [Rational(-1, 17), Rational(1, 19)]
    ]
    @line_rates = 3.times.map do |slot|
      poly_sub(poly_derivative(@weights[slot]), @membership_rates[slot])
    end
  end

  def choice(weight, bit)
    bit.zero? ? weight : poly_sub([1.to_r], weight)
  end

  def eta(bit)
    bit.zero? ? 1.to_r : -1.to_r
  end

  def receiver_block(pattern)
    6.times.reduce([0.to_r]) do |sum, rho|
      projected = 3.times.map do |slot|
        poly_mul(choice(@weights[slot], pattern[slot]), @legs[rho][slot])
      end
      poly_add(sum, poly_mul(@kernels[rho], product(projected)))
    end
  end

  def passive_response(pattern)
    6.times.reduce([0.to_r]) do |sum, rho|
      projected = 3.times.map do |slot|
        poly_mul(choice(@weights[slot], pattern[slot]), @legs[rho][slot])
      end
      response = poly_mul(poly_derivative(@kernels[rho]), product(projected))

      3.times do |active|
        values = 3.times.map do |slot|
          if slot == active
            poly_mul(choice(@weights[slot], pattern[slot]),
                     poly_derivative(@legs[rho][slot]))
          else
            projected[slot]
          end
        end
        response = poly_add(response, poly_mul(@kernels[rho], product(values)))
      end
      poly_add(sum, response)
    end
  end

  def projector_response(pattern, rates, negate: false)
    total = [0.to_r]
    6.times do |rho|
      3.times do |active|
        values = 3.times.map do |slot|
          if slot == active
            poly_mul(rates[slot], @legs[rho][slot])
          else
            poly_mul(choice(@weights[slot], pattern[slot]), @legs[rho][slot])
          end
        end
        signed = poly_scale(eta(pattern[active]),
                            poly_mul(@kernels[rho], product(values)))
        signed = poly_neg(signed) if negate
        total = poly_add(total, signed)
      end
    end
    total
  end

  def test_causal_age_identity_holds_for_all_six_assignment_blocks
    setup_receiver
    theta = [0.to_r, 1.to_r]

    each_pattern.each do |pattern|
      block = receiver_block(pattern)
      passive = passive_response(pattern)
      membership = projector_response(pattern, @membership_rates)
      # CRJ.7 defines C with the negative of the signed line response.
      conormal_line = projector_response(pattern, @line_rates, negate: true)

      derivative_from_responses = poly_sub(
        poly_add(passive, membership),
        conormal_line
      )
      assert_equal poly_derivative(block), derivative_from_responses

      pulse = poly_integral_01(block)
      causal_remainder = poly_at_one(block) -
                         poly_integral_01(poly_mul(theta, passive)) -
                         poly_integral_01(poly_mul(theta, membership))
      age_weighted_line = poly_integral_01(poly_mul(theta, conormal_line))
      assert_equal pulse, causal_remainder + age_weighted_line
    end

    assert_includes text, "{d\\over dt}J_\\sigma"
    assert_includes text, "\\theta_I(t):=t-s"
    assert_includes text, "A_{\\sigma,I}"
    assert_includes text, "\\Delta_IJ_\\sigma(t_+)"
    assert_includes text, "both independent separation transports"
    assert_includes text, "all three leg responses"
    assert_includes text, "delayed recent-window\nendpoint"
  end

  def test_eight_block_refund_cancels_membership_and_line_responses
    setup_receiver
    theta = [0.to_r, 1.to_r]
    membership_sum = [0.to_r]
    line_sum = [0.to_r]
    block_sum = [0.to_r]
    remainder_sum = 0.to_r

    each_pattern.each do |pattern|
      block = receiver_block(pattern)
      passive = passive_response(pattern)
      membership = projector_response(pattern, @membership_rates)
      line = projector_response(pattern, @line_rates, negate: true)
      membership_sum = poly_add(membership_sum, membership)
      line_sum = poly_add(line_sum, line)
      block_sum = poly_add(block_sum, block)
      remainder_sum += poly_at_one(block) -
                       poly_integral_01(poly_mul(theta, passive)) -
                       poly_integral_01(poly_mul(theta, membership))
    end

    assert_equal 0.to_r, poly_integral_01(membership_sum)
    assert_equal 0.to_r, poly_integral_01(line_sum)

    direct = 6.times.reduce([0.to_r]) do |sum, rho|
      poly_add(sum, poly_mul(@kernels[rho], product(@legs[rho])))
    end
    assert_equal poly_trim(direct), poly_trim(block_sum)
    assert_equal poly_integral_01(direct), remainder_sum

    assert_includes text, "cancel label by label"
    assert_includes text, "includes the all-complement block"
    assert_includes text, "returns exactly the original `(STK.19)` pulse"
    assert_includes text, "\\sum_\\sigma A_{\\sigma,I}"
  end

  def test_actual_receiver_has_exact_conormal_and_transverse_split
    e = [1.to_r, 0.to_r, 0.to_r]
    relative = [0.to_r, 2.to_r, -1.to_r]
    conormal = [Rational(3, 5), Rational(4, 5), 0.to_r]
    field = [2.to_r, 3.to_r, 5.to_r]
    covector = [-1.to_r, 4.to_r, 2.to_r]

    p_perp_field = [0.to_r, field[1], field[2]]
    p_perp_covector = [0.to_r, covector[1], covector[2]]
    g = 3.times.map do |i|
      field[0] * p_perp_covector[i] + covector[0] * p_perp_field[i]
    end
    h = [0.to_r, conormal[1], conormal[2]]
    h2 = dot(h, h)
    alpha = dot(g, h) / h2
    parallel = h.map { |entry| alpha * entry }
    perpendicular = g.zip(parallel).map { |a, b| a - b }

    actual = dot(g, relative)
    conormal_part = alpha * dot(conormal, relative)
    transverse_part = dot(perpendicular, relative)

    assert_equal 11.to_r, actual
    assert_equal 10.to_r, conormal_part
    assert_equal 1.to_r, transverse_part
    assert_equal actual, conormal_part + transverse_part
    assert_equal 0.to_r, dot(perpendicular, h)

    assert_includes text, "g(F,z;e)"
    assert_includes text, "g_\\parallel:=\\Pi_hg"
    assert_includes text, "g_\\perp:=g-g_\\parallel"
    assert_includes text, "\\alpha\\,n\\cdot\\mathcal R_-"
    assert_includes text, "no sign, no positive lower bound"
  end

  def test_signed_half_dichotomy_and_sharp_qualification
    pulse = 17.to_r
    conormal = 6.to_r
    remainder = pulse - conormal
    assert_operator [conormal, remainder].max, :>=, pulse / 2

    assert_includes text, "{A_{\\sigma,I}\\over2}"
    assert_includes text, "{A_n\\over256}"
    assert_includes text, "`(PSL.15)--(PSL.23)`"
    assert_includes text, "no additional value-limit hypothesis remains"
    assert_includes text, "compatible finite-measure limits"
    assert_includes text, "uniformly integrable `L^1` limits"
    assert_includes text, "not implied by convergence of\nthe undifferentiated blocks"
    assert_includes text, "No datum-summable co-normal charge"
    assert_includes text, "no proof of `(TIR.37a)`"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    [0x08, 0x09, 0x0b, 0x0c, 0x0d].each do |byte|
      refute_includes bytes, byte
    end
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end
end
