# Separated recurrence after original-data E_u obstruction

## Target

Prove separated recurrence for the charge resulting from the original-data E_u step.

## Current state

The E_u step did not install a resulting final charge. The current candidates remain split:

- `nu_SCF` has finite bounded-overlap upper control and lacks E_u component selection.
- the enlarged E_u charge counts the missing component by definition and lacks
  finite bounded-overlap upper control.

## Recurrence consequence

Separated recurrence needs a charge `C_final` satisfying both:

```math
SCF threshold packet => C_final positive mass
```

and

```math
sum_k C_final(Q_k) <= C
```

for bounded-overlap terminal windows.

Since no such charge is installed, there is no recurrence theorem to run. A single terminal threshold sequence or nested terminal windows do not create the separated lower schedule compatible with the upper estimate.

## Verdict

Separated recurrence remains open.

## Required prior theorem

The recurrence step must wait for one of:

```math
E_u terminal threshold => D_u/P terminal mass,
```

or an additive finite E_u carrier with bounded-overlap upper control.

## Boundary

This note records the recurrence status after the original-data E_u obstruction. It does not discharge Jumpavg elimination.
