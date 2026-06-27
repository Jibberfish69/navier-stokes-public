---
theorem_id: forward-gold-canonical-source-promotion-contract-stopped-routed-current-20260627
status: promotion-contract-open-canonical-surfaces-stale
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed-current square-packing
attacks_hinge:
  - StoppedRoutedCurrentRoutePromotionCertificate.A
  - StoppedRoutedCurrentRouteCertification.A
  - GlobalSamePacketFullClockFromOriginalData.A
source_checks:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-square-packing-from-derivative-bv-assembly-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-energy-subledger-full-clock-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-log-amplification-identity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-packing-to-selected-first-ratio-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-route-certification-audit-20260627.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-creation.yaml
  - problems/navier-stokes/promotion-verdict.yaml
result: the stopped routed-current proof spine is locally assembled, but the
  canonical generated surfaces still expose the older Gold frontier. The next
  non-estimate work unit is source-graph/manuscript promotion with an explicit
  noncircularity checklist for the three inputs.
---

# Canonical source-promotion contract for the stopped routed-current route

## 1. Checked state

The local theorem-construction chain now contains the stopped routed-current
route:

```text
StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
  + OriginalHistoryRoutedCurrentEnergyFinite.A
  + SelectorCorrectLogAmplificationIdentity.A
  -> ParentDropFullClockRelayFromSquarePacking.A
  -> GlobalSamePacketFullClockFromOriginalData.A.
```

The source checks show the three inputs have local notes:

1. `StoppedRoutedCurrentSquarePackingFromDerivativeBV.A` is assembled from the
   fixed stopped-core derivative-BV branch and strict-reset active-weight
   escape/rigidity branch.
2. `OriginalHistoryRoutedCurrentEnergyFinite.A` is reduced to energy-stable
   stopped routing as a subledger of the full material clock.
3. `SelectorCorrectLogAmplificationIdentity.A` is closed under the finite
   parent-known stopped-score selected-density model.

The relay note then derives finite selected first-ratio action, parent drop,
finite full same-material clock, and the installed \(H^s\) continuation relay.

## 2. Canonical surface mismatch

The canonical surfaces checked in this pass are stale relative to the local
route:

```text
source-frontier.yaml
theorem-creation.yaml
promotion-verdict.yaml
```

They still expose the older Gold frontier around
`ContinuationStrengthMaterialClockAtDepth.A` / the full material-clock endpoint
and do not list the stopped routed-current route labels as promoted proof-chain
inputs. The source graph therefore cannot yet certify the route, even though the
local notes contain a conditional proof spine.

This is a proof-theoretic promotion gap, not another analytic branch estimate.
The next work is to move the checked route into the canonical proof chain while
preserving the exact noncircularity conditions.

## 3. Promotion certificate required

The source graph/manuscript promotion should introduce:

```text
StoppedRoutedCurrentRoutePromotionCertificate.A
```

Statement:

The stopped routed-current route is a certified Gold proof-chain input only when
the canonical source graph records all four clauses below.

### Clause I: stopped square-packing

The source graph must cite

```text
StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
```

with the explicit structural hypothesis:

```text
finite parent-known stopped selector,
maximal first-exit reset witness intervals,
no future-tail selector fitting,
legal/stop/reselection/covector mismatch charged before selected readout.
```

This prevents the branch assembly from being read as a future-selected
square-function estimate.

### Clause II: original routed energy

The source graph must cite

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
```

through

```text
EnergyStableRoutedCurrentProjection.A
RoutedCurrentEnergySubledgerOfFullMaterialClock.A.
```

The routed density

```math
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
```

must be recorded as a bounded stopped projection of original full
material-history derivative/service data, not as selected action data
recovered after the child tail is known.

### Clause III: selector-correct log identity

The source graph must cite

```text
SelectorCorrectLogAmplificationIdentity.A
```

with selected density defined by the stopped score:

```math
\lambda_{sel}(Q)=s_R(Q)+r_Q^{legal}-\Psi_Q^{stop},
\qquad
s_R(Q)=\ell_R(J^S(Q)).
```

The promoted identity is:

```math
\Delta_Q\lambda_{sel}
=\ell_Q(\Delta_QJ^S)-\psi_Q+e_Q,
\qquad
\psi_Q\ge0,
```

with bounded readout and square-packable \(e_Q\). This must be installed before
the selected positive-part martingale estimate is invoked.

### Clause IV: parent-drop/full-clock relay

The source graph must cite

```text
ParentDropFullClockRelayFromSquarePacking.A
```

as a relay theorem:

```math
\text{square-packing}
+\text{finite original routed energy}
+\text{selector log identity}
\Longrightarrow
\sum_Q A(Q)<\infty
\Longrightarrow
\mathcal T_{full}(u;[0,T))<\infty
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty.
```

Legal and stop ledgers must remain explicit in this relay. They cannot be
absorbed into a generic "route closed" phrase.

## 4. Noncircularity veto

The promotion must fail if any one of these checks fails:

```text
1. the selector is future-fitted rather than finite, stopped, and parent-known;
2. the routed-current energy is defined from selected action rather than original history;
3. high active reset weight is used without first-exit derivative representation and bounded overlap;
4. selected log density is fitted after child readout rather than generated by a stopped score;
5. parent drop is invoked without the selected first-ratio square function;
6. the source graph says the route is fully certified while any of I--III remains local-only.
```

These are not stylistic cautions. They are the exact places where the local
route would become circular.

## 5. Result

The next concrete source-graph work unit is:

```text
Promote StoppedRoutedCurrentRoutePromotionCertificate.A
into source-frontier / theorem-creation / promotion surfaces, with clauses
I--IV and the six noncircularity vetoes above.
```

Until that promotion exists, the route is a strong local conditional proof
spine. After that promotion exists, the remaining proof-status question becomes
whether the promoted source graph and manuscript chain actually discharge every
legal/stop ledger and produce the final Clay-facing continuation contradiction.