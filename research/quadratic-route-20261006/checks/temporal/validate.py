"""Exact rational coefficient checks; no flow simulation."""
from collections import defaultdict
from fractions import Fraction
from math import comb, factorial
from pathlib import Path
import json


def add(table, key, value):
    table[key] += value
    if table[key] == 0:
        del table[key]


def canonical(r, a, b):
    if r == b:
        return None, 0
    return ((r, a, b), 1) if r > b else ((b, a, r), -1)


def exact_rank(rows, width):
    pivots = {}
    for row in rows:
        row = [Fraction(x) for x in row]
        for c in sorted(pivots):
            if row[c]:
                v = row[c]
                row = [x - v * y for x, y in zip(row, pivots[c])]
        pivot = next((c for c in range(width) if row[c]), None)
        if pivot is not None:
            v = row[pivot]
            pivots[pivot] = [x / v for x in row]
    return len(pivots)


def verify_depth(n):
    # Generic symmetric Q coefficients remain separate symbolic variables.
    raw = defaultdict(Fraction)
    half = defaultdict(Fraction)
    for r in range(n + 1):
        for s in range(n + 1):
            for a in range(s + 1):
                b = s - a
                triple, sign = canonical(r, a, b)
                if sign:
                    q = tuple(sorted((r, s)))
                    add(raw, (triple, q), Fraction(sign * comb(s, a)))
    for r in range(n + 1):
        for a in range(n + 1):
            for b in range(n + 1):
                triple, sign = canonical(r, a, b)
                if not sign:
                    continue
                if a + b <= n:
                    q = tuple(sorted((r, a + b)))
                    add(half, (triple, q), Fraction(sign * comb(a + b, a), 2))
                if a + r <= n:
                    q = tuple(sorted((b, a + r)))
                    add(half, (triple, q), Fraction(-sign * comb(a + r, a), 2))
    assert raw == half, ("generic halfsum", n)

    # Substitute independent m_d/(r!s!) and compare the full boundary.
    hankel_raw = defaultdict(Fraction)
    for (triple, (r, s)), value in raw.items():
        add(hankel_raw, (triple, r + s), value / (factorial(r) * factorial(s)))
    boundary = defaultdict(Fraction)
    for r in range(n + 1):
        for a in range(n + 1):
            for b in range(n + 1):
                if a + b <= n < a + r:
                    assert r > b
                    add(boundary, ((r, a, b), r + a + b),
                        Fraction(1, factorial(r) * factorial(a) * factorial(b)))
    assert hankel_raw == boundary, ("full Hankel boundary", n)
    count_expected = comb(n + 2, 3) if n else 0
    assert len(boundary) == count_expected
    total_counts = {}
    for j in range(1, n + 1):
        total_counts[n + j] = sum(1 for (_, d) in boundary if d == n + j)
        assert total_counts[n + j] == j * (n - j + 1)
    highest = {(triple, d): v for (triple, d), v in boundary.items() if d == 2*n}
    expected_highest = {}
    for a in range(1, n + 1):
        expected_highest[((n, a, n-a), 2*n)] = Fraction(comb(n, a), factorial(n)**2)
    assert highest == expected_highest, ("highest full row", n)

    # All matched condition rows, represented on independent symmetric Q entries.
    variables = [(r, s) for r in range(n + 1) for s in range(r, n + 1)]
    pos = {q: i for i, q in enumerate(variables)}
    rows = []
    for r in range(n + 1):
        for a in range(n + 1):
            for b in range(n + 1):
                if r == b or a + r > n or a + b > n:
                    continue
                row = [0] * len(variables)
                row[pos[tuple(sorted((r, a+b)))]] += factorial(r) * factorial(a+b)
                row[pos[tuple(sorted((b, a+r)))]] -= factorial(b) * factorial(a+r)
                rows.append(row)
    rank = exact_rank(rows, len(variables))
    assert rank == n * (n - 1) // 2, ("condition rank", n, rank)
    for d in range(2*n + 1):
        q = [Fraction(int(r+s == d), factorial(r)*factorial(s)) for r, s in variables]
        assert all(sum(x*y for x, y in zip(row, q)) == 0 for row in rows)
    assert len(variables) - rank == 2*n + 1
    return {
        "N": n,
        "generic_raw_equals_zero_extended_half_sum": True,
        "factorial_hankel_equals_complete_boundary": True,
        "highest_total_equals_complete_highest_row": True,
        "symmetric_matrix_variables": len(variables),
        "matched_condition_rank": rank,
        "cancellation_dimension": 2*n + 1,
        "unmatched_boundary_terms": len(boundary),
        "boundary_terms_by_total": total_counts,
    }


if __name__ == "__main__":
    result = {
        "kind": "Exact rational coefficient check; no trajectory or analytic estimate",
        "depths": [verify_depth(n) for n in range(7)],
        "all_pass": True,
    }
    target = Path(__file__).with_name("coefficient-check.json")
    if target.exists():
        raise SystemExit("Refuse to overwrite coefficient-check.json")
    target.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"all_pass": True, "N": list(range(7))}))
