# MPP B_ASAC Local-Energy Trace No-Positive-Jump Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It attacks:

```math
BASACLocalEnergyTraceNoPositiveJump.A.
```

## Target

In the produced `B_ASAC` class, prove that the localized native
source-balance primitive has no positive terminal jump after ASAC, legal,
projected, cutoff, boundary, finite donor, and non-Zeno refill payments are
removed.

Together with:

```math
SourceAtomToTraceJump.A,
```

this produces the rigid time-face subclass:

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}.
```

## Direct test

The installed analytic input is finite local source mass:

```math
\int_{-1}^{0}\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds\le C_R.
```

This gives bounded variation for the source primitive. Bounded variation allows
jumps.

The terminal layer

```math
g_m(s)=m1_{(-1/m,0]}(s)
```

has unit `L^1_s` mass, and its primitive converges to a positive jump at
`s=0`.

Weak linear velocity traces do not rule this out because the selected source
trace is quadratic and one-sided after terminal source selection. The local
energy inequality permits defect measures and terminal bounded-variation jumps
unless a stronger trace regularity or source-residence theorem is added.

## Conditional suppliers

Any of these implies the trace no-positive-jump theorem:

```text
UniformTemporalSourceIntegrability_{p,B_ASAC}.A,
BASACTerminalSourceAntiConcentration.A,
PositiveSourceTraceAC.A,
ScaleCriticalTreeCarleson.A / LocalPositiveSourceCarleson.A,
TransportedCylinderNoFlux.A plus a real terminal time-face anti-atom input.
```

All are uninstalled or route-equivalent to the current terminal source wall.

## Verdict

`BASACLocalEnergyTraceNoPositiveJump.A` remains open.

The trace route translates the terminal source atom into a bounded-variation
jump, but installed local energy does not forbid that jump.

The next non-repeated alternatives named by the trace audit are:

```text
BackwardAdjointTerminalCapacity.A,
ParabolicTimeFaceCapacityZero.A,
or a new trace regularity theorem stronger than finite L1 source mass and local energy.
```
