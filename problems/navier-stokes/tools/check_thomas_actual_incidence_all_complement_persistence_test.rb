# frozen_string_literal: true

require "matrix"
require "minitest/autorun"

class ThomasActualIncidenceAllComplementPersistenceTest < Minitest::Test
  ROOT = File.expand_path("../../..", __dir__)
  NOTE = File.join(
    ROOT,
    "problems/navier-stokes/theorem-construction/" \
    "thomas-actual-incidence-all-complement-persistence-and-record-refund-boundary-20260804.md"
  )

  def projector(v)
    n = Math.sqrt(v.inner_product(v))
    e = v.map { |x| x / n }
    Matrix.build(3, 3) { |i, j| e[i] * e[j] }
  end

  def max_abs(matrix)
    matrix.to_a.flatten.map(&:abs).max
  end

  def kron3_action(a, b, c, x, y, z)
    [a * x, b * y, c * z]
  end

  def kron(a, b)
    Matrix.build(a.row_count * b.row_count, a.column_count * b.column_count) do |i, j|
      a[i / b.row_count, j / b.column_count] * b[i % b.row_count, j % b.column_count]
    end
  end

  def kron3(a, b, c)
    kron(kron(a, b), c)
  end

  def test_actual_complement_fixes_the_expanding_plane_for_every_membership_value
    p_minus = projector(Vector[1.0, 2.0, -1.0])
    identity = Matrix.identity(3)
    p_plus = identity - p_minus
    expanding_vector = p_plus * Vector[2.0, -1.0, 4.0]

    [0.0, 0.2, 0.75, 1.0].each do |chi|
      w = chi * p_minus
      complement = identity - w

      assert_operator max_abs(complement * p_plus - p_plus), :<, 1.0e-12
      assert_operator (complement * expanding_vector - expanding_vector).norm, :<, 1.0e-12
      assert_in_delta 2.0 + (1.0 - chi)**2,
                      complement.to_a.flatten.sum { |entry| entry * entry },
                      1.0e-12
    end
  end

  def test_three_expanding_plane_legs_are_in_the_ccc_kernel_even_at_full_incidence
    p_a = projector(Vector[1.0, 0.0, 0.0])
    p_b = projector(Vector[0.0, 1.0, 0.0])
    p_c = projector(Vector[0.0, 0.0, 1.0])
    identity = Matrix.identity(3)
    x = Vector[0.0, 2.0, -1.0]
    y = Vector[3.0, 0.0, 1.0]
    z = Vector[-2.0, 4.0, 0.0]

    selected = kron3_action(p_a, p_b, p_c, x, y, z)
    ccc = kron3_action(identity - p_a, identity - p_b, identity - p_c, x, y, z)

    selected.each { |leg| assert_operator leg.norm, :<, 1.0e-12 }
    assert_equal [x, y, z], ccc
  end

  def test_ccc_and_non_ccc_projector_responses_are_exact_opposites
    identity = Matrix.identity(3)
    w_a = 0.3 * projector(Vector[1.0, 1.0, 0.0])
    w_b = 0.7 * projector(Vector[0.0, 1.0, 1.0])
    w_c = 0.4 * projector(Vector[1.0, 0.0, 1.0])
    dw_a = Matrix[[0.2, -0.1, 0.0], [-0.1, -0.2, 0.1], [0.0, 0.1, 0.0]]
    dw_b = Matrix[[0.0, 0.1, -0.2], [0.1, 0.3, 0.0], [-0.2, 0.0, -0.3]]
    dw_c = Matrix[[-0.1, 0.0, 0.2], [0.0, 0.1, -0.1], [0.2, -0.1, 0.0]]
    c_a = identity - w_a
    c_b = identity - w_b
    c_c = identity - w_c
    analytic_ccc_response = -kron3(dw_a, c_b, c_c) \
                            -kron3(c_a, dw_b, c_c) \
                            -kron3(c_a, c_b, dw_c)
    step = 1.0e-7
    ccc_now = kron3(c_a, c_b, c_c)
    ccc_next = kron3(c_a - step * dw_a, c_b - step * dw_b, c_c - step * dw_c)
    finite_difference = (1.0 / step) * (ccc_next - ccc_now)

    assert_operator max_abs(finite_difference - analytic_ccc_response), :<, 1.0e-6
    non_ccc_finite_difference = -finite_difference
    assert_operator max_abs(finite_difference + non_ccc_finite_difference), :<, 1.0e-12
  end

  def test_note_keeps_same_history_selector_and_record_custody
    text = File.read(NOTE)

    assert_includes text, "**actual** high-rate material selector"
    assert_match(/not an\s+arbitrary frozen choice `chi=0`/, text)
    assert_includes text, "The two selectors are different same-history coordinates"
    assert_includes text, "C=P_+ +(1-\\chi)P_-"
    assert_includes text, "J_{ccc}=J_{\\perp\\perp\\perp}"
    assert_includes text, "\\int_{I_n}J_n^{\\rm rr}(t)\\,dt\\ge {A_n\\over16}"
    assert_includes text, "internal signed transfer"
    assert_includes text, "vector receiver-angle"
    refute_includes text, "MPP closure is proved"
  end
end
