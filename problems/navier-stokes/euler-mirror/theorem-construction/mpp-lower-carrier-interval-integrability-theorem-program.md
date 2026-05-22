# MPP Lower-Carrier Interval-Integrability Theorem Program (Euler Mirror)

## Status

Theorem-facing replacement note/program for the Euler mirror.

Role: isolate the exact moving-collar lower-carrier burden after deleting
viscosity, make the first literal viscous obstruction explicit, and push the
receiver side as far as transport/pressure-only structure honestly allows.

## Purpose

The parent Navier-Stokes receiver package is no longer just a bare `LCI.A`
label. The installed comparison route now runs

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ELCI.0a}
```

At cell resolution, the retained receiver packet factors as

```text
NKF.Native + NKF.Ann + NKF.Quad => ACT.X-Press
ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX
ACT.KX + ACT.X-Scale + RWS.C_scale => ACT.X-Readout
=> ACT.A => RCF.A => LCI.A.
```

This is the parent receiver chain that the Euler mirror must classify. It does
not survive the Euler rewrite unchanged. The reason is specific:

```math
\boxed{
\text{the installed lower-order moving-collar identity uses the coercive }2\nu
\text{ dissipation term and a top-viscous readout that disappear on Euler.}
}
\tag{ELCI.0}
```

So the honest Euler task is not to copy
`RSCB.NKF -> NKF.Native -> ACT.KX -> ... -> LCI.A` with `\nu=0` dropped from
the equation and nothing else changed. It is to write the strongest transport /
pressure replacement theorem that still sits in the same receiver slot.

The classification is:

1. retained-center geometry, local pressure response, transported mollifiers,
   and point recovery remain useful proof patterns;
2. native forcing cannot be imported as `NKF.Native` unchanged because the
   parent `RSCB.NKF` proof includes viscous forcing/integration terms;
3. the expanded `ACT.KX` packet is the sharp hard break, because its scheduler
   uses the `c_\nu N` absorption term, the `eta_X` first-exit budget, and
   `ACT.X-TopVisc` / top-viscous readout data; the live cell order also routes
   `ACT.X-Cut`, `ACT.X-Press`, and `ACT.X-MidRaw` into the simultaneous
   core/excess theorem before `ACT.X-Readout` can be spent;
4. `ACT.X-Readout -> ACT.A -> RCF.A -> LCI.A` remains downstream of the
   branch-local `ELCI.CP.A-Separation` classification.

## Closed Receiver Object

Retain the same lower-carrier ledger on the moving collar:

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(t))}.
\tag{ELCI.1}
```

Retain the lower-order collar packet:

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\alpha=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{\delta}(x)\big)^2
\big|
\nabla^\alpha U_q(x,t)
\big|^2\,dx.
\tag{ELCI.2}
```

This is still the exact coefficient family that feeds the receiver side of the
one-field route.

## Target Theorem `ELCI.A`

### Theorem `ELCI.A` (Conditional lower-carrier interval integrability on the moving collar for Euler)

Assume on a same-fluid Euler interval `I=[t_0,t_1]` that:

1. the pack gauge is already propagated:

```math
\Gamma_\sharp \in L^\infty(I);
\tag{ELCI.2a}
```

2. the initial lower-order collar packet is finite:

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty;
\tag{ELCI.2b}
```

3. the moving collar admits a finite transported-center cover
   `\{B(\Phi(a^j,t),r_\delta)\}_{j=1}^{J}`;
4. the transported-center carrier / oscillation / pressure readout ledger

```math
\mathfrak L_{N,m,\rho,\psi}^{E,ctr}(t)
:=
1
+
\mathfrak A_{N,m,\rho,\psi}^{E,ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{E,osc}(t)
+
\Pi_{N,m,\rho,\psi}^{E,ctr}(t)
\tag{ELCI.2c}
```

belongs to `L^1(I)`.

Then

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)<\infty
\qquad\text{and}\qquad
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{ELCI.3}
```

This is the strongest honest Euler replacement of the parent theorem slot now
on disk: the lower-carrier theorem is reduced to a pure transport/pressure
integrability ledger, with no silent viscous supplier.

## What Survives Verbatim From The Parent Route

Three pieces of the parent `LCI` package survive unchanged in kind.

### 1. Seed finiteness

If the initial packet collar lies inside one still-live classical window, then
the same classical boundedness gives

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty.
\tag{ELCI.4}
```

That part never used viscosity.

