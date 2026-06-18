# Enlarged SCF charge with E_u — upper-bound obstruction

## Target

Repair component selection by enlarging the final branch charge to include the velocity-energy component `E_u`.

The proposed enlarged charge is

```math
\nu_{SCF}^{+}:=\mu_{E_u}+\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Motivation

The previous component-selection audit found the exact escape channel:

```math
SCF_base = E_u + D_u + P + G_Phi.
```

Pack control handles `G_Phi`, and `nu_SCF` handles `D_u` plus local pressure. A
threshold SCF packet can still be carried by `E_u`. Adding `E_u` closes the
component gap only formally; it does not supply the scale-normalized additive
upper carrier required by the `Jump_avg` contradiction.

## Obstruction

The existing finite upper-carrier theorem works because

```math
mu_D + sum_chi mu_P_chi
```

is a finite spacetime Radon measure. Bounded overlap gives a direct summability estimate over terminal windows.

The scale-critical velocity-energy packet `E_u` is different. It is a local energy size/readout tied to time slices or local cylinder energy, controlled globally by the energy ledger and locally by the local energy inequality. The current surfaces do not install an additive terminal Radon measure whose values equal the scale-critical `E_u` packet and whose bounded-overlap sum is finite.

Global energy gives size control per time. It does not give summability of repeated terminal `E_u` threshold packets over a separated terminal schedule. The local energy inequality supplies balances, yet it does not convert repeated `E_u` thresholds into a finite upper sum without an additional decay, recurrence, or dissipation/pressure conversion theorem.

## Verdict

The enlarged-charge route is open. Adding `E_u` fixes component selection only at the level of notation. It loses the installed finite upper-carrier theorem.

## Required replacement theorem

One valid replacement theorem is

```math
E_u terminal threshold => D_u/P terminal mass
```

on the same terminal schedule.

A second valid replacement is an additive `E_u` carrier theorem:

```math
sum_k E_u(Q_k) <= C(E_0)
```

for the same separated or bounded-overlap terminal windows used by the lower accumulation route.

## Boundary

This note blocks a premature enlargement of the final charge. The current best route remains: prove an `E_u` to `D_u/P` conversion, or install a genuine additive finite upper carrier for `E_u`.
