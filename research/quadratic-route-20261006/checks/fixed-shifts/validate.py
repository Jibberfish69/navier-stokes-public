#!/usr/bin/env python3
"""Exact finite algebra checks for the new actual-shift report; no simulation."""
from collections import defaultdict
from fractions import Fraction as F
from itertools import product
from math import comb
from pathlib import Path
import json


def clean(values):
    return {k: v for k, v in values.items() if v}


def variable(i, j):
    return (min(i, j), max(i, j))


def add_transport(out, weight, r, j, k, value):
    if r == k:
        return
    if r < k:
        r, k, value = k, r, -value
    out[(weight, (r, j, k))] += value


def matrix_product(a, b):
    return [[sum((a[i][k] * b[k][j] for k in range(len(b))), F(0))
             for j in range(len(b[0]))] for i in range(len(a))]


def transpose(a):
    return list(map(list, zip(*a)))


def identity(n):
    return [[F(i == j) for j in range(n)] for i in range(n)]


def exact_rank(a):
    a = [list(row) for row in a]
    if not a:
        return 0
    row = 0
    for col in range(len(a[0])):
        pivot = next((r for r in range(row, len(a)) if a[r][col]), None)
        if pivot is None:
            continue
        a[row], a[pivot] = a[pivot], a[row]
        scale = a[row][col]
        a[row] = [v / scale for v in a[row]]
        for r in range(len(a)):
            if r != row and a[r][col]:
                scale = a[r][col]
                a[r] = [v - scale * p for v, p in zip(a[r], a[row])]
        row += 1
        if row == len(a):
            break
    return row


def fd_coefficients(r, shift, h):
    return {shift + j: F((-1) ** (r-j) * comb(r, j)) / h ** r
            for j in range(r+1)}


def bilinear_expansion(first, second):
    return {(i, j): a*b for i, a in first.items() for j, b in second.items()}


transport_results = []
for m in range(1, 8):
    raw, paired = defaultdict(F), defaultdict(F)
    for r, j in product(range(m), repeat=2):
        add_transport(raw, variable(r, j), r, j, j, F(1))
    for r, j, k in product(range(m), repeat=3):
        if k == j:
            add_transport(paired, variable(r, j), r, j, k, F(1, 2))
        if r == j:
            add_transport(paired, variable(k, j), r, j, k, F(-1, 2))
    raw, paired = clean(raw), clean(paired)
    assert raw == paired
    weights = [(i, j) for i in range(m) for j in range(i, m)]
    triples = sorted({triple for _, triple in raw})
    matrix = [[raw.get((weight, triple), F(0)) for weight in weights]
              for triple in triples]
    rank = exact_rank(matrix)
    assert rank == m * (m-1) // 2
    for i in range(m):
        assert not any(weight == (i, i) for weight, _ in raw)
    for i in range(m):
        for j in range(i+1, m):
            assert sum(weight == (i, j) for weight, _ in raw) == 2
    transport_results.append({'distinct_shifts': m, 'coefficient_rank': rank,
                              'cancellation_dimension': len(weights)-rank})


