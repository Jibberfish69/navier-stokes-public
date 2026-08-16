#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class VPIScaleDepthLockTest < Minitest::Test
  TOLERANCE = 2.0e-11

  def test_geometric_depth_mixture_is_an_exact_heat_scale_shift
    [1.1, 1.7, 2.8].each do |q|
      a = q**-2
      z = 1.0 - a

      [0.15, 0.9, 3.4, 8.0].each do |y|
        stock_mixture = a * truncated_sum do |n|
          z**(n - 1) * stock_kernel(n, 2.0 * y)
        end
        current_mixture = a * truncated_sum do |n|
          z**(n - 1) * poisson_tail(n, y)
        end

        assert_in_delta stock_kernel(1, 2.0 * a * y),
                        stock_mixture,
                        TOLERANCE
        assert_in_delta poisson_tail(1, a * y),
                        current_mixture,
                        TOLERANCE
      end
    end
  end

  def test_q_cell_depth_coefficients_have_exact_logarithmic_mass
    [1.1, 1.6, 3.0].each do |q|
      z = 1.0 - q**-2
      coefficient_mass = truncated_sum { |n| z**n / n }

      assert_in_delta 2.0 * Math.log(q), coefficient_mass, TOLERANCE
    end
  end

  def test_full_depth_derivative_collapses_to_one_heat_band
    [1.2, 2.0, 3.5].each do |q|
      a = q**-2
      z = 1.0 - a

      [0.1, 0.8, 2.5, 7.0].each do |y|
        depth_band = truncated_sum do |n|
          z**n / n * derivative_kernel(n, y)
        end
        expected_band = Math.exp(-2.0 * a * y) - Math.exp(-2.0 * y)

        assert_in_delta expected_band, depth_band, TOLERANCE
        assert_operator depth_band, :>=, -TOLERANCE
      end
    end
  end

  def test_q_face_shift_is_the_signed_adjacent_row_descent
    [1.2, 1.8, 2.6].each do |q|
      a = q**-2
      z = 1.0 - a

      [0.2, 1.0, 4.0].each do |y|
        shifted_face = poisson_tail(1, a * y) - poisson_tail(1, y)
        adjacent_descent = truncated_sum do |n|
          z**n * (poisson_tail(n + 1, y) - poisson_tail(n, y))
        end

        assert_in_delta shifted_face, adjacent_descent, TOLERANCE
      end
    end
  end

  private

  def stock_kernel(n, x)
    x**n * Math.exp(-x) / (2.0 * Math.gamma(n))
  end

  def derivative_kernel(n, y)
    2.0**n * y**n * Math.exp(-2.0 * y) / Math.gamma(n)
  end

  def poisson_tail(n, y)
    partial = (0...n).sum do |m|
      (2.0 * y)**m / Math.gamma(m + 1)
    end
    1.0 - Math.exp(-2.0 * y) * partial
  end

  def truncated_sum(max_terms = 10_000)
    sum = 0.0
    max_terms.times do |offset|
      n = offset + 1
      term = yield(n)
      sum += term
      break if n > 50 && term.abs < 1.0e-16
    end
    sum
  end
end
