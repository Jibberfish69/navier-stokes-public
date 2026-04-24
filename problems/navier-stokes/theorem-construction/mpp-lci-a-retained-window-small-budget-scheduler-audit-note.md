# MPP LCI.A Retained-Window Small-Budget Scheduler Audit Note

## Status

Theorem-facing scheduler audit.

Role: isolate the exact compactness burden inside the scale-small affine-excess
route beneath `DTC.M-Affine`.

This note audits the bridge now decomposed as `ACT.X-Boot` plus its seed input
`ACT.X-Scale` in
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md).

## Local Bootstrap Input

The scale-small affine-excess route starts from the differential inequality

```math
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
L(t)\mathcal X^{exc}
+
C_X(\mathcal X^{exc})^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{RWS.0}
```

Here `C_X=C_{cut}+C_{press}` after the core/buffer correction: the moving
cutoff and local pressure remainder both contribute scale-small
`\mathcal X^{exc\,1/2}\mathcal N` terms.

The first-exit bootstrap closes on a subinterval `J=[s,t]` if

```math
\mathcal X^{exc}(s)\le\eta_X
\tag{RWS.1}
```

and

```math
\left(
\mathcal X^{exc}(s)+\int_J F(\tau)\,d\tau
\right)
\exp\left(\int_J L(\tau)\,d\tau\right)
\le
2\eta_X.
\tag{RWS.2}
```

Then

```math
\mathcal X^{exc}\in L^\infty(J),
\qquad
\mathcal N\in L^1(J).
\tag{RWS.3}
```

This is the local `ACT.X-Absorb` piece, not the seed theorem itself.

## Easy Partition Lemma `RWS.Part`

Assume a finite family of retained windows

```math
I=\bigcup_{a=0}^{A-1}I_a,
\qquad
I_a=[s_a,s_{a+1}],
\tag{RWS.4}
```

has already been chosen, and assume the small-start condition

```math
\mathcal X_a^{exc}(s_a)\le\eta_X
\qquad
\text{for every retained restart }s_a.
\tag{RWS.5}
```

If `L_a,F_a\in L^1(I_a)` are the coefficient budgets for the corresponding
restarted affine packets, then after refining the retained windows if necessary
one may arrange

```math
\left(
\mathcal X_a^{exc}(s_a)+\int_{I_a}F_a(t)\,dt
\right)
\exp\left(\int_{I_a}L_a(t)\,dt\right)
\le
2\eta_X
\tag{RWS.6}
```

for every `a`, provided the refinement is allowed to use only the already-known
`L^1` masses of `L_a,F_a` and the finite retained-window geometry.

This proves only:

```math
\text{small starts at every restart}
+
L^1\text{ budgets}
\Longrightarrow
ACT.X\text{-}Boot\text{ on the retained cover.}
\tag{RWS.7}
```

It does not prove the small starts.

## Obstruction `RWS.C`

The hard compactness point is not the absolute-continuity partition of `L` and
`F`. The hard point is the restart smallness condition `(RWS.5)`.

On a completed bootstrap interval, `ACT.X-Boot` gives only

```math
\mathcal X_a^{exc}(s_{a+1})\le2\eta_X.
\tag{RWS.8}
```

It does not give the next required input

```math
\mathcal X_{a+1}^{exc}(s_{a+1})\le\eta_X.
\tag{RWS.9}
```

Restarting the affine frame at `s_{a+1}` removes the center affine motion from
the coordinate system, but it does not by itself provide the small seed. The
live input is `ACT.X-Scale`: choose an admissible radius at the retained smooth
center ball so the affine excess is below `\eta_X`.

## Required Seed Theorem `ACT.X-Scale`

The missing input beneath the scheduler is not a fixed-scale reset theorem. The
bootstrap consumes only a scale-small affine-excess seed:

```math
ACT.X\text{-}Scale:
\qquad
\forall s_a\in I,\ \forall \eta_X>0,\ \exists R_a>0
\quad\text{such that}\quad
\mathcal X^{exc}(s_a;R_a)\le\eta_X.
\tag{RWS.10}
```

with admissibility

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+}
\qquad(1\le j\le J).
\tag{RWS.11}
```

`ACT.X-Boot` consumes `(RWS.10)` as `ACT.X-Seed`; retained smooth center-ball
regularity is the proof source for `(RWS.10)`.

## Proof Source

At a retained restart time `s_a`, reset the affine frame by

```math
G_j(s_a)=I,
\qquad
\dot G_j=A_jG_j,
\qquad
A_j(s_a)=U_1(c_j(s_a),s_a).
\tag{RWS.12}
```

The affine remainder is

```math
R_{q,j}(y,s_a)
=
\mathcal C_{G_j(s_a)}^{-1}
\left(
U_q(c_j(s_a)+G_j(s_a)y,s_a)-U_q(c_j(s_a),s_a)
\right).
\tag{RWS.13}
```

On a retained smooth center ball, each finite-depth `U_q` has the local
continuity required by the affine-excess packet after subtracting the center
value, and for `q=1` after subtracting the affine part. Therefore

```math
\mathcal X^{exc}(s_a;R)\to0
\qquad(R\downarrow0).
\tag{RWS.14}
```

Since the centers, rungs, and derivatives are finite, choose one admissible
radius `R_a` so that `(RWS.10)` holds for every center and required rung.

## Audit Consequence

The scale-small route now has the exact live input:

```math
\boxed{ACT.X\text{-}Scale}
\Longrightarrow
ACT.X\text{-}Seed
\Longrightarrow
ACT.X\text{-}Boot.
\tag{RWS.15}
```

The finite-window partition is easy after small starts; the small starts are
the actual theorem. `L,F\in L^1` alone never supplies `ACT.X-Seed`.
