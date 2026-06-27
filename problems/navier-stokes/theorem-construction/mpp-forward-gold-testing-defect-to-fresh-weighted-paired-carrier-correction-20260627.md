---
theorem_id: forward-gold-testing-defect-to-fresh-weighted-paired-carrier-correction-20260627
status: live-edge-corrected-to-fresh-weighted-paired-carrier
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - CriticalFreshSourceTentCarleson.A
  - FreshNativeRootUpperBound.A
  - StoppedFullExchangeActionCarleson.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-testing-defect-ledger-charge-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-readout-root-bound-merge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
effect: >-
  Corrects the previous testing-defect live target. Paid reselection/reset is
  not an independent co-producer beside full exchange; it is conditional support
  once the stopped full-exchange/root reserve is proved. The active Gold hinge
  is the fresh weighted paired-carrier/native-root reserve bound.
---

# Testing defect to fresh weighted paired carrier

The testing-defect reduction wrote the remaining pair as

```text
StoppedFullExchangeActionCarleson.A
+
PaidReselectionStoppingCarleson.A.
```

That split is still too wide.  The selector readout/root-bound merge audit
already shows that paid reselection is not an independent producer after the
full exchange/root reserve is included.  It is a consumer-side support term:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\right)
+R_{\rm legal}(P).
\tag{1}
```

So the only proof-bearing root estimate is

```math
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\right)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

This is `StoppedFullExchangeActionCarleson.A`, equivalently
`SelectedCompressionRootReserve.A`.

## 1. Current reduction chain

The checked reduction is:

```text
FreshSourceWeightedPairedCarrierBound.A
  -> CriticalFreshSourceTentCarleson.A
  -> FreshNativeRootUpperBound.A
  -> StoppedFullExchangeActionCarleson.A
  -> TestingDefectChargeToInstalledLedgers.A
  -> MaterialAdjointAccretiveTestingData.A
  -> SelectedGeneratorStorageCoercivity.A
  -> OriginalLedgerRootDefectTightness.A
  -> paid root geometry
  -> stopped routed participation current.
```

Paid reselection/reset enters after `StoppedFullExchangeActionCarleson.A` as a
support consequence of `(1)`, not as a sibling producer.

## 2. The exact live theorem

The fresh-native root upper-bound test shows that raw fresh Bessel packing is
insufficient:

```math
\sum_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty
\quad\not\Rightarrow\quad
\sum_Qw(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty.
\tag{3}
```

The missing theorem is the weighted paired-carrier estimate:

```text
FreshSourceWeightedPairedCarrierBound.A
```

For every retained stopped root \(P\), after spent-source projection,
silent-source normal form, selector/corona rebase, and stopped exchange
routing, the genuinely fresh source increments satisfy

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{4}
```

The weight \(w(Q)\) is the selected first-ratio / heat-scale weight.  It must be
produced from original same-material history, not fitted from the future
selected tail.

Equivalently, in paired lower-prefix / upper-active form:

```math
\int
a(r,t)
\left(
\int_0^rK(\ell,r)z(\ell,t)\,{d\ell\over\ell}
\right)^2
{dr\over r}\,dt
\le
C_N(u_0).
\tag{5}
```

## 3. Consequence for authority surfaces

The live target should be read as `(4)`/`(5)`.  Older formulations that keep

```text
PaidReselectionStoppingCarleson.A
```

beside

```text
StoppedFullExchangeActionCarleson.A
```

are stale as target surfaces.  They are still valid support statements only
when they point back to `(2)`.

## 4. Result

Gold is not closed.  The live wall is now one theorem:

```text
FreshSourceWeightedPairedCarrierBound.A.
```

Closing it gives the fresh critical source tent Carleson estimate, then the
fresh native root upper bound, then full stopped exchange/root reserve, then
the stopped testing/Hilbert-BMO producer, then the selected-density half-tail
break.
