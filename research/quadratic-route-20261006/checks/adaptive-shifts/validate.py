#!/usr/bin/env python3
"""Exact finite adaptive-row algebra; no history or witness simulation."""
from collections import defaultdict
from fractions import Fraction as F
from itertools import product
from pathlib import Path
import json


def clean(d):
    return {k: v for k, v in d.items() if v}


def qvar(i, j):
    return (min(i, j), max(i, j))


def add_triple(out, r, j, k, value, variable=None):
    if r == k:
        return
    if r < k:
        r, k, value = k, r, -value
    key = (r, j, k) if variable is None else (variable, (r, j, k))
    out[key] += value


def rank_exact(rows):
    a = [list(r) for r in rows]
    if not a:
        return 0
    row = 0
    for col in range(len(a[0])):
        pivot = next((r for r in range(row, len(a)) if a[r][col]), None)
        if pivot is None:
            continue
        a[row], a[pivot] = a[pivot], a[row]
        scale = a[row][col]
        a[row] = [v/scale for v in a[row]]
        for r in range(len(a)):
            if r != row and a[r][col]:
                scale = a[r][col]
                a[r] = [v-scale*p for v, p in zip(a[r], a[row])]
        row += 1
        if row == len(a):
            break
    return row


class_results = []
for m in range(1, 7):
    patterns = {'all_stopped': [F(0)]*m,
                'all_forward': [F(1)]*m,
                'all_reverse': [F(-1)]*m,
                'forward_and_stopped': [F(i % 2) for i in range(m)],
                'forward_and_reverse': [F((-1)**i) for i in range(m)],
                'three_signs': [F((i % 3)-1) for i in range(m)]}
    for name, speeds in patterns.items():
        raw, paired = defaultdict(F), defaultdict(F)
        for r, j in product(range(m), repeat=2):
            add_triple(raw, r, j, j, speeds[j], qvar(r, j))
        for r, j, k in product(range(m), repeat=3):
            if k == j:
                add_triple(paired, r, j, k, speeds[j]/2, qvar(r, j))
            if r == j:
                add_triple(paired, r, j, k, -speeds[j]/2, qvar(k, j))
        raw, paired = clean(raw), clean(paired)
        assert raw == paired
        variables = [(i, j) for i in range(m) for j in range(i, m)]
        triples = sorted({triple for _, triple in raw})
        rows = [[raw.get((variable, triple), F(0)) for variable in variables]
                for triple in triples]
        rank = rank_exact(rows)
        stopped = sum(v == 0 for v in speeds)
        dimension = m + stopped*(stopped-1)//2
        assert rank == len(variables)-dimension
        for variable in variables:
            i, j = variable
            has_coefficient = any(v == variable for v, _ in raw)
            expected = i != j and (speeds[i] != 0 or speeds[j] != 0)
            assert has_coefficient == expected
        class_results.append({'columns': m, 'speed_pattern': name,
                              'speeds': [str(v) for v in speeds],
                              'stopped_columns': stopped,
                              'coefficient_rank': rank,
                              'cancellation_dimension': dimension})


two_time_cases = 0
for h in (F(1, 2), F(1), F(3)):
    for l0, l1 in product((F(-1), F(0), F(1), F(2)), repeat=2):
        mean_speed, hp = (l0+l1)/2, l1-l0
        u = [[F(1), -h/2], [F(1), h/2]]
        for alpha, gamma, beta in ((F(1), F(0), F(0)),
                                   (F(0), F(1), F(0)),
                                   (F(0), F(0), F(1))):
            q = [[alpha/4-gamma/h+beta/h**2, alpha/4-beta/h**2],
                 [alpha/4-beta/h**2, alpha/4+gamma/h+beta/h**2]]
            raw = defaultdict(F)
            for i, j, r, a, b in product(range(2), repeat=5):
                add_triple(raw, r, a, b,
                           q[i][j] * (l0, l1)[j] * u[i][r] * u[j][a] * u[j][b])
            factor = beta-alpha*h*h/4
            expected = clean({(1, 1, 0): factor*mean_speed,
                              (1, 0, 0): factor*hp/h})
            assert clean(raw) == expected
            two_time_cases += 1


square_cases = 0
for m in range(1, 7):
    q = [[F(i+j+1, 2) for j in range(m)] for i in range(m)]
    for speeds in ([F(i+1) for i in range(m)],
                   [F((i % 3)-1) for i in range(m)]):
        h = [[q[i][j]*(speeds[i]+speeds[j])/2 for j in range(m)]
             for i in range(m)]
        # K'_ij = A_ij + A_ji, where A_ij=<U'_i,L U_j>.
        for i, j in product(range(m), repeat=2):
            coefficient_raw = 2*q[i][j]*speeds[j]
            coefficient_stock = h[i][j]+h[j][i]
            coefficient_mismatch = q[i][j]*(speeds[j]-speeds[i])
            assert coefficient_raw == coefficient_stock+coefficient_mismatch
        square_cases += 1


# Positive actual energy parameters check only the sharp inequality's
# equality algebra. They are not prescribed or simulated NS profiles.
stock_cases = []
for r0, r1 in product((F(1), F(2), F(3)), repeat=2):
    for h in (F(1, 2), F(2)):
        k = F(3, 2)
        q0 = k/h**2*(1+r1/r0)
        q1 = k/h**2*(1+r0/r1)
        extraction = h*h*q0*q1/(q0+q1)
        stock = (q0*r0*r0+q1*r1*r1)/2
        assert extraction == k
        assert stock == k*(r0+r1)**2/(2*h*h)
        stock_cases.append({'sqrt_energy_0': str(r0), 'sqrt_energy_1': str(r1),
                            'gap': str(h), 'sharp_equality': True})


out = {'all_passed': True,
       'arithmetic': 'Exact fractions; formal transport coefficients only',
       'coefficient_class_cases': class_results,
       'complete_two_time_moving_gap_cases': two_time_cases,
       'gradient_stock_speed_mismatch_cases': square_cases,
       'sharp_stock_equality_cases': stock_cases,
       'scope': 'Finite algebra validation; no toy trajectory, alternate NS history, terminal assumption or forcing witness.'}
target = Path(__file__).with_name('coefficient-check.json')
with target.open('x') as stream:
    json.dump(out, stream, indent=2)
    stream.write('\n')
print(json.dumps({'all_passed': True, 'classification_cases': len(class_results),
                  'two_time_cases': two_time_cases, 'square_cases': square_cases,
                  'sharp_stock_cases': len(stock_cases), 'output': str(target)}))
