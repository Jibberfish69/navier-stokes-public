# Separated recurrence after E_u conditional route

## Target

Prove separated recurrence for the final charge in the `Jump_avg` no-escape route.

## Current chain

The route now has:

```math
Jump_avg => epsilon-threshold SCF concentration sequence.
```

It also has finite upper summability for

```math
nu_SCF = mu_D + sum_chi mu_P_chi.
```

The `E_u` channel has a conditional route: BKM or equivalent high regularity gives terminal moduli and closes the escape. The live original-data route still lacks an unconditional `E_u` conversion or additive `E_u` carrier.

## Recurrence test

A recurrence theorem needs one final charge `C_final` such that:

```math
SCF threshold packet => C_final positive mass,
```

and

```math
sum_k C_final(Q_k) <= C
```

for bounded-overlap terminal windows.

Current candidates split these requirements. `nu_SCF` has upper summability and
misses the `E_u` component. The enlarged charge including `E_u` counts that
component by definition, but lacks the bounded-overlap upper summability
required of a final contradiction charge.

## Verdict

Separated recurrence remains open. It has no eligible final charge target on the original-data branch.

## Required next theorem

Install one of:

```math
E_u terminal threshold => D_u/P terminal mass,
```

or an additive finite `E_u` carrier. Then rerun recurrence for that final charge.

## Boundary

This note records the recurrence status after the E_u conditional-route test. It preserves the narrowed frontier and keeps the final audit open.
