---
theorem_id: forward-gold-source-origin-to-record-return-overrun-dichotomy-20260627
status: source-origin-closed-as-support-fresh-half-tail-split-to-record-return-or-overrun-reset-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - PrimitivePLSNoFreeUpcrossing.A
  - FreshSameCarrierIdentityAndSelectedOverrunPayment.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-normal-form-support-current-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parallel-multicurrency-review-to-primitive-pls-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-argument-to-fresh-paired-carrier-frontier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-lift-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-same-carrier-overrun-ordering-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-overrun-tail-ui-nested-core-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-carrier-identity-or-terminal-atom-dichotomy-20260627.md
edge_effect: >-
  Installs the user's silent-interior-source normal form as a closed local
  support theorem and prevents it from being reselected as the global producer.
  After this classification, the remaining critical half-tail cannot be an
  elliptic ghost. It is a fresh selected high-ratio transaction. The live global
  proof splits into two payment mechanisms: fixed stopped-core record/return,
  or shrinking fresh-reset same-carrier overrun payment.
downstream_consequence: >-
  Relay and goal-loop surfaces should stop reopening boundary invisibility,
  pressure-Hodge faithfulness, or silent-source observability as the main Gold
  edge. Those are support closures. The next proof-bearing object is the
  dichotomy and payment theorem for the surviving fresh half-tail: either
  PrimitivePLS record/return descent on one stopped ancestry, or critical
  weighted parent-child reset / same-carrier overrun payment on a shrinking
  ancestry.
---

# Source-Origin Support To Record/Return Or Overrun Dichotomy

## 1. The silent source is classified first

