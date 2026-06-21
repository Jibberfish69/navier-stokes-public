# MPP Retained-Field Anchored TowerAmp SourcePulse Closure

## Status

Theorem-facing closure note for the active contrapositive source-pulse branch.

This note proves a direct branch closure:

```math
\boxed{
\text{retained }Pack+Part+Field
\Longrightarrow
\neg tower\text{-}blown
}
```

on the same terminal source-pulse family.  Therefore the mixed `tower-blown`
residue does not require `DTC.A_{\mathfrak p}` on the branch where `Field` is
retained; it is removed directly by the retained `Field` coherence and the
energy anchor.

This closes the route-governing source-pulse CM-exit primitive in the
manifestation sense.  It does not prove the stronger no-pulse supplier theorem
`OriginalSmoothData => SourcePulseExclusion.A`.

## Setup

Let `\mathcal P_n=(Q_n^\Phi,j_n,I_n)` be a terminal same-fluid source-pulse
family used as a genuine PDE non-smooth occurrence at `(x_\ast,T_\ast)`.

The only branch not already closed by the disjunction

```math
\neg Pack\vee\neg Part\vee\neg Field
```

is the retained branch:

```math
Pack_{Q_n},
\qquad
Part_{N+2,Q_n},
\qquad
Field^{\le C}_{N+2,r,Q_n}
\tag{RF.0}
```

on the same approaching family, for some positive same-family scale `r` and
finite coherence bound `C` at the required finite endpoint depth.

The tower-amplitude face is:

```math
\mathfrak A_{N,Q_n}(t)
=
\sup_{x\in Q_{n,t}}
\sum_{k=0}^{N}
\bigl(|U_k(x,t)|+|K_k(x,t)|\bigr),
\tag{RF.1}
```

where

```math
U_k=\nabla^k u,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{RF.2}
```

## Uniform-Scale Guardrail

The retained `Field` hypothesis used below is the same-family retained
class-membership field hypothesis in `(RF.0)`: the scale `r>0`, coherence bound
`C`, endpoint depth, and interior shrink convention are fixed along the
approaching family after the finite endpoint extraction.  The argument does not
use an arbitrary per-window local field modulus on shrinking packets.

This distinction is essential.  A nearly constant high plateau on a shrinking
spatial window can have small finite differences on that window while still
being large pointwise.  The energy anchoring step below excludes that behavior
only because the retained branch supplies a fixed positive same-family scale on
which the lower ball in `(RF.6)` has nonvanishing geometric size.

## Lemma `RF.A` (Energy Anchors The Base Rung Under Field Coherence)

Assume `Field^{\le C}_{0,r,Q}` on a finite spatial section `Q_t`.  Also assume
the point being tested lies in a retained interior subsection
`Q_t^{int}` with interior radius `r_{int}>0`, meaning

```math
B(x,r_{int})\subset Q_t
\qquad\text{for every }x\in Q_t^{int}.
\tag{RF.2}
```

Assume the energy bound

```math
\|u(t)\|_{L^2(\mathbb T^3)}\le E_0^{1/2}.
\tag{RF.3}
```

Then

```math
\sup_{x\in Q_t^{int}}|u(x,t)|
\le
C_{r,r_{int},C,E_0,Q}<\infty.
\tag{RF.4}
```

### Proof

The `U_0` part of `Field^{\le C}_{0,r,Q}` gives a Lipschitz bound for `u` on
the same spatial section:

```math
|u(x,t)-u(y,t)|\le C|x-y|
\qquad (|x-y|\le r).
\tag{RF.5}
```

If `|u(x_0,t)|=M`, then on a ball of radius

```math
\rho=\min\{r,\ r_{int},\ M/(2C)\}
```

the ball `B(x_0,\rho)` lies inside the retained section, and the Lipschitz bound
gives `|u|\ge M/2` on that ball.  The energy inequality gives

```math
E_0
\ge
\int_{B(x_0,\rho)}|u|^2\,dx
\ge
c\,M^2\rho^3.
\tag{RF.6}
```

If `M\le 2C\min\{r,r_{int}\}`, use `\rho=M/(2C)`.  If
`M>2C\min\{r,r_{int}\}`, then `\rho=\min\{r,r_{int}\}` and
`M^2\le C_{r,r_{int}}E_0`.  Hence `M` is bounded on the retained interior
subsection. Without a positive retained interior radius, this lemma does not
give a uniform boundary-adjacent bound. `\square`

## Lemma `RF.B` (Retained Field Bounds Higher Velocity Rungs)

Assume `Field^{\le C}_{N+2,r,Q}`.  Then for `1\le k\le N+2`,

