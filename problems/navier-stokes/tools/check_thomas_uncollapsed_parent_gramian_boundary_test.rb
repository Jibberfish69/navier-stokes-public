#!/usr/bin/env ruby
# frozen_string_literal: true

require "matrix"
require "minitest/autorun"

class ThomasUncollapsedParentGramianBoundaryTest < Minitest::Test
  ROOT = File.expand_path("../../..", __dir__)
  NOTE = File.join(
    ROOT,
    "problems/navier-stokes/theorem-construction/" \
    "thomas-uncollapsed-parent-causal-gramian-observability-boundary-20260803.md"
  )

  def phi(t)
    # exp(t G) for G = [[-1, 2], [0, -3]].
    Matrix[[Math.exp(-t), Math.exp(-t) - Math.exp(-3 * t)],
           [0.0, Math.exp(-3 * t)]]
  end

  def quadratic(x, a)
    (x.transpose * a * x)[0, 0]
  end

  def simpson_matrix(a, b, intervals)
    raise ArgumentError, "interval count must be even" unless intervals.even?

    h = (b - a) / intervals.to_f
    sum = yield(a) + yield(b)
    (1...intervals).each do |j|
      coefficient = j.odd? ? 4.0 : 2.0
      sum += yield(a + j * h) * coefficient
    end
    sum * (h / 3.0)
  end

  def test_backward_gramian_equals_terminal_plus_running_action
    terminal = Matrix[[1.0, 0.0], [0.0, 0.0]]
    running = Matrix[[4.0, 0.0], [0.0, 0.0]]
    x0 = Matrix.column_vector([0.0, 1.0])
    horizon = 0.7

    integral = simpson_matrix(0.0, horizon, 20_000) do |time|
      flow = phi(time)
      flow.transpose * running * flow
    end
    flow_t = phi(horizon)
    observability = flow_t.transpose * terminal * flow_t + integral
    x_t = flow_t * x0

    twice_action = quadratic(x_t, terminal) + quadratic(x0, integral)
    assert_in_delta twice_action, quadratic(x0, observability), 1.0e-10
    assert_operator quadratic(x0, observability), :>, 0.0
  end

  def test_forward_endpoint_coercivity_is_exactly_the_action_bound
    terminal = Matrix[[1.0, 0.0], [0.0, 0.0]]
    running = Matrix[[4.0, 0.0], [0.0, 0.0]]
    x0 = Matrix.column_vector([0.0, 1.0])
    horizon = 0.7
    flow_t = phi(horizon)
    inverse_flow = flow_t.inverse

    integral = simpson_matrix(0.0, horizon, 20_000) do |time|
      flow = phi(time)
      flow.transpose * running * flow
    end
    twice_action = quadratic(flow_t * x0, terminal) + quadratic(x0, integral)

    [0.25 * twice_action, 1.75 * twice_action].each do |initial_value|
      p0 = Matrix[[0.0, 0.0], [0.0, initial_value]]
      p_t = inverse_flow.transpose * (p0 - integral) * inverse_flow
      endpoint_gap = quadratic(flow_t * x0, p_t - terminal)
      expected_gap = quadratic(x0, p0) - twice_action
      assert_in_delta expected_gap, endpoint_gap, 1.0e-10
    end
  end

  def test_parent_fiber_collapse_has_cubic_three_dimensional_loss
    [2, 4, 9].each do |scale|
      parent_volume = scale**3
      normalized_parent = Array.new(parent_volume, 1.0 / Math.sqrt(parent_volume))
      input_square = normalized_parent.sum { |entry| entry * entry }
      output_square = normalized_parent.sum**2

      assert_in_delta 1.0, input_square, 1.0e-12
      assert_in_delta parent_volume, output_square / input_square, 1.0e-10
    end
  end

  def test_note_preserves_exact_custody_and_nonclosure
    text = File.read(NOTE)

    assert_includes text, "F_t=(\\mathscr A_u-\\nu\\mathscr D)F"
    assert_includes text, "backward observability Gramian"
    assert_includes text, "lower bound }\\Longleftrightarrow"
    assert_includes text, "lawful }N^3\\text{ collapse}"
    assert_includes text, "no bounded-below causal storage and no smaller datum theorem is"
    assert_includes text, "does not prove `(TIR.37a)`"
  end
end
