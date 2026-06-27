---
theorem_id: forward-gold-stopped-routed-source-innovation-testing-20260627
status: conditional-reduction-accretive-testing-data-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected-density stopped BMO producer
attacks_hinge:
  - StoppedAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
  - StoppedSelectorTestingCarleson.A
  - OriginalHistorySelectedAmplificationBV.A
refined_hinge:
  - StoppedRoutedSourceInnovationTesting.A
  - BranchPaidStoppedTestingDefects.A
source_surfaces:
  - system/meta/research-os/proof-relay/state.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-testing-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bmo-producer-testing-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-amplification-bv-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-amplification-bv-construction-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-balance-law-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-stopped-pls-evolution-identity-not-installed-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
---

# Stopped routed-source innovation testing

## 1. Current hinge

The live relay hinge is now:

```text
StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A.
```

The required output is not just a formal lift

```math
Z^S=T_S\nu^S.
```

That formula only names a candidate carrier.  The proof-bearing object is
stopped testing data for the routed original-history source.  For every stopped
same-material selector region \(S\), the transform \(T_S\) must satisfy local
testing and Carleson packing on retained subpackets:

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\operatorname{Def}_{test}(P)
\operatorname{Mean}_{test}(P)
\le
C\mathcal R(P)+C R_{legal}(P)+C Stop(P).
\tag{1}
```

The existing notes verify that packetwise selected-source payment is not enough
for `(1)`: it gives size, but not cancellation, accretive testing functions, or
stopped BMO.

## 2. Method pivot

The useful proof method is not another local estimate.  The target is
scale-indexed and stopped-tree indexed, so the right form is a martingale
difference / stopped \(Tb\) construction.

Instead of asking whether the total routed source \(\nu^S\) is small, decompose
it into original-history innovations:

```math
\nu^S
=
\sum_{Q\subset S}d\nu_Q^S
+\nu_{stop/legal}^S.
\tag{2}
```

Each \(d\nu_Q^S\) must be constructed before scalar selected-tail readout, from
the already-routed source channels:

```math
d\nu_Q^S
=
d\nu_{vis,Q}^S
+d\nu_{sil/ex,Q}^S
+d\nu_{return,Q}^S
+d\nu_{reset,Q}^S
+d\nu_{legal,Q}^S.
\tag{3}
```

The cancellation requirement is then local and test-relative:

```math
\mathbb E(d\nu_Q^S\mid \mathcal F_{par(Q)}^S)=0
\quad\text{or equivalently}\quad
\langle d\nu_Q^S,b_{par(Q)}\rangle=0,
\tag{4}
```

with any failed mean charged to root/stop/legal terms.  This is the missing
information not supplied by the local source-origin payment.

## 3. Proposed theorem

```text
StoppedRoutedSourceInnovationTesting.A
```

For each stopped same-material selector region \(S\), the routed selected source
admits a decomposition `(2)`--`(3)` and accretive tests \(b_P\) such that:

1. each retained innovation \(d\nu_Q^S\) is adapted to the stopped filtration and
   satisfies the cancellation law `(4)` up to stop/legal mean defects;
2. the stopped transform has local testing:

```math
\sum_{Q\subset P}
\|T_S d\nu_Q^S\|_{L^2(Q,\mathcal R)}^2
\|\nu_{stop/legal}^S\|_{test(P)}^2
\le
C(u_0)\mathcal R(P)
+C R_{legal}(P)
+C Stop(P)
+C\operatorname{Def}_{branch}(P);
\tag{5}
```

3. the branch defect is exactly a sum of fixed-core return and strict-reset
   defects:

```math
\operatorname{Def}_{branch}(P)
\le
C\operatorname{RetBV}(P)
+C\operatorname{ResetBV}(P)
+C R_{legal}(P).
\tag{6}
```

This theorem would supply the accretive testing data needed by
`OriginalHistoryHilbertBMOProducer.A` without defining \(Z^S\) from the future
selected tail.

## 4. Branch-payment link

The branch-payment notes are still open.  They are not BMO producers by
themselves.

The fixed stopped-core branch still needs:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A.
```

It must prove a material balance law for the primitive stopped PLS record, so
negative return variation is an original-data service event rather than
unpaid scalar oscillation.

The strict reset branch still needs:

```text
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A.
```

It must prove that parent-child reset overruns have finite critical weighted
BV/Carleson norm from original scale/reset derivative structure, not from the
future selected tail.

The non-overclaiming link theorem is:

```text
BranchPaidStoppedTestingDefects.A
```

If `StoppedRoutedSourceInnovationTesting.A` proves `(5)`--`(6)`, and if the two
branch payments prove

```math
\operatorname{RetBV}(P)+\operatorname{ResetBV}(P)
\le
C(u_0)\mathcal R(P)+C R_{legal}(P)+C Stop(P),
\tag{7}
```

then the stopped testing defects pack:

```math
\sum_{P\subset P_0}\operatorname{Def}_{test}(P)
\le
C(u_0)\mathcal R(P_0)+C R_{legal}(P_0)+C Stop(P_0).
\tag{8}
```

This would discharge `StoppedSelectorTestingCarleson.A`.

## 5. Consequence

With `(8)`, stopped \(Tb\) / martingale-transform theory gives the stopped BMO
carrier:

```math
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{S\subseteq P'}\sum_{Q\subseteq S}
\left(\|\Delta_Q Z^S\|^2+|e_Q^S|^2\right)\mathcal R(Q)
+Stop(P')
\right]
\le
C(u_0)+{R_{legal}(P')\over\mathcal R(P')}.
\tag{9}
```

Then the already-installed martingale consumer gives
`OriginalHistorySelectedLogAmplificationCarleson.A`,
`SelectedDensityMartingaleSquareFunctionCarleson.A`, and the reverse-Holder
selected-density gain.

## 6. Result

This note does not close Gold.  It narrows the live producer to the first object
that is smaller than the current wall:

```text
StoppedRoutedSourceInnovationTesting.A
```

plus the defect-payment bridge:

```text
BranchPaidStoppedTestingDefects.A.
```

The remaining hard work is now precise.  Prove the routed source is a stopped
innovation measure with accretive tests from original history; then prove that
the only testing defects are exactly the return and reset BV defects already
isolated by the branch-payment notes.
