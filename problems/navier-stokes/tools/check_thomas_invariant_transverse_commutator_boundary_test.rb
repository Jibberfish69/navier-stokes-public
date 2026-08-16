#!/usr/bin/env ruby
# frozen_string_literal: true

# Focused regression for ITC.  It verifies the exact first binomial source
# law, the energy/helicity tangent derivatives, cancellation of the moving
# invariant-transverse frame, and the frame-free critical commutator identity
# on a nontrivial pressure-projected periodic Fourier polynomial.

TOL = 1.0e-9
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
  field.select { |_k, v| hermitian(v, v).real.abs > 1.0e-24 }
end

def bilinear(a, b)
  out = {}
  a.each do |p, ap|
    b.each do |q, bq|
      k = kadd(p, q)
      next if ksq(k).zero?

      add_mode!(out, k, vscale(I, leray(k, vscale(dot(ap, q), bq))))
    end
  end
  prune(out)
end

def q_source(u)
  bilinear(u, u).transform_values { |v| vscale(-1, v) }
end

def insertion(u, v)
  left = bilinear(v, u)
  right = bilinear(u, v)
  (left.keys | right.keys).to_h do |k|
    [k, vscale(-1, vadd(left.fetch(k, [0, 0, 0]), right.fetch(k, [0, 0, 0])))]
  end.then { |field| prune(field) }
end

def field_add(a, b)
  (a.keys | b.keys).to_h do |k|
    [k, vadd(a.fetch(k, [0, 0, 0]), b.fetch(k, [0, 0, 0]))]
  end.then { |field| prune(field) }
end

def field_sub(a, b)
  (a.keys | b.keys).to_h do |k|
    [k, vsub(a.fetch(k, [0, 0, 0]), b.fetch(k, [0, 0, 0]))]
  end.then { |field| prune(field) }
end

def field_scale(c, a)
  a.transform_values { |v| vscale(c, v) }.then { |field| prune(field) }
end

def multiplier(a, power)
  a.to_h do |k, v|
    [k, vscale(ksq(k)**(power / 2.0), v)]
  end.then { |field| prune(field) }
end

def derivative(a, coordinate)
  a.to_h do |k, v|
    [k, vscale(I * k[coordinate], v)]
  end.then { |field| prune(field) }
end

def curl_field(a)
  a.to_h { |k, v| [k, vscale(I, cross(k, v))] }.then { |field| prune(field) }
end

def real_pair(a, b)
  (a.keys | b.keys).sum do |k|
    hermitian(a.fetch(k, [0, 0, 0]), b.fetch(k, [0, 0, 0])).real
  end
end

def norm_difference(a, b)
  real_pair(field_sub(a, b), field_sub(a, b))
end

def linear_combination(terms)
  terms.reduce({}) { |sum, (coefficient, field)| field_add(sum, field_scale(coefficient, field)) }
end

a = [1, 0, 0].freeze
b = [0, 1, 0].freeze
c = [1, 1, 0].freeze

u = {
  a => [0, 0, -I],
  b => [2, 0, -1 + I],
  c => [Rational(-1, 2), Rational(1, 2), 1 - I]
}
u.to_a.each { |k, value| u[kneg(k)] = value.map(&:conj) }

u.each do |k, value|
  assert(dot(k, value).zero?, "datum mode #{k.inspect} is not divergence-free")
end

nu = 0.37
q = q_source(u)
lap_u = multiplier(u, 2)
u_t = field_sub(q, field_scale(nu, lap_u))
q_t_chain = insertion(u, u_t)

first_insertion = insertion(u, q)
commutator_source = 3.times.reduce({}) do |sum, j|
  field_add(sum, bilinear(derivative(u, j), derivative(u, j)))
end
q_t_source = linear_combination([
  [1.0, first_insertion],
  [-nu, multiplier(q, 2)],
  [2.0 * nu, commutator_source]
])

assert(norm_difference(q_t_chain, q_t_source) < TOL,
       "ITC.10 first binomial source law failed")

omega = curl_field(u)
curl_ut = curl_field(u_t)
assert(real_pair(q, u).abs < TOL, "energy tangency failed")
assert(real_pair(q, omega).abs < TOL, "helicity tangency failed")
assert((real_pair(q_t_chain, u) + real_pair(q, u_t)).abs < TOL,
       "differentiated energy tangency failed")
assert((real_pair(q_t_chain, omega) + real_pair(q, curl_ut)).abs < TOL,
       "differentiated helicity tangency failed")

lambda_u = multiplier(u, 1)
lambda_ut = multiplier(u_t, 1)
direct_current_derivative = real_pair(q_t_chain, lambda_u) + real_pair(q, lambda_ut)

# Compute the actual invariant-transverse projection coefficients from ITR.17.
a_field = multiplier(u, 0.5)
h_field = multiplier(curl_field(u), 0.5)
c_field = multiplier(u, 1.5)
r = real_pair(a_field, a_field)
j2 = real_pair(a_field, h_field)
d = real_pair(h_field, h_field)
z = real_pair(c_field, a_field)
j3 = real_pair(c_field, h_field)
det = r * d - j2 * j2
assert(det.abs > TOL, "test datum lost the rank-two invariant frame")
alpha = (d * z - j2 * j3) / det
beta = (r * j3 - j2 * z) / det

