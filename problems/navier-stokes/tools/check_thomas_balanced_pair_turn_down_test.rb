#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasBalancedPairTurnDownTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-balanced-pair-radial-covariance-and-turn-down-boundary-20260804.md"
  )

  def test_incompressible_spherical_mean_and_fourth_moment_covariance
    m = [
      [2.to_r, -1.to_r, 3.to_r],
      [4.to_r, -5.to_r, 2.to_r],
      [-2.to_r, 1.to_r, 3.to_r]
    ]
    s = scale(add(m, transpose(m)), Rational(1, 2))
    gram = multiply(transpose(m), m)

    assert_equal 0, trace(m)
    assert_equal 0, trace(s) / 3

    normalized_angular_covariance = 3.times.sum do |i|
      3.times.sum do |j|
        3.times.sum do |k|
          3.times.sum do |l|
            gram[i][j] * s[k][l] * sphere_fourth(i, j, k, l)
          end
        end
      end
    end
    expected = Rational(2, 15) * trace(multiply(gram, s))

    assert_equal expected, normalized_angular_covariance
  end

  def test_balanced_star_has_favorable_no_wobble_part_and_sharp_axial_residual
    a = 2.to_r
    axial_vorticity = 5.to_r
    transverse_vorticity = 7.to_r
    s = diagonal(-a, -a, 2 * a)

    axial_m = add(s, antisymmetric_from_vorticity([0.to_r, 0.to_r, axial_vorticity]))
    transverse_m = add(s, antisymmetric_from_vorticity([transverse_vorticity, 0.to_r, 0.to_r]))

    no_wobble = trace(multiply(multiply(s, s), s))
    axial = trace(multiply(multiply(transpose(axial_m), axial_m), s))
    transverse = trace(multiply(multiply(transpose(transverse_m), transverse_m), s))

    assert_equal 6 * a**3, no_wobble
    assert_equal 6 * a**3 - a * axial_vorticity**2 / 2, axial
    assert_equal 6 * a**3 + a * transverse_vorticity**2 / 4, transverse
    assert_operator no_wobble, :>, 0

    saturation = Math.sqrt(12.0) * a.to_f
    saturated_m = add(
      s,
      antisymmetric_from_vorticity([0.0, 0.0, saturation])
    )
    saturated = trace(multiply(multiply(transpose(saturated_m), saturated_m), s))
    assert_in_delta 0.0, saturated.to_f, 1.0e-10
  end

  def test_selected_record_identity_and_complementary_no_recount
    e = Rational(11, 7)
    alpha = Rational(-3, 5)
    chi = Rational(4, 9)
    gamma = Rational(2, 3)
    gamma_dot = Rational(-5, 8)
    e_dot = e * (2 * chi - 4 * alpha)
    j = -4 * e * alpha

    selected_endpoint_dot = gamma_dot * e + gamma * e_dot
    selected = selected_endpoint_dot - e * gamma_dot - 2 * gamma * e * chi
    assert_equal gamma * j, selected

    complement_endpoint_dot = -gamma_dot * e + (1 - gamma) * e_dot
    complement = complement_endpoint_dot + e * gamma_dot -
                 2 * (1 - gamma) * e * chi
    assert_equal (1 - gamma) * j, complement
    assert_equal j, selected + complement
    assert_equal e_dot - 2 * e * chi, selected + complement
  end

  def test_moving_gate_keeps_balance_selection_and_log_enstrophy_flux
    psi = Rational(3, 7)
    psi_prime = Rational(5, 11)
    gamma = Rational(4, 9)
    gamma_dot = Rational(-2, 13)
    alpha = Rational(-7, 5)
    log_z_dot = Rational(9, 4)

    direct = psi * gamma_dot +
             gamma * psi_prime * (-alpha - log_z_dot)
    separated = psi * gamma_dot - gamma * psi_prime * alpha -
                gamma * psi_prime * log_z_dot

    assert_equal direct, separated
    refute_equal psi * gamma_dot - gamma * psi_prime * alpha, direct
  end

  def test_decaying_abc_flow_has_exact_balanced_stagnation_and_zero_leray_source
    q = [-Math::PI / 4, -Math::PI / 4, -Math::PI / 4]
    u_q = abc_velocity(*q)
    m_q = abc_gradient(*q)
    axis = normalize([1.0, 1.0, 1.0])
    transverse = normalize([1.0, -1.0, 0.0])
    c = Math.sqrt(2.0) / 2

    u_q.each { |entry| assert_in_delta 0.0, entry, 1.0e-12 }
    assert_matrix_in_delta m_q, transpose(m_q), 1.0e-12
    assert_vector_in_delta scale_vector(axis, 2 * c), matrix_vector(m_q, axis), 1.0e-12
    assert_vector_in_delta scale_vector(transverse, -c), matrix_vector(m_q, transverse), 1.0e-12

    sample = [0.23, -0.71, 1.17]
    u = abc_velocity(*sample)
    m = abc_gradient(*sample)
    curl = abc_curl(*sample)
    convective = matrix_vector(m, u)
    bernoulli_gradient = matrix_vector(transpose(m), u)

    assert_in_delta 0.0, trace(m), 1.0e-12
    assert_vector_in_delta u, curl, 1.0e-12
    assert_vector_in_delta convective, bernoulli_gradient, 1.0e-12

    m_zero = abc_gradient(0.0, 0.0, 0.0)
    s_zero = scale(add(m_zero, transpose(m_zero)), 0.5)
    gram_zero = multiply(transpose(m_zero), m_zero)
    assert_matrix_in_delta identity, gram_zero, 1.0e-12
    assert_in_delta 0.0, trace(multiply(gram_zero, s_zero)), 1.0e-12

    integral = 0.73
    transverse_factor = Math.exp(-integral)
    axial_factor = Math.exp(2 * integral)
    assert_in_delta 1.0, transverse_factor**2 * axial_factor, 1.0e-12
  end

  def test_exact_heat_shear_pair_contracts_then_reexpands
    nu = 2.0
    v0 = 4.0
    initial_rx = -1.0
    transverse_gap = 1.0
    crossing_decay = 1.0 + nu * initial_rx / v0
    crossing_time = -Math.log(crossing_decay) / nu

    before = shear_pair_state(0.0, nu, v0, initial_rx, transverse_gap)
    at = shear_pair_state(crossing_time, nu, v0, initial_rx, transverse_gap)
    after = shear_pair_state(2 * crossing_time, nu, v0, initial_rx, transverse_gap)

    assert_operator before[:alpha], :<, 0
    assert_in_delta 0.0, at[:alpha], 1.0e-12
    assert_operator after[:alpha], :>, 0
    assert_operator at[:k], :>, before[:k]
    assert_operator at[:k], :>, after[:k]
    assert_in_delta at[:beta_square], at[:alpha_dot], 1.0e-12
    assert_in_delta 0.0, at[:radial_response], 1.0e-12
  end

  def test_note_keeps_full_recombination_and_honest_boundary
    note = File.read(NOTE)

    assert_includes note, "one smooth finite-energy datum"
    assert_includes note, "every orientation is recombined before a sign is read"
    assert_includes note, %q{\mathscr C_u(x,r)}
    assert_includes note, %q{\operatorname{tr}(M^TM S)}
    assert_includes note, %q{6a^3+{a\over4}|\omega_\perp|^2}
    assert_includes note, %q{\mathcal R_{\rm bal}^{\zeta}(t)}
    assert_includes note, %q{-\nabla^2p+\nu\Delta\nabla u}
    assert_includes note, %q{(\nabla^2p)^\circ}
    assert_includes note, %q{-\int_0^T\!\iint eD_t\Gamma}
    assert_includes note, %q{\alpha+{Z'\over Z}}
    assert_includes note, %q{not a claim that \(K=h\)}
    assert_includes note, "complementary current"
    assert_includes note, "decaying ABC flow"
    assert_includes note, "first contracts, reaches its minimum\ndistance"
    assert_includes note, "does **not** prove\n`(TIR.37a)`"
    assert_includes note, "The MPP therefore\nremains open"
  end

  private

  def sphere_fourth(i, j, k, l)
    Rational(delta(i, j) * delta(k, l) +
             delta(i, k) * delta(j, l) +
             delta(i, l) * delta(j, k), 15)
  end

  def delta(i, j)
    i == j ? 1 : 0
  end

  def diagonal(a, b, c)
    [[a, 0, 0], [0, b, 0], [0, 0, c]]
  end

  def identity
    diagonal(1.0, 1.0, 1.0)
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

  def scale(matrix, factor)
    matrix.map { |row| row.map { |entry| entry * factor } }
  end

  def multiply(left, right)
    3.times.map do |i|
      3.times.map do |j|
        3.times.sum { |k| left[i][k] * right[k][j] }
      end
    end
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| row.zip(vector).sum { |entry, value| entry * value } }
  end

  def antisymmetric_from_vorticity(omega)
    wx, wy, wz = omega
    [
      [0, -wz / 2, wy / 2],
      [wz / 2, 0, -wx / 2],
      [-wy / 2, wx / 2, 0]
    ]
  end

  def normalize(vector)
    norm = Math.sqrt(vector.sum { |entry| entry**2 })
    vector.map { |entry| entry / norm }
  end

  def scale_vector(vector, factor)
    vector.map { |entry| entry * factor }
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

  def abc_curl(x, y, z)
    [Math.cos(y) + Math.sin(z),
     Math.cos(z) + Math.sin(x),
     Math.cos(x) + Math.sin(y)]
  end

  def shear_pair_state(time, nu, v0, initial_rx, transverse_gap)
    decay = Math.exp(-nu * time)
    velocity = v0 * decay
    rx = initial_rx + v0 * (1 - decay) / nu
    radius_square = rx**2 + transverse_gap**2
    alpha = velocity * rx / radius_square
    k = 1 / Math.sqrt(radius_square)
    beta_square = velocity**2 / radius_square - alpha**2
    acceleration = -nu * velocity
    radial_response = acceleration * rx / radius_square
    alpha_dot = -alpha**2 + beta_square + radial_response

    {
      alpha: alpha,
      k: k,
      beta_square: beta_square,
      radial_response: radial_response,
      alpha_dot: alpha_dot
    }
  end

  def assert_vector_in_delta(expected, actual, delta)
    expected.zip(actual).each do |left, right|
      assert_in_delta left, right, delta
    end
  end

  def assert_matrix_in_delta(expected, actual, delta)
    3.times do |i|
      3.times do |j|
        assert_in_delta expected[i][j], actual[i][j], delta
      end
    end
  end
end
