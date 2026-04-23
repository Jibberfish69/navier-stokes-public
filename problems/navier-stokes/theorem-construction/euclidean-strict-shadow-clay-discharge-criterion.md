# Euclidean Strict-Shadow Clay Discharge Criterion

## Purpose

This note records the downstream Clay discharge criterion on the Euclidean
strict-shadow/export surface.

It is not a branch root. Before `(A1a)`--`(A1c)` are even meaningful, the
earlier CM-to-Euclidean export splice must already have supplied the actual
Euclidean carrier/readout surface used for whole-space discharge. This note
starts only after that splice and states the exact downstream discharge burden
there as an export/consumer package.

It is also not a Law 2 burden-bearing surface. By the separate CM tethering /
no-drop line, dead-endpoint / participation-failure exclusion must already be
removed upstream before this Euclidean discharge package is mathematically
relevant. So this note discharges only the exported whole-space consumer branch
on the Law-2-survivor side.

## Clay target

The target is:

```math
\text{for every smooth divergence-free rapidly decaying }u^0\text{ on }\mathbb R^3,\quad f=0,
```

```math
\exists\,u,p\in C^\infty(\mathbb R^3\times[0,\infty))
```

solving the 3D incompressible Navier--Stokes equations with

```math
\int_{\mathbb R^3}|u(x,t)|^2\,dx<C
\qquad
\forall t\ge 0.
\tag{1}
```

## Exact Euclidean strict-shadow consumer package already on record

The lane already carries the Euclidean-window readout identities in:

- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [d4-shadow-continuation-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)

The exact readout package is:

```math
u=\mathcal C(X),
\tag{2}
```

