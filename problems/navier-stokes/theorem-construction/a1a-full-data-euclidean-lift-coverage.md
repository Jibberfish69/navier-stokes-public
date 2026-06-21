# A1a Full-Data Euclidean Lift Coverage

## Purpose

This note records the downstream datum-side consumer burden `(A1a)` on the
Euclidean export/discharge surface.

It is not the constitutive start of the branch. Before `(A1a)` can be asked,
the earlier CM-to-Euclidean export splice must already have fixed the actual
Euclidean carrier/readout surface, the admissible exported datum class
`\mathcal K_{\mathrm{Euc}}`, and the readout functor `\mathcal C`. This note
consumes that splice as downstream export data; it does not prove or
constitute it.

## Downstream position

Once the earlier CM-to-Euclidean export splice is in place, the downstream
Euclidean discharge package splits into:

```math
\text{(A1a) datum-side lift/readout coverage,}
\tag{A1a.1}
```

```math
\text{(A1b) exact strict-shadow descent on the exported Euclidean window,}
\tag{A1a.2}
```

```math
\text{(A1c) global carrier control on that same exported surface.}
\tag{A1a.3}
```

So `(A1a)` is a consumer start after the splice, not a branch root.

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
\tag{A1a.4}
```

Let `\mathcal C` denote the Euclidean readout already supplied by the earlier
CM-to-Euclidean export splice, and let `\mathcal K_{\mathrm{Euc}}` denote the
admissible projected ontic datum class on that already-exported Euclidean
surface.

## Exact downstream burden `(A1a)`

The exact datum-side consumer burden is:

```math
\boxed{
\forall u^0\in\mathcal D_{\mathrm{Clay}},
\;\exists X_0\in\mathcal K_{\mathrm{Euc}}
\text{ such that }
\mathcal C(X_0)=u^0.
}
\tag{A1a.5}
```

So `(A1a)` is the surjectivity of the already-exported Euclidean readout onto
the full Clay datum class, with admissibility on the carrier side built in.

## Proposition `A1a` is a downstream consumer theorem

The burden `(A1a)` is downstream of the CM-to-Euclidean export splice and
independent of the later exact strict-shadow theorem `(A1b)` and global carrier
bound `(A1c)`.

**Proof.**
Statement `(A1a.5)` quantifies only over the Euclidean readout `\mathcal C` and
the admissible datum class `\mathcal K_{\mathrm{Euc}}` that the earlier splice
has already fixed. It does not assert that this Euclidean surface is the
correct export of the CM participation-field record, nor does it assert any evolution, exact
projected nonlinear identity, or global carrier norm bound. Those belong,
respectively, to the earlier splice and to `(A1b)`--`(A1c)`. ∎

## Right-inverse criterion

The clean sufficient mechanism for `(A1a)` is a right inverse for that already
exported Euclidean readout.

### Theorem `A1a-RI`

Assume there exists a map

```math
\mathcal L:\mathcal D_{\mathrm{Clay}}\to \mathcal K_{\mathrm{Euc}}
\tag{A1a.6}
```

such that

```math
\mathcal C(\mathcal L(u^0))=u^0
\qquad
\forall u^0\in\mathcal D_{\mathrm{Clay}}.
\tag{A1a.7}
```

Then `(A1a)` holds.

**Proof.**
Given `u^0\in\mathcal D_{\mathrm{Clay}}`, take `X_0:=\mathcal L(u^0)`. By
construction `X_0\in \mathcal K_{\mathrm{Euc}}` and `(A1a.7)` gives
`\mathcal C(X_0)=u^0`. This is exactly `(A1a.5)`. ∎

## Realized-carrier specialization

If the earlier CM-to-Euclidean export splice lands on the realized classical
carrier of
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
then `(A1a)` is automatic.

### Corollary `A1a-R`

Assume the realized-carrier identification above, so that the carrier is
literally the classical divergence-free Euclidean space and the readout is

```math
\rho=\mathrm{Id}.
\tag{A1a.8}
```

Then `(A1a)` holds with the canonical lift

```math
\mathcal L(u^0):=u^0.
\tag{A1a.9}
```

**Proof.**
By the realized-carrier equivalence, every smooth divergence-free rapidly
decaying classical datum is already an admissible carrier datum on that
Euclidean surface. Because the readout is the identity, one has
`\mathcal C(\mathcal L(u^0))=u^0`. Hence `(A1a)` holds. ∎

## Meaning for Euclidean discharge

The only genuinely new content in `(A1a)` is the existence of a full-data
Euclidean right inverse, or an equivalent realized-carrier identification, on a
Euclidean surface that has already been supplied by the earlier
CM-to-Euclidean export splice.

So this note is a downstream export/discharge consumer. It should not be read
as the place where the Euclidean branch acquires route authority.
