# Separated recurrence for final charge — obstruction

## Target

Prove separated recurrence for the final charge in the `Jump_avg` no-escape route.

The desired theorem is:

```math
Jump_avg => exists {Q_k} terminal, separated or bounded-overlap,
C_final(Q_k) >= d0 > 0
```

for infinitely many `k`, where the same charge `C_final` also has a finite bounded-overlap upper estimate.

## Current charge candidates

### Candidate 1: nu_SCF

`nu_SCF` has a finite upper estimate on bounded-overlap windows. It fails component selection because threshold SCF mass can still sit in the `E_u` channel.

### Candidate 2: enlarged charge including E_u

The enlarged charge closes the component-selection gap only by definition of
what it counts. It fails the upper-bound side because the current surfaces do
not install an additive finite carrier for repeated scale-critical `E_u`
terminal packets.

## Obstruction

There is currently no eligible final charge with both required properties:

1. every threshold SCF packet selects positive mass for the charge;
2. bounded-overlap terminal window sums of the charge are finite.

Even after a single positive terminal defect is available, the contradiction
still requires separated recurrence. A nested sequence around one terminal defect
cannot be summed with the bounded-overlap upper estimate. The lower schedule
must be terminal and separated enough for the upper estimate to apply.

## Verdict

Separated recurrence for the final charge remains open because the final charge itself remains unresolved.

## Required theorem pair

A valid route needs both:

```math
SCF threshold packet => C_final positive mass
```

and

```math
sum_k C_final(Q_k) <= C
```

for bounded-overlap terminal windows, followed by a recurrence theorem producing infinitely many such windows with uniform lower mass.

## Boundary

This note prevents a no-escape contradiction from mixing lower and upper estimates across different charges or across nested windows outside the upper-bound class.
