#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasBalancedRipCordCoastingBoundaryTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-balanced-rip-cord-coasting-pressure-trace-and-shrinking-label-boundary-20260803.md"
  )

  def test_exact_coasting_affine_vpi_calibration
    tau = Rational(7, 3)
    tau0 = Rational(11, 3)

    a = diagonal(-1 / tau, -1 / tau, 2 / tau)
    a_dot = diagonal(-1 / tau**2, -1 / tau**2, 2 / tau**2)
    pressure_hessian = diagonal(0, 0, -6 / tau**2)
    curvature = add(a_dot, multiply(a, a))

    assert_equal [0, 0, 0], trace_free_constraint(a)
    assert_equal negate(pressure_hessian), curvature
    assert_equal diagonal(0, 0, 6 / tau**2), curvature

    f = diagonal(tau / tau0, tau / tau0, (tau0 / tau)**2)
    assert_equal 1, determinant_diagonal(f)

    alpha = -1 / tau
    alpha_dot = -1 / tau**2
    assert_equal(-alpha**2, alpha_dot)
    assert_equal 0, curvature[0][0]
    assert_equal 0, curvature[1][1]
    assert_equal 6 / tau**2, curvature[2][2]
  end

  def test_pressure_trace_free_redistribution_is_exact
    tau = Rational(5, 2)
    q = 6 / tau**2
    pressure_hessian = diagonal(0, 0, -6 / tau**2)
    isotropic = diagonal(-q / 3, -q / 3, -q / 3)
    trace_free = subtract(pressure_hessian, isotropic)

    assert_equal diagonal(2 / tau**2, 2 / tau**2, -4 / tau**2), trace_free
    assert_equal 0, trace(trace_free)
    assert_equal(-q, trace(pressure_hessian))
  end

  def test_pressure_quadrupole_kernel_has_zero_trace_and_constant_ball_cancellation
    axis_kernels = 3.times.map do |axis|
      3.times.map do |i|
        3.times.map do |j|
          3 * (i == axis ? 1 : 0) * (j == axis ? 1 : 0) - (i == j ? 1 : 0)
        end
      end
    end

    axis_kernels.each { |kernel| assert_equal 0, trace(kernel) }
    spherical_sum = axis_kernels.reduce(diagonal(0, 0, 0)) { |sum, kernel| add(sum, kernel) }
    assert_equal diagonal(0, 0, 0), spherical_sum
  end

  def test_shrinking_label_volume_loses_exactly_one_inverse_length
    unweighted = (1..80).sum do |j|
      r = Rational(1, 2**j)
      m = r**3
      m / r**2
    end
    weighted = (1..80).sum do |j|
      r = Rational(1, 2**j)
      m = r**3
      m / r**3
    end

    assert_operator unweighted, :<, 1
    assert_equal 80, weighted
  end

  def test_pressure_and_viscous_cutoff_terms_are_principal_order
    r = Rational(1, 13)
    p = r**-2
    grad_p = r**-3
    hess_p = r**-4
    m = r**-2
    grad_m = r**-3
    lap_m = r**-4
    grad_chi = r**-1
    hess_chi = r**-2

    assert_equal hess_p, p * hess_chi
    assert_equal hess_p, grad_chi * grad_p
    assert_equal lap_m, grad_chi * grad_m
    assert_equal lap_m, hess_chi * m
  end

  def test_note_keeps_exact_scope_and_pressure_complete_boundary
    note = File.read(NOTE_PATH)

    assert_order note,
                 "the simple pulse",
                 "the imbalanced stretched vortex",
                 "the perfectly balanced rip-cord vortex"
    assert_includes note, "No center wobble, symmetry\nbreaking, external supplier, fixed positive-volume core"
    assert_includes note, "an exact local VPI calibration, not\na finite-energy Navier--Stokes counterhistory"
    assert_includes note, %q{n\cdot\mathsf C_{\rm VPI}n=0}
    assert_includes note, "it only\nfalsifies a universal pointwise charge"
    assert_includes note, %q{=-\frac13q(x)\delta_{ij}}
    assert_includes note, "through the div--curl Hardy-space theorem"
    assert_includes note, %q{\frac{m_j}{r_j^2}}
    assert_includes note, %q{\frac{m_j}{r_j^3}}
    assert_includes note, "cancel with the complementary selector but are not a lower-order error"
    assert_includes note, "not yet an equivalence\nwith `(TIR.37a)`"
    assert_includes note, "The MPP closure therefore remains open"
  end

  private

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
  end

  def trace(matrix)
    3.times.sum { |i| matrix[i][i] }
  end

  def trace_free_constraint(matrix)
    [trace(matrix), matrix[0][1] - matrix[1][0], matrix[0][2] - matrix[2][0]]
  end

  def add(left, right)
    3.times.map { |i| 3.times.map { |j| left[i][j] + right[i][j] } }
  end

  def subtract(left, right)
    3.times.map { |i| 3.times.map { |j| left[i][j] - right[i][j] } }
  end

  def negate(matrix)
    matrix.map { |row| row.map { |entry| -entry } }
  end

  def multiply(left, right)
    3.times.map do |i|
      3.times.map do |j|
        3.times.sum { |k| left[i][k] * right[k][j] }
      end
    end
  end

  def determinant_diagonal(matrix)
    matrix[0][0] * matrix[1][1] * matrix[2][2]
  end

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
