# Separated recurrence after active-window gain reduction

## Target

Prove separated recurrence for the resulting final charge in the `Jumpavg` no-escape route.

## Current state

The branch has:

```math
Jumpavg => epsilon-threshold SCF concentration sequence.
```

The `nu_SCF` charge has finite unweighted bounded-overlap upper control, but it
does not select the `E_u` component. The enlarged charge including `E_u` covers
the component split, but its upper estimate reduces to an active-window amplitude
gain or heat-scale square-source theorem.

## Obstruction

The active-window amplitude gain is not installed. Therefore the enlarged charge lacks the scale-normalized upper summability required for contradiction.

Separated recurrence requires one charge `C_final` satisfying both:

```math
SCF threshold packet => C_final positive mass
```

and

```math
sum_k C_final(Q_k) <= C
```

on the same separated or bounded-overlap terminal windows. No current charge satisfies both.

## Verdict

Separated recurrence remains open. The current prerequisite is the active-window amplitude gain or an equivalent heat-scale square-source estimate.

## Boundary

This note records the recurrence status after the additive-carrier reduction. It does not discharge the Jumpavg branch.
