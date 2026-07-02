---
theorem_id: forward-gold-source-origin-normal-form-support-current-live-edge-20260627
status: source-origin-normal-form-support-closed-root-tent-edge-confirmed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
audits_user_idea:
  - silent interior source direct attack
  - boundary-flat pressure-Hodge source classification
  - selected silent carrier source-origin normal form
support_closed:
  - SilentKernelSourceOriginNormalForm.A
  - SelectedScaleFreshLowerEdge.A
  - AugmentedParentDropAfterSilentSource.A
current_live_edge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceWeightedPairedCarrierBound.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - FreshPositiveStressSecondOrderExactness.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-root-reserve-branch-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
---

# Source-origin normal form as support, not root producer

The silent interior source should be attacked first by classification, not by
asking the boundary Schur trace to detect a boundary-flat elliptic source.

The exact fork is:

```math
f=L_Aw,\qquad w|_{\partial A}=0,\qquad \partial_{\nu_A}w|_{\partial A}=0
\tag{1}
```

and the question is whether such a source can also be a retained selected
pressure-Hodge carrier.

The source-origin normal form is:

```math
\ker(\mathsf S_{\rm parent})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subset
\{\text{constraint/gauge material}\}
\cup
\{\text{top-strain/exchange charged material}\}.
\tag{2}
```

Equivalently:

```math
\mathsf S_\infty U_\infty=0,\qquad
\Omega_\infty^{strain/ex}=0,\qquad
D_\infty^{vis/rad}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{3}
```

So a boundary-flat pressure-Hodge source has only two Gold-legal outcomes.

First, it is hidden-potential / constraint material:

```math
\mathbb P_A(A^\top\nabla_aw)=0.
\tag{4}
```

Then it is not selected and contributes no retained selected activity.

Second, it is genuinely selected.  Then it is not zero-cost.  Its selected
reading belongs to the same-material strain-Hessian / complete-frame exchange
packet:

```math
dA_{\rm sel}^{silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
\tag{5}
```

This is exactly the useful pressure point in the user's formulation: classify
the invisible child first, then prove the selected part is either unselected or
already charged by the full same-material packet.

## Effect on the current Gold edge

This closes the local silent-source escape and justifies the selected-scale
lower-edge statement:

```math
\omega_Q
\le
C_N\rho_Q^{fresh}
+R_{\rm legal}(Q).
\tag{6}
```

Here \(\rho_Q^{fresh}\) includes the pressure-visible Schur quotient, silent
source exchange, material Hodge/projector motion, annular stress work,
viscous/radius service, and frequency-native entrance/refill coordinate.

The local result does not give the root upper bound.  The surviving displayed
coordinate is the selected-critical fresh-source tent projection of the
original-history parent ledger; it is Littlewood-Paley/weighted parent-ledger
bookkeeping after the fresh source increments exist, not the physical producer
itself:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{7}
```

where \(F_Q\) is the genuinely fresh original-history visible/silent/exchange
source increment after spent-source projection and paid removals.

The direct fresh-projection proof already gives only the raw Bessel estimate:

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty.
\tag{8}
```

The orthogonal half-tail survives this raw estimate:

```math
\|F_\ell\|_{\mathcal H_{\rm raw}}^2={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2<\infty,
\qquad
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2=\infty.
\tag{9}
```

So the current proof-bearing object is not the silent-source observability
fork.  It is the critical fresh-source root/tent weight.  The sharpened attack
is:

```text
FreshSourceWeightedPairedCarrierBound.A
```

and the current derivative/affine-quotient boundary is:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
or
FreshPositiveStressSecondOrderExactness.A.
```

## Result

The user's source-origin normal form is included as a closed support lemma:

```math
\text{boundary-flat silent source}
\Longrightarrow
\text{unselected gauge/constraint material or paid strain/exchange material}.
\tag{10}
```

The Gold route now stays pointed at the remaining root theorem:

```math
\text{fresh selected lower edge}
+\text{critical fresh root/tent Carleson}
\Longrightarrow
\sum_Q A(Q)<\infty
\Longrightarrow
H^s\text{ continuation}.
\tag{11}
```
