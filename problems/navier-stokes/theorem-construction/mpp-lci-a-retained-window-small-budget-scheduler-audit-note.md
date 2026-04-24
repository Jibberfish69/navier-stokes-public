# MPP LCI.A Retained-Window Small-Budget Scheduler Audit Note

## Status

Theorem-facing scheduler audit.

Role: isolate the exact compactness burden inside the scale-small affine-excess
route beneath `DTC.M-Affine`.

This note audits the bridge named `RWS.A` in
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
C(\mathcal X^{exc})^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{RWS.0}
```

The first-exit bootstrap closes on a subinterval `J=[s,t]` if

```math
\mathcal X^{exc}(s)\le\eta_\ast
\tag{RWS.1}
```

and

```math
\left(
\mathcal X^{exc}(s)+\int_J F(\tau)\,d\tau
\right)
\exp\left(\int_J L(\tau)\,d\tau\right)
\le
2\eta_\ast.
\tag{RWS.2}
```

Then

```math
\mathcal X^{exc}\in L^\infty(J),
\qquad
\mathcal N\in L^1(J).
\tag{RWS.3}
```

This is `ACT.X-Boot`, not the scheduler itself.

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
\mathcal X_a^{exc}(s_a)\le\eta_\ast
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
2\eta_\ast
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
\mathcal X_a^{exc}(s_{a+1})\le2\eta_\ast.
\tag{RWS.8}
```

It does not give the next required input

```math
\mathcal X_{a+1}^{exc}(s_{a+1})\le\eta_\ast.
\tag{RWS.9}
```

Restarting the affine frame at `s_{a+1}` removes the center affine motion from
the coordinate system, but it does not automatically erase the finite-radius
nonlinear affine excess on the required transported-center ball. Therefore
`L,F\in L^1(I)` plus frame restart is not enough to prove `RWS.A`.

## Required Reset Theorem `RWS.B`

The missing theorem beneath the scheduler is:

```math
RWS.B:
\quad
\text{at each retained endpoint }s_a,\text{ construct the restarted/recentered affine packet}
\tag{RWS.10}
```

on the same required same-fluid labels and with the same required transported
center-ball scale, such that

```math
\mathcal X_a^{exc}(s_a)<\varepsilon_\ast,
\tag{RWS.11}
```

using only the transported center, the restarted affine frame, and finite local
packet size already obtained on the previous retained window, plus pre-output
data allowed by the `DTC.A` license.

In particular, `RWS.B` may not use

```math
LCI.A,\quad CSP.A,\quad OFP.A,\quad Field,\quad \mathsf{End}_{NS}.
\tag{RWS.12}
```

Equivalently,

```math
RWS.B:
\quad
\mathcal X_a^{exc}\in L^\infty(I_{a-1})
+\mathcal N_a\in L^1(I_{a-1})
+\text{admissible transported-center recentering}
\Longrightarrow
\mathcal X_{a+1}^{exc}(s_a)<\varepsilon_\ast.
\tag{RWS.12a}
```

This is the exact restart/re-centering theorem; it is not a consequence of the
absolute continuity of `L` and `F`.

## Candidate Supplier Modes

There are three possible ways to discharge `RWS.B`.

1. Fixed-radius reset:

```math
\text{prove fixed-radius affine excess is small at every retained restart.}
\tag{RWS.13}
```

This is the strongest and cleanest supplier, but no such theorem is currently
installed.

2. Shrinkable-radius reset:

```math
\text{shrink the affine ball at each restart until the excess is small, then
recover the fixed DTC radius by a separate scale-recovery theorem.}
\tag{RWS.14}
```

This is dangerous because the recovery step may spend exactly the regularity
that `DTC.A` is trying to prove.

3. Non-small affine route:

```math
\text{bypass }RWS.A\text{ by proving the finite-stage }ACT.E2\text{ route without
scale-small restart hypotheses.}
\tag{RWS.15}
```

This avoids the scheduler compactness problem, but it moves the burden back to
the direct non-small affine estimates.

## Audit Consequence

The scale-small route currently proves a local bootstrap theorem, not a global
full-strip `DTC.M-Affine` theorem. The exact remaining compactness obstruction
is:

```math
\boxed{RWS.Reset}
\equiv
\boxed{RWS.B}
\quad
\text{or}
\quad
\boxed{\text{non-small }ACT.E2\text{ closure}}.
\tag{RWS.16}
```

Thus `RWS.A` should not be treated as discharged merely because `L,F\in L^1`.
The finite-window partition is easy after small starts; the small starts are
the actual theorem.
