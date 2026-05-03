# MPP SourcePulse Tower-Readout Closure

## Status

Theorem-facing closure note for the mixed tower residue left by the
`SourcePulseCMExit.A` tower-residue audit.

This note proves:

```math
SourcePulseTowerReadout.A:
\quad
\text{every terminal source-pulse genuine non-smooth witness retaining }Pack+Part
\text{ and not already failing }Field
```

```math
\text{carries the finite same-family tower amplitude readout }END.TowerAmp.
```

This is not a proof of `DTC.A` as defined in
`mpp-sourcepulse-field-face-tower-placement-reduction-note.md`.  The point is
not to import `End_NS`, no-pulse, or the direct transported-center theorem.  The
point is narrower: on the branch where the source-pulse has not already produced
a `Pack`, `Part`, or `Field` exit, the retained class-membership witnesses
themselves supply the finite tower amplitude needed to remove the mixed tower
alternative.

## Setup

Let `P_*` be a terminal source-pulse packet used as a genuine non-smooth
occurrence on an approaching same-fluid family `\mathcal Q_*`.

Assume we are on the only branch where the CM-exit conclusion is not already
immediate:

```math
Pack_Q,\qquad Part_{N+2,Q},\qquad Field^{\le C}_{N+2,r,Q}
```

are retained on the approaching family with one positive same-family field
scale and finite endpoint-regime constants.  If any one of these fails, then
`SourcePulseCMExit.A` is already proved.

Write

```math
U_k=\nabla^k u,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

## Lemma 1: finite same-family transported-center cover

`Pack_Q` supplies a finite same-family transported-center cover of the terminal
source-pulse family.

### Proof

The pack predicate says that the restricted flow map is one incompressible
`C^1` diffeomorphic same-fluid motion with finite distortion gauge on the
approaching family.  Work in label space.  The label support of a retained
source-pulse packet is compact after the standard finite packet localization.
Choose finitely many label balls of radius comparable to the retained field
scale divided by the pack distortion bound.  Transporting them by `\Phi_t`
gives balls

```math
B(c_a(t),R_a)
```

that cover the physical source-pulse window for every time in the packet
interval.  Bounded distortion gives a finite overlap constant depending only on
the retained pack gauge and the finite cover.  The centers are transported
centers by construction.  This is the same-family finite cover on which the
tower readout is evaluated.

## Lemma 2: field coherence plus energy anchors the finite `U_k` tower

Assume `Field^{\le C}_{N+2,r,Q}` holds on a fixed cover ball and
`\|u(t)\|_{L^2}` is bounded by the energy inequality.
Then

```math
\sup_{B(c_a(t),r/4)}
\sum_{k=0}^{N+2}|U_k(\cdot,t)|
<\infty
```

with a bound depending only on `N`, `r`, `C_{N+2}`, the energy bound, and the
finite cover geometry.

### Proof

The finite-difference field predicate gives a uniform fixed-scale modulus for
each tower component `U_k`, `0<=k<=N+2`, and the compatibility relations
`U_k=\nabla^k u` on the same field.

For `k=0`, the `U_0` modulus and the energy bound anchor the absolute value of
`u`: if `|u(x_0,t)|=M`, then `u` remains comparable to `M` on a fixed subball
unless `M` is already bounded by the modulus-scale product, and the energy
inequality forbids arbitrarily large `M`.

For `k>=1`, argue by descending polynomial anchoring.  If `U_k` were
arbitrarily large at a point while the `Field^{\le C}_{N+2,r,Q}` modulus stayed
bounded, then `U_k` would remain large on a fixed-scale subball.  Integrating
the compatible tower relations downward along line segments in that subball
forces a polynomial-sized variation in `U_{k-1}`, then in `U_{k-2}`, and after
`k` steps in `u` itself.  The already anchored lower rung and ultimately the
energy bound rule this out.  This uses only the finite-difference moduli for
the rungs already present in `Field^{\le C}_{N+2,r,Q}`; it does not require a
new `\nabla^{N+3}u` input.

Thus every finite tower amplitude `U_k`, `0<=k<=N+2`, is bounded on the inner
cover balls.  This is the standard finite-order polynomial/Poincare anchoring
argument: a positive coherence scale plus compatibility prevents a high
derivative from appearing as a pure unanchored constant mode.

## Lemma 3: retained participation supplies the `K_k` readout

If `Part_{N+2,Q}` is retained without a participation endpoint failure, then

```math
\sup_{B(c_a(t),r/4)}
\sum_{k=0}^{N}|K_k(\cdot,t)|
<\infty
```

on the same cover.

### Proof

The participation predicate is exactly the shared pressure-viscosity carrier
law through finite depth, together with finite carrier envelope.  If that
envelope escapes every finite bound on the approaching family, the branch has a
`Part` failure and `SourcePulseCMExit.A` is already closed.  On the retained
branch, no such failure occurs, so the finite `K_k` envelope is bounded on the
cover elements through the required depth.

Equivalently, using

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
```

the viscous part is read from the already bounded `U_{k+2}` tower rungs, and
the pressure part is the same shared participation carrier.  No field endpoint
or no-pulse theorem is imported here.

## Theorem `SourcePulseTowerReadout.A`

On every terminal source-pulse branch not already giving `not Pack`, `not Part`,
or `not Field`, the same-family finite cover carries the finite tower amplitude
readout `END.TowerAmp`.

### Proof

By Lemma 1, `Pack_Q` supplies a finite same-family transported-center cover.
By Lemma 2, retained `Field^{\le C}_{N+2,r,Q}` plus finite energy gives the finite
`U_k` tower amplitude on each cover element.  By Lemma 3, retained
`Part_{N+2,Q}` gives the finite `K_k` carrier amplitude on the same cover.

Thus the endpoint tower amplitude is finite on the same source-pulse family:

```math
\mathfrak A_{N,Q}
=
\sup_{x\in Q_t}
\sum_{k=0}^{N}(|U_k|+|K_k|)
\in L^\infty
```

on the retained branch.  This is exactly the finite tower-amplitude input named
`END.TowerAmp`.

Therefore `SourcePulseTowerReadout.A` holds.

## Corollary: final `SourcePulseCMExit.A` closure

Combine this theorem with the previous tower-residue closure:

```math
SourcePulseTowerReadout.A
+MBR.E
+END.TowerBound
+CMW
\Longrightarrow
SourcePulseCMExit.A.
```

Hence:

```math
\boxed{
\text{terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
}
```

## Boundary

This does not prove the absolute no-pulse theorem

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

That statement remains a stronger sufficient theorem and is nonblocking for
the class-membership route.

This note also does not prove the pointwise transported-center theorem
`DTC.A_{\mathfrak p}`.  The earlier `SourcePulseDTCPlacement.A` label should be
read as superseded by the direct tower-readout closure above whenever the route
is only trying to remove the mixed `tower-blown` alternative.
