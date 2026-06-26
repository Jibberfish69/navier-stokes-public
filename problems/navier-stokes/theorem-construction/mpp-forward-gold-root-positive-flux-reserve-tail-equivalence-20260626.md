---
theorem_id: forward-gold-root-positive-flux-reserve-tail-equivalence-20260626
status: equivalence-installed-bellman-root-reserve-is-full-action-tail-unless-new-coercive-representation-given
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: RootPositiveFluxReserveCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-positive-flux-inheritance-direct-attack-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-flux-reserve-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-ratio-tail-obstruction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weight-beating-tail-ns-structure-audit-20260626.md
---

# Root Positive-Flux Reserve Tail Equivalence

The current hinge is:

```text
RootPositiveFluxReserveCoercivity.A
```

This note tests whether that hinge is smaller than the full Gold action theorem.

## 1. Canonical Bellman reserve

For a laminar tree node \(Q\), define the descendant tail reserve

```math
B_*(Q)
:=
\sum_{R\subsetneq Q}A(R)
+\sum_{R\subseteq Q}R_{\rm legal}(R),
\tag{RPF.1}
```

where \(R\) ranges over retained laminar descendants of \(Q\).

Then for children \(Q'\in ch(Q)\),

```math
B_*(Q)
=
\sum_{Q'\in ch(Q)}
\left(
A(Q')+B_*(Q')
\right)
+R_{\rm legal}(Q),
\tag{RPF.2}
```

up to harmless convention about whether \(R_{\rm legal}(Q)\) is assigned to the
parent or child edge.

Thus \(B_*\) satisfies the desired monotone inheritance identity exactly:

```math
\sum_{Q'\in ch(Q)}A(Q')
+\sum_{Q'\in ch(Q)}B_*(Q')
\le
B_*(Q)+R_{\rm legal}(Q).
\tag{RPF.3}
```

So a Bellman reserve always exists after the full descendant action is already
known.

## 2. Root value is the theorem

At the root,

```math
B_*(Q_{\rm root})
=
\sum_{R\subsetneq Q_{\rm root}}A(R)
+\sum_{R\subseteq Q_{\rm root}}R_{\rm legal}(R).
\tag{RPF.4}
```

The first term is precisely the first ratio action:

```math
\sum_R A(R)
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell.
```

Therefore

```math
B_*(Q_{\rm root})<\infty
\quad\Longleftrightarrow\quad
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
```

modulo the already legal summable terms.

This proves the tail-equivalence:

```text
finite strong Bellman root reserve
=
finite full high-ratio action
```

unless the proof supplies an independent representation of \(B\) whose root
value is controlled from original data.

## 3. What a noncircular proof would have to add

To be a proof and not a restatement, \(B(Q)\) must have all three properties:

1. It satisfies monotone inheritance:

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B(Q')
\le
B(Q)+R_{\rm legal}(Q).
```

2. Its root is bounded by original-data quantities not already equivalent to the
first ratio moment:

```math
B(Q_{\rm root})\le C_N(u_0)+R_{\rm legal}.
```

3. Its definition is not the descendant tail \(B_*\), nor a disguised future-tail
or total positive-variation integral.

Installed candidates fail this test:

```text
raw root reserve: finite but too weak;
signed boundary flux: attaches but lacks monotone inheritance;
positive flux variation: strong enough only when it contains the tail action.
```

## 4. Result

`RootPositiveFluxReserveCoercivity.A` is not a completed smaller theorem in the
current repo.  It is an exact reformulation of the Gold action wall unless a new
same-material coercive representation of the strong Bellman reserve is produced.

The next proof attack must either construct that representation or return to the
weight-beating tail law directly:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```
