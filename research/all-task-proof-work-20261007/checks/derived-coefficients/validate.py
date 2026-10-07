"""Recompute finite ordered coefficients with the Python standard library.

This program checks literal binomial allocation tables and the finite temporal
boundary formula. It checks no trajectory, convergence, or analytic estimate.
Recorded ``ok``/``matches`` flags are not used as evidence. Supply input JSON
files and a new output filename explicitly; existing output is never replaced.
"""

import argparse
from collections import defaultdict
from fractions import Fraction
from hashlib import sha256
from itertools import product
import json
from math import comb, factorial, prod
from pathlib import Path


ZERO = (0, (0, 0, 0))
SPATIAL = tuple(a for a in product(range(3), repeat=3) if sum(a) <= 2)
FIELDS = frozenset((n, a) for n in range(3) for a in SPATIAL)


def require(condition, message):
    if not condition:
        raise ValueError(message)


def integer(value, name):
    require(type(value) is int, name + " must be an integer")
    return value


def field(value):
    require(isinstance(value, list) and len(value) == 2, "invalid field")
    n = integer(value[0], "temporal index")
    require(isinstance(value[1], list) and len(value[1]) == 3,
            "invalid spatial multi-index")
    alpha = tuple(integer(x, "spatial index") for x in value[1])
    require((n, alpha) in FIELDS, "field outside the literal thirty fields")
    return n, alpha


def raw_coefficients(n, alpha):
    # Evaluate every ordered Leibniz allocation independently of either table.
    coefficients = {}
    for k in range(n + 1):
        for beta in product(*(range(a + 1) for a in alpha)):
            gamma = tuple(a - b for a, b in zip(alpha, beta))
            pair = ((k, beta), (n - k, gamma))
            coefficient = comb(n, k) * prod(comb(a, b)
                                             for a, b in zip(alpha, beta))
            coefficients[pair] = coefficient
    return coefficients


def remainder_coefficients(n, alpha):
    coefficients = dict(raw_coefficients(n, alpha))
    receiver = (n, alpha)
    # Subtract BOTH common-linearization terms, even when their keys coincide.
    for pair in ((ZERO, receiver), (receiver, ZERO)):
        coefficients[pair] = coefficients.get(pair, 0) - 1
        if coefficients[pair] == 0:
            del coefficients[pair]
    return coefficients


def parse_allocations(rows, left_name, right_name, *, raw=False, receiver=None):
    require(isinstance(rows, list), "allocations must be a list")
    coefficients = {}
    for row in rows:
        require(isinstance(row, dict), "allocation must be an object")
        pair = (field(row[left_name]), field(row[right_name]))
        require(pair not in coefficients, "duplicated ordered allocation")
        coefficient = integer(row["coefficient"], "coefficient")
        require(coefficient != 0, "zero coefficient should be omitted")
        coefficients[pair] = coefficient
        if raw:
            expected = pair in ((ZERO, receiver), (receiver, ZERO))
            require(type(row["endpoint"]) is bool and row["endpoint"] == expected,
                    "incorrect endpoint annotation")
    return coefficients


def check_thirty_fields(allocation, binomial):
    require(allocation["selected_field_count"] == 30, "incorrect field count")
    rows = allocation["fields"]
    checks = binomial["checks"]
    require(len(rows) == 30 and len(checks) == 30, "need exactly thirty rows")
    recorded_spatial = [tuple(integer(x, "spatial index") for x in a)
                        for a in binomial["spatial_multiindices"]]
    require(len(recorded_spatial) == 10 and set(recorded_spatial) == set(SPATIAL),
            "incorrect ten-field spatial set")
    by_field = {}
    for row in rows:
        receiver = field(row["field"])
        require(receiver not in by_field, "duplicate allocation-table field")
        by_field[receiver] = row
    by_check = {}
    for row in checks:
        receiver = field([row["n"], row["alpha"]])
        require(receiver not in by_check, "duplicate binomial-table field")
        by_check[receiver] = row
    require(set(by_field) == FIELDS and set(by_check) == FIELDS,
            "incomplete temporal/spatial field set")
    results = []
    for n, alpha in sorted(FIELDS):
        receiver = (n, alpha)
        raw = raw_coefficients(n, alpha)
        remainder = remainder_coefficients(n, alpha)
        row = by_field[receiver]
        require(parse_allocations(row["raw_binomial_allocations"], "left", "right",
                                  raw=True, receiver=receiver) == raw,
                "raw binomial mismatch at " + repr(receiver))
        require(parse_allocations(row["H_common_linearization_correction"],
                                  "left", "right") == remainder,
                "linearization remainder mismatch at " + repr(receiver))
        require(parse_allocations(by_check[receiver]["remainder_allocations"],
                                  "first", "second") == remainder,
                "independent recorded remainder mismatch at " + repr(receiver))
        # The complete Leibniz coefficient mass is an additional exact check.
        require(sum(raw.values()) == 2 ** (n + sum(alpha)),
                "incorrect total binomial coefficient mass")
        results.append({
            "n": n, "alpha": list(alpha),
            "raw_ordered_allocations": len(raw),
            "raw_coefficient_sum": sum(raw.values()),
            "remainder_ordered_allocations": len(remainder),
            "all_three_recomputed_comparisons_pass": True,
        })
    require(remainder_coefficients(0, (0, 0, 0)) == {(ZERO, ZERO): -1},
            "base coefficient must be one minus two")
    return results


