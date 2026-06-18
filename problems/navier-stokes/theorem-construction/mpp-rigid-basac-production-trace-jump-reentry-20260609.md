# MPP Rigid B_ASAC Production / Trace-Jump Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It tests whether the loop can escape the reverse-Holder cycle by producing a
stronger rigid `B_ASAC` subclass.

## Rigid subclass split

The produced equality class is:

```math
B_{ASAC}.
```

It has terminal equality/tangent organization, zero ASAC defect, no fixed
earlier selected source slice, paid legal/donor exits, and finite local `L^1_s`
source mass.

A useful rigid subclass must add something that forces source-residue vanishing:

```text
temporal reverse Holder,
finite global ancient energy,
Type-I or critical control,
global no-incoming flux,
transported-cylinder no-flux with interior source-production exclusion,
or terminal time-face anti-atom control.
```

The current production gives none of those additions.

## Time-face subclass

Define `B_ASAC^{TA}` by adding:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

Inside `B_ASAC^{TA}`, residue Liouville is exactly the conjunction of terminal
anti-atom and no fixed earlier selected source slice. The missing theorem is
production:

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}.
```

Current `B_ASAC` data permit:

```math
g_m(s)=m1_{(-1/m,0]}(s),
```

so direct production into `B_ASAC^{TA}` is unavailable.

## Trace-jump mechanism

The only new mechanism in this branch is a localized source-balance trace route.

If a terminal source atom exists, then after ASAC/legal/donor payments are
removed the required trace theorem is a positive terminal jump in a localized
source-balance primitive:

```math
SourceAtomToTraceJump.A.
```

Then a no-positive-jump theorem would produce the rigid subclass:

```math
SourceAtomToTraceJump.A
+
BASACLocalEnergyTraceNoPositiveJump.A
\Longrightarrow
ProductionIntoRigidBASACTimeFaceSubclass.A.
```

## Current obstruction

The installed local-energy and compactness inputs give bounded variation of
the localized balance primitive, not strong terminal continuity. Bounded
variation permits a positive terminal jump.

The terminal layer

```math
g_m(s)=m1_{(-1/m,0]}(s)
```

is exactly such a jump in the limiting primitive.

## Verdict

The rigid-subclass route is not closed, but it sharpens the next target to:

```math
\boxed{
BASACLocalEnergyTraceNoPositiveJump.A
}
```

This theorem must prove that the localized native source-balance primitive in
the produced `B_ASAC` class has no positive terminal jump after ASAC/legal/donor
payments are removed.
