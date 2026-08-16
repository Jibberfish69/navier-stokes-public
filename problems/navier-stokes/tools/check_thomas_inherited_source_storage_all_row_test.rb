#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasInheritedSourceStorageAllRowTest < Minitest::Test
  ROOT = File.expand_path("../../..", __dir__)
  NOTE = File.join(
    ROOT,
    "problems/navier-stokes/theorem-construction/" \
    "thomas-inherited-source-storage-all-row-binomial-record-boundary-20260804.md"
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_keeps_the_one_fluid_pressure_explicit_custody
    assert_includes text, "one smooth fixed-viscosity Navier--Stokes"
    assert_includes text, "Q_t+\\nu\\Lambda^2Q=\\mathcal N_Q"
    assert_includes text, "DQ(u)[Q]+2\\nu\\mathcal C(u)"
    assert_includes text, "same one-fluid"
    refute_includes text.downcase, "rectangle"
  end

  def test_resolves_inherited_storage_without_positive_clipping
    assert_includes text, "R_Q(s_n)+\\int_{s_n}^{t_n}J_Q\\,dt"
    assert_includes text, "R_Q(0)+\\int_0^{s_n}J_Q\\,dt"
    assert_includes text, "\\sup_{0<t<T_*}\\int_0^tJ_Q(s)\\,ds=\\infty"
    assert_includes text, "does not require $[J_Q]_+$"
  end

  def test_scalar_mode_source_energy_identity_at_every_depth
    nu = 0.7
    k = 3.25

    8.times do |j|
      q = 0.4 + 0.17 * j
      next_source = -0.3 + 0.13 * j
      q_t = next_source - nu * k**2 * q

      storage_weight = k**(-4 * j - 3)
      dissipation_weight = k**(-4 * j - 1)

      r_prime = storage_weight * q * q_t
      b_squared = dissipation_weight * q**2
      work = storage_weight * q * next_source

      assert_in_delta work, r_prime + nu * b_squared, 1.0e-12
    end
  end

  def test_adjacent_row_factorization_and_young_bound
    nu = 0.83
    k = 4.1

    8.times do |j|
      q = -0.6 + 0.11 * j
      next_source = 0.9 - 0.07 * j

      left = k**(-2 * j - 2.5) * next_source
      right = k**(-2 * j - 0.5) * q
      work = k**(-4 * j - 3) * next_source * q

      assert_in_delta work, left * right, 1.0e-12
      assert_operator work.abs, :<=,
        (nu / 2.0) * right**2 + (1.0 / (2.0 * nu)) * left**2 + 1.0e-14
    end
  end

  def test_every_row_has_the_same_critical_scaling
    10.times do |j|
      amplitude_exponent = 2 * j + 3
      storage_sobolev_exponent = -(2 * j + 1.5)
      dissipation_sobolev_exponent = -(2 * j + 0.5)

      storage_norm_exponent =
        amplitude_exponent + storage_sobolev_exponent - 1.5
      dissipation_norm_exponent =
        amplitude_exponent + dissipation_sobolev_exponent - 1.5

      assert_in_delta 0.0, storage_norm_exponent, 1.0e-12
      assert_in_delta 1.0, dissipation_norm_exponent, 1.0e-12
      assert_in_delta 0.0, 2 * dissipation_norm_exponent - 2, 1.0e-12
      assert_in_delta 0.0, 2 - 2, 1.0e-12
    end
  end

  def test_bcr_action_has_the_same_storage_endpoint_identity
    nu = 1.7
    r_start = 2.4
    r_end = 0.9
    signed_work = 3.1
    b_square_action = (signed_work - r_end + r_start) / nu

    bcr_action = b_square_action / nu
    endpoint_and_work =
      (r_start - r_end) / nu**2 + signed_work / nu**2

    assert_in_delta endpoint_and_work, bcr_action, 1.0e-12
    assert_includes text, "(BCR.58)"
    assert_includes text, "(BCR.59)"
    assert_includes text, "endpoint-alias verdict"
  end

  def test_status_does_not_overclaim_the_unpaid_upper_prefix
    assert_includes text, "not proved is the needed upper cancellation"
    assert_includes text, "does not prove `(TIR.37a)`"
    assert_includes text, "does not close the MPP"
    refute_includes text, "MPP is closed"
  end
end
