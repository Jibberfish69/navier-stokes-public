#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasThreeLabelTensorProjectorRefundTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/" \
    "thomas-three-label-tensor-projector-eight-block-refund-and-record-" \
    "boundary-20260804.md",
    __dir__
  )

  def text
    @text ||= File.read(NOTE)
  end

  def identity(dimension = 2)
    Array.new(dimension) do |i|
      Array.new(dimension) { |j| i == j ? 1.to_r : 0.to_r }
    end
  end

  def complement(matrix)
    unit = identity(matrix.length)
    unit.each_index.map do |i|
      unit[i].each_index.map { |j| unit[i][j] - matrix[i][j] }
    end
  end

  def negate_matrix(matrix)
    matrix.map { |row| row.map(&:-@) }
  end

  def mat_vec(matrix, vector)
    matrix.map { |row| row.zip(vector).sum { |entry, value| entry * value } }
  end

  def add_vec(left, right)
    left.zip(right).map { |a, b| a + b }
  end

  def dot(left, right)
    left.zip(right).sum { |a, b| a * b }
  end

  def outer(left, right)
    left.map { |a| right.map { |b| a * b } }
  end

  def add_matrix(left, right)
    left.zip(right).map do |left_row, right_row|
      left_row.zip(right_row).map { |a, b| a + b }
    end
  end

  def scale_matrix(scalar, matrix)
    matrix.map { |row| row.map { |entry| scalar * entry } }
  end

  def frobenius(left, right)
    left.zip(right).sum do |left_row, right_row|
      left_row.zip(right_row).sum { |a, b| a * b }
    end
  end

  def contract(tensor, left, middle, right)
    left.each_index.sum do |i|
      middle.each_index.sum do |j|
        right.each_index.sum do |k|
          tensor[i][j][k] * left[i] * middle[j] * right[k]
        end
      end
    end
  end

  def tensor(seed)
    Array.new(2) do |i|
      Array.new(2) do |j|
        Array.new(2) { |k| Rational(seed + 5 * i - 3 * j + 2 * k, 11) }
      end
    end
  end

  def combine_tensors(*weighted_tensors)
    dimension = weighted_tensors.first.last.length
    Array.new(dimension) do |i|
      Array.new(dimension) do |j|
        Array.new(dimension) do |k|
          weighted_tensors.sum { |weight, value| weight * value[i][j][k] }
        end
      end
    end
  end

  def tensor_slot_action(matrix, value, slot)
    dimension = matrix.length
    Array.new(dimension) do |i|
      Array.new(dimension) do |j|
        Array.new(dimension) do |k|
          indices = [i, j, k]
          dimension.times.sum do |m|
            source = indices.dup
            source[slot] = m
            matrix[indices[slot]][m] * value.dig(*source)
          end
        end
      end
    end
  end

  def each_block_pattern
    [0, 1].repeated_permutation(3)
  end

  def test_three_component_identities_recombine_all_six_receiver_assignments
    kernels = 6.times.map { |index| tensor(7 + 3 * index) }
    fields = [[2.to_r, -1.to_r], [3.to_r, 4.to_r], [-2.to_r, 5.to_r]]
    weights = [
      [[Rational(2, 3), Rational(1, 5)], [Rational(1, 5), Rational(1, 4)]],
      [[Rational(3, 7), Rational(-1, 6)], [Rational(-1, 6), Rational(4, 9)]],
      [[Rational(5, 8), Rational(1, 10)], [Rational(1, 10), Rational(2, 5)]]
    ]
    choices = weights.map { |weight| [weight, complement(weight)] }

    block_sum = each_block_pattern.sum do |pattern|
      projected = 3.times.map do |slot|
        mat_vec(choices[slot][pattern[slot]], fields[slot])
      end
      kernels.sum { |kernel| contract(kernel, *projected) }
    end

    direct_receiver = kernels.sum { |kernel| contract(kernel, *fields) }

    assert_equal direct_receiver, block_sum
    assert_includes text, "J(t)=\\sum_{\\sigma\\in\\{s,c\\}^3}J_\\sigma(t)"
    assert_includes text, "\\mathcal A_6"
    assert_includes text,
                    "every \\(J_\\sigma\\) retains all six assignments and their\n" \
                    "reality-conjugate completion"
  end

  def test_moving_projector_responses_refund_in_complete_sum
    kernel = tensor(4)
    kernel_rate = tensor(-3)
    fields = [[1.to_r, 2.to_r], [-3.to_r, 1.to_r], [2.to_r, 5.to_r]]
    field_rates = [[-2.to_r, 3.to_r], [4.to_r, -1.to_r], [1.to_r, -4.to_r]]
    weights = [
      [[Rational(1, 2), Rational(1, 7)], [Rational(1, 7), Rational(1, 3)]],
      [[Rational(2, 5), Rational(-1, 8)], [Rational(-1, 8), Rational(3, 4)]],
      [[Rational(3, 8), Rational(1, 9)], [Rational(1, 9), Rational(5, 6)]]
    ]
    weight_rates = [
      [[Rational(1, 6), Rational(2, 7)], [Rational(2, 7), Rational(-1, 6)]],
      [[Rational(-2, 9), Rational(1, 5)], [Rational(1, 5), Rational(2, 9)]],
      [[Rational(3, 10), Rational(-1, 4)], [Rational(-1, 4), Rational(-3, 10)]]
    ]
    choices = weights.map { |weight| [weight, complement(weight)] }
    rate_choices = weight_rates.map { |rate| [rate, negate_matrix(rate)] }

    block_rate_sum = each_block_pattern.sum do |assignment|
      projected = 3.times.map do |slot|
        mat_vec(choices[slot][assignment[slot]], fields[slot])
      end
      projected_rates = 3.times.map do |slot|
        add_vec(
          mat_vec(rate_choices[slot][assignment[slot]], fields[slot]),
          mat_vec(choices[slot][assignment[slot]], field_rates[slot])
        )
      end

      contract(kernel_rate, *projected) +
        contract(kernel, projected_rates[0], projected[1], projected[2]) +
        contract(kernel, projected[0], projected_rates[1], projected[2]) +
        contract(kernel, projected[0], projected[1], projected_rates[2])
    end

    direct_rate = contract(kernel_rate, *fields) +
                  contract(kernel, field_rates[0], fields[1], fields[2]) +
                  contract(kernel, fields[0], field_rates[1], fields[2]) +
                  contract(kernel, fields[0], fields[1], field_rates[2])

    assert_equal direct_rate, block_rate_sum
    assert_includes text, "D_\\ell W_\\ell^s+D_\\ell W_\\ell^c=0"
    assert_includes text, "cancels every moving incidence/projector term"
    assert_includes text, "both independent separation transports"
    assert_includes text, "D_\\ell F^{\\rm cur}=-\\nabla p+\\nu\\Delta u"
    assert_includes text, "Q(u)&:=-(u\\cdot\\nabla)u-\\nabla p"
    assert_includes text, "P_{\\ge r_n}Q(u(t-\\tau_n))"
    assert_includes text, "\\Omega_a\\mathbin{\\cdot_1}K"
    assert_includes text, "Dropping the three kernel connection terms"
  end

  def test_three_objective_kernel_connections_reproduce_ordinary_derivative
    kernel = tensor(5)
    kernel_rate = tensor(-4)
    fields = [[2.to_r, -1.to_r], [1.to_r, 3.to_r], [-2.to_r, 4.to_r]]
    field_rates = [[-3.to_r, 2.to_r], [5.to_r, -1.to_r], [1.to_r, 6.to_r]]
    rotations = [
      [[0.to_r, -2.to_r], [2.to_r, 0.to_r]],
      [[0.to_r, 3.to_r], [-3.to_r, 0.to_r]],
      [[0.to_r, -1.to_r], [1.to_r, 0.to_r]]
    ]
    connections = 3.times.map do |slot|
      tensor_slot_action(rotations[slot], kernel, slot)
    end
    objective_kernel_rate = combine_tensors(
      [1.to_r, kernel_rate],
      [-1.to_r, connections[0]],
      [-1.to_r, connections[1]],
      [-1.to_r, connections[2]]
    )
    objective_field_rates = 3.times.map do |slot|
      add_vec(field_rates[slot], mat_vec(rotations[slot], fields[slot]).map(&:-@))
    end

    ordinary = contract(kernel_rate, *fields) +
               contract(kernel, field_rates[0], fields[1], fields[2]) +
               contract(kernel, fields[0], field_rates[1], fields[2]) +
               contract(kernel, fields[0], fields[1], field_rates[2])
    objective = contract(objective_kernel_rate, *fields) +
                contract(kernel, objective_field_rates[0], fields[1], fields[2]) +
                contract(kernel, fields[0], objective_field_rates[1], fields[2]) +
                contract(kernel, fields[0], fields[1], objective_field_rates[2])

    assert_equal ordinary, objective
    assert_includes text, "-\\Omega_a\\mathbin{\\cdot_1}K"
    assert_includes text, "-\\Omega_b\\mathbin{\\cdot_2}K"
    assert_includes text, "-\\Omega_c\\mathbin{\\cdot_3}K"
  end

  def test_one_fixed_block_carries_one_eighth_of_integrated_record
    block_integrals = [3, -4, 8, 1, -2, 7, 5, 6].map(&:to_r)
    total = block_integrals.sum

    assert_operator total, :>, 0
    assert_operator block_integrals.max, :>=, total / 8
    assert_includes text, "chosen once for the whole interval"
    assert_includes text, "\\operatorname{sgn}(A)\\int_IJ_{\\sigma_*}(t)\\,dt"
    assert_includes text, "\\ge {|A|\\over8}"
    assert_includes text, "at least \\(A_n/128\\)"
    assert_includes text, "No pointwise maximum, time-dependent branch choice"
    assert_includes text, "The factor \\(1/8\\) is sharp"
    assert_includes text, "preterminal compact\nroof and bounded selector theorem"
    assert_includes text, "eight full-receiver blocks have lawful \\(L_t^1\\) limits"
    assert_includes text, "as stated in `(PSL.22)`"
  end

  def test_one_component_pattern_persists_on_an_infinite_subsequence
    chosen_patterns = Array.new(37) { |index| index % 8 }
    counts = chosen_patterns.each_with_object(Hash.new(0)) do |pattern, memo|
      memo[pattern] += 1
    end
    persistent_pattern, multiplicity = counts.max_by { |_pattern, count| count }

    assert_operator multiplicity, :>=, (chosen_patterns.length.to_r / 8).ceil
    assert_includes (0...8).to_a, persistent_pattern
    assert_includes text, "infinite pigeonhole"
    assert_includes text, "n\\in\\mathcal N_*"
    assert_includes text, "component pattern is fixed on this subsequence"
    assert_includes text, "for every infinite\nfailed-record sequence"
  end

  def test_exact_conormal_contraction_and_receiver_noncoercivity
    e = [1.to_r, 0.to_r, 0.to_r]
    relative = [0.to_r, -1.to_r, 0.to_r]
    conormal = [Rational(3, 5), Rational(4, 5), 0.to_r]
    mu = dot(conormal, e)
    d_chi = Rational(2, 7)
    chi = Rational(3, 5)
    projector = outer(e, e)
    projector_response = add_matrix(outer(relative, e), outer(e, relative))
    incidence_response = add_matrix(
      scale_matrix(d_chi, projector),
      scale_matrix(chi, projector_response)
    )
    conormal_test = scale_matrix(
      Rational(1, 2),
      add_matrix(outer(conormal, e), outer(e, conormal))
    )

    assert_equal mu * d_chi + chi * dot(conormal, relative),
                 frobenius(conormal_test, incidence_response)
    assert_equal Rational(4, 5), -dot(conormal, relative)

    invisible_field = [0.to_r, 0.to_r, 1.to_r]
    assert_equal [0.to_r, 0.to_r, 0.to_r],
                 mat_vec(projector_response, invisible_field)

    line_field = e
    slot_response = mat_vec(projector_response, line_field)
    assert_equal(-1.to_r, dot([0.to_r, 1.to_r, 0.to_r], slot_response))
    assert_equal(1.to_r, dot([0.to_r, -1.to_r, 0.to_r], slot_response))

    assert_includes text, "C_{n,e}:\\mathring D_tW"
    assert_includes text, "=\\mu D_t\\chi+\\chi n\\cdot\\mathcal R_-"
    assert_includes text, "signed first-loss integral is `(CIF.9)`"
    assert_includes text, "neither a magnitude lower bound nor\na sign is forced"
    assert_includes text, "not a separately prescribed Navier--Stokes history"
  end

  def test_no_component_pattern_is_predetermined
    selected = [[1.to_r, 0.to_r], [0.to_r, 0.to_r]]
    complementary = complement(selected)
    choices = [selected, complementary]

    each_block_pattern.each do |target|
      fields = target.map { |choice| choice.zero? ? [1.to_r, 0.to_r] : [0.to_r, 1.to_r] }
      kernel = fields[0].map do |left|
        fields[1].map do |middle|
          fields[2].map { |right| left * middle * right }
        end
      end

      values = each_block_pattern.map do |pattern|
        projected = 3.times.map { |slot| mat_vec(choices[pattern[slot]], fields[slot]) }
        contract(kernel, *projected)
      end

      assert_equal 1, values[target[0] * 4 + target[1] * 2 + target[2]]
      assert_equal 1, values.count { |value| !value.zero? }
    end

    assert_includes text, "cannot be promoted to a universal block label"
  end

  def test_one_fluid_scope_and_open_theorem_are_preserved
    assert_includes text, "one continuing fixed-viscosity fluid"
    assert_includes text, "does not replace that receiver by a scalar pair"
    assert_includes text, "signed first-loss integral is `(CIF.9)`"
    assert_includes text, "an individual sharp tensor block is not\ndefined here"
    assert_includes text, "preterminal compact-roof\ntheorem `(PSL.15)--(PSL.23)`"
    assert_includes text, "does not pass the separated differentiated responses"
    assert_includes text, "pointwise component insertions with no\nsmoothing gain"
    assert_includes text, "no new \\(H^{1/2}\\) or higher-row coercivity"
    assert_includes text, "establish `(TIR.37a)`"
    assert_includes text, "close the MPP"
    refute_includes text.downcase, "rectangle"
  end

  def test_note_has_no_control_byte_corruption
    bytes = File.binread(NOTE).bytes
    [0x08, 0x09, 0x0b, 0x0c, 0x0d].each do |byte|
      refute_includes bytes, byte
    end
  end
end