```math
\sup_{x\in Q_t}|U_k(x,t)|\le C.
\tag{RF.7}
```

### Proof

For `k\ge1`, `U_k=\nabla U_{k-1}`.  The `U_{k-1}` part of the
finite-difference coherence modulus gives

```math
\sup_{0<|h|\le r}
\frac{|U_{k-1}(x+h,t)-U_{k-1}(x,t)|}{|h|}
\le C.
\tag{RF.8}
```

Passing `h\to0` along coordinate directions on the smooth preterminal window
gives `|\nabla U_{k-1}|\le C`, hence `(RF.7)`. `\square`

## Lemma `RF.C` (Retained Part And Field Bound The Force Rungs)

Assume `Part_{N,Q}` and `Field^{\le C}_{N+2,r,Q}`.  Then for `0\le k\le N`,

```math
\sup_{x\in Q_t}|K_k(x,t)|<\infty.
\tag{RF.9}
```

### Proof

For `k=0`, `Part_{N,Q}` includes the finite shared participation envelope, so
`K_0` is bounded on the retained branch.  For `k\ge1`,

```math
K_k=\nabla K_{k-1}.
\tag{RF.10}
```

The `K_{k-1}` part of the `Field` coherence modulus gives a finite-difference
bound for `K_{k-1}`; passing to the derivative gives `|K_k|\le C`. `\square`

## Theorem `RF.D` (Retained Field Excludes The Mixed Tower Face)

On a terminal source-pulse family satisfying `(RF.0)`,

```math
\boxed{
\mathfrak A_{N,Q_n}\in L^\infty(I_n).
}
\tag{RF.11}
```

Consequently:

```math
\boxed{
Pack+Part+Field
\Longrightarrow
\neg tower\text{-}blown
}
\tag{RF.12}
```

on the same approaching family.

### Proof

`RF.A` bounds `U_0` on each retained window from the energy anchor and the
positive field scale.  `RF.B` bounds `U_k` for `1\le k\le N`.  `RF.C` bounds
`K_k` for `0\le k\le N`.  Summing these finite bounds gives `(RF.11)`.
Therefore the tower-amplitude escape defining `tower-blown` cannot occur while
the retained `Pack+Part+Field` branch is maintained. `\square`

## Corollary `RF.E` (SourcePulseCMExit.A Closure)

Let a terminal source-pulse family be used as a genuine PDE non-smooth
occurrence.  Then:

```math
\boxed{
\text{terminal source-pulse genuine non-smooth witness}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field.
}
\tag{RF.13}
```

### Proof

Apply the installed compactness / reconstitution bridge:

```math
\text{genuine PDE non-smoothness}
\Longrightarrow
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{RF.14}
```

If `packing-detached` occurs, the pack-native endpoint row gives `\neg Pack`.

If `Jump` occurs and either `Pack` or `Part` has already failed, the conclusion
follows from that prior Part/Field failure.  If `Jump` occurs while `Pack+Part` are retained, the installed
field-face theorem gives `\neg Field`.

It remains only to handle the mixed `tower-blown` alternative.  On the branch
where `Pack+Part+Field` are retained, Theorem `RF.D` excludes
`tower-blown`.  Therefore `tower-blown` cannot be the surviving manifestation
while all three CM witnesses remain retained.

Thus every manifestation alternative forces one of:

```math
\neg Pack,\qquad \neg Part,\qquad \neg Field.
```

This proves `SourcePulseCMExit.A` in its route-governing manifestation form.
`\square`

## Consequence For The Target Queue

The following targets are now closed or demoted:

1. `SourcePulseDTCCover.A` is closed by
   `mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md`.
2. `TowerFaceToCMRow.A` is closed as a non-target by
   `mpp-towerface-cm-row-projection-closure-note-20260503.md`.
3. `SourcePulseDTCAnalytic.A` is no longer needed for the route-governing
   `SourcePulseCMExit.A`; it remains only a stronger endpoint/tower supplier
   route if one wants to avoid spending retained `Field` in the contradiction
   branch.
4. The absolute source-control target
   `OriginalSmoothData=>SourcePulseExclusion.A` remains open, but it is a
   sufficient supplier, not the class-membership route root.

## Boundary

This note does not prove that terminal source pulses cannot exist as lawful
internal source-control counterpackets.  It proves only:

```math
\boxed{
\text{if such a packet is the genuine non-smooth occurrence, then it is a
class-membership exit.}
}
```

That is exactly the contrapositive class-membership burden.  It is weaker than
global smoothness and weaker than absolute source-pulse exclusion.
