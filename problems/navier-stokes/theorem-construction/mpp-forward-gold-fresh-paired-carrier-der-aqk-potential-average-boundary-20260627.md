---
theorem_id: forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627
status: direct-attack-reduces-fresh-paired-carrier-to-potential-average-kill-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh source weighted paired carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - SameMaterialDERplusAQKFreshSourceRoute.A
  - RetainedB1SignedToAffineSecondOrderTransfer.A
refined_hinge:
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - FreshPositiveStressSecondOrderExactness.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
  - problems/navier-stokes/theorem-construction/lifted-band-upper-boundary-packet.md
  - problems/navier-stokes/theorem-construction/mpp-retained-affine-quotient-second-order-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-b1-signed-to-affine-second-order-transfer-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-kernel-normal-form-readjustment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-identity-vs-global-root-reserve-reconciliation-20260627.md
---

# Fresh paired-carrier DER/AQK potential-average boundary

The silent-source normal form closes the local invisible-child escape:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero top-strain/material-exchange charge}\}
=\{0\}.
```

That is not yet the global selected fresh-source packing theorem.  The
remaining object is the weighted paired carrier

```math
I_{fresh}(P)
:=
\int_0^{T^*}
\sum_{k>N+M}
2^k a_k^{fresh}(t)\,
\mathcal D_k^{\uparrow,fresh}(t)\,dt .
\tag{1}
```

The current Gold route must prove

```math
I_{fresh}(P)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{2}
```

This note attacks `(2)` through the DER/AQK mechanism rather than through raw
Bessel mass, endpoint atoms, or another local Schur observability statement.

## 1. Operator reduction

The lower-triangular / Volterra scale-memory form writes the fresh far-corona
primitive schematically as

```math
F^{fresh}(s,t)
=
(\mathcal V_\kappa \widetilde Z^{fresh})(s,t).
```

With the weighted projector `P_w`,

```math
\mathcal V_\kappa\widetilde Z^{fresh}
=
(I-P_w)\mathcal V_\kappa\widetilde Z^{fresh}
+
P_w\mathcal V_\kappa\widetilde Z^{fresh}.
\tag{3}
```

The exact derivative remainder is the DER part.  The survivor is the affine
quotient

```math
c_F^{fresh}(t,x)
=
A_\kappa M_0^{fresh}(t,x)+B_\kappa M_1^{fresh}(t,x),
\tag{4}
```

where

```math
M_0^{fresh}(t,x)=\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
M_1^{fresh}(t,x)=\int_J\sigma\,\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma .
\tag{5}
```

Thus the fresh paired carrier reduces to the affine quotient estimate

```math
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt+C_*2^{-2\delta N}
+R_{legal}.
\tag{6}
```

## 2. What signed scale descent supplies

The installed signed lifted-band identity gives first-order exactness:

```math
Y^{fresh}(\sigma,t)
=
\partial_\sigma\Psi^{fresh}(\sigma,t)
+S^{spill}(\sigma,t)+E(\sigma,t).
\tag{7}
```

Pairing `(7)` against an affine quotient weight `\theta_\kappa` gives

```math
\int_J\theta_\kappa\,\partial_\sigma\Psi^{fresh}\,d\sigma
=
-\theta_\kappa(s_0)\Psi^{fresh}(s_0,t)
+
{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)\,d\sigma .
\tag{8}
```

The first-order derivative kills only the constant quotient direction.  The
scale average of the potential remains:

```math
\mathcal P_{avg}^{fresh}(t)
:=
{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)\,d\sigma .
\tag{9}
```

So the current descent is one scale derivative short of the affine-quotient
kill required by `(6)`.

## 3. The exact open theorem

The noncircular route now has two equivalent forms.

### A. Potential-average kill plus positive transfer

Prove

```math
\int_0^{T^*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt+C_*2^{-2\delta N}
+R_{legal},
\tag{10}
```

and transfer that signed potential-average control to the positive fresh stress
source `\widetilde Z^{fresh}` used in `(4)`-`(5)`.

### B. Direct second-order exactness for the positive fresh stress source

Prove a representation

```math
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}+R^{fresh},
\tag{11}
```

with boundary terms killed on the retained one-sided scale interval and with

```math
\int_0^{T^*}H_w(t)
\left\|
\int_J\theta_\kappa(\sigma)R^{fresh}(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt+C_*2^{-2\delta N}
+R_{legal}.
\tag{12}
```

Either `(10)` plus signed-to-positive transfer, or `(11)`-`(12)`, gives AQK and
therefore the DER/AQK proof of the fresh paired carrier.

## 4. Why the other installed pieces do not close this

Raw Bessel control sees only

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2,
```

and misses the selected first-ratio weight.  Endpoint atom conversion is a
failure classifier after the fresh source has escaped; it does not produce
`(2)`.  The local silent-source normal form prevents a zero-cost invisible
child, but it does not control the global affine quotient `(4)`.

The signed descent file gives the right signed object and the right order of
operations, but its present form is first-order.  The upper-boundary packet and
mesoscopic residual reductions isolate boundary/remainder obligations for the
signed route; they do not remove the affine quotient average `(9)`.

## 5. Result

`FreshSourceWeightedPairedCarrierBound.A` is not closed by the currently
installed stack.  It is reduced to:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
```

or equivalently:

```text
FreshPositiveStressSecondOrderExactness.A
```

This is the current non-stale Gold proof edge.  The silent-source theorem has
removed the local kernel escape.  The remaining weighted fresh-source escape is
the affine quotient survivor of the same-material signed scale-descent route.
