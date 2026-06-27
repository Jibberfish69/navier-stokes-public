---
theorem_id: forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627
status: selected-scale-survivor-reduced-to-record-return-affine-quotient-kill
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected-scale native reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - CriticalFreshSourceTentCarleson.A
  - SelectedScaleNativeReserveAtom.A
  - LogScaleResetDerivativeCarrierBound.A
  - MovingLowHighInterfaceLowerEdge.A
  - PrimitivePLSNoFreeUpcrossing.A
refined_hinge:
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  - StoppedPrimitivePLSRecordReturnDescent.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeScaleReturnCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-native-reserve-atom-joint-interface-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-lowhigh-interface-lower-edge-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
subagent_inputs:
  - Lorentz: DER alone leaves the affine quotient and still admits the critical half-tail.
  - Cicero: only top-strain/frame and log-scale reset are selected-scale candidates; the other channels are support/raw/circular.
  - Dirac: raw fresh orthogonal half-tail passes all raw tests and fails exactly at the selected critical sum.
---

# DER/AQK moving low-high record-return synthesis

The better idea is not another raw fresh-source atom.  Raw fresh Hilbert mass can
stay square summable while the selected first-ratio sum diverges.  The selected
weight has to be forced to appear in the original material history before the
future selected tail is named.

The current survivor is the same object in two languages:

```math
\mathcal V_\kappa \widetilde Z^{fresh}
=
(I-P_w)\mathcal V_\kappa \widetilde Z^{fresh}
+
P_w\mathcal V_\kappa \widetilde Z^{fresh}.
\tag{1}
```

The first term is the exact log-scale derivative part.  The second term is the
persistent affine quotient

```math
c_F^{fresh}
=
A_\kappa M_0^{fresh}+B_\kappa M_1^{fresh}.
\tag{2}
```

In the interface language, the same survivor is the one-way positive growth of
the moving low-high pressure-stress / cubic-collar primitive driver.  The channel
audit has already collapsed Hodge/projector, Schur/collar, annular stress, and
frequency-native readings into that joint interface.  Those channels route the
source; they do not by themselves create the selected-scale lower edge.

## 1. The half-tail that must be killed

The raw counterprofile is the retained one-child fresh-reset chain with selected
weight `w_l ~ 2^l`, fresh orthogonal directions `e_l`, and

```math
F_l=
\left({2^{-l}\over l+1}\right)^{1/2}e_l.
\tag{3}
```

Then

```math
\sum_l\|F_l\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_l w_l\|F_l\|_{\mathcal H_{raw}}^2
=
\sum_l {1\over l+1}=\infty.
\tag{4}
```

This profile satisfies the already-paid support assumptions: spent-source
projection, strict ancestor nonreuse, fresh orthogonality, raw Bessel packing,
raw parent-reset finiteness, laminar one-child ancestry, and the paid
entrance/legal/nonlaminar/selector/silent-exchange/full-exchange/subheat/
recirculation removals.

So another raw attachment theorem cannot close Gold.  The first theorem that
kills `(3)` is a selected critical Carleson theorem:

```math
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{5}
```

The point of the DER/AQK route is to produce `(5)` from the original material
scale memory, not from the future selected tail.

## 2. Why DER alone is not enough

`LogScaleResetDerivativeCarrierBound.A` is only the DER half of the mechanism.
It pays the exact-in-scale residual in `(1)`.  It does not kill the persistent
quotient `(2)`.  The same half-tail survives Volterra/Hardy control unless the
affine quotient is also charged.

The sharper hinge is therefore:

```text
FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
```

or, split into producer inputs,

```text
FreshPotentialAverageKill.A
+
FreshNegativeScaleReturnCharge.A.
```

This is also the sharpened form of the moving low-high interface lower edge.
The interface lower edge has to see the same quotient survivor; otherwise the
selected native atom remains a future-tail restatement.

## 3. Record/return mechanism

The useful proof method is a stopped minimal-counterexample / monovariant
argument on the scale potential, not another positive-forward local estimate.
After a polar-compatible signed lift, write the stopped positive source as

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
\tag{6}
```

Here `Y_+` is the selected positive fresh or stopped primitive source, `Y` is
the signed scale-descent density before positive projection, and `Y_-` is the
negative return needed to reset the same scale potential.

On one stopped material ancestry line, positive variation satisfies

```math
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{7}
```

Equivalently, repeated selected positive births split into record births and
return births.  Summing along a minimal bad chain gives

```math
\sum_{m\le M} a_m
\lesssim
\operatorname{Rec}_M(\Psi)
+V_-^{return}(\Psi;I_M)
+R_M^{spill/legal}.
\tag{8}
```

Thus the half-tail has only two non-support escapes:

```math
\text{unbounded potential records/average}
\quad\text{or}\quad
\text{infinite negative scale return}.
\tag{9}
```

This is exactly the affine quotient boundary.  Pairing `(6)` with the affine
weight leaves the potential average and the negative-return quotient:

```math
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+{1\over |J|}\int_J\Psi(\sigma,t)d\sigma
+\mathcal C_\theta[Y_-]
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
\tag{10}
```

So the selected affine quotient is paid precisely by a bounded potential record
or by the negative return needed to reset the graph for another positive visit.

## 4. The smaller theorem to prove

The next nonduplicate theorem is:

```text
StoppedPrimitivePLSRecordReturnDescent.A
```

in the following exact form.  After spent-source projection, silent-source
normal form, paid selector/reselection, exchange, entrance/legal, subheat,
recirculation, and fixed-carrier support removals, prove the signed lift and the
record/return bound:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedPotentialRecordAverageBound.A
+
StoppedNegativeScaleReturnCharge.A.
```

Analytically, this means proving

```math
\int_0^T H_w(t)
\left\|{1\over |J|}\int_J\Psi(\sigma,t)d\sigma\right\|_{L_x^2}^2dt
+
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{11}
```

Together with the exact derivative absorption from `(1)`, `(11)` proves the
critical selected fresh-source tent Carleson estimate `(5)`.  In interface
language, it proves the bounded-below lower edge for the moving low-high
primitive driver because one-way selected upcrossings cannot continue without
creating records or paying same-material returns.

## 5. Failure modes checked

The note rejects the stale alternatives:

```text
raw fresh Hilbert atoms: half-tail survives;
DER alone: affine quotient survives;
Hodge/projector, Schur/collar, annular, frequency-native channels: support or raw routing only;
center energy and annular flux storage: leave one-way primitive PLS growth;
future selected-tail Bellman: circular for this producer burden;
stopped carrier BMO/reverse Holder: consumer after carrier production, not producer.
```

## Result

Gold should attack the selected-scale atom through record/return descent on the
stopped moving interface.  The selected weight is born when the positive fresh
source is forced into the affine quotient of the original material scale
potential.  Repeated positive selected births then require either bounded
potential records or paid negative returns; without that theorem, the orthogonal
half-tail `(3)` remains admissible.