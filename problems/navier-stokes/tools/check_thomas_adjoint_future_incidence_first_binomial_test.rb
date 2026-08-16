#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasAdjointFutureIncidenceFirstBinomialTest < Minitest::Test
  TOL = 1.0e-11
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-adjoint-future-incidence-backward-heat-first-binomial-boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def test_preserves_one_history_complete_output_custody
    assert_includes text, "one-fluid"
    assert_includes text, "Both ordered velocity-parent positions"
    assert_includes text, "output Leray/pressure completion"
    assert_includes text, "finite parent-ratio"
    assert_includes text, "high-output restriction"
    assert_includes text, "not a second evolution"
    refute_includes text.downcase, "rectangle"
  end

  def test_adjoint_polarization_preserves_vector_square
    operator = [[1.2, -0.3], [0.7, 0.9]]
    output_metric = [[0.8, 0.1], [0.1, 1.1]]
    parent = [0.6, -1.4]
    output = matrix_vector(operator, parent)
    metric_output = matrix_vector(output_metric, output)
    adjoint_parent = matrix_vector(transpose(operator), metric_output)

    square = dot(output, metric_output)
    polarized = dot(parent, adjoint_parent)

    assert_in_delta square, polarized, TOL
    assert_operator square, :>, 0.0
  end

  def test_discrete_future_incidence_is_exact_fubini_pullback
    heat = [1.0, 0.82, 0.67, 0.55]
    source = [0.3, -0.8, 1.1, 0.6, -0.2, 0.9]
    future_test = [0.0, 0.5, -0.7, 1.3, 0.4, 0.0]
    lag_steps = 4

    forward = future_test.each_index.sum do |time|
      recent = (1...lag_steps).sum do |age|
        next 0.0 if time - age < 0

        heat[age] * source[time - age]
      end
      recent * future_test[time]
    end

    incidence = Array.new(source.length, 0.0)
    source.each_index do |earlier|
      ((earlier + 1)...[earlier + lag_steps, source.length].min).each do |time|
        incidence[earlier] += heat[time - earlier] * future_test[time]
      end
    end
    backward = dot(source, incidence)

    assert_in_delta forward, backward, TOL
  end

  def test_backward_heat_moment_derivative_identity
    viscosity = 0.7
    eigenvalue = 1.9
    beta = 0.2
    lag = 0.41
    delta = viscosity * eigenvalue - beta
    exponential = Math.exp(-delta * lag)
    c0 = (1.0 - exponential) / delta
    c1 = (1.0 - exponential * (1.0 + delta * lag)) / delta**2
    c2 = (1.0 - exponential *
          (1.0 + delta * lag + (delta * lag)**2 / 2.0)) / delta**3

    assert_in_delta(-delta * c1, lag * exponential - c0, TOL)
    assert_in_delta(-delta * c2,
                    lag**2 / 2.0 * exponential - c1,
                    TOL)
  end

  def test_first_binomial_product_rule_cancels_viscosity
    viscosity = 0.7
    eigenvalue = 1.9
    q_value = 1.3
    phi_value = -0.6
    q_derivative = 0.8
    phi_derivative = -1.1
    next_row = q_derivative + viscosity * eigenvalue * q_value
    backward_row = phi_derivative - viscosity * eigenvalue * phi_value
    direct_derivative = q_derivative * phi_value +
                        q_value * phi_derivative
    recombined = next_row * phi_value + q_value * backward_row

    assert_in_delta direct_derivative, recombined, TOL
  end

  def test_signed_pairing_pigeonhole_recovers_fbc_constants
    output_square = 32.0
    pairings = [-3.0, 11.0, 24.0]
    depth_terms = pairings.length

    assert_in_delta output_square, pairings.sum, TOL
    assert_operator pairings.max, :>=, output_square / depth_terms

    forced_output_norm_square =
      (pairings.max / Math.sqrt(output_square))**2
    assert_operator forced_output_norm_square,
                    :>=,
                    output_square / depth_terms**2
  end

  def test_all_rows_keep_the_same_lag
    lag = 0.037
    6.times do |row|
      source_ages = 100.times.map { |index| lag * (index + 0.5) / 100.0 }
      weighted = source_ages.map { |age| age**row / factorial(row) }

      assert source_ages.all? { |age| age.positive? && age < lag }
      assert weighted.all?(&:positive?)
    end
  end

  def test_boundary_is_exact_and_honest
    assert_includes text, "ordinary endpoint term"
    assert_includes text, "vanishes"
    assert_includes text, "moving-edge value"
    assert_includes text, "not datum-controlled"
    assert_includes text, "No output-operator commutator"
    assert_includes text, "same-lag all-row fork"
    assert_includes text, "not a strict reduction"
    refute_includes text, "MPP is closed"
  end

  private

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def matrix_vector(matrix, vector)
    matrix.map { |row| dot(row, vector) }
  end

  def transpose(matrix)
    matrix.transpose
  end

  def factorial(number)
    (1..number).reduce(1, :*)
  end
end
