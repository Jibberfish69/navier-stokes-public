#!/usr/bin/env ruby
# frozen_string_literal: true

# Focused regression for FIH. It verifies the complete pressure-projected
# Fourier algebra at s=0, the global (not fiberwise or critically weighted)
# energy/helicity tangent identities, and the lawful two-sign insertion test.

TOL = 1.0e-10
I = Complex(0, 1)

def fail!(message)
  warn("FAIL: #{message}")
  exit(1)
end

def assert(condition, message)
  fail!(message) unless condition
end

def vadd(a, b)
  a.zip(b).map { |x, y| x + y }
end

def vsub(a, b)
  a.zip(b).map { |x, y| x - y }
end

def vscale(c, a)
  a.map { |x| c * x }
end

def dot(a, b)
  a.zip(b).sum { |x, y| x * y }
end

def hermitian(a, b)
  a.zip(b).sum { |x, y| x.conj * y }
end

def cross(a, b)
  [
    a[1] * b[2] - a[2] * b[1],
    a[2] * b[0] - a[0] * b[2],
    a[0] * b[1] - a[1] * b[0]
  ]
end

def kadd(a, b)
  a.zip(b).map { |x, y| x + y }.freeze
end

def kneg(a)
  a.map { |x| -x }.freeze
end

def ksq(k)
  k.sum { |x| x * x }
end

def leray(k, v)
  vsub(v, vscale(dot(k, v) / ksq(k), k))
end

def add_mode!(field, k, value)
  field[k] = vadd(field.fetch(k, [0, 0, 0]), value)
end

def prune(field)
  field.select do |_k, v|
    hermitian(v, v).real.abs > 1.0e-24
  end
end

def bilinear(a, b)
  out = {}
  a.each do |p, ap|
    b.each do |q, bq|
      k = kadd(p, q)
      next if ksq(k).zero?

      value = vscale(I, leray(k, vscale(dot(ap, q), bq)))
      add_mode!(out, k, value)
    end
  end
  prune(out)
end

def q_source(u)
  bilinear(u, u).transform_values { |v| vscale(-1, v) }
end

def insertion(u, h)
  left = bilinear(h, u)
  right = bilinear(u, h)
  (left.keys | right.keys).to_h do |k|
    value = vscale(-1, vadd(left.fetch(k, [0, 0, 0]), right.fetch(k, [0, 0, 0])))
    [k, value]
  end.then { |field| prune(field) }
end

def real_pair(a, b, weight: ->(_k) { 1.0 })
  (a.keys | b.keys).sum do |k|
    weight.call(k) * hermitian(a.fetch(k, [0, 0, 0]), b.fetch(k, [0, 0, 0])).real
  end
end

def field_neg(a)
  a.transform_values { |v| vscale(-1, v) }
end

def field_difference_norm(a, b)
  (a.keys | b.keys).sum do |k|
    v = vsub(a.fetch(k, [0, 0, 0]), b.fetch(k, [0, 0, 0]))
    hermitian(v, v).real
  end
end

a = [1, 0, 0].freeze
b = [0, 1, 0].freeze
c = [1, 1, 0].freeze

u = {
  a => [0, 0, -I],
  b => [2, 0, -1 + I],
  c => [Rational(-1, 2), Rational(1, 2), 1 - I]
}
u.to_a.each { |k, v| u[kneg(k)] = v.map(&:conj) }

u.each do |k, v|
  assert(dot(k, v).zero?, "datum mode #{k.inspect} is not divergence-free")
end

g = q_source(u)
n = insertion(u, g)

(g.merge(n)).each_key do |k|
  assert(dot(k, g.fetch(k, [0, 0, 0])).abs < TOL, "Q lost the outer Leray projection at #{k.inspect}")
  assert(dot(k, n.fetch(k, [0, 0, 0])).abs < TOL, "N lost the outer Leray projection at #{k.inspect}")
end

omega = u.to_h do |k, v|
  [k, vscale(I, cross(k, v))]
end
curl_g = g.to_h do |k, v|
  [k, vscale(I, cross(k, v))]
