# ScaleCriticalTreeCarleson.A — direct loop note

## Target

For terminal Zeno source-refill trees, construct a scale-normalized Carleson reserve controlling the positive source-parent edge mass:

```math
\sum_{e\in\mathcal T_{Zeno}}\pi(e)
\le C\mathcal R_{sc}(root)+C\sum_{v\in\mathcal T_{Zeno}}\ell(v),
```

with `R_sc` finite under `OriginalSmoothData` and uniform across terminal depth.

This theorem closes the charge branch of `RefillTreeWellFounded.A` and hence
the donor route.

## Attempt

The local donor-balance identity has already reduced the problem to boundary leaves or refill. Entrance leaves are controlled. The surviving branch is Zeno refill at shrinking heat scales.

Raw energy gives finite physical mass and first-moment dissipation. A Zeno source pulse can carry order-one normalized source/mixed mass on shrinking windows while the raw physical contribution remains compatible with the finite energy ledger. Thus raw energy cannot be the Carleson reserve.

Local energy gives packet balances. It becomes a Carleson reserve only after a scale-normalized charge is supplied. That charge is exactly the current target.

The candidate active-square / square-source estimates have the right form. They
control terminal active-window positive source mass and yield the desired tree
Carleson bound once supplied. The terminal stack records those estimates as
route-equivalent to `SourcePulseExclusion.A` after the executed active-square,
square-source, and active-window Carleson audits.

Therefore importing active-window Carleson here spends the theorem being proved.

## Result

`ScaleCriticalTreeCarleson.A` remains open under installed inputs.

The precise obstruction is the absence of an independently installed scale-normalized reserve for nonlinear source mass on terminal active windows.

## Consequence

The donor route can close through this theorem only if one proves an independent active-window Carleson / square-source reserve from `OriginalSmoothData`:

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

Current surfaces identify that statement with the source-pulse wall itself, so this route remains unpromoted. Continue to `ZenoSourceResidueRigidity.A`.