```math
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
\tag{3}
```

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),
\qquad
\|u\|_{H^s}\le C\|X\|_{H_D^s},
\qquad
s>\frac52.
\tag{4}
```

Under the strict-shadow branch,

```math
N_D(X)=\nabla_XX+\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X),
\qquad
\mathcal C(\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X))=0,
\tag{5}
```

so the pure `NC` interaction defect dies under projection.

The continuation transfer already on record is:

```math
\sup_{t\in[0,T)}\|X(t)\|_{H_D^s}<\infty
\Longrightarrow
\sup_{t\in[0,T)}\|u(t)\|_{H^s}<\infty
\Longrightarrow
u \text{ extends past }T.
\tag{6}
```

## Upstream constitutive start

Before the downstream Euclidean discharge package below can be read, the earlier
CM-to-Euclidean export splice must already provide:

- the actual Euclidean carrier/readout surface relevant to the Clay target;
- the admissible exported datum and solution classes on that surface;
- the Euclidean readout `\mathcal C` on that surface.

This note does not prove that splice. It only records what still has to be
proved after the splice has already been consumed.

## Exact downstream discharge criterion

Fix `s>\frac52`. Assume first the earlier CM-to-Euclidean export splice.
Assume then the following downstream consumer inputs on the already-exported
Euclidean surface.

### (A1a) Full-data Euclidean lift/readout coverage

For every smooth divergence-free rapidly decaying classical datum
`u^0` on `\mathbb R^3`, there exists an admissible projected ontic datum `X_0`
such that

```math
\mathcal C(X_0)=u^0.
\tag{7}
```

This exact datum-side consumer burden is isolated in
[a1a-full-data-euclidean-lift-coverage.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/a1a-full-data-euclidean-lift-coverage.md).

### (A1b) Exact strict-shadow theorem on the exported Euclidean consumer window

For every such ontic solution `X(t)` with `X(0)=X_0`, the identities `(3)`--`(5)`
hold on that exported Euclidean readout surface, so the projected field
`u=\mathcal C(X)` solves the exact classical Navier--Stokes equation

```math
\partial_tu+\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{8}
```

### (A1c) Global ontic control on the exported Euclidean carrier

For every admissible `X_0` lifting a Clay datum, the corresponding projected
ontic flow exists globally and satisfies

```math
\sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty.
\tag{9}
```

## Theorem

Under the earlier CM-to-Euclidean export splice and `(A1a)`--`(A1c)`, the
exported Euclidean whole-space consumer branch closes.

## Proof

Fix any smooth divergence-free rapidly decaying datum `u^0` on `\mathbb R^3`.
By `(A1a)`, choose `X_0` with `\mathcal C(X_0)=u^0`.

By `(A1c)`, there is a global projected ontic flow `X(t)` with `X(0)=X_0` and

```math
\sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty.
\tag{10}
```

Set

```math
u(t):=\mathcal C(X(t)).
\tag{11}
```

By `(A1b)`, `u` solves the exact classical Navier--Stokes equation on
`\mathbb R^3`. By the norm comparison in `(4)` and `(10)`,

```math
\sup_{t\ge0}\|u(t)\|_{H^s}
\le
C\sup_{t\ge0}\|X(t)\|_{H_D^s}
<
\infty.
\tag{12}
```

Since `s>\frac52`, this is a continuation-level classical bound.
Hence the classical solution stays smooth for all time.

Because `u^0` was arbitrary in the Clay datum class, the exported Euclidean
whole-space consumer branch is discharged.

## Meaning

The logical order is:

```math
\text{earlier CM-to-Euclidean export splice}
\Longrightarrow
\text{(A1a), (A1b), (A1c) on the exported Euclidean surface.}
\tag{13}
```

The no-shadowdef and no-remainder notes sit further downstream than `(A1b)`:
once exact strict shadow is already granted on the exported Euclidean surface,
those notes become consumer corollaries, not additional burdens beside
`(A1a)`--`(A1c)`.

So the exact unresolved Euclidean discharge burden is not just

```math
\text{strict shadow + carrier control.}
```

It is the downstream package

```math
\boxed{
\text{earlier CM-to-Euclidean export splice}
+
\text{full-data lift coverage}
+
\text{Euclidean exact strict shadow}
+
\text{global carrier control.}
}
\tag{14}
```

with the no-shadowdef/no-remainder consequences appearing only after those
inputs have already been consumed.

## Realized-classical-carrier reduction

On the realized classical carrier in
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
the downstream Euclidean discharge burden collapses further.

### Proposition

If the earlier CM-to-Euclidean export splice lands on the realized classical
carrier, then `(A1a)` and `(A1b)` are automatic. More precisely:

1. every smooth divergence-free rapidly decaying Clay datum `u^0` is already an
   admissible carrier datum, so one may take

   ```math
   X_0:=u^0,
   \qquad
   \mathcal C(X_0)=u^0;
   ```

2. the strict-shadow descent is the identity readout, so the projected field
   `u=\mathcal C(X)=X` satisfies the exact classical Navier--Stokes equation
   with no shadow remainder.

Hence on that realized subbranch, the downstream Euclidean discharge package
reduces to

```math
\boxed{
\text{prove only global carrier }H_D^s\text{ control on the realized Euclidean surface.}
}
\tag{15}
```

### Proof

By Theorem `R4` of
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
the carrier space is literally the classical divergence-free Euclidean space
and the readout is

```math
\rho=\mathrm{Id}.
```

So every admissible Clay datum `u^0` is already a carrier datum and `(A1a)`
holds with `X_0=u^0`.

The same theorem says the carrier evolution is literally the classical
Leray-projected Navier--Stokes system under that identity readout. Therefore
the exact strict-shadow descent `(A1b)` is automatic on this realized surface:
there is no separate projection defect to kill.

So only `(A1c)` remains.

## Limitation

This note does **not** prove the earlier CM-to-Euclidean export splice, and it
does **not** prove `(A1a)`, `(A1b)`, or `(A1c)`.

It proves only that once those upstream inputs are present, the downstream
Euclidean strict-shadow/export consumer package discharges the Clay whole-space branch
with no additional classical remainder theorem beyond the consumer corollaries.
