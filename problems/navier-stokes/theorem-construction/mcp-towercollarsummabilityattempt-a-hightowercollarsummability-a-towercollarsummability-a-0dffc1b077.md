# TowerCollarSummability.A Attempt

## Target

Prove a summable tower/collar budget strong enough to rule out infinitely many shrinking terminal source windows.

The intended route is:

```text
persistent terminal affine/source core
=> positive collar/tower cost per terminal window
=> total cost over all terminal windows exceeds available global budget
=> terminal time-face atom impossible.
```

## Direct attempt

The existing collar pricing gives a local lower cost for a persistent critical affine/source core on a parabolic clock. Schematically:

```math
\text{collar-cost on window } I_m \ge c_m>0.
```

This is useful but not enough. To rule out a terminal Zeno schedule, one must sum over infinitely many shrinking windows:

```math
\sum_m c_m = \infty
```

while also having a finite global tower/collar budget:

```math
\sum_m \text{available tower budget on } I_m < \infty.
```

The problem is that the installed local collar lower bound degenerates with the shrinking parabolic scales unless a uniform scale-normalized tower budget or lower bound is supplied. A Zeno schedule can place positive source mass on windows whose costs are individually positive but summably small.

## Failure point

The proof needs one of:

```text
uniform lower collar cost per retained terminal source packet;
scale-normalized tower budget that makes the costs non-summable;
finite global high-tower/enstrophy-production budget with matching lower bound;
Carleson packing of terminal source windows tied to the collar cost.
```

The installed affine/collar estimate prices the frozen-core escape locally, but it does not by itself supply the summable global contradiction.

## Verdict

`TowerCollarSummability.A` is not proved from installed inputs.

It remains a sufficient but missing gold input. The terminal Zeno layer is not ruled out by local collar pricing alone.

## Final gold-route status

All forward-gold routes tried in this loop fail from installed inputs:

```text
TerminalThicknessModulus.A: failed;
UniformTemporalSourceIntegrability_{p,B_ASAC}.A: failed;
DissipationTetherAbsoluteContinuity.A: failed;
BASACProductionToTerminalAntiAtom.A: failed;
ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A: failed;
TowerCollarSummability.A: failed.
```

Therefore the stronger forward theorem

```text
TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A
```

remains open as a gold theorem.

The CM contrapositive consumption route remains separate and already consumed the branch.