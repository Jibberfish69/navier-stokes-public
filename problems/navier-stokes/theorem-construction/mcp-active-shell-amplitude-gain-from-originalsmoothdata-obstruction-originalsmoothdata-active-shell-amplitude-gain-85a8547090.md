# Active-shell amplitude gain from OriginalSmoothData — failed discharge

## Target
Prove the active-shell amplitude gain needed upstream of the scale-normalized `nu_SCF` Carleson estimate.

A sufficient gain is the pointwise reserve inequality

`2^{-j} D_j(t)^2 <= eps nu D_j(t) + r_j(t)`

on active terminal shells, with summable reserve `r_j`.

## Attempt
From `OriginalSmoothData`, the solution is smooth on every compact interval before the terminal time. Therefore each fixed shell amplitude is finite on `[0,T]` for every `T<T_*`. The energy inequality also gives finite total energy and dissipation.

These facts control finite time and finite shell data. The needed theorem is stronger: it controls active shell amplitude uniformly along terminal windows whose active scales may drift to infinity as `t -> T_*`.

## Obstruction
Finite energy and compact-before-terminal smoothness allow concentration to move toward higher shells near the terminal time. They supply raw mass control, while the gain requires scale decay on exactly those active shells.

The scalar shell model

`E_j' + c nu 2^(2j) E_j <= F_j`

shows the obstruction. A source term can balance damping at a chosen active amplitude. Without a square-source theorem, active-shell amplitude decay, monotone-dominance functional, or equivalent active-square theorem, the desired gain does not follow from `OriginalSmoothData`.

## Verdict
The active-shell amplitude gain remains unproved from `OriginalSmoothData`.

## Consequence
The implication requested by the user is already installed:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson estimate`.

The independent source theorem

`OriginalSmoothData -> active-shell amplitude gain`

is the remaining analytic frontier.