end

energy_tangent = real_pair(g, u)
helicity_tangent = real_pair(g, omega)
assert(energy_tangent.abs < TOL, "global kinetic tangency failed: #{energy_tangent}")
assert(helicity_tangent.abs < TOL, "global helicity tangency failed: #{helicity_tangent}")

source_norm = real_pair(g, g)
first_insertion = real_pair(n, u)
assert((first_insertion + source_norm).abs < TOL,
       "global PRM.44 identity failed: N.u=#{first_insertion}, Q.Q=#{source_norm}")

helicity_derivative = real_pair(n, omega) + real_pair(g, curl_g)
assert(helicity_derivative.abs < TOL,
       "global differentiated helicity identity failed: #{helicity_derivative}")

fiber_failures = g.keys.count do |k|
  lhs = hermitian(g[k], g[k]).real
  rhs = -hermitian(n.fetch(k, [0, 0, 0]), u.fetch(k, [0, 0, 0])).real
  (lhs - rhs).abs > TOL
end
assert(fiber_failures.positive?, "PRM.43 unexpectedly held outputwise")

critical_weight = ->(k) { 1.0 / Math.sqrt(ksq(k)) }
weighted_source = real_pair(g, g, weight: critical_weight)
weighted_opposition = -real_pair(n, u, weight: critical_weight)
assert((weighted_source - weighted_opposition).abs > 1.0e-6,
       "global kinetic tangency was incorrectly preserved by the critical weight")

shells = Hash.new(0)
g.each do |k, value|
  shells[ksq(k)] += hermitian(n.fetch(k, [0, 0, 0]), value).real
end
expected_shells = {
  1 => Rational(-206, 5),
  2 => Rational(264, 5),
  5 => -11
}
assert(shells == expected_shells,
       "joined insertion shell table changed: #{shells.inspect}")

unweighted_insertion = shells.values.sum
assert(unweighted_insertion == Rational(3, 5),
       "unweighted insertion should be 3/5, got #{unweighted_insertion}")

weighted_insertion = real_pair(n, g, weight: critical_weight)
expected_weighted = -206.0 / 5.0 + 264.0 / (5.0 * Math.sqrt(2.0)) - 11.0 / Math.sqrt(5.0)
assert((weighted_insertion - expected_weighted).abs < TOL,
       "critical insertion changed: #{weighted_insertion} vs #{expected_weighted}")
assert(weighted_insertion.negative?, "first datum should have negative critical insertion")

minus_u = field_neg(u)
minus_g = q_source(minus_u)
minus_n = insertion(minus_u, minus_g)
assert(field_difference_norm(minus_g, g).zero?, "Q(-u) must equal Q(u)")
assert(field_difference_norm(minus_n, field_neg(n)).zero?, "DQ(-u)[Q(-u)] must equal -DQ(u)[Q(u)]")
minus_weighted = real_pair(minus_n, minus_g, weight: critical_weight)
assert((minus_weighted + weighted_insertion).abs < TOL && minus_weighted.positive?,
       "sign-reversed lawful datum did not reverse the critical insertion")

p = [1, 0, 0]
q = [0, 1, 1]
r = [0, 1, 0]
ell = [1, 0, 1]
k = [1, 1, 1]
assert(kadd(p, q) == k && kadd(r, ell) == k, "resonant parents do not share the output")
assert(ksq(k) == ksq(p) + ksq(q), "first active pair is not Stokes-resonant")
assert(ksq(k) == ksq(r) + ksq(ell), "second active pair is not Stokes-resonant")
[0.1, 1.0, 7.0].each do |s|
  first_defect = Math.exp(-s * ksq(k)) - Math.exp(-s * (ksq(p) + ksq(q)))
  second_defect = Math.exp(-s * ksq(k)) - Math.exp(-s * (ksq(r) + ksq(ell)))
  assert(first_defect.abs < TOL && second_defect.abs < TOL,
         "heat defect did not vanish on Stokes resonance at s=#{s}")
end

puts "PASS: full-field insertion/heat-defect scope, signs, and resonance verified"