[-1.7, 0.0, 2.3].product([-0.9, 0.4], [alpha]).each do |alpha_prime, beta_prime, actual_alpha|
  l_u = linear_combination([[1.0, lambda_u], [-actual_alpha, u], [-beta, omega]])
  l_ut = linear_combination([[1.0, lambda_ut], [-actual_alpha, u_t], [-beta, curl_ut]])
  w_t = linear_combination([[1.0, l_ut], [-alpha_prime, u], [-beta_prime, omega]])
  projected_derivative = real_pair(q_t_chain, l_u) + real_pair(q, w_t)
  assert((projected_derivative - direct_current_derivative).abs < TOL,
         "moving invariant frame failed to cancel")
end

lambda_ut_insertion = insertion(u, lambda_ut)
commutator = real_pair(q_t_chain, lambda_u) - real_pair(lambda_ut_insertion, u)
assert((commutator - direct_current_derivative).abs < TOL,
       "ITC.15 frame-free commutator identity failed")

source_projection = linear_combination([[1.0, multiplier(q, 1)], [-alpha, q], [-beta, curl_field(q)]])
source_n = field_add(first_insertion, field_scale(2.0 * nu, commutator_source))
source_law_projected = real_pair(source_n, linear_combination([[1.0, lambda_u], [-alpha, u], [-beta, omega]])) +
                       real_pair(q, source_projection) -
                       2.0 * nu * real_pair(multiplier(q, 1),
                                            multiplier(linear_combination([[1.0, lambda_u], [-alpha, u], [-beta, omega]]), 1))
assert((source_law_projected - direct_current_derivative).abs < TOL,
       "ITC.12 projected source-law form did not reduce to the same commutator")

# Verify the exact source/receiver angle derivative (ITC.20j).  Projection
# coefficient derivatives are absent from the norm derivative because the
# residual is orthogonal to both moving frame directions.
l_u = linear_combination([[1.0, lambda_u], [-alpha, u], [-beta, omega]])
l_ut = linear_combination([[1.0, lambda_ut], [-alpha, u_t], [-beta, curl_ut]])
d_field = multiplier(l_u, 0.5)
d_t_core = multiplier(l_ut, 0.5)
g_field = multiplier(q, -0.5)
g_t = multiplier(q_t_chain, -0.5)

assert(real_pair(d_field, a_field).abs < TOL, "transverse receiver lost energy-frame orthogonality")
assert(real_pair(d_field, h_field).abs < TOL, "transverse receiver lost helicity-frame orthogonality")

b2 = real_pair(g_field, g_field)
delta2 = real_pair(d_field, d_field)
assert(b2 > TOL && delta2 > TOL, "angle test requires nonzero source and transverse receiver")

p_current = real_pair(g_field, d_field)
assert((p_current - real_pair(q, lambda_u)).abs < TOL, "transverse current identity failed")
rho = p_current / Math.sqrt(b2 * delta2)
b_log_derivative = real_pair(g_field, g_t) / b2
delta_log_derivative = real_pair(d_field, d_t_core) / delta2
rho_prime_direct = direct_current_derivative / Math.sqrt(b2 * delta2) -
                   rho * (b_log_derivative + delta_log_derivative)

lambda_g = multiplier(g_field, 1)
lambda_d = multiplier(d_field, 1)
source_n_low = multiplier(source_n, -0.5)
lq_high = multiplier(source_projection, 0.5)
rho_prime_source = direct_current_derivative / Math.sqrt(b2 * delta2) +
                   nu * rho * (real_pair(lambda_g, lambda_g) / b2 +
                               real_pair(lambda_d, lambda_d) / delta2) -
                   rho * (real_pair(source_n_low, g_field) / b2 +
                          real_pair(d_field, lq_high) / delta2)
assert((rho_prime_source - rho_prime_direct).abs < TOL,
       "ITC.20j signed angle derivative failed")

# The energy clock cannot dominate the natural dome clock.  These are the
# exact two-radius moments stated after ITC.20f.
clock_ratios = [10.0, 100.0, 1000.0].map do |n|
  r_moment = 2.0 - 1.0 / n
  z_moment = n + 1.0 - 1.0 / n
  z_moment / r_moment
end
assert(clock_ratios.each_cons(2).all? { |left, right| right > left } && clock_ratios.last > 400.0,
       "datum-finite enstrophy clock unexpectedly controlled the critical dome clock")

note = File.read(File.expand_path("../theorem-construction/thomas-invariant-transverse-first-binomial-commutator-boundary-20260803.md", __dir__))
%w[ITC.12 ITC.15 ITC.20c ITC.20j ITC.24 ITC.27 ITC.29].each do |label|
  assert(note.include?(label), "missing theorem label #{label}")
end
assert(note.include?("not proved here"), "status must preserve the open datum-to-prefix implication")

puts "PASS: invariant-transverse first-binomial commutator and frame cancellation verified"
