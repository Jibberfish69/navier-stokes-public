# Separated lower accumulation for nu_SCF — obstruction

## Target

Prove a separated lower accumulation theorem for the final selected charge

```math
D_k_SCF = nu_SCF(Q_k).
```

The desired form is a terminal schedule of bounded-overlap windows with

```math
D_k_SCF >= d0 > 0
```

on enough windows to contradict the finite upper bound.

## Available inputs

The current route has proved:

```math
Jump_avg => epsilon-threshold SCF concentration sequence.
```

The final upper bound for the chosen charge is also installed:

```math
sum_k nu_SCF(Q_k) <= C_atlas nu_SCF(total) < infinity
```

for bounded-overlap terminal windows.

## Obstruction

The missing prior step is component selection. The threshold SCF sequence may still be carried by the velocity-energy component `E_u`, while the selected charge `nu_SCF` carries dissipation and local pressure. Thus the route has no theorem producing even one positive terminal `nu_SCF` defect from the extracted SCF threshold sequence.

A second obstruction appears after component selection. A finite terminal defect alone gives a positive charge at a limit object or a nested packet. To contradict the finite upper bound, the proof needs a separated or bounded-overlap schedule with repeated positive lower charge. Nested repeats do not qualify for the same bounded-overlap upper estimate.

## Conditional theorem shape

A valid future theorem must have this form:

```math
Jump_avg
=> exists {Q_k} terminal, separated or bounded-overlap,
   nu_SCF(Q_k) >= d0 > 0 for infinitely many k.
```

Together with the installed upper bound, this would give contradiction.

## Verdict

Separated lower accumulation for `nu_SCF` remains open. The current blockers are:

1. component selection from SCF threshold mass to `nu_SCF` mass;
2. recurrence/separation of positive terminal charge on bounded-overlap windows.

## Boundary

This failed attempt preserves the useful progress: the upper side is installed and `Jump_avg` produces a threshold SCF sequence. Full branch elimination still requires the lower schedule theorem for the same charge.