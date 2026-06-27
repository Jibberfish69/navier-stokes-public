---
theorem_id: forward-gold-selected-density-martingale-square-function-governing-edge-20260627
status: governing-edge-realigned-to-selected-density-martingale-square-function-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical half-tail exclusion
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
governing_hinge:
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - SelectedDensityEntropyRootBound.A
support_hinges:
  - SilentInteriorSourceOriginNormalForm.A
  - AugmentedStoppedSelectedActionTraceCoercivity.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
  - SoftSelectorFreeEnergyRootBound.A
  - FreshSourceRecordReturnOrResetDichotomy.A
source_surfaces:
  - user-supplied-pasted-text-20260627-selected-density-martingale-source-origin-shape
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-log-amplification-carleson-production-target-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-correct-hilbert-bmo-producer-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-soft-selector-free-energy-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-normal-form-support-current-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-to-record-return-overrun-dichotomy-20260627.md
edge_effect: >-
  Promotes the selected-density martingale / entropy estimate to the governing
  Gold edge. The record/return and reset/overrun split remains as proof
  mechanism, but it is no longer the top theorem statement. The top theorem is
  the original-history square-function/entropy Carleson bound for the selected
  density on the retained same-material laminar tree. Silent-source
  classification supplies the missing local normal form: boundary-flat
  pressure-Hodge material is unselected, or selected-but-paid by top-strain
  exchange/material service.
downstream_consequence: >-
  Relay and goal-loop surfaces should not reselect pressure observability, raw
  capacity, endpoint atom exclusion, or the record/return-vs-reset split as the
  global producer. They are support or proof mechanisms. The current proof
  object is SelectedDensityMartingaleSquareFunctionCarleson.A, with source-origin
  normal form as the local invisible-source classification needed to prove the
  square-function increments.
---

# Selected-Density Martingale Square-Function Governing Edge

## 1. The object

Let \(\mathcal T\) be the retained same-material laminar tree. Let
\(\mathcal R\) be the original-history reserve measure on that tree, and let
\(\mu_{\rm sel}\) be the selected dangerous strain/action measure. Write

```math
\rho_Q
=
{1\over \mathcal R(Q)}
\int_Q d\mu_{\rm sel}.
```

The bad half-tail is exactly the case where raw reserve is summable but selected
critical action is not:

```math
\sum_\ell \|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty.
```

So the current Gold edge is not pressure observability, raw capacity, or
terminal atom exclusion alone. It is the selected-density square-function /
entropy estimate that forbids this half-tail.

## 2. Governing theorem

The theorem should be stated as:

```text
SelectedDensityMartingaleSquareFunctionCarleson.A
```

For every retained root \(Q_0\),

```math
\boxed{
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{\rm sel}|^2\,\mathcal R(Q)
\le
C_N\Big(
B_{\rm Schur}(Q_0)
+E_{\rm top\text{-}ex}(Q_0)
+S_{\rm mat}(Q_0)
+R_{\rm legal}(Q_0)
\Big).
}
```

Here \(\Delta_Q\rho_{\rm sel}\) is the selected-density martingale jump from
the parent packet to the child packet.

Equivalent usable versions are an entropy or reverse-Holder bound:

```math
\int_{Q_0}\rho_{\rm sel}\log(1+\rho_{\rm sel})\,d\mathcal R
\le C_N(u_0)+R_{\rm legal}(Q_0),
```

or

```math
\int_{Q_0}\rho_{\rm sel}^{1+\varepsilon}\,d\mathcal R
\le C_N(u_0)+R_{\rm legal}(Q_0).
```

Any one of these kills the critical half-tail and gives the selected
first-ratio action bound.

## 3. The local increment estimate

On each retained packet \(Q\), the pressure-Hodge field satisfies

```math
\mathcal L_A W_Q=f_Q
```

in transported material coordinates. The failed boundary-only route tried to
force

```math
\|f_Q\|_{\rm selected}
\lesssim
\|\text{parent Schur trace of }W_Q\|.
```

That is false because boundary-flat sources exist:

```math
f_Q=\mathcal L_Aw_Q,
\qquad
w_Q|_{\partial A_Q}=0,
\qquad
\partial_{\nu_A}w_Q|_{\partial A_Q}=0.
```

Define the silent elliptic kernel

```math
\mathcal K_Q^{sil}
=
\{f:f=\mathcal L_Aw,\ 
w|_{\partial A_Q}=0,\ 
\partial_{\nu_A}w|_{\partial A_Q}=0\}.
```

The source-origin normal form is:

```math
\boxed{
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\!\left(
\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}
\right)
=\{0\}.
}
```

Plainly: a silent elliptic source may exist, but it cannot be a free selected
critical-strain carrier.

This gives the packet estimate:

```math
A_{\rm sel}(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}.
```

For the martingale theorem, the needed sharpened local step is the jump form:

```math
\boxed{
|\Delta_Q\rho_{\rm sel}|^2\,\mathcal R(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}.
}
```

This is the precise place where source-origin normal form must be promoted from
packet action control to selected-density jump control.

## 4. The ledger split

Each jump of selected density has four possible origins.

### Pressure-visible part

The pressure-visible part is paid by the parent Schur / pressure-Hodge trace:

```math
|\Delta_Q\rho_{\rm sel}^{vis}|^2\mathcal R(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle.
```

### Pressure-null part

The pressure-null part is paid by material service, covector compression, and
packet-normal compression:

```math
|\Delta_Q\rho_{\rm sel}^{null}|^2\mathcal R(Q)
\lesssim
\mathcal S_Q^{mat}+R_Q^{legal}.
```

### Boundary-flat pressure-Hodge source

The boundary-flat source is classified before boundary observability is used.
If it is hidden-potential/gauge material, then

```math
A_{\rm sel}(f_Q^{gauge})=0.
```

If it is genuinely selected, then

```math
A_{\rm sel}(f_Q^{selected})
\lesssim
\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}.
```

### Pure shrinking / reselection

Pure shrinking and reselection are not external escape routes. They are the
label-motion part of the same selected-density martingale. They must be paid by
selector entropy, tie-gap/order-lock, material service, or legal exit:

```math
|\Delta_Q^{lab}\rho_{\rm sel}|^2\mathcal R(Q)
\lesssim
{\rm Ent}_Q^{label}
+{\rm Gap}_Q^{order}
+\mathcal S_Q^{mat}
+R_Q^{legal}.
```

This is where the soft-selector and selector-correct Hilbert/BMO notes belong.
They are not separate producers; they are coordinate forms of the same
selected-density entropy bound.

## 5. How this absorbs the older branch labels

The previous live split

```text
record/return
or
reset/overrun
```

is still meaningful, but it is a proof mechanism inside the martingale theorem.

Fixed stopped-core reuse is the record/return side of the martingale jump:

```text
PrimitivePLSSignedChannelDecomposition.A
+ StoppedPotentialRecordAverageBound.A
+ StoppedNegativeScaleReturnCharge.A.
```

Shrinking fresh reset is the label-motion / reset-overrun side:

```text
FreshSameCarrierIdentity.A
+ FreshSelectedCoefficientOverrunPayment.A,
```

or equivalently

```text
CriticalWeightedParentChildResetCarleson.A
/ LogScaleResetDerivativeCarrierBound.A.
```

Both are now subordinate to one governing theorem:

```text
SelectedDensityMartingaleSquareFunctionCarleson.A.
```

## 6. Closure relay

If the square-function theorem holds, then standard martingale good-lambda /
John--Nirenberg / reverse-Holder machinery gives selected-density uniform
integrability:

```math
\rho_{\rm sel}\in L^{1+\varepsilon}(d\mathcal R).
```

That excludes the critical half-tail and yields

```math
\sum_Q A(Q)<\infty.
```

The already verified downstream relay is:

```math
\sum_Q A(Q)<\infty
\Longrightarrow
\int d[\log(1+\mathcal P_N^{mat})]_+<\infty
\Longrightarrow
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{restart past }T^*.
```

So the Gold proof of smoothness now has this shape:

```text
finite initial data
-> finite root ledgers
-> selected-density martingale square-function / entropy Carleson
-> finite selected first-ratio action
-> finite full same-material clock
-> H^s continuation
-> no finite-time blowup.
```

## 7. Current exact open proof work

The source-origin normal form supplies the local classification:

```text
invisible source = unselected, or selected-but-paid.
```

The open theorem is to turn that packet classification into the martingale
increment bound on the retained material tree:

```math
|\Delta_Q\rho_{\rm sel}|^2\mathcal R(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal},
```

and then prove that the right side is Carleson from the original material
history. That is the current leading edge.
