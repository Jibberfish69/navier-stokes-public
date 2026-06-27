---
theorem_id: forward-gold-order-lock-selected-density-first-ratio-alignment-20260627
status: reduction-installed-order-lock-gap-is-selected-first-ratio-submeasure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / full-packet order-lock
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FullPacketOrderLockOrSelectorVariationPayment.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - AdjointSelectedCapacityGain.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-order-lock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/thread-trajectories/assess-stirling-for-ns-binomials.yaml
---

# Order-lock gap as the selected first-ratio submeasure

This note reconciles the latest selector-correct Hilbert route with the older
selected-capacity / first-ratio trajectory.

The order-lock gap is not a new fourth Gold wall.  After the finite-menu,
stabilized-selector, and already-paid label-defect cases are removed, the
unpaid order-lock gap is a submeasure of the same selected density whose
reverse-Holder / first-ratio gain is already the live Gold hinge.

## 1. Exact scalar position

For channel-first selection, the order-lock direct attempt writes

```math
n_m(s)=\langle N_m,\Phi_m\rangle
```

and

```math
b_m(s)
=
\langle P_m+V_m+T_m+I_m+L_m+S_m,\Phi_m\rangle
-cD_m^\nu(s).
```

The recombined full scalar is

```math
h_m(s)=n_m(s)+b_m(s).
```

The minimal gap between channel-first positive selection and full-packet
positive selection is

```math
\Delta_m^{ol}(s)
=
\left([n_m(s)]_+-[h_m(s)]_+\right)_+
=
\min\{[n_m(s)]_+,[-b_m(s)]_+\}.
\tag{1}
```

This proves the two pointwise facts needed here:

```math
0\le \Delta_m^{ol}(s)\le [n_m(s)]_+
\tag{2}
```

and

```math
[n_m(s)]_+\le [h_m(s)]_+ + \Delta_m^{ol}(s).
\tag{3}
```

Thus the gap is exactly the portion of the selected channel-first density that
is not admitted by full-scalar-first recombination.

## 2. Tree normalization

Let \(d\mathcal R\) be the retained material-tree reserve measure used in the
selected-density good-lambda note, and let \(f\) be the selected density:

```math
A(Q)=\int_Q f\,d\mathcal R.
\tag{4}
```

On each selected terminal packet, normalize the order-lock gap in the same
units and write

```math
A_{ol}(Q)=\int_Q f_{ol}\,d\mathcal R,
\qquad
f_{ol}\simeq \Delta^{ol}
\tag{5}
```

up to already-declared legal, selector, collar, and packet-synchronization
residuals.  By `(2)`,

```math
0\le f_{ol}\le C f + f_{\rm legal}.
\tag{6}
```

Consequently, every selected-density improvement strong enough to beat the
critical half-tail pays the order-lock gap:

```math
f\in RH_{1+\varepsilon}(d\mathcal R)
\quad\Longrightarrow\quad
f_{ol}\in L^{1+\varepsilon}(d\mathcal R)+R_{\rm legal},
\tag{7}
```

and the martingale square-function / first-ratio form gives

```math
\sum_Q A_{ol}(Q)
\le
C\sum_Q A(Q)+R_{\rm legal}.
\tag{8}
```

So a proof of `SelectedDensityMartingaleSquareFunctionCarleson.A`,
`SelectedDensityUniformIntegrability.A`, or the full selected first-ratio
action bound automatically discharges the order-lock payment consumer.

## 3. Converse pressure

The sharp channel-first countermodel is

```math
n_m(s)=a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
b_m(s)=-n_m(s),
\qquad
\tau_m\downarrow0.
\tag{9}
```

Then \(h_m=0\), while

```math
\Delta_m^{ol}(s)=[n_m(s)]_+
=a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s).
\tag{10}
```

This has finite raw mass and no endpoint-uniform-integrable gain:

```math
\|\Delta_m^{ol}\|_{L^1}=a,
\qquad
\|\Delta_m^{ol}\|_{L^q}^q=a^q\tau_m^{1-q}\to\infty
\quad(q>1).
\tag{11}
```

In retained-tree language, `(9)` is the same critical half-tail profile:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
\tag{12}
```

Therefore an unpaid order-lock gap is not an independent selector defect.  It
is the selected-density half-tail written in full-packet admission variables.

## 4. Relation to the selector-correct Hilbert lift

The fixed-carrier visible/silent/exchange Hilbert lift remains a valid
production route for the selected-density improvement.  Its current proved
consumer is:

```math
\text{fixed-carrier Hilbert square function}
+\text{paid selector/order-lock error}
\Longrightarrow
f\in RH_{1+\varepsilon}(d\mathcal R).
\tag{13}
```

The martingale step in `(13)` is now recorded as standard.  What remains is the
PDE production of the square function and paid error from the original
same-material history.

This note prevents the relay from treating the paid error in `(13)` as a
separate Gold route after the selected-density theorem is named directly.  The
two readings are:

```text
Hilbert lift:
  produce selected-density reverse Holder by fixed-carrier Hilbert geometry
  plus paid order-lock/selector error.

Selected-capacity / first-ratio:
  produce selected-density reverse Holder or the equivalent strict first-ratio
  action bound directly.
```

They are not duplicate proof obligations.  They are two coordinate systems for
the same selected-density gain.

## 5. Alignment with the extremal bad-tree reduction

The trajectory file already reduces failure of the monotone adjoint selected
capacity gain, with constant test \(\alpha\equiv1\), to failure of the full
selected first-ratio action:

```math
\sum_{Q\in\mathcal T}A(Q)=\infty.
\tag{14}
```

The extremal bad-tree reduction then gives exactly two surviving branches:

```math
\text{reused material ancestry core divergence}
\quad\text{or}\quad
\text{shrinking selected core escape}.
\tag{15}
```

Since \(A_{ol}(Q)\le C A(Q)+R_{\rm legal}(Q)\), an unpaid infinite order-lock
tail must pass through the same two branches.  It cannot be solved by a
selector-only metric after `(1)`; it needs either

```text
RepeatedCorePositiveVariationRootBound.A
```

or

```text
ScaleInvariantSelectedCapacityNoEscape.A
```

unless one proves the selected-density square-function / reverse-Holder theorem
directly.

## 6. Result

The nonduplicate Gold hinge should now be read as:

```text
Produce a selected-density reverse-Holder / first-ratio gain from the original
same-material history.
```

Equivalent current production surfaces are:

```text
FixedCarrierVisibleSilentHilbertLift.A
+ FullPacketOrderLockOrSelectorVariationPayment.A
```

or

```text
SelectedDensityMartingaleSquareFunctionCarleson.A
```

or

```text
AdjointSelectedCapacityGain.A
```

with its two live branch theorems:

```text
RepeatedCorePositiveVariationRootBound.A
ScaleInvariantSelectedCapacityNoEscape.A
```

This note does not prove the selected-density gain.  It proves that the
order-lock gap is already inside that gain: any selected-density
reverse-Holder, square-function, or full first-ratio proof pays it, and any
unpaid order-lock gap is the same critical half-tail obstruction in
full-packet-admission coordinates.
