---
theorem_id: forward-gold-capped-reference-testing-defect-reduction-20260627
status: superseded-support-corona-rebase-is-live-reference-closure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - MaterialAdjointAccretiveTestingData.A
  - SelectorThicknessDefectCarlesonFromOriginalHistory.A
  - TestingDefectChargeToInstalledLedgers.A
  - OriginalHistoryHilbertBMOProducer.A
refines:
  - StoppedAccretiveTestingData.A
  - SelectedGeneratorStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-thick-thin-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-accretive-reference-state-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-generator-storage-accretive-testing-equivalence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
effect: >-
  Support/countercheck only.  This capped-test route shows that inverse selector
  thickness is not an intrinsic accretive-reference obstruction, but the live
  repo route has already closed the thin reference branch by stopped-corona
  rebase.  The current live hinge is not this capped reference construction;
  it is the testing-defect reduction to StoppedFullExchangeActionCarleson.A plus
  PaidReselectionStoppingCarleson.A, further sharpened to the native-reserve
  birth/no-unpaid-high-ratio-upward-birth problem.
---

# Capped reference test and balanced testing-defect reduction

Supersession note: this file is support, not the current source anchor.  The
checked live route closes the selector-reference issue through stopped-corona
rebase and leaves the testing defect to full exchange plus paid reselection.
The current deeper target is `ForwardNativeReserveBirthPaysFullPLS.A`, reduced
to `NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A`.

The thick/thin reduction proves the normalized selector reference on the thick
branch.  On a thin branch it records the size loss

```math
Def_{\rm thin}(P)
=
\left(\theta_P^{-1}-\theta_\ast^{-1}\right)_+\mathcal R(P),
\qquad
\theta_P={\mathcal R(S_P)\over\mathcal R(P)}.
\tag{1}
```

That is a correct obstruction for the fully normalized selected indicator

```math
{\mathbf 1_{S_P}\over \theta_P}.
\tag{2}
```

But `(2)` is not the only possible accretive test.  The stopped \(Tb\) input
needs a parent-known accretive \(L^2\) test; it does not require all accretivity
to be carried by the selected indicator at full strength.

## 1. Capped parent-known test

Let

```math
\chi_P=\mathbf 1_{S_P},
\qquad
\theta_P=\mathcal R(S_P)/\mathcal R(P).
\tag{3}
```

Define the balanced selector contrast

```math
\psi_P={\chi_P\over\theta_P}-1.
\tag{4}
```

Then

```math
\langle \psi_P\rangle_P=0,
\qquad
\|\psi_P\|_{L^2(P,\mathcal R)}^2
=
(\theta_P^{-1}-1)\mathcal R(P).
\tag{5}
```

Choose the capped amplitude

```math
\alpha_P:=\min\{1,\theta_P^{1/2}\},
\tag{6}
```

and set

```math
b_P^{cap}:=1+\alpha_P\psi_P.
\tag{7}
```

This test is parent-known at the stopped packet level: it uses only the stopped
selected support inside \(P\), not descendant selected-tail readout.

It has exact mean

```math
\langle b_P^{cap}\rangle_P=1,
\tag{8}
```

and its size is uniformly controlled:

```math
\|b_P^{cap}\|_{L^2(P,\mathcal R)}^2
=
\mathcal R(P)+\alpha_P^2(\theta_P^{-1}-1)\mathcal R(P)
\le
2\mathcal R(P).
\tag{9}
```

Thus the reference-state part of the stopped testing data is closed without a
selector-thickness Carleson theorem:

```math
|\langle b_P^{cap}\rangle_P|\ge 1,
\qquad
\|b_P^{cap}\|_{L^2(P,\mathcal R)}^2\le 2\mathcal R(P).
\tag{10}
```

## 2. Where thinness moves

The price is that the testing output is now

```math
T_S(b_P^{cap}\nu^S)
=
T_S(\nu^S)
+\alpha_P T_S(\psi_P\nu^S).
\tag{11}
```

So selector thinning is not erased.  It is moved from the reference-state norm
to a mean-zero localization defect:

```math
\alpha_PT_S(\psi_P\nu^S).
\tag{12}
```

This is a better object.  The fully normalized selected indicator forces the
large scalar \(\theta_P^{-1}\) into the test norm before any cancellation can be
used.  The capped contrast keeps the test norm finite and asks the transform to
pay only the balanced discrepancy between selected and parent-flat sampling.

The remaining testing estimate is therefore:

```math
\sum_{P\subseteq P_0}
\|T_S(\nu^S)\|_{L^2(P,\mathcal R)}^2
+
\sum_{P\subseteq P_0}
\alpha_P^2\|T_S(\psi_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{13}
```

The first sum is the flat root-generator testing estimate.  The second sum is a
balanced selector-localization testing estimate.

## 3. Why the balanced contrast is the right hard object

The contrast \(\psi_P\) has zero parent mean.  A large value of
\(\theta_P^{-1}\) can occur only on the selected part, and it is multiplied by
\(\alpha_P\le\theta_P^{1/2}\).  In \(L^2(P,\mathcal R)\) this makes the contrast
order-one:

```math
\|\alpha_P\psi_P\|_{L^2(P,\mathcal R)}^2
\le
\mathcal R(P).
\tag{14}
```

So the defect can no longer be a pure thickness blow-up.  To keep producing
large testing output, the balanced contrast must fail cancellation across the
stopped material tree.  That failure has only original-history forms:

```text
selector/reselection drift,
covector or frame rotation,
material commutator persistence,
connection mismatch,
reset/order-lock loss,
legal or stop loss.
```

This matches the dynamic silent-source principle: a source may be invisible at a
frozen time, but selected persistence under material transport has to spend
commutator, connection, or service cost.

## 4. Support theorem pair, superseded as live route

This pair is a useful countercheck on thickness circularity, but it is no
longer the live route after stopped-corona rebase.  In this support coordinate,
the stopped testing theorem would be attacked through:

```text
FlatRootGeneratorTestingCarleson.A
```

and

```text
BalancedSelectorContrastTestingCarleson.A.
```

The first theorem is:

```math
\sum_{P\subseteq P_0}
\|T_S(\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{15}
```

The second theorem is:

```math
\sum_{P\subseteq P_0}
\alpha_P^2
\|T_S(\psi_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{16}
```

Equivalently, `(16)` may be proved by charging each nonzero contrast to the
installed original-history ledgers:

```math
B_{\rm Schur}
+E_{\rm top\text{-}ex}
+S_{\rm material}
+Reset
+Stop
+R_{\rm legal}.
\tag{17}
```

The point is that `SelectorThicknessDefectCarlesonFromOriginalHistory.A` is no
longer the cleanest live theorem.  Selector thickness was an artifact of using
the uncapped selected indicator as the reference test.  The intrinsic object is
the balanced contrast testing defect.

## 5. Direct proof attempt for the contrast

A direct martingale proof would decompose

```math
\alpha_P\psi_P\nu^S
=
dM_P^{sel}
+dA_P^{pred}
+dR_P^{legal}
+dStop_P,
\tag{18}
```

where \(dM_P^{sel}\) is the parent-mean-zero selected contrast and
\(dA_P^{pred}\) is predictable drift from material transport of the selected
set.  If

```math
\sum_{P\subseteq P_0}
\|T_S(dM_P^{sel})\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P_0)
\tag{19}
```

by stopped martingale/Bessel orthogonality, then the remaining predictable part
must pay

```math
\sum_{P\subseteq P_0}
\|T_S(dA_P^{pred})\|_{L^2(P,\mathcal R)}^2
\le
C(E_{\rm top\text{-}ex}+S_{\rm material}+Reset+Stop+R_{\rm legal})(P_0).
\tag{20}
```

Equation `(20)` is exactly where the proof is still open.  It is the dynamic
material persistence cost for the selected set.  It must be proved from
original-history commutator, connection, selector-drift, and reset ledgers,
without using the produced root clock or downstream selected-density square
function.

## 6. Result as support

The capped reference test would close the accretive reference-state obstruction:

```text
SelectorReferenceStateFromOriginalHistory.A
```

in the stopped \(Tb\) hypotheses, because `(8)`--`(10)` give accretivity and
size uniformly for every stopped packet.

In this coordinate, the remaining theorem would be:

```text
FlatRootGeneratorTestingCarleson.A
+
BalancedSelectorContrastTestingCarleson.A
  -> MaterialAdjointAccretiveTestingData.A.
```

This is still partial and superseded as the live route.  It does not prove Gold.
The current checked route replaces the thin-selector wall through stopped-corona
rebase and pushes the remaining burden to full exchange/reselection, then to
the forward-native reserve birth problem.
