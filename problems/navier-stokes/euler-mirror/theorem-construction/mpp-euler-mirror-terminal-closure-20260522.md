# MPP Euler Mirror Terminal Closure

## Status

Theorem-facing terminal closure note for the Euler mirror branch.

This file closes the branch without moving the burden. It does not prove global
Euler regularity from smooth data. It proves the narrower, checkable statement
that every installed Euler-mirror route has a terminal branch classification:

1. base `Member_E` does not imply the desired regularity or the receiver ledger;
2. the receiver ledger is closed only under explicit Euler control assumptions;
3. every copied Navier-Stokes positive-control step that spends viscosity is a
   non-Euler import, not a deferred Euler task.

## What Is Actually Being Closed

The base object is

```math
Member_E(Q)=EVol_Q(u)\wedge EMom_Q(u,p).
\tag{ETC.0}
```

That is equation membership. It is not smoothness, not a flow-map theorem, not
one-field coherence, and not a hidden continuation theorem.

So the branch has only three possible honest outputs:

1. prove a statement after extra Euler controls are assumed;
2. refute an implication from base `Member_E`;
3. classify a copied parent step as non-Euler because its proof uses a term that
   is absent when `nu=0`.

The closure below is exactly those three outputs.

## Proposition A: Conditional Receiver Closure

The May 22 `ELCI.CP.A-Separation` closure proves:

```math
\begin{gathered}
\text{same finite transported cover}\\
+\ A_*,O_*,P_*\in L^1(I)\\
+\ \text{center, oscillation, and centered pressure bounds}
\end{gathered}
\Longrightarrow
A_E^{ctr}+\Omega_E^{osc}+\Pi_E^{ctr}\in L^1(I),
\tag{ETC.1}
```

This is not handwaving: it is the direct estimate

```math
A_E^{ctr}+\Omega_E^{osc}+\Pi_E^{ctr}
\le
2+A_*+O_*+P_*,
\tag{ETC.2}
```

followed by integration over finite `I`. The May 19 packet inequality then gives
`ELCI.A` by Gronwall. This route is therefore closed as
`proved_conditional_surface`.

## Proposition B: Base Membership Failure

The base implication is false:

```math
Member_E
\not\Longrightarrow
A_E^{ctr}+\Omega_E^{osc}+\Pi_E^{ctr}\in L^1(I).
\tag{ETC.3}
```

The witness is stationary unbounded shear:

```math
u(x,y,z,t)=(|y|^{-\alpha},0,0),\qquad p=0,\qquad 0<\alpha<1/2.
\tag{ETC.4}
```

Because `2alpha<1`, this velocity is locally `L^2` and its tensor square is
locally `L^1`. It is divergence-free because it is independent of `x`, and

```math
\partial_tu+\nabla\cdot(u\otimes u)+\nabla p
=
\partial_x(|y|^{-2\alpha},0,0)=0
\tag{ETC.5}
```

distributionally. Thus it satisfies `Member_E`. On any collar crossing `y=0`,
the `q=0` center/oscillation readout is infinite on every finite positive-radius
cover that touches the singular sheet:

```math
\Omega_E^{osc}(t)=\infty
\quad\text{or}\quad
A_E^{ctr}(t)=\infty.
\tag{ETC.6}
```

It also refutes `Member_E -> classical smoothness` for this branch's base object:
the velocity is unbounded at `y=0`. This does not refute the separate smooth-data
global Euler problem; it refutes only the installed branch move from base
equation membership to regularity/control. This route is closed as
`false_base_implication`.

## Proposition C: Viscous Parent Imports

Any copied parent step whose estimate needs one of

```math
2\nu D^{low},\qquad c_\nu N,\qquad ACT.X\text{-}TopVisc,\qquad \nu D_N
\tag{ETC.7}
```

is not an Euler theorem in this mirror. Setting `nu=0` does not leave a weaker
absorption term; it removes the term. For example, the parent Route B shape

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C\Lambda_N(t)E_N(t)+C_*2^{-2\delta N}
\tag{ETC.8}
```

becomes only

```math
\frac{d}{dt}E_N(t)
\le
C\Lambda_N(t)E_N(t)+C_*2^{-2\delta N},
\tag{ETC.9}
```

which is a growth inequality, not the parent damping/return mechanism. The same
literal deletion kills `2nu` lower-collar absorption, the `c_nu N` scheduler, and
top-viscous readout. These routes are closed as `non_euler_import`, not left as
branch-local targets.

## Route Closure Certificate

| route surface | installed claim shape | terminal class | reason |
| --- | --- | --- | --- |
| `Member_E -> smoothness / one-field / flow-map` | base equation membership implies regularity | `false_base_implication` | stationary unbounded shear satisfies `Member_E` and is not smooth |
| `Member_E -> ELCI.CP.A ledger` | base equation membership supplies center/oscillation/pressure ledger | `false_base_implication` | same shear makes `A_E_ctr` or `Omega_E_osc` infinite |
| `ELCI.CP.A -> ELCI.A` | added same-cover envelopes supply the ledger | `proved_conditional_surface` | `A_E_ctr+Omega_E_osc+Pi_E_ctr <= 2+A_*+O_*+P_* in L1` |
| `ACT.KX / ACT.X-TopVisc / 2nu` import | parent receiver chain supplies Euler receiver budget | `non_euler_import` | absorption/top-viscous terms contain positive `nu` machinery |
| Route B dyadic damping | parent `nu D_N` controls high frequencies | `non_euler_import` | after `nu=0`, damping term vanishes |
| compactness / nonlinear closure | strong convergence closes tensor | `proved_conditional_surface` | true after fixed Euler family and compactness controls are assumed |
| exact-potential / heat / Stokes packets | parabolic road supplies readout | `non_euler_import` | principal heat/static-diffusion operator is absent from Euler |
| selector/export consumers tied to viscous budgets | parent downstream readout closes Euler | `non_euler_import` | downstream consumer is calibrated to parabolic or viscous budgets |

This table is the May 22 comparison-audit closure. Anything stronger than a row
in the table now routes through the May 23 Euler-NS continuum program rather
than being suppressed as outside the branch.

The per-surface enforcement surface is
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml).
It requires every Euler-mirror file to read back through the same classification
vocabulary used in this table.

The continuum closure surfaces are
[euler-ns-continuum-closure-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml)
and
[euler-ns-continuum-closure-theorem-20260523.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-continuum-closure-theorem-20260523.md).
They turn this audit table into the smooth-overlap, viscosity-divergence, and
nonsmooth-boundary continuum graph.

## Closed Readback

The Euler mirror branch is terminal in this exact, non-aspirational sense:

```math
\boxed{
\begin{gathered}
\text{conditional Euler regularity surfaces are closed as conditional;}\\
\text{base }Member_E\text{ regularity or ledger implications are false;}\\
\text{Navier-Stokes viscous imports are closed as non-Euler.}
\end{gathered}
}
\tag{ETC.10}
```

After `(ETC.10)`, the comparison audit is closed. The May 23 continuum closure
keeps the stronger Euler work inside route control as typed outputs:
viscosity-free smoothness overlap, viscosity divergence, nonsmooth Euler
boundary, and the local-to-global bridge rule.