grid_results = []
for n in range(7):
    for h in (F(1, 2), F(1), F(2)):
        a = [[fd_coefficients(r, 0, h).get(j, F(0)) for j in range(n+1)]
             for r in range(n+1)]
        inverse = [[F(comb(j, r)) * h**r if r <= j else F(0)
                    for r in range(n+1)] for j in range(n+1)]
        assert matrix_product(a, inverse) == identity(n+1)
        assert matrix_product(inverse, a) == identity(n+1)
        diagonal = [[F(i+1) if i == j else F(0) for j in range(n+1)]
                    for i in range(n+1)]
        p = matrix_product(transpose(inverse), matrix_product(diagonal, inverse))
        assert matrix_product(transpose(a), matrix_product(p, a)) == diagonal
        for r in range(n+1):
            direct = {(j, j): value for j, value in fd_coefficients(r, 0, h).items()}
            first, second = defaultdict(F), defaultdict(F)
            for ell in range(r+1):
                scale = F(comb(r, ell))
                for key, value in bilinear_expansion(
                        fd_coefficients(ell, 0, h),
                        fd_coefficients(r-ell, ell, h)).items():
                    first[key] += scale * value
                for key, value in bilinear_expansion(
                        fd_coefficients(ell, r-ell, h),
                        fd_coefficients(r-ell, 0, h)).items():
                    second[key] += scale * value
            assert clean(first) == direct
            assert clean(second) == direct
            stencil = fd_coefficients(r, 0, h)
            absolute_mass = sum(abs(v) for v in stencil.values())
            assert absolute_mass == F(2**r) / h**r
            q = {j: abs(v)/absolute_mass for j, v in stencil.items()}
            inverse_coercivity = sum(v*v/q[j] for j, v in stencil.items())
            assert 1/inverse_coercivity == h**(2*r) / F(4**r)
        grid_results.append({'maximum_difference_order': n, 'h': str(h),
                             'inverse_and_congruence': True,
                             'both_ordered_product_rules': True,
                             'optimal_diagonal_extraction': True})


def polynomial_add(*polys):
    out = defaultdict(F)
    for p in polys:
        for monomial, value in p.items():
            out[monomial] += value
    return clean(out)


def polynomial_scale(p, factor):
    return clean({monomial: value*factor for monomial, value in p.items()})


def polynomial_product(p, q):
    out = defaultdict(F)
    for a, v in p.items():
        for b, w in q.items():
            out[tuple(x+y for x, y in zip(a, b))] += v*w
    return clean(out)


def gaussian_derivative(p, axis, exponent):
    out = defaultdict(F)
    for monomial, value in p.items():
        if monomial[axis]:
            powers = list(monomial)
            powers[axis] -= 1
            out[tuple(powers)] += value * monomial[axis]
        powers = list(monomial)
        powers[axis] += 1
        out[tuple(powers)] -= 2*exponent*value
    return clean(out)


def curl_gaussian(v, exponent):
    return [polynomial_add(gaussian_derivative(v[(i+2) % 3], (i+1) % 3, exponent),
                           polynomial_scale(gaussian_derivative(v[(i+1) % 3],
                                                                (i+2) % 3, exponent), -1))
            for i in range(3)]


y = [{(0, 1, 0): F(-2)}, {(1, 0, 0): F(2)}, {}]
b = [polynomial_add(*(polynomial_product(y[j], gaussian_derivative(y[i], j, 1))
                      for j in range(3))) for i in range(3)]
assert b == [{(1, 0, 0): F(-4)}, {(0, 1, 0): F(-4)}, {}]
curl_b = curl_gaussian(b, 2)
assert curl_b == [{(0, 1, 1): F(-16)}, {(1, 0, 1): F(16)}, {}]
x = curl_gaussian(curl_b, 2)
assert polynomial_add(*(gaussian_derivative(x[i], i, 2) for i in range(3))) == {}
assert polynomial_add(*(gaussian_derivative(y[i], i, 1) for i in range(3))) == {}
assert any(curl_b)


results = {
    'all_passed': True,
    'arithmetic': 'Exact fractions and exact multivariate polynomial coefficients',
    'transport_half_sum_and_classification': transport_results,
    'finite_grid_checks': grid_results,
    'explicit_actual_forced_NS_field_check': {
        'Y_solenoidal': True,
        'N_Y_Y_equals_minus_4_phi_squared_x_y_0': True,
        'curl_N_Y_Y_equals_16_z_phi_squared_minus_y_x_0': True,
        'curl_N_Y_Y_nonzero': True,
        'X_curlcurl_N_Y_Y_solenoidal': True},
    'scope': 'Finite algebra only; no history simulation, terminal membership assumption or numerical PDE check.'}
target = Path(__file__).with_name('coefficient-check.json')
with target.open('x') as stream:
    json.dump(results, stream, indent=2)
    stream.write('\n')
print(json.dumps({'all_passed': True, 'shift_counts': [1, 7],
                  'maximum_grid_order': 6, 'grid_cases': len(grid_results),
                  'output': str(target)}))