The useful source-origin theorem is the one in the user's wording:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
=
\{0\}
```

after quotienting by gauge and after adding the same-material top-strain /
exchange charge to the zero-cost test.

Concretely, a boundary-flat pressure-Hodge source has the form

```math
f=L_Aw,
\qquad
w|_{\partial A}=0,
\qquad
\partial_{\nu_A}w|_{\partial A}=0.
```

There are only two possibilities.

First, it is hidden-potential material. Then

```math
\mathbb P_A(A^\top\nabla_aw)=0,
```

so it is a constraint/gauge coordinate and is not selected.

Second, it is genuinely selected. Then the selected part is not a zero-cost
Schur-silent source; it enters through the strain-Hessian / material-frame
equations and is charged to same-material top-strain/exchange, plus
viscous/radius/legal terms:

```math
dA_{sel}^{silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
```

Thus the silent-source escape is a local support closure. It is not the
remaining root producer.

## 2. What still survives after that closure

Raw freshness still gives only zeroth-moment control:

```math
\sum_Q\|F_Q\|_{\mathcal H_{raw}}^2<\infty.
```

The critical selected weight is stronger. The surviving half-tail model is

```math
\|F_\ell\|_{\mathcal H_{raw}}^2
=
\frac{2^{-\ell}}{\ell+1},
```

so

```math
\sum_\ell\|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty.
```

This survivor is no longer an initial-frequency entrance, linear heat tail,
subheat refill, spent-source reuse, return/reselection piece, or silent
pressure-Hodge source. It is a fresh selected high-ratio transfer from the same
original material history.

The current producer is therefore still

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
```

which is `CriticalFreshSourceTentCarleson.A` /
`FreshSourceCriticalScaleMemoryBound.A`.

## 3. The remaining half-tail has two structural branches

After the paid reductions and the source-origin classification, a surviving
fresh half-tail must do one of two things.

### Branch A: fixed stopped-core record/return

The selected source keeps revisiting one stopped material ancestry chamber. In
that case the proof must use the finite same-packet signed channel
decomposition

```math
d\Omega_{Q}^{PLS,primitive,+}
\le
C_N\sum_{\kappa\in\mathcal K_N}[Y_{\kappa,Q}]_+\,d\sigma dt
+dR_Q^{paid},
```

with

```math
Y_{\kappa,Q}
=
\partial_\sigma\Psi_{\kappa,Q}
+S_{\kappa,Q}^{spill}
+E_{\kappa,Q}.
```

On a stopped chamber,

```math
[Y_{\kappa,Q}]_+
=
Y_{\kappa,Q}
+[Y_{\kappa,Q}]_-.
```

So positive visits split into record and return. The signed derivative gives
the record term; the wrong-sign side is the return term.

The required theorem package for this branch is:

```text
PrimitivePLSSignedChannelDecomposition.A
+ StoppedPotentialRecordAverageBound.A
+ StoppedNegativeScaleReturnCharge.A.
```

Equivalently, the stopped primitive PLS potential must have finite positive
record/return variation after spill, boundary, and legal terms are paid.

### Branch B: shrinking fresh-reset / same-carrier overrun

The selected source does not stay on one stopped chamber. Then the material
history creates a fresh child/reset in the laminar ancestry tree.

The first gate is same-carrier identity: the lower fresh source and upper active
queue must be the actual selected positive native trilinear carrier

```math
\Pi_j^+(t)
=
\int_{\Omega_j(t)}
|w_j|^2\alpha_j^+(t,x)\,dx,
\qquad
\alpha_j^+
=
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

Once this identity is installed, the bounded coefficient branch is paid by the
source-square parent tail. The only leftover is the selected overrun product

```math
\Pi_{j,K}^{over}(t)
=
\int_{\Omega_{j,K}^{over}(t)}
|w_j|^2\alpha_j^+\,dx,
\qquad
\alpha_j^+>K\nu r_j^{-2}.
```

In normalized variables this is

```math
\Sigma_j^+|W_j|^2,
\qquad
\Sigma_j^+>K\nu.
```

The required theorem package for this branch is:

```text
FreshSameCarrierIdentity.A
+ FreshSelectedCoefficientOverrunPayment.A.
```

Equivalently, prove `CriticalWeightedParentChildResetCarleson.A` /
`LogScaleResetDerivativeCarrierBound.A`: every strict reset of the fresh
selected carrier spends a weighted reset derivative, overrun tail UI, or legal
terminal source-curve exit on the same material ancestry.

## 4. The exact live dichotomy

The structural theorem to prove next is:

```text
FreshSourceRecordReturnOrResetDichotomy.A
```

Statement:

For a retained stopped fresh high-ratio family after initial-frequency,
subheat, spent-source, reselection/return, silent-source, legal, and
viscous/radius removals, every surviving selected contribution belongs to one
of two branches:

1. it remains on one stopped material ancestry chamber and is governed by the
   primitive PLS signed-channel record/return decomposition;
2. it creates a strict laminar fresh reset, in which case the same-carrier
   selected overrun/reset payment is the governing carrier.

In symbols, the remaining selected-critical mass satisfies the schematic split

```math
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C\,\mathcal R_{record/return}(P)
+C\,\mathcal R_{reset/overrun}(P)
+R_{legal}(P).
```

The two branch payments are:

```math
\mathcal R_{record/return}(P)
\lesssim
\sum_{\kappa}
\left(
\text{stopped potential records}
+\text{negative scale returns}
+\text{spill/boundary/legal}
\right),
```

and

```math
\mathcal R_{reset/overrun}(P)
\lesssim
\text{same-carrier overrun tail UI}
+\text{critical weighted reset derivative}
+\text{legal terminal source-curve exits}.
```

## 5. What this changes

The silent-source theorem should now stay closed. It is the local answer to the
boundary-flat source escape:

```math
\text{invisible child source}
\Rightarrow
\text{unselected}
\quad\text{or}\quad
\text{same-material strain/exchange paid}.
```

The remaining Gold edge is global and weighted:

```math
\text{fresh half-tail}
\Rightarrow
\text{record/return payment}
\quad\text{or}\quad
\text{reset/overrun payment}.
```

Thus the next proof-bearing work is not another pressure-Hodge observability
lemma. It is the same-material dichotomy and the two branch payments:

```text
FreshSourceRecordReturnOrResetDichotomy.A
```

plus either

```text
PrimitivePLSSignedChannelDecomposition.A
+ StoppedPotentialRecordAverageBound.A
+ StoppedNegativeScaleReturnCharge.A
```

or

```text
FreshSameCarrierIdentity.A
+ FreshSelectedCoefficientOverrunPayment.A.
```

This is the current exact edge. It does not close the MPP yet, but it prevents
the already-solved silent-source escape from being recycled as the live
producer.
