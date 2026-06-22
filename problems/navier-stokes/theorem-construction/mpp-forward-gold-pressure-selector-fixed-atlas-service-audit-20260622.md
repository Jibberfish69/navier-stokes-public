---
theorem_id: forward-gold-pressure-selector-fixed-atlas-service-audit-20260622
status: conditional-proved-on-fixed-transported-pressure-compatible-atlas
logical_landing_node: pressure_selector_fixed_atlas_service
edge_effect: >-
  Verifies the pressure-service and selector/collar bookkeeping needed by
  MaterialRecordLogGrowthChannelIdentity.A. On a fixed label-space annular atlas
  transported by the same incompressible material flow, overlap multiplicity is
  preserved and cutoff materiality defects vanish. For pressure-compatible tests,
  the material pressure term integrates by parts into pressure-collar and
  coefficient-divergence commutator service terms already appearing in the
  same-carrier channel list. The verification is conditional on the atlas being
  fixed in material labels, on uniform label-space derivative/overlap constants,
  and on pressure compatibility. Refreshed terminal atlases or incompatible
  pressure tests produce selector/collar service rather than closing this item.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-overlap-fourbody-payment-direct-attempt-20260622.md
---

# Pressure / Selector Service on a Fixed Transported Atlas

Date: 2026-06-22

## 0. Target

Verify the side condition used in the material log-growth identity:

```math
\text{pressure service and collar/selector terms are same-carrier annular
channels with bounded overlap.}
\tag{PS.1}
```

This is not a proof of the global four-body reserve. It verifies that these
terms do not create an additional hidden record-growth channel once the atlas is
fixed and transported.

## 1. Fixed transported atlas

Let \(\{\zeta_j(a)\}_{j\in J}\) be a label-space annular atlas on the retained
material packet satisfying

```math
\sum_j \mathbf 1_{\operatorname{supp}\zeta_j}(a)\le K,
\tag{PS.2}
```

and the corresponding derivative-overlap bounds, for example

```math
\sum_j |\nabla_a\zeta_j(a)|^2\le C_K,
\qquad
\sum_j |D_a^\ell\zeta_j(a)|^2\le C_{K,\ell,N}
\quad(\ell\le N+1),
\tag{PS.3}
```

after the selected annular normalization.

Transport the atlas by the same flow:

```math
\eta_j(s,y)=\zeta_j(X^{-1}(y,s)).
\tag{PS.4}
```

Then

```math
(\partial_s+V\cdot\nabla_y)\eta_j=0.
\tag{PS.5}
```

So the materiality defect vanishes. Since \(X(s,\cdot)\) is one-to-one and
incompressible, label-space multiplicity is preserved in Eulerian variables:

```math
\sum_j \mathbf 1_{\operatorname{supp}\eta_j(s)}(y)\le K .
\tag{PS.6}
```

Thus a sum of same-atlas service measures is bounded by the same service
measure counted with multiplicity \(K\), not by an unbounded terminal refresh.

## 2. Pressure service by integration by parts

In material coordinates the differentiated velocity equation has pressure term

```math
\int \zeta_j^2 U_\alpha\cdot A^T\nabla_a\pi_\alpha\,da,
\tag{PS.7}
```

where

```math
U_\alpha=D_a^\alpha v,
\qquad
\pi_\alpha=D_a^\alpha q.
\tag{PS.8}
```

Integrating by parts gives

```math
\int \zeta_j^2 U_\alpha\cdot A^T\nabla_a\pi_\alpha\,da
=
-\int \pi_\alpha\operatorname{div}_a(\zeta_j^2 A U_\alpha)\,da .
\tag{PS.9}
```

Split the divergence:

```math
\operatorname{div}_a(\zeta_j^2AU_\alpha)
=2\zeta_j\nabla_a\zeta_j\cdot AU_\alpha
+\zeta_j^2\operatorname{div}_a(AU_\alpha).
\tag{PS.10}
```

The differentiated incompressibility law gives

```math
\operatorname{div}_a(AU_\alpha)
=-[D_a^\alpha,\operatorname{div}_a(A\cdot)]v .
\tag{PS.11}
```

Therefore the pressure term is exactly the sum of a pressure-collar service and
a pressure/coefficient commutator service:

```math
\left|\int \zeta_j^2 U_\alpha\cdot A^T\nabla_a\pi_\alpha\,da\right|
\le
\left|\int 2\zeta_j\pi_\alpha\nabla_a\zeta_j\cdot AU_\alpha\,da\right|
+
\left|\int \zeta_j^2\pi_\alpha [D_a^\alpha,\operatorname{div}_a(A\cdot)]v\,da\right|.
\tag{PS.12}
```

These are derived terms, not names imposed afterward.

Define

```math
d\mathcal A_{N}^{press/collar}
:=
\sum_{j,|\alpha|\le N}w_\alpha
\left|\int 2\zeta_j\pi_\alpha\nabla_a\zeta_j\cdot AU_\alpha\,da\right|ds,
\tag{PS.13}
```

and

```math
d\mathcal A_{N}^{press/comm}
:=
\sum_{j,|\alpha|\le N}w_\alpha
\left|\int \zeta_j^2\pi_\alpha [D_a^\alpha,\operatorname{div}_a(A\cdot)]v\,da\right|ds.
\tag{PS.14}
```

Then pressure service contributes only

```math
d\mathcal A_{N}^{press}
:=d\mathcal A_{N}^{press/collar}+d\mathcal A_{N}^{press/comm}.
\tag{PS.15}
```

## 3. Bounded overlap for pressure and collar service

Because the atlas is fixed in label space and satisfies `(PS.2)`--`(PS.3)`, the
sum over \(j\) in `(PS.13)`--`(PS.14)` has bounded multiplicity. Schematically,
for any nonnegative service density \(H_j\) supported where \(\zeta_j\neq0\),

```math
\sum_j\int H_j(a,s)\,da
\le
C_K\int H(a,s)\,da,
\tag{PS.16}
```

where \(H\) is the same local expression without repeated atlas counting. The
same statement holds after transport by incompressibility.

Thus pressure service and collar service do not create a Zeno multiplicity
problem on a fixed transported atlas. They enter the full tower-level
\(A_{4B,N}^{ann}\) with a bounded constant.

## 4. Selector/collar variation

If the atlas is genuinely fixed in labels, the selector/collar variation
measure is zero:

```math
d\mathcal A_N^{selector/collar}=0.
\tag{PS.17}
```

If the proof refreshes the atlas, changes labels, changes cutoff scale, or
changes pressure gauge on the terminal family, then `(PS.17)` is false. The
resulting variation must be counted as

```math
d\mathcal A_N^{selector/collar}>0.
\tag{PS.18}
```

and admitted into the full tower-level four-body activity. It cannot be ignored.

## 5. Result

On a fixed transported annular atlas with pressure-compatible tests,

```math
\boxed{
\text{pressure service and collar service are same-carrier channel measures
with bounded overlap.}
}
\tag{PS.19}
```

The proof is `(PS.9)`--`(PS.16)`. The compatibility requirements are exact:

1. the cutoff is transported by the same material flow;
2. the atlas has uniform label-space overlap and derivative constants;
3. the pressure test allows the integration-by-parts reduction `(PS.9)`;
4. any refreshed selector/collar motion is counted as a visible service measure.

So this item closes conditionally on the fixed transported atlas/gauge. It does
not close for refreshed endpoint-dependent atlases without adding the selector
variation to \(A_{4B,N}^{ann}\).