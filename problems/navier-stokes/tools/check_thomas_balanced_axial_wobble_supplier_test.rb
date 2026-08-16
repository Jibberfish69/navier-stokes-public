#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasBalancedAxialWobbleSupplierTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-balanced-axial-wobble-supplier-and-weighted-betchov-boundary-20260804.md"
  )

  def test_pressure_viscous_balanced_frame_and_axial_supplier
    a = 3.to_r
    nu = 2.to_r
    e = [0.to_r, 0.to_r, 1.to_r]
    omega = [4.to_r, 2.to_r, 5.to_r]
    omega_perp = [omega[0], omega[1], 0.to_r]
    w = omega[2]
    s = diagonal(-a, -a, 2 * a)
    rotation = antisymmetric_from_vorticity(omega)
    m = add(s, rotation)
    q = trace(multiply(m, m))
    p_circ = [
      [2.to_r, 1.to_r, 3.to_r],
      [1.to_r, -5.to_r, 4.to_r],
      [3.to_r, 4.to_r, 3.to_r]
    ]
    lap_s = [
      [1.to_r, 2.to_r, 3.to_r],
      [2.to_r, -4.to_r, 5.to_r],
      [3.to_r, 5.to_r, 3.to_r]
    ]
    lap_omega = [2.to_r, -1.to_r, 3.to_r]
    hess_p = add(scale(identity, -q / 3), p_circ)
    d_s = add(
      add(scale(multiply(s, s), -1), scale(multiply(rotation, rotation), -1)),
      add(scale(hess_p, -1), scale(lap_s, nu))
    )

    assert_equal 0, trace(m)
    assert_equal 0, trace(p_circ)
    assert_equal 0, trace(lap_s)
    assert_equal 6 * a**2 - dot(omega, omega) / 2, q

    a_dot_direct = quadratic(e, d_s) / 2
    a_dot_formula = -a**2 - w**2 / 12 +
                    dot(omega_perp, omega_perp) / 24 -
                    quadratic(e, p_circ) / 2 +
                    nu * quadratic(e, lap_s) / 2
    assert_equal a_dot_formula, a_dot_direct

    frame_direct = scale_vector(project_perp(matrix_vector(d_s, e)), 1 / (3 * a))
    frame_formula = add_vectors(
      scale_vector(omega_perp, -w / (12 * a)),
      add_vectors(
        scale_vector(project_perp(matrix_vector(p_circ, e)), -1 / (3 * a)),
        scale_vector(project_perp(matrix_vector(lap_s, e)), nu / (3 * a))
      )
    )
    assert_vector_equal frame_formula, frame_direct
    assert_equal 0, dot(frame_direct, e)

    omega_dot = add_vectors(matrix_vector(s, omega), scale_vector(lap_omega, nu))
    w_dot_direct = dot(omega_dot, e) + dot(omega, frame_direct)
    w_dot_formula = 2 * a * w + nu * dot(e, lap_omega) +
                    dot(omega_perp, frame_formula)
    assert_equal w_dot_formula, w_dot_direct

    supplier = w * w_dot_direct / 2 -
               nu * w * dot(e, lap_omega) / 2 -
               w * dot(omega_perp, frame_direct) / 2
    assert_equal a * w**2, supplier

    explicit_supplier = w * w_dot_direct / 2 -
                        nu * w * dot(e, lap_omega) / 2 +
                        w**2 * dot(omega_perp, omega_perp) / (24 * a) +
                        w * dot(omega_perp, matrix_vector(p_circ, e)) / (6 * a) -
                        nu * w * dot(omega_perp, matrix_vector(lap_s, e)) / (6 * a)
    assert_equal a * w**2, explicit_supplier

    density_dot_direct = a_dot_direct * w**2 + 2 * a * w * w_dot_direct
    density_dot_formula = 3 * a**2 * w**2 - w**4 / 12 -
                          w**2 * dot(omega_perp, omega_perp) / 8 -
                          w**2 * quadratic(e, p_circ) / 2 -
                          2 * w * dot(omega_perp, matrix_vector(p_circ, e)) / 3 +
                          nu * w**2 * quadratic(e, lap_s) / 2 +
                          2 * nu * a * w * dot(e, lap_omega) +
                          2 * nu * w * dot(omega_perp, matrix_vector(lap_s, e)) / 3
    assert_equal density_dot_formula, density_dot_direct
  end

  def test_matrix_betchov_and_null_lagrangian_constants
    m = [
      [2.to_r, -1.to_r, 3.to_r],
      [4.to_r, -5.to_r, 2.to_r],
      [-2.to_r, 1.to_r, 3.to_r]
    ]
    s = scale(add(m, transpose(m)), Rational(1, 2))
    omega = vorticity_from_gradient(m)

    trace_m3 = trace(multiply(multiply(m, m), m))
    trace_s3 = trace(multiply(multiply(s, s), s))
    stretching = dot(omega, matrix_vector(s, omega))

    assert_equal 0, trace(m)
    assert_equal trace_s3 + Rational(3, 4) * stretching, trace_m3
    assert_equal 3 * determinant(m), trace_m3
    assert_equal 3 * determinant(m), frobenius(cofactor(m), m)
  end

  def test_ordered_strain_split_and_recombined_current_constants
    a = 5.to_r
    d = 2.to_r
    ell_0 = Rational(7, 3)
    s = diagonal(-a - d, -a + d, 2 * a)

    assert_equal 0, trace(s)
    assert_equal 6 * a * (a**2 - d**2),
                 trace(multiply(multiply(s, s), s))
    assert_operator d, :>=, 0
    assert_operator d, :<=, 3 * a

    cubic_mass = 2.to_r
    transverse_mass = 40.to_r
    collar = 3.to_r
    axial_mass = transverse_mass / 2 - 4 * cubic_mass -
                 2 * collar / 3
    original_record = 6 * cubic_mass + transverse_mass / 4 -
                      axial_mass / 2
    recombined_record = 8 * cubic_mass + collar / 3

    assert_equal 10, axial_mass
    assert_equal recombined_record, original_record

    original_current = Rational(-8, 15) * original_record
    reduced_current = Rational(-64, 15) * cubic_mass -
                      Rational(8, 45) * collar
    assert_equal reduced_current, original_current

    first_jet_unit_mass = Rational(-64, 15) * a * (a**2 - d**2)
    first_jet_constant_mass = ell_0 * first_jet_unit_mass
    assert_equal Rational(-64, 15) * ell_0 * a * (a**2 - d**2),
                 first_jet_constant_mass
  end

  def test_weighted_betchov_and_localized_enstrophy_on_exact_abc_flow
    samples = 16
    epsilon = 0.05
    c_f = 6.0
    nu = 0.7
    totals = Hash.new(0.0)
    negative_collar = 0.0

    samples.times do |ix|
      samples.times do |iy|
        samples.times do |iz|
          x = 2 * Math::PI * ix / samples
          y = 2 * Math::PI * iy / samples
          z = 2 * Math::PI * iz / samples
          u = abc_velocity(x, y, z)
          m = abc_gradient(x, y, z)
          s = scale(add(m, transpose(m)), 0.5)
          omega = u
          f = trace(multiply(multiply(m, m), m))
          grad_f = abc_trace_cube_gradient(x, y, z)
          ell = 1 + epsilon * f / c_f
          grad_ell = scale_vector(grad_f, epsilon / c_f)
          flux = matrix_vector(transpose(cofactor(m)), u)
          omega_square = dot(omega, omega)
          grad_omega_square = scale_vector(matrix_vector(transpose(m), omega), 2)
          d_t_ell = dot(u, grad_ell)

          totals[:trace_m3] += f
          totals[:weighted_trace_m3] += ell * f
          totals[:collar] += dot(grad_ell, flux)
          negative_collar += dot(scale_vector(grad_f, -epsilon / c_f), flux)
          totals[:strain_cube] += ell * trace(multiply(multiply(s, s), s))
          totals[:stretching] += ell * dot(omega, matrix_vector(s, omega))
          totals[:record] += ell * trace(multiply(multiply(transpose(m), m), s))
          totals[:unweighted_strain_cube] += trace(multiply(multiply(s, s), s))
          totals[:unweighted_record] += trace(multiply(multiply(transpose(m), m), s))

          totals[:localized_lhs] += ell * dot(omega, matrix_vector(s, omega))
          totals[:endpoint_half] += -nu * ell * omega_square
          totals[:selector] += -0.5 * omega_square * d_t_ell
          totals[:palinstrophy] += nu * ell * frobenius(m, m)
          totals[:viscous_collar] += 0.5 * nu * dot(grad_ell, grad_omega_square)
        end
      end
    end

    normalization = samples**3
    totals.transform_values! { |value| value / normalization }
    negative_collar /= normalization

    assert_in_delta 0.0, totals[:trace_m3], 1.0e-12
    assert_operator totals[:weighted_trace_m3], :>, 0
    assert_in_delta(-totals[:weighted_trace_m3], totals[:collar], 1.0e-12)
    assert_operator negative_collar, :>, 0
    assert_in_delta(
      -totals[:collar],
      totals[:strain_cube] + 0.75 * totals[:stretching],
      1.0e-12
    )
    assert_in_delta(
      (4.0 / 3) * totals[:strain_cube] + totals[:collar] / 3,
      totals[:record],
      1.0e-12
    )
    assert_in_delta(
      (4.0 / 3) * totals[:unweighted_strain_cube],
      totals[:unweighted_record],
      1.0e-12
    )

    localized_rhs = totals[:endpoint_half] + totals[:selector] +
                    totals[:palinstrophy] + totals[:viscous_collar]
    assert_in_delta totals[:localized_lhs], localized_rhs, 1.0e-12
    assert_in_delta(
      totals[:localized_lhs],
      -(4.0 / 3) * (totals[:strain_cube] + totals[:collar]),
      1.0e-12
    )
  end

  def test_moving_pair_selector_retains_balance_and_enstrophy_crossings
    psi = Rational(4, 7)
    psi_prime = Rational(5, 13)
    gamma = Rational(3, 8)
    gamma_dot = Rational(-2, 9)
    alpha = Rational(-7, 6)
    log_z_dot = Rational(11, 5)

    direct = psi * gamma_dot +
             gamma * psi_prime * (-alpha - log_z_dot)
    separated = psi * gamma_dot - gamma * psi_prime * alpha -
                gamma * psi_prime * log_z_dot

    assert_equal separated, direct
  end

  def test_note_preserves_supplier_recombination_and_open_boundary
    note = File.read(NOTE)

    assert_includes note, "one smooth\nfinite-energy datum"
    assert_includes note, %q{D_ta=-a^2-\frac{w^2}{12}}
    assert_includes note, %q{(I-e\otimes e)(\nabla^2p)^\circ e}
    assert_includes note, %q{aw^2}
    assert_includes note, %q{{1\over4}D_t(w^2)}
    assert_includes note, %q{\int_0^T\!\int w^2D_t\ell}
    assert_includes note, %q{\nu\int_0^T\!\int\ell|\nabla\omega|^2}
    assert_includes note, %q{\operatorname{tr}(M^3)}
    assert_includes note, %q{\nabla\ell\cdot(\operatorname{cof}M)^Tu}
    assert_includes note, %q{8\int a(a^2-d^2)}
    assert_includes note, %q{-{64\ell_0\over15\pi}\int a(a^2-d^2)}
    assert_includes note, %q{spatially constant, \(\ell_\zeta\equiv\ell_0\)}
    assert_includes note, "Neither (BWS.27b) nor (BWS.27c)\nreplaces the full finite-chord current"
    assert_includes note, %q{\mathcal J_{\rm WB}^{\zeta}(t)}
    assert_includes note, %q{a(d^2-a^2)}
    assert_includes note, "This upper comparison is not the canonical residual"
    assert_includes note, %q{\varepsilon |A|^3N\over\nu}
    assert_includes note, "exact global smooth periodic\nfinite-volume Navier--Stokes histories"
    assert_includes note, "finite-chord covariance defect"
    assert_includes note, "moving \\(Z\\)-gate"
    assert_includes note, "not prove (TIR.37a)"
    assert_includes note, "remains open"
  end

  private

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
  end

  def identity
    diagonal(1.to_r, 1.to_r, 1.to_r)
  end

  def trace(matrix)
    3.times.sum { |i| matrix[i][i] }
  end

  def transpose(matrix)
    3.times.map { |i| 3.times.map { |j| matrix[j][i] } }
  end

  def add(left, right)
    3.times.map { |i| 3.times.map { |j| left[i][j] + right[i][j] } }
  end

  def add_vectors(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def scale(matrix, factor)
    matrix.map { |row| row.map { |entry| entry * factor } }
  end

  def scale_vector(vector, factor)
    vector.map { |entry| entry * factor }
  end

  def multiply(left, right)
    3.times.map do |i|
      3.times.map do |j|
        3.times.sum { |k| left[i][k] * right[k][j] }
      end
    end
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def quadratic(vector, matrix)
    dot(vector, matrix_vector(matrix, vector))
  end

  def project_perp(vector)
    [vector[0], vector[1], 0.to_r]
  end

  def antisymmetric_from_vorticity(omega)
    wx, wy, wz = omega
    [
      [0.to_r, -wz / 2, wy / 2],
      [wz / 2, 0.to_r, -wx / 2],
      [-wy / 2, wx / 2, 0.to_r]
    ]
  end

  def vorticity_from_gradient(matrix)
    [
      matrix[2][1] - matrix[1][2],
      matrix[0][2] - matrix[2][0],
      matrix[1][0] - matrix[0][1]
    ]
  end

  def determinant(matrix)
    matrix[0][0] * (matrix[1][1] * matrix[2][2] - matrix[1][2] * matrix[2][1]) -
      matrix[0][1] * (matrix[1][0] * matrix[2][2] - matrix[1][2] * matrix[2][0]) +
      matrix[0][2] * (matrix[1][0] * matrix[2][1] - matrix[1][1] * matrix[2][0])
  end

  def cofactor(matrix)
    a, b, c = matrix[0]
    d, e, f = matrix[1]
    g, h, i = matrix[2]
    [
      [e * i - f * h, -(d * i - f * g), d * h - e * g],
      [-(b * i - c * h), a * i - c * g, -(a * h - b * g)],
      [b * f - c * e, -(a * f - c * d), a * e - b * d]
    ]
  end

  def frobenius(left, right)
    3.times.sum do |i|
      3.times.sum { |j| left[i][j] * right[i][j] }
    end
  end

  def abc_velocity(x, y, z)
    [Math.sin(z) + Math.cos(y),
     Math.sin(x) + Math.cos(z),
     Math.sin(y) + Math.cos(x)]
  end

  def abc_gradient(x, y, z)
    [
      [0.0, -Math.sin(y), Math.cos(z)],
      [Math.cos(x), 0.0, -Math.sin(z)],
      [-Math.sin(x), Math.cos(y), 0.0]
    ]
  end

  def abc_trace_cube_gradient(x, y, z)
    [
      3 * (-Math.sin(x) * Math.cos(y) * Math.cos(z) -
           Math.cos(x) * Math.sin(y) * Math.sin(z)),
      3 * (-Math.cos(x) * Math.sin(y) * Math.cos(z) -
           Math.sin(x) * Math.cos(y) * Math.sin(z)),
      3 * (-Math.cos(x) * Math.cos(y) * Math.sin(z) -
           Math.sin(x) * Math.sin(y) * Math.cos(z))
    ]
  end

  def assert_vector_equal(expected, actual)
    expected.zip(actual).each { |left, right| assert_equal left, right }
  end
end
