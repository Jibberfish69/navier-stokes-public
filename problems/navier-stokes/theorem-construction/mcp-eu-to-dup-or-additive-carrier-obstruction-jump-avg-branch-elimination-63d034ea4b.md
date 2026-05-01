# E_u-to-D_u/P conversion or additive E_u carrier — obstruction

## Target

Resolve the remaining component-selection escape channel for `Jump_avg` elimination.

The two possible routes are:

1. prove terminal `E_u` threshold packets force `D_u` or local pressure mass on the same terminal schedule;
2. construct an additive finite `E_u` carrier with a bounded-overlap upper estimate.

## Attempt 1: convert E_u to D_u/P

The local energy inequality controls local balances on same-fluid cylinders. It relates local velocity energy, dissipation, pressure flux, cutoff errors, and transport geometry. Pack control keeps the cylinder geometry admissible.

This is enough to organize a balance. It does not install the needed one-way implication:

```math
E_u(Q_k) >= epsilon
=> D_u/P mass on comparable terminal windows.
```

A local velocity-energy packet can persist as a moving terminal packet while preserving the global energy ledger unless a recurrence, decay, or local smoothing theorem is added. The current surfaces record this as the moving-packet obstruction.

## Attempt 2: add E_u to the final charge

A finite upper bound for `nu_SCF` works because dissipation and local pressure are finite spacetime Radon measures. The `E_u` term is a scale-critical local energy readout tied to time slices and cylinder scales. The current surfaces do not provide an additive measure whose bounded-overlap window sum equals or controls repeated terminal `E_u` threshold packets.

Thus the proposed enlarged charge has no matching upper estimate.

## Moving-threshold check

The aligned threshold notes show the required form of a successful theorem. Finite weighted mass is insufficient. A moving threshold requires rate-level decay, for example a square budget smaller than the threshold scale. No such rate-level theorem is installed for `E_u` terminal packets.

## Verdict

Both routes remain open.

The exact source theorem needed next is one of:

```math
E_u terminal threshold => D_u/P terminal mass,
```

or

```math
sum_k E_u(Q_k) <= C(E_0)
```

for the same separated terminal windows used in the lower accumulation argument.

## Boundary

This note preserves the narrowed route. `Jump_avg` gives an SCF threshold sequence, and `nu_SCF` has an upper bound. The proof still lacks an `E_u` conversion or additive `E_u` carrier.