#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasDerivativeCovectorIncidencePlacementTest < Minitest::Test
  TOL = 1.0e-10
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-derivative-covector-incidence-placement-and-amplitude-duality-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_radial_symmetric_tensor_is_exact_ql
    rho = normalize([2.0, -1.0, 2.0])
    velocity = [3.0, -4.0, 1.0]
    tensor = radial_tensor(rho)

    ql = dot(velocity, velocity) * dot(velocity, rho)
    polarized = contract(tensor, velocity, velocity, velocity)

    assert_in_delta ql, polarized, TOL
    assert_includes text, "\\mathbb T^\\rho_{ijk}"
    assert_includes text, "\\rho_i\\delta_{jk}+\\rho_j\\delta_{ik}+\\rho_k\\delta_{ij}"
    assert_includes text, "occupies each one once in the symmetric polarization"
  end

  def test_covector_projection_is_exactly_dual_to_amplitude_projection
    weight = [
      [0.75, 0.25, 0.0],
      [0.25, 0.25, 0.0],
      [0.0, 0.0, 0.0]
    ]
    derivative = [2.0, -3.0, 5.0]
    amplitude = [-1.0, 4.0, 2.0]

    covector_side = dot(mat_vec(weight, derivative), amplitude)
    amplitude_side = dot(derivative, mat_vec(weight, amplitude))

    assert_in_delta covector_side, amplitude_side, TOL
    assert_includes text, "(W\\rho)\\cdot v=\\rho\\cdot(Wv)"
    assert_includes text, "\\widehat A(\\pi)\\cdot(W\\theta)"
    assert_includes text, "adjoint of the TPR insertion"
  end

  def test_projecting_after_incompressibility_rewrite_has_an_extra_term
    output = [1.0, 2.0, 0.0]
    advector_wave = [1.0, 1.0, 0.0]
    derivative_wave = subtract(output, advector_wave)
    advector = [1.0, -1.0, 0.0]
    weight = projector([1.0, 0.0, 0.0])

    assert_in_delta 0.0, dot(advector_wave, advector), TOL
    actual = dot(advector, mat_vec(weight, derivative_wave))
    output_piece = dot(advector, mat_vec(weight, output))
    advector_piece = dot(advector, mat_vec(weight, advector_wave))

    assert_in_delta actual, output_piece - advector_piece, TOL
    refute_in_delta actual, output_piece, TOL
    assert_includes text, "the last term need not vanish"
    assert_includes text, "Projecting the output covector after the incompressibility rewrite"
  end

  def test_six_assignment_tensor_skeleton_recombines_to_stk_covector
    k = [1.0, 1.0, 1.0]
    p = [0.0, -1.0, 0.0]
    q = [-1.0, 0.0, -1.0]
    a = [0.0, -1.0, 1.0]
    b = [0.0, 0.0, -1.0]
    d = [0.0, 1.0, 0.0]

    assert_vector_in_delta [0.0, 0.0, 0.0], add(add(k, p), q)
    assert_in_delta 0.0, dot(k, a), TOL
    assert_in_delta 0.0, dot(p, b), TOL
    assert_in_delta 0.0, dot(q, d), TOL

    six = norm(k) * (dot(k, b) * dot(a, d) + dot(k, d) * dot(a, b)) +
          norm(p) * (dot(p, d) * dot(a, b) + dot(p, a) * dot(b, d)) +
          norm(q) * (dot(q, a) * dot(b, d) + dot(q, b) * dot(a, d))
    m = add(
      add(scale(norm(k), k), scale(norm(p), p)),
      scale(norm(q), q)
    )
    recombined = dot(m, a) * dot(b, d) +
                 dot(m, b) * dot(a, d) +
                 dot(m, d) * dot(a, b)

    assert_in_delta six, recombined, TOL
    assert_in_delta 1.0 - Math.sqrt(2.0), six, TOL
    assert_includes text, "m:=|k|k+|p|p+|q|q"
    assert_includes text, "recombined image of the six actual"
    assert_includes text, "differentiated-parent placements"
  end

  def test_tac_triad_has_zero_selected_derivative_slot_in_every_order
    waves = {
      k: [1.0, 1.0, 1.0],
      p: [0.0, -1.0, 0.0],
      q: [-1.0, 0.0, -1.0]
    }
    amplitudes = {
      k: [0.0, -1.0, 1.0],
      p: [0.0, 0.0, -1.0],
      q: [0.0, 1.0, 0.0]
    }
    weight = projector([1.0, 0.0, 0.0])

    waves.keys.each do |output_key|
      parent_keys = waves.keys - [output_key]
      parent_keys.permutation.each do |advector_key, advected_key|
        selected_derivative = mat_vec(weight, waves.fetch(advected_key))
        selected_value = dot(amplitudes.fetch(advector_key), selected_derivative)
        assert_in_delta 0.0, selected_value, TOL
      end
    end

    assert_includes text, "All six derivative-selected contractions vanish separately"
    assert_includes text, "2(\\sqrt2-1)>0"
    assert_includes text, "entirely in the derivative-covector complement"
  end

  def test_tac_pair_is_entirely_in_radial_covector_complement
    separation = [0.0, -5.0 * Math::PI / 3.0, -Math::PI / 3.0]
    m = 20.0
    velocity = [0.0, m * Math.sqrt(3.0) / 2.0,
                -m * Math.sqrt(3.0) / 2.0]
    rho = normalize(separation)
    weight = projector([1.0, 0.0, 0.0])
    complement = subtract_matrix(identity(3), weight)
    q = dot(velocity, velocity)

    selected = q * dot(mat_vec(weight, rho), velocity)
    complementary = q * dot(mat_vec(complement, rho), velocity)
    full = q * dot(rho, velocity)

    assert_in_delta 0.0, selected, TOL
    assert_in_delta full, complementary, TOL
    assert_operator full, :<, 0.0
    assert_in_delta 0.0, dot(mat_vec(weight, separation), velocity), TOL
    assert_includes text, "Q(W\\rho\\cdot V)=0"
    assert_includes text, "j_{xy}>0"
    assert_includes text, "does\nnot claim to realize a canonical failed double-recent record"
  end

  def test_scope_is_honest_and_pressure_complete
    assert_includes text, "\\mathbb P_\\kappa"
    assert_includes text, "It may\nbe removed only from this final scalar pairing"
    assert_includes text, "DQ(u)[V]"
    assert_includes text, "both ordered\ninsertions"
    assert_includes text, "does not prove (TAC.26)"
    assert_includes text, "establish (TIR.37a), or close the MPP"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    [0x08, 0x09, 0x0b, 0x0c, 0x0d].each do |byte|
      refute_includes bytes, byte
    end
  end

  private

  def radial_tensor(rho)
    Array.new(3) do |i|
      Array.new(3) do |j|
        Array.new(3) do |k|
          (rho[i] * delta(j, k) + rho[j] * delta(i, k) +
            rho[k] * delta(i, j)) / 3.0
        end
      end
    end
  end

  def contract(tensor, left, middle, right)
    3.times.sum do |i|
      3.times.sum do |j|
        3.times.sum do |k|
          tensor[i][j][k] * left[i] * middle[j] * right[k]
        end
      end
    end
  end

  def delta(left, right)
    left == right ? 1.0 : 0.0
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def norm(vector)
    Math.sqrt(dot(vector, vector))
  end

  def normalize(vector)
    length = norm(vector)
    vector.map { |entry| entry / length }
  end

  def add(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def subtract(left, right)
    left.zip(right).map { |a, b| a - b }
  end

  def scale(scalar, vector)
    vector.map { |entry| scalar * entry }
  end

  def identity(dimension)
    Array.new(dimension) do |i|
      Array.new(dimension) { |j| i == j ? 1.0 : 0.0 }
    end
  end

  def projector(unit_vector)
    unit_vector.map do |left|
      unit_vector.map { |right| left * right }
    end
  end

  def mat_vec(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def subtract_matrix(left, right)
    left.zip(right).map do |left_row, right_row|
      left_row.zip(right_row).map { |a, b| a - b }
    end
  end

  def assert_vector_in_delta(expected, actual)
    expected.zip(actual).each do |left, right|
      assert_in_delta left, right, TOL
    end
  end
end
