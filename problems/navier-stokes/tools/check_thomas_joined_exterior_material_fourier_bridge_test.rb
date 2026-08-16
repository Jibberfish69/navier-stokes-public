#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasJoinedExteriorMaterialFourierBridgeTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-joined-exterior-material-pair-dynamic-fourier-core-boundary-20260804.md"
  )

  def test_finite_pair_vpi_and_critical_inverse_length_current
    r = 5.to_r
    alpha = Rational(-3, 2)
    beta = [0.to_r, Rational(4, 3), Rational(-2, 5)]
    response = Rational(7, 4)
    alpha_dot = -alpha**2 + dot(beta, beta) + response

    velocity_square = r**2 * (alpha**2 + dot(beta, beta))
    e = Rational(1, 4) * velocity_square / r**4
    k = 1 / r
    k_dot = -alpha * k
    current = -4 * e * alpha

    assert_equal response, alpha_dot + alpha**2 - dot(beta, beta)
    assert_equal current, 4 * (e / k) * k_dot
    assert_operator current, :>, 0
  end

  def test_record_weight_adds_the_exact_selection_term
    alpha = Rational(-2, 3)
    beta_square = Rational(5, 7)
    chi = Rational(-4, 9)
    psi_prime = Rational(3, 8)
    theta = Rational(7, 10)
    e = Rational(11, 13)
    response = Rational(17, 19)
    alpha_dot = -alpha**2 + beta_square + response
    sigma = 2 * chi - 4 * alpha
    theta_dot = -psi_prime * alpha

    direct = e * theta * response
    endpoint_derivative = e * theta * alpha_dot +
                          sigma * e * theta * alpha +
                          e * theta_dot * alpha
    reconstructed = endpoint_derivative +
                    e * psi_prime * alpha**2 +
                    e * theta * (5 * alpha**2 - beta_square - 2 * chi * alpha)

    assert_equal direct, reconstructed
    assert_equal 4 * alpha**2 - 2 * chi * alpha,
                 (5 * alpha**2 - beta_square - 2 * chi * alpha) -
                 (alpha**2 - beta_square)
  end

  def test_quantized_crossing_endpoint_contains_critical_pair_storage
    e = Rational(9, 7)
    k = Rational(13, 5)
    chi = Rational(4, 11)
    alpha = Rational(-3, 8)
    w = e / k
    w_dot = w * (2 * chi - 3 * alpha)
    k_dot = -alpha * k
    current = 4 * w * k_dot
    endpoint_derivative = 4 * (w_dot * k + w * k_dot)
    selection = 4 * k * w_dot

    assert_equal e, w * k
    assert_equal current, endpoint_derivative - selection
    assert_equal(-4 * e * alpha, current)
  end

  def test_material_tangent_and_dual_covector_have_unbounded_angle_defect
    shear = 37.to_r
    f = [
      [1.to_r, shear, 0.to_r],
      [0.to_r, 1.to_r, 0.to_r],
      [0.to_r, 0.to_r, 1.to_r]
    ]
    f_inverse_transpose = [
      [1.to_r, 0.to_r, 0.to_r],
      [-shear, 1.to_r, 0.to_r],
      [0.to_r, 0.to_r, 1.to_r]
    ]
    eta = [1.to_r, 0.to_r, 0.to_r]
    zeta = eta
    tangent = matrix_vector(f, eta)
    covector = matrix_vector(f_inverse_transpose, zeta)
    k = 1 / Math.sqrt(dot(tangent, tangent).to_f)
    h = Math.sqrt(dot(covector, covector).to_f)
    cosine = dot(tangent, covector).to_f /
             Math.sqrt(dot(tangent, tangent).to_f * dot(covector, covector).to_f)

    assert_equal 1, determinant(f)
    assert_equal 1, dot(tangent, covector)
    assert_in_delta 1.0, k, 1.0e-12
    assert_in_delta k / cosine.abs, h, 1.0e-12
    assert_operator h, :>, 30
  end

  def test_moving_enstrophy_boundary_destroys_the_fixed_threshold_sign
    psi_prime = Rational(5, 9)
    alpha = -2.to_r

    [-3.to_r, 5.to_r].each do |log_z_rate|
      theta_dot = psi_prime * (-alpha - log_z_rate)
      membership = -theta_dot * alpha
      expected = psi_prime * (alpha**2 + alpha * log_z_rate)

      assert_equal expected, membership
    end

    positive = psi_prime * (alpha**2 + alpha * -3)
    negative = psi_prime * (alpha**2 + alpha * 5)
    assert_operator positive, :>, 0
    assert_operator negative, :<, 0
  end

  def test_finite_dimensional_material_metric_commutator_identity
    transport = [
      [0.to_r, -2.to_r, 1.to_r],
      [2.to_r, 0.to_r, -3.to_r],
      [-1.to_r, 3.to_r, 0.to_r]
    ]
    metric = [
      [4.to_r, 1.to_r, 0.to_r],
      [1.to_r, 7.to_r, 2.to_r],
      [0.to_r, 2.to_r, 9.to_r]
    ]
    state = [2.to_r, -1.to_r, 3.to_r]
    commutator = subtract_matrices(
      multiply(transport, metric),
      multiply(metric, transport)
    )
    left = dot(state, matrix_vector(commutator, state)) / 2
    right = -dot(matrix_vector(transport, state),
                 matrix_vector(metric, state))

    assert_equal right, left
  end

  def test_note_keeps_the_exact_bridge_and_all_unpaid_terms
    note = File.read(NOTE)

    assert_includes note, %q{j_{ab}=-4e_{ab}\alpha_{ab}}
    assert_includes note, %q{4{e_{ab}\over K_{ab}}D_tK_{ab}}
    assert_includes note, %q{\mathbb A_u:\mathsf C}
    assert_includes note, %q{\mathcal P_{1/2}^{\rm core}(t)}
    assert_includes note, "\\rho_t\\{r\\ge\\delta\\}"
    assert_includes note, "source or `(FIM.49)`-core\nco-location"
    assert_includes note, %q{h={K\over|m\cdot n|}}
    assert_includes note, %q{2\chi_{ab}-3\alpha_{ab}}
    assert_includes note, %q{\alpha{Z'\over Z}}
    assert_includes note, "record-selection term"
    assert_includes note, "dual-orientation and nonlinear-recruitment defect"
    assert_includes note, "does **not** give a datum-finite bound"
    assert_includes note, "no proof of `(TIR.37a)`"
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def multiply(left, right)
    3.times.map do |i|
      3.times.map do |j|
        3.times.sum { |k| left[i][k] * right[k][j] }
      end
    end
  end

  def subtract_matrices(left, right)
    3.times.map do |i|
      3.times.map { |j| left[i][j] - right[i][j] }
    end
  end

  def determinant(matrix)
    matrix[0][0] * (matrix[1][1] * matrix[2][2] - matrix[1][2] * matrix[2][1]) -
      matrix[0][1] * (matrix[1][0] * matrix[2][2] - matrix[1][2] * matrix[2][0]) +
      matrix[0][2] * (matrix[1][0] * matrix[2][1] - matrix[1][1] * matrix[2][0])
  end
end