### 2. Transported-center / oscillation decomposition

Assume

```math
\mathcal C_{\rho,\psi}^{\delta}(t)
\subset
\bigcup_{j=1}^{J}B(\Phi(a^j,t),r_\delta).
\tag{ELCI.5}
```

Define the anchored-center ledger

```math
\mathfrak A_{N,m,\rho,\psi}^{E,ctr}(t)
:=
1+
\sum_{j=1}^{J}\sum_{q=0}^{m}
|U_q(\Phi(a^j,t),t)|
\tag{ELCI.6}
```

and the collar oscillation coefficient

```math
\Omega_{N,m,\rho,\psi}^{E,osc}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta))}.
\tag{ELCI.7}
```

Then the geometric reduction survives exactly:

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
C_{m,\rho,\psi,\delta,I}
\big(
\mathfrak A_{N,m,\rho,\psi}^{E,ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{E,osc}(t)
\big).
\tag{ELCI.8}
```

So the lower carrier is still controlled by transported center values plus
local oscillation on one finite same-fluid cover.

### 3. Pressure remains elliptic

On Euler, pressure is still fixed by

```math
-\Delta p
=
\partial_i u_j\,\partial_j u_i.
\tag{ELCI.9}
```

So the pressure contribution is not lost when viscosity is removed. What is
lost is only the dissipative sink that used to sit beside it.

## Euler Lower-Order Moving-Collar Identity

Specializing the same differentiated same-fluid packet law to Euler gives the
lower-order identity

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
=
\mathcal P_{N,m}^{E,low}(t)
+
\mathcal F_{N,m}^{E,low,press}(t)
+
\mathcal S_{N,m}^{E,low}(t)
+
\mathcal R_{N,m}^{E,low}(t)
+
\mathcal C_{N,m}^{E,low,trans,\delta}(t).
\tag{ELCI.10}
```

Compare this with the parent identity: the `2\nu` dissipation term and the
viscous localization commutator are simply gone. In the expanded parent route,
that same loss appears inside `ACT.KX` as the absence of the `c_\nu N`
absorption budget and the top-viscous receiver cells.

## First Literal Viscous Obstruction

This is the first place where the parent proof used viscosity in an
irreplaceable way.

In the Navier-Stokes argument, the centered/oscillation decomposition of the
nonlinear and commutator terms naturally produces estimates of the form

```math
\varepsilon\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
+
C_\varepsilon\,
\mathfrak L_{N,m,\rho,\psi}^{ctr}(t)^2\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t),
\tag{ELCI.11}
```

and the `\varepsilon \mathcal D` piece is absorbed by the coercive
`2\nu\mathcal D` term on the left-hand side of the parent identity.

On Euler there is no such term. So the first literal obstruction is:

```math
\boxed{
\text{after the centered/oscillation split, there is no dissipative sink left to absorb the defect term that the parent proof fed into }2\nu\mathcal D.
}
\tag{ELCI.12}
```

That is the precise point where the initial Euler bootstrap hit the parent
viscous wall.

In today's installed Navier-Stokes route, the same obstruction is located more
sharply:

```math
\boxed{
\begin{gathered}
\text{Euler has no unchanged analogue of the parent }ACT.KX\text{ budget}\\
\text{until the }c_\nu N\text{ absorption, middle-block, and top-viscous cells are replaced}\\
\text{by a direct transport/pressure estimate.}
\end{gathered}
}
\tag{ELCI.12a}
```

Thus `ELCI.A` is the Euler replacement slot for the full
`RSCB.NKF -> NKF.Native -> ACT.KX -> ACT.X-Readout -> ACT.A -> RCF.A -> LCI.A`
receiver spine.

## Transport/Pressure-Only Reduction

Even though the dissipation is gone, the route can still be pushed further than
the raw bootstrap objection alone.

### Proposition `ELCI.B` (Transport/pressure-only packet inequality)

Assume the centered pressure readout `\Pi_{N,m,\rho,\psi}^{E,ctr}` is strong
enough to bound the pressure contribution in `(ELCI.10)` by

```math
|\mathcal F_{N,m}^{E,low,press}(t)|
\le
C_{\rho,\psi,\delta,I}\,
\big(
1
+
\Gamma_\sharp(t)
+
\Pi_{N,m,\rho,\psi}^{E,ctr}(t)
\big)
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{ELCI.13}
```

Assume also that the centered/oscillation decomposition controls the remaining
nonpressure terms by

```math
|\mathcal P_{N,m}^{E,low}(t)|
+
|\mathcal S_{N,m}^{E,low}(t)|
+
|\mathcal R_{N,m}^{E,low}(t)|
+
|\mathcal C_{N,m}^{E,low,trans,\delta}(t)|
\le
C_{\rho,\psi,\delta,I}\,
\big(
1
+
\Gamma_\sharp(t)
+
\mathfrak A_{N,m,\rho,\psi}^{E,ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{E,osc}(t)
\big)
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{ELCI.14}
```

Then

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{\rho,\psi,\delta,I}\,
\big(
\Gamma_\sharp(t)
+
\mathfrak L_{N,m,\rho,\psi}^{E,ctr}(t)
\big)
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{ELCI.15}
```

Hence `\mathfrak L_{N,m,\rho,\psi}^{E,ctr}\in L^1(I)` implies

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)<\infty.
\tag{ELCI.16}
```

Together with `(ELCI.8)`, this gives `\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I)`.

### Proof

Insert `(ELCI.13)` and `(ELCI.14)` into `(ELCI.10)` and apply Gronwall. Then
use `(ELCI.8)` to convert the packet bound into the lower-carrier bound. ∎

## Direct Transport/Pressure Attempt Readback

The May 19 direct attempt is recorded in
[mpp-elci-a-direct-transport-pressure-attempt-20260519.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-a-direct-transport-pressure-attempt-20260519.md).

It completes the Euler-only packet inequality:

```math
\frac{d}{dt}
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)
\le
C
\big(
1+\Gamma_\sharp(t)
+
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}(t)
\big)
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t),
\tag{ELCI.16a}
```

where

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}
=
1+\mathfrak A^{E,ctr}_{N,m,\rho,\psi}
+
\Omega^{E,osc}_{N,m,\rho,\psi}
+
\Pi^{E,ctr}_{N,m,\rho,\psi}.
\tag{ELCI.16b}
```

The nonpressure terms close by finite transported-cover geometry and local
oscillation. The pressure term closes after affine center-cell subtraction
through the centered pressure-return coefficient `Pi_E_ctr`.

The attempt does not prove `L_E_ctr in L^1(I)` from base Euler membership or
from the current lower packet. The May 21 scenario map now requires the target to
be split:

```math
\boxed{
\mathrm{ELCI.CP.A\text{-}Separation}:
\quad
\mathfrak A^{E,ctr}
+
\Omega^{E,osc}
+
\Pi^{E,ctr}
\in L^1(I)
}
\tag{ELCI.16c}
```

on the same finite transported Euler cover, with exact added regularity
hypotheses on the positive side and explicit nonsmooth `Member_E` scenario
routing on the negative side, without the parent `ACT.KX` / `2nu` absorption or
`ACT.X-TopVisc` readout.

Scenario authority:
[euler-ns-viscosity-scenario-separation-map-20260521.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md).

## Receiver Split Closure

The new Euler packet proves the conditional packet inequality. The May 22
separation theorem closes the exact receiver split for the coefficient ledger in
`(ELCI.16b)`:

```math
\boxed{
\begin{gathered}
\text{the direct Euler center/oscillation/pressure theorem makes }
\mathfrak L_{N,m,\rho,\psi}^{E,ctr}\in L^1
\text{ under explicit same-cover Euler control,}\\
\text{and base }Member_E\text{ does not force that control.}
\end{gathered}
}
\tag{ELCI.17}
```

The closed split has three visible regularity-side components:

1. transported-center carrier integrability for the lower family;
2. local oscillation integrability on transported balls of radius `2R_\delta`;
3. centered pressure return strong enough to bound the lower-order pressure
   packet without any top-viscous export.

Closure authority:
[mpp-elci-cp-a-separation-closure-20260522.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md).

## Honest Conclusion

This note pushes the lower-carrier theorem as far as possible without cheating:

```math
\boxed{
\begin{gathered}
\text{the Euler mirror of the parent receiver chain is reduced to}\\
\text{an explicit transport/pressure ledger, and that receiver ledger is}\\
\text{closed exactly as a regularity-conditional theorem plus base-}Member_E
\text{ failure witness.}
\end{gathered}
}
\tag{ELCI.18}
```

So the receiver side is no longer blocked by a vague slogan or by the parent
viscous chain. It is closed as a conditional Euler ledger theorem; global Euler
regularity remains a separate control/continuation problem.
