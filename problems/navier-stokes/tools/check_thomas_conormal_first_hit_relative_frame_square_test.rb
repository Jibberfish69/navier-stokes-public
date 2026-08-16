#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"
require "matrix"

class ThomasConormalFirstHitRelativeFrameSquareTest < Minitest::Test
  TOL = 1.0e-12
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-conormal-first-hit-relative-frame-critical-square-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_weighted_cauchy_constant_is_sharp
    ell = 7.0
    c_values = [1.0, 2.0, 4.0]
    quantum = Math::PI / 6.0
    proportionality = quantum / ell
    response_values = c_values.map { |c| proportionality * c }

    action = c_values.sum
    response_action = response_values.sum
    square = response_values.zip(c_values).sum { |response, c| response**2 / c }

    assert_in_delta ell, action, TOL
    assert_in_delta quantum, response_action, TOL
    assert_in_delta Math::PI**2 / (36.0 * ell), square, TOL
    assert_includes text, "\\ge{\\pi^2\\over36\\ell}"
    assert_includes text, "constant is sharp"
  end

  def test_disjoint_episode_summation_pays_one_quantum_per_hit
    ell = 3.0
    hit_count = 5
    quantum_square = Math::PI**2 / (36.0 * ell)
    episode_squares = Array.new(hit_count, quantum_square)

    assert_in_delta hit_count * quantum_square, episode_squares.sum, TOL
    assert_includes text, "N_{{\\rm rf},\\ell}(a)"
    assert_includes text, "\\mathfrak F_{{\\rm rf},\\ell}(I)"
    assert_includes text, "first-hit pieces belonging to distinct active episodes are\ndisjoint"
  end

  def test_label_integrated_reduction_and_scaling_use_the_same_volume_factor
    ell = 2.5
    counts = [2, 3]
    label_volumes = [0.75, 1.25]
    quantum_square = Math::PI**2 / (36.0 * ell)
    count_mass = counts.zip(label_volumes).sum { |count, volume| count * volume }
    selected_charge = quantum_square * count_mass
    full_high_rate_charge = selected_charge + 4.0
    kappa = 7.0
    volume_factor = kappa**-3

    assert_operator selected_charge, :<=, full_high_rate_charge
    assert_in_delta quantum_square * count_mass, selected_charge, TOL
    assert_in_delta selected_charge * volume_factor,
                    quantum_square * count_mass * volume_factor,
                    TOL
    assert_includes text, "using volume preservation gives the exact\nglobal reduction"
    assert_includes text, "both acquire the same factor\n\\(\\kappa^{-3}\\)"
  end

  def test_collision_safe_join_matches_component_formula
    c = 5.0
    b = 2.0
    e = 3.0
    gaps = [c + b, c + e]
    primitive_off_diagonal = [1.7, -0.9]
    material_rotation = [0.4, -0.25]
    joined = primitive_off_diagonal.zip(gaps, material_rotation).map do |n, gap, omega|
      n + gap * omega
    end
    response = joined.zip(gaps).map { |g, gap| -g / gap }

    theta_components = joined.zip(gaps).sum { |g, gap| g**2 / (c * gap**2) }
    theta_response = response.sum { |component| component**2 } / c

    assert_in_delta c, b + e, TOL
    assert_in_delta theta_components, theta_response, TOL
    gaps.each do |gap|
      assert_operator gap, :>=, c
      assert_operator gap, :<=, 2.0 * c
    end
    assert_includes text, "\\mathcal R_-\n =-K_-^{-1}\\mathcal G_-"
    assert_includes text, "\\nu\\Delta S-\\Omega^2-H^\\circ-[\\Omega,S]"
    assert_includes text, "No vorticity, trace-free pressure, or\nviscous response has been separated"
  end

  def test_objective_commutator_sign_is_exact_even_at_expanding_collision
    [[5.0, 2.0, 3.0], [4.0, 2.0, 2.0]].each do |c, b, e|
      strain = Matrix.diagonal(-c, b, e)
      rotation = Matrix[
        [0.0, -0.7, 0.4],
        [0.7, 0.0, -0.2],
        [-0.4, 0.2, 0.0]
      ]
      pressure_trace_free = Matrix[
        [0.6, 0.3, -0.8],
        [0.3, -0.1, 0.2],
        [-0.8, 0.2, -0.5]
      ]
      viscous_response = Matrix[
        [0.1, -0.4, 0.9],
        [-0.4, 0.6, -0.3],
        [0.9, -0.3, -0.7]
      ]
      contracting_line = Vector[1.0, 0.0, 0.0]
      transverse = Matrix.diagonal(0.0, 1.0, 1.0)
      gaps = [c + b, c + e]

      strain_rate =
        -(strain * strain) - (rotation * rotation) - pressure_trace_free +
        viscous_response
      objective_rate =
        strain_rate - (rotation * strain - strain * rotation)
      joined = transverse * objective_rate * contracting_line
      primitive_joined = transverse *
                         (viscous_response - rotation * rotation -
                          pressure_trace_free -
                          (rotation * strain - strain * rotation)) *
                         contracting_line
      transverse_strain_rate = transverse * strain_rate * contracting_line
      line_rate = Vector[
        0.0,
        -transverse_strain_rate[1] / gaps[0],
        -transverse_strain_rate[2] / gaps[1]
      ]
      relative_response = line_rate - rotation * contracting_line
      response_from_join = Vector[
        0.0,
        -joined[1] / gaps[0],
        -joined[2] / gaps[1]
      ]

      3.times do |index|
        assert_in_delta primitive_joined[index], joined[index], TOL
        assert_in_delta relative_response[index], response_from_join[index], TOL
      end
    end

    assert_includes text, "\\mathring D_tS"
    assert_includes text, "-[\\Omega,S]"
    assert_includes text, "It remains intrinsic when \\(b=e\\)"
  end

  def test_gap_comparison_has_exact_constants
    c = 4.0
    gaps = [5.0, 7.5]
    joined = [2.0, -3.0]
    theta = joined.zip(gaps).sum { |value, gap| value**2 / (c * gap**2) }
    joined_norm_squared = joined.sum { |value| value**2 }

    assert_operator theta, :>=, joined_norm_squared / (4.0 * c**3) - TOL
    assert_operator theta, :<=, joined_norm_squared / c**3 + TOL
    assert_includes text, "{|\\mathcal G_-|^2\\over4c^3}"
    assert_includes text, "{|\\mathcal G_-|^2\\over c^3}"
  end

  def test_projector_second_response_cancels_frame_speed
    rate = 3.25
    e = Vector[1.0, 0.0, 0.0]
    e_rate = Vector[0.0, rate, 0.0]
    e_second = Vector[-rate**2, 0.0, 0.0]
    e_column = Matrix.column_vector(e.to_a)
    e_row = Matrix.row_vector(e.to_a)
    e_rate_column = Matrix.column_vector(e_rate.to_a)
    e_rate_row = Matrix.row_vector(e_rate.to_a)
    e_second_column = Matrix.column_vector(e_second.to_a)
    e_second_row = Matrix.row_vector(e_second.to_a)
    projector = e_column * e_row
    projector_rate = e_rate_column * e_row + e_column * e_rate_row
    projector_second =
      e_second_column * e_row +
      2.0 * (e_rate_column * e_rate_row) +
      e_column * e_second_row

    speed_squared = frobenius(projector_rate, projector_rate)
    normal_acceleration = frobenius(projector, projector_second)

    assert_in_delta 2.0 * rate**2, speed_squared, TOL
    assert_in_delta(-speed_squared, normal_acceleration, TOL)
    assert_in_delta 0.0, frobenius(projector, projector_rate), TOL
    assert_includes text, "P_-:\\mathring D_t^2P_-"
    assert_includes text, "=-2|\\mathcal R_-|^2"
    assert_includes text, "manufacture a false positive reserve"
  end

  def test_per_label_square_action_is_scale_invariant
    kappa = 11.0
    response = 2.4
    contraction = 1.8
    duration = 0.35
    original = response**2 / contraction * duration
    scaled = (kappa**2 * response)**2 /
             (kappa**2 * contraction) *
             (duration / kappa**2)

    assert_in_delta original, scaled, TOL
    assert_includes text, "\\Theta_{-,\\kappa}=\\kappa^2\\Theta_-"
    assert_includes text, "scale critical per continuing material label"
  end

  def test_first_variation_is_blind_to_off_diagonal_response
    strain = Matrix.diagonal(-5.0, 2.0, 3.0)
    off_diagonal = Matrix[
      [0.0, 4.0, -1.5],
      [4.0, 0.0, 0.0],
      [-1.5, 0.0, 0.0]
    ]
    strain_squared = strain * strain

    assert_in_delta 0.0, frobenius(strain_squared, off_diagonal), TOL
    assert_includes text, "\\mathcal G_-\\otimes e_-+e_-\\otimes\\mathcal G_-"
    assert_includes text, "correct symmetric strain-tensor space"
    assert_includes text, "lies in the kernel of the\nfirst variation of the scalar strain invariant"
    assert_includes text, "exact cancellation of the **signed linear frame response**"
    assert_includes text, "not an upper bound for the positive square"
  end

  def test_verdict_preserves_the_one_fluid_method_and_open_boundary
    assert_includes text, "one continuing fixed-viscosity velocity and pressure\nhistory"
    assert_includes text, "pressure-explicit binomial/VPI"
    assert_includes text, "simultaneous readings of that history"
    assert_includes text, "smallest unpaid quantity"
    assert_includes text, "same-critical upper-bound target"
    assert_includes text, "No bound\nfor `(TIR.37a)`"
    assert_includes text, "no MPP closure"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    forbidden = [0x08, 0x09, 0x0b, 0x0c, 0x0d]

    forbidden.each { |byte| refute_includes bytes, byte }
    assert_includes text, "\\mathring D_t"
    assert_includes text, "\\mathcal G_-"
    assert_includes text, "\\Theta_-"
    refute_includes text, "\\left(mathcal"
  end

  private

  def frobenius(left, right)
    left.to_a.flatten.zip(right.to_a.flatten).sum { |a, b| a * b }
  end
end
