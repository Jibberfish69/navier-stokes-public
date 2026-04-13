# A1a Full-Data Euclidean Lift Coverage

## Purpose

This note isolates the exact datum-side burden `(A1a)` from the Euclidean
strict-shadow Route `A`.

It is not an evolution theorem. It is the initial-data/readout theorem needed
before the exact strict-shadow and global-carrier burdens can even be asked on
the full Clay datum class.

## Clay datum class

Write

```math
\mathcal D_{\mathrm{Clay}}
:=
\Big\{
u^0\in C^\infty(\mathbb R^3;\mathbb R^3):
\nabla\cdot u^0=0,\;
u^0\text{ rapidly decaying}
\Big\}.
\tag{A1a.1}
```

Let `\mathcal C` denote the Euclidean readout/shadow functor on the chosen
carrier surface, and let `\mathcal K_{\mathrm{Euc}}` denote the admissible
projected ontic datum class for that same Euclidean surface.

## Exact burden `(A1a)`

The exact datum-side theorem is:

```math
\boxed{
\forall u^0\in\mathcal D_{\mathrm{Clay}},
\;\exists X_0\in\mathcal K_{\mathrm{Euc}}
\text{ such that }
\mathcal C(X_0)=u^0.
}
\tag{A1a.2}
```

So `(A1a)` is the surjectivity of the Euclidean readout onto the full Clay datum
class, with admissibility on the carrier side built in.

## Proposition `A1a` is a pure lift/readout theorem

The burden `(A1a)` is independent of the exact strict-shadow theorem `(A1b)` and
independent of the global carrier bound `(A1c)`.

**Proof.**
Statement `(A1a.2)` concerns only the existence of an admissible carrier datum
`X_0` above a prescribed classical datum `u^0`. It does not assert any
evolution, any exact projected nonlinear identity, or any global carrier norm
bound. Those are exactly the separate roles of `(A1b)` and `(A1c)`. ∎

## Right-inverse criterion

The clean sufficient mechanism for `(A1a)` is a right inverse for the Euclidean
readout.

### Theorem `A1a-RI`

Assume there exists a map

```math
\mathcal L:\mathcal D_{\mathrm{Clay}}\to \mathcal K_{\mathrm{Euc}}
\tag{A1a.3}
```

such that

```math
\mathcal C(\mathcal L(u^0))=u^0
\qquad
\forall u^0\in\mathcal D_{\mathrm{Clay}}.
\tag{A1a.4}
```

Then `(A1a)` holds.

**Proof.**
Given `u^0\in\mathcal D_{\mathrm{Clay}}`, take `X_0:=\mathcal L(u^0)`. By
construction `X_0\in \mathcal K_{\mathrm{Euc}}` and `(A1a.4)` gives
`\mathcal C(X_0)=u^0`. This is exactly `(A1a.2)`. ∎

## Realized-carrier specialization

On the realized classical carrier, `(A1a)` is automatic.

### Corollary `A1a-R`

Assume the realized-carrier identification of
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
so that the carrier is literally the classical divergence-free Euclidean space
and the readout is

```math
\rho=\mathrm{Id}.
\tag{A1a.5}
```

Then `(A1a)` holds with the canonical lift

```math
\mathcal L(u^0):=u^0.
\tag{A1a.6}
```

**Proof.**
By the realized-carrier equivalence, every smooth divergence-free rapidly
decaying classical datum is already an admissible carrier datum on that
Euclidean surface. Because the readout is the identity, one has
`\mathcal C(\mathcal L(u^0))=u^0`. Hence `(A1a)` holds. ∎

## Meaning for Route `A`

The Euclidean strict-shadow Route `A` therefore splits cleanly into:

```math
\text{(A1a) datum-side lift/readout coverage,}
\tag{A1a.7}
```

```math
\text{(A1b) exact strict-shadow descent on the Euclidean window,}
\tag{A1a.8}
```

```math
\text{(A1c) global carrier control on that Euclidean surface.}
\tag{A1a.9}
```

So the only genuinely new content in `(A1a)` is the existence of a full-data
Euclidean right inverse or an equivalent realized-carrier identification. It is
not another shadow-remainder or continuation theorem.
