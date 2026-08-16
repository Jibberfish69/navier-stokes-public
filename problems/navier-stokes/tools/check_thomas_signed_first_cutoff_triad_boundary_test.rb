#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasSignedFirstCutoffTriadBoundaryTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  NOTE = File.join(
    ROOT,
    "theorem-construction",
    "thomas-signed-first-cutoff-moment-three-leg-triad-boundary-20260803.md"
  )

  TOLERANCE = 1.0e-10

  def transfer_vector(radii, signs, gamma)
    h = radii.zip(signs).map { |radius, sign| radius * sign }
    [
      gamma * (h[2] - h[1]),
      gamma * (h[0] - h[2]),
      gamma * (h[1] - h[0])
    ]
  end

  def dot(left, right)
    left.zip(right).sum { |x, y| x * y }
  end

  def cutoff_layer_cake(radii, transfers)
    radii.zip(transfers).sum { |radius, transfer| radius * transfer }
  end

  def piecewise_cutoff_layer_cake(radii, transfers)
    ordered = radii.zip(transfers).sort_by(&:first)
    r1, t1 = ordered[0]
    r2, = ordered[1]
    r3, t3 = ordered[2]
    -(r2 - r1) * t1 + (r3 - r2) * t3
  end

  def test_three_leg_transfer_preserves_energy_and_signed_helicity
    samples = [
      [[1.0, 1.4, 2.0], [1, 1, 1], 0.7],
      [[1.0, 1.3, 1.8], [-1, 1, 1], -1.2],
      [[1.1, 1.7, 2.2], [1, -1, 1], 0.45],
      [[1.2, 1.5, 2.4], [-1, -1, 1], 2.0]
    ]

    samples.each do |radii, signs, gamma|
      transfers = transfer_vector(radii, signs, gamma)
      signed_radii = radii.zip(signs).map { |radius, sign| radius * sign }

      assert_in_delta 0.0, transfers.sum, TOLERANCE
      assert_in_delta 0.0, dot(signed_radii, transfers), TOLERANCE
    end
  end

  def test_signed_cutoff_layer_cake_keeps_both_adjacent_face_lobes
    radii = [1.0, 1.6, 2.1]
    transfers = transfer_vector(radii, [-1, 1, 1], 0.8)

    direct = cutoff_layer_cake(radii, transfers)
    from_faces = piecewise_cutoff_layer_cake(radii, transfers)

    assert_in_delta direct, from_faces, TOLERANCE
  end

  def test_homochiral_sector_cancels_and_every_heterochiral_sector_is_singleton
    radii = [1.0, 1.35, 1.9]
    gamma = 0.63

    [[1, 1, 1], [-1, -1, -1]].each do |signs|
      transfers = transfer_vector(radii, signs, gamma)
      assert_in_delta 0.0, cutoff_layer_cake(radii, transfers), TOLERANCE
    end

    [[-1, 1, 1], [1, -1, 1], [1, 1, -1],
     [1, -1, -1], [-1, 1, -1], [-1, -1, 1]].each do |signs|
      transfers = transfer_vector(radii, signs, gamma)
      singleton = signs.each_index.find do |index|
        signs.count(signs[index]) == 1
      end

      critical = cutoff_layer_cake(radii, transfers)
      expected = 2.0 * radii[singleton] * transfers[singleton]
      assert_in_delta expected, critical, TOLERANCE
    end
  end

  def test_invariant_quotient_is_supported_only_on_the_unique_helicity_leg
    radii = [1.1, 1.5, 2.2]
    signs = [1, -1, -1]
    singleton = 0
    majority_sign = -1
    signed_radii = radii.zip(signs).map { |radius, sign| radius * sign }
    quotient = radii.zip(signed_radii).map do |radius, signed_radius|
      radius - majority_sign * signed_radius
    end

    expected = [2.0 * radii[singleton], 0.0, 0.0]
    quotient.zip(expected).each do |actual, target|
      assert_in_delta target, actual, TOLERANCE
    end
  end

  def test_gap_multiplier_remains_critical_under_dilation
    radii = [1.0, 1.1, 1.7]
    signs = [-1, 1, 1]
    gamma = 1.0
    base = cutoff_layer_cake(radii, transfer_vector(radii, signs, gamma))

    [2.0, 7.0, 13.0].each do |scale|
      scaled_radii = radii.map { |radius| scale * radius }
      scaled = cutoff_layer_cake(
        scaled_radii,
        transfer_vector(scaled_radii, signs, gamma)
      )
      assert_in_delta scale**2 * base, scaled, 1.0e-8
    end
  end

  def test_every_fixed_endpoint_representative_retains_balanced_common_mode
    [-4.0, -1.0, 0.0, 0.75, 3.0].each do |b|
      plus_slope = 1.0 + b
      minus_slope = 1.0 - b

      assert_operator [plus_slope, minus_slope].max, :>=, 1.0
      assert_in_delta 2.0, plus_slope + minus_slope, TOLERANCE

      radius = 10_000.0
      balanced_weight = plus_slope * radius + minus_slope * radius
      assert_in_delta 2.0 * radius, balanced_weight, TOLERANCE
    end
  end

  def test_note_keeps_closure_boundary_and_history_custody_explicit
    note = File.read(NOTE)

    assert_includes note, "fully symmetrized three-leg true-Leray triad current"
    assert_includes note, "before any positive part"
    assert_includes note, "unique-helicity leg"
    assert_includes note, "Fourier-diagonal helical quadratic endpoint"
    assert_includes note, "does **not** bound the first signed prefix from the datum"
    assert_includes note, "phase- and history-dependent cancellation"
    assert_includes note, "unpaid implication"
  end
end