def add_triple(coefficients, triple, coefficient):
    # Sole quotient: T(i,r,s) = -T(s,r,i); zero if i=s.
    i, r, s = triple
    if i == s:
        return
    if i < s:
        i, s = s, i
        coefficient = -coefficient
    key = (i, r, s)
    coefficients[key] += coefficient
    if not coefficients[key]:
        del coefficients[key]


def check_temporal_record(record):
    require(isinstance(record["checks"], list), "temporal checks must be a list")
    # Only the depths are read. Previously stored pass flags are not consulted.
    depths = [integer(row["N"], "depth") for row in record["checks"]]
    require(len(depths) == 9 and set(depths) == set(range(9)),
            "record must contain each depth zero through eight exactly once")
    results = []
    for depth in sorted(depths):
        raw = defaultdict(Fraction)
        # HB6, including every ordered endpoint of every temporal binomial.
        for i in range(depth + 1):
            for j in range(depth + 1):
                for r in range(j + 1):
                    s = j - r
                    add_triple(raw, (i, r, s),
                               Fraction(1, factorial(i)*factorial(r)*factorial(s)))
        boundary = defaultdict(Fraction)
        # HB8, constructed through total degree and its explicit finite bounds.
        by_degree = {}
        for degree in range(depth + 1, 2*depth + 1):
            lower = degree - depth
            count = 0
            for i in range(lower, depth + 1):
                for s in range(lower):
                    r = degree - i - s
                    require(r > 0 and i > s, "invalid one-sided boundary")
                    add_triple(boundary, (i, r, s),
                               Fraction(1, factorial(i)*factorial(r)*factorial(s)))
                    count += 1
            require(count == lower*(depth-lower+1), "boundary layer count")
            by_degree[str(degree)] = count
        require(raw == boundary, "temporal boundary mismatch at N=" + str(depth))
        require(all(sum(key) > depth for key in raw),
                "incomplete interior cancellation at N=" + str(depth))
        require(len(boundary) == comb(depth + 2, 3), "boundary total count")
        results.append({
            "N": depth,
            "recomputed_boundary_identity": True,
            "recomputed_complete_interior_cancellation": True,
            "boundary_terms": len(boundary),
            "boundary_terms_by_total_degree": by_degree,
        })
    return results


def load_input(path, role):
    data = path.read_bytes()
    return json.loads(data), {"role": role, "sha256": sha256(data).hexdigest(),
                              "bytes": len(data)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--allocation-table", type=Path, required=True)
    parser.add_argument("--binomial-table", type=Path, required=True)
    parser.add_argument("--temporal-record", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise SystemExit("Refuse to overwrite existing result")
    try:
        allocation, allocation_meta = load_input(args.allocation_table, "allocation-table")
        binomial, binomial_meta = load_input(args.binomial_table, "binomial-table")
        temporal, temporal_meta = load_input(args.temporal_record, "temporal-record")
        fields = check_thirty_fields(allocation, binomial)
        depths = check_temporal_record(temporal)
        result = {
            "scope": "Exact finite ordered coefficients only; no analytic estimate, "
                     "trajectory, terminal limit, or pressure estimate is verified",
            "method": "Independent literal binomial evaluation and subtraction of both "
                      "common-linearization endpoints; rational temporal triple quotient",
            "recorded_pass_flags_used": False,
            "inputs": [allocation_meta, binomial_meta, temporal_meta],
            "thirty_fields": fields,
            "temporal_depths": depths,
            "all_pass": True,
        }
        # Exclusive creation preserves the refusal even if a file appears meanwhile.
        with args.output.open("x", encoding="utf-8") as stream:
            stream.write(json.dumps(result, indent=2, sort_keys=True) + "\n")
    except (ValueError, KeyError, TypeError, OSError) as error:
        raise SystemExit("FAIL: " + str(error)) from error
    print(json.dumps({"all_pass": True, "fields": 30,
                      "temporal_depths": list(range(9))}, sort_keys=True))


if __name__ == "__main__":
    main()
