# frozen_string_literal: true

require "minitest/autorun"

class ThomasHeatAgeEndpointIntegrabilityRecordSpikeTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/thomas-datum-paid-heat-age-endpoint-integrability-and-last-record-spike-dichotomy-20260804.md",
    __dir__
  )

  def test_note_locks_proof_scope_and_trace_boundary
    note = File.read(NOTE)

    assert_includes note, "\\mathcal B_{\\rm ha}"
    assert_includes note, "\\mathcal K_Q=R_Q+2\\nu^2\\mathcal B_{\\rm ha}"
    assert_includes note, "belongs to \\(L_t^{4/3}\\)"
    assert_includes note, "does not give a uniform endpoint"
    assert_includes note, "\\mathcal M_Hu"
    assert_includes note, "g_\\nabla u"
    assert_includes note, "g_\\Lambda u"
    assert_includes note, "heat Littlewood--Paley square-function"
    assert_includes note, "No absolute value was taken before this recombination"
    assert_includes note, "K endpoint"
    assert_includes note, "B endpoint"
    assert_includes note, "joined residual"
    assert_includes note, "\\mathcal K_Q'=J_Q-2\\nu^2\\mathcal Y_\\zeta"
    assert_includes note, "time integrability permits endpoint spikes"
    assert_includes note, "not an admitted\nNavier--Stokes history"
    assert_includes note, "not a\nreduction to a smaller critical payment"
    assert_includes note, "not `(TIR.37a)` or MPP closure"
  end

  def test_energy_enstrophy_exponents_are_forced
    # If U^alpha G^beta is cubic in amplitude and invariant under
    # u_lambda=lambda*u(lambda*x), then alpha+beta=3 and -alpha+beta=0.
    alpha = Rational(3, 2)
    beta = Rational(3, 2)

    assert_equal 3, alpha + beta
    assert_equal 0, -alpha + beta

    time_power = Rational(3, 4)
    assert_equal 1, time_power * Rational(4, 3)

    50.times do
      amplitude = 0.1 + rand * 10
      spatial_scale = 0.1 + rand * 10
      u_norm = 0.1 + rand * 4
      grad_norm = 0.1 + rand * 4

      original = u_norm**1.5 * grad_norm**1.5
      scaled_u = amplitude * spatial_scale**-0.5 * u_norm
      scaled_grad = amplitude * spatial_scale**0.5 * grad_norm
      scaled = scaled_u**1.5 * scaled_grad**1.5

      assert_in_delta amplitude**3 * original, scaled, 1e-10
    end
  end

  def test_local_holder_bound_has_exact_quarter_three_quarters_powers
    100.times do
      count = 1 + rand(30)
      dt = 0.001 + rand
      values = Array.new(count) { rand * 20 }
      interval_length = count * dt
      z_mass = values.sum * dt
      left = values.sum { |z| z**0.75 } * dt
      right = interval_length**0.25 * z_mass**0.75

      assert_operator left, :<=, right + 1e-10
    end
  end

  def test_signed_last_record_identity_forces_exact_trichotomy
    200.times do
      nu = 0.1 + rand * 3
      l_value = 0.1 + rand * 100
      k_terminal = -100 + rand * 200
      b_entering = -100 + rand * 200
      residual_prefix =
        (l_value + rand * 20 - k_terminal + 2 * nu**2 * b_entering) /
        (2 * nu**2)

      joined =
        k_terminal -
        2 * nu**2 * b_entering +
        2 * nu**2 * residual_prefix
      assert_operator joined, :>=, l_value - 1e-10

      branch =
        k_terminal >= l_value / 3.0 ||
        b_entering <= -l_value / (6 * nu**2) ||
        residual_prefix >= l_value / (6 * nu**2)
      assert branch
    end
  end

  def test_endpoint_height_thresholds_follow_pointwise_bounds
    100.times do
      c_r = 0.2 + rand * 4
      c_b = 0.2 + rand * 4
      nu = 0.2 + rand * 3
      energy = 0.2 + rand * 10
      l_value = 0.2 + rand * 100

      k_linear = l_value / (6 * c_r * energy)
      k_fractional =
        (l_value / (12 * c_b * nu * energy**0.75))**(4.0 / 3.0)
      z_below = 0.99 * [k_linear, k_fractional].min
      k_bound =
        c_r * energy * z_below +
        2 * c_b * nu * energy**0.75 * z_below**0.75
      assert_operator k_bound, :<, l_value / 3.0

      b_threshold =
        (l_value / (6 * c_b * nu * energy**0.75))**(4.0 / 3.0)
      b_bound_below =
        c_b / nu * energy**0.75 * (0.99 * b_threshold)**0.75
      assert_operator b_bound_below, :<, l_value / (6 * nu**2)
    end
  end

  def test_endpoint_spike_lemma_dichotomy
    200.times do
      p_value = [1.0, 4.0 / 3.0, 2.0].sample
      mass = 0.01 + rand * 10
      height = 0.01 + rand * 20
      interval = 0.001 + rand * 3

      low_point_bound = (mass / interval)**(1.0 / p_value)
      required_variation = [height - low_point_bound, 0].max

      short =
        interval <= 2**p_value * mass / height**p_value + 1e-12
      variation =
        required_variation >= height / 2.0 - 1e-12
      assert(short || variation)
    end
  end

  def test_disjoint_time_masses_force_vanishing_local_mass_not_trace
    total = 1.0
    masses = 20.times.map { |n| 2.0**(-(n + 1)) }
    assert_in_delta total, masses.sum, 1e-6
    assert_operator masses.last, :<, 1e-5

    # Endpoint heights can still diverge if widths shrink fast enough.
    lp_mass = 0.0
    20.times do |n|
      height = 2.0**n
      p_value = 4.0 / 3.0
      width = 2.0**(-3 * n - 4)
      lp_mass += height**p_value * width
    end
    assert_operator lp_mass, :<, Float::INFINITY
    assert_operator 2.0**19, :>, 100_000
  end
end
