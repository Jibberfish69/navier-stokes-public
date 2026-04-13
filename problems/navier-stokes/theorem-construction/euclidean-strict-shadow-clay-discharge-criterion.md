# Euclidean Strict-Shadow Clay Discharge Criterion

## Purpose

This note sharpens the exact `NC` Route A burden against the Clay whole-space
target.

The point is:

```math
\boxed{
\text{exact strict shadow plus global carrier control is not quite enough by itself;}
}
```

```math
\boxed{
\text{to discharge the Clay statement, the Euclidean readout package must also cover the full Clay datum class.}
}
```

So the exact strict-shadow route has three theorem burdens, not one blurred
bundle.

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

## Exact Euclidean strict-shadow package already on record

The lane already carries the Euclidean-window readout identities in:

- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [d4-shadow-continuation-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)

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

## Exact discharge criterion

Fix `s>\frac52`.
Assume the following three theorem inputs.

### (A1a) Full-data Euclidean lift/readout coverage

For every smooth divergence-free rapidly decaying classical datum
`u^0` on `\mathbb R^3`, there exists an admissible projected ontic datum `X_0`
on the Euclidean carrier/readout surface such that

```math
\mathcal C(X_0)=u^0.
\tag{7}
```

This exact datum-side burden is isolated in
[a1a-full-data-euclidean-lift-coverage.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/a1a-full-data-euclidean-lift-coverage.md).

### (A1b) Exact strict-shadow theorem on the Euclidean window

For every such ontic solution `X(t)` with `X(0)=X_0`, the identities `(3)`--`(5)`
hold on the actual Euclidean readout surface, so the projected field
`u=\mathcal C(X)` solves the exact classical Navier--Stokes equation

```math
\partial_tu+\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{8}
```

### (A1c) Global ontic control on the Euclidean carrier

For every admissible `X_0` lifting a Clay datum, the corresponding projected
ontic flow exists globally and satisfies

```math
\sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty.
\tag{9}
```

## Theorem

Under `(A1a)`--`(A1c)`, the Clay whole-space existence-and-smoothness statement
holds.

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
`\mathbb R^3`.
By the norm comparison in `(4)` and `(10)`,

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

Because `u^0` was arbitrary in the Clay datum class, the Clay whole-space
statement follows.

## Meaning

This splits the exact strict-shadow route into three precise burdens:

1. lift/readout coverage of the full Clay datum class;
2. exact strict-shadow descent on the Euclidean window;
3. global `H_D^s` control on the Euclidean carrier.

The first item is now separated formally as the pure lift/readout theorem
`(A1a)` in
[a1a-full-data-euclidean-lift-coverage.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/a1a-full-data-euclidean-lift-coverage.md).

So the exact unresolved `NC` Route A burden is not just

```math
\text{strict shadow + carrier control.}
```

It is:

```math
\boxed{
\text{full-data lift coverage}
+
\text{Euclidean exact strict shadow}
+
\text{global carrier control.}
}
\tag{13}
```

## Realized-classical-carrier reduction

On the realized classical carrier in
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
the Euclidean Route `A` burden collapses further.

### Proposition

On the realized classical carrier, `(A1a)` and `(A1b)` are automatic.
More precisely:

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

Hence on the realized classical carrier, the exact Route `A` burden reduces to

```math
\boxed{
\text{prove only global carrier }H_D^s\text{ control on the realized Euclidean surface.}
}
\tag{14}
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

This note does **not** prove `(A1a)`, `(A1b)`, or `(A1c)`.

It proves only that:

1. on a general intended `NC` Euclidean readout surface, Route `A` really does
   split into `(A1a)`--`(A1c)`;
2. on the already realized classical carrier, that burden collapses to `(A1c)`
   alone;
3. once the relevant inputs are present, the exact strict-shadow route
   discharges the Clay whole-space branch without any additional classical
   remainder analysis.
