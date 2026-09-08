---
theorem_id: forward-gold-stopped-routed-current-route-certification-audit-20260627
status: routed-current-route-support-native-reserve-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - ScaleNativeActiveParticipationNativeReserveHinge.A
  - StoppedRoutedCurrentRouteCertification.A
  - StoppedRoutedCurrentSquarePacking.A
  - ParentDrop.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Stopped routed-current route certification audit

## 1. Purpose

The local theorem-work chain now contains a conditional route from stopped routed-current square-packing to parent-drop/full-clock continuation.  This audit checks what is actually installed and what still needs source-graph/manuscript certification.

The route is not yet a final proof certificate.  It has two conditional relay
inputs plus one support ledger that cannot be promoted circularly:

```text
I.   StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
II.  Routed-current reset/projection support produced noncircularly before selected readout
III. SelectorCorrectLogAmplificationIdentity.A
```

and one relay:

```text
ParentDropFullClockRelayFromSquarePacking.A
```

The missing producer is not `OriginalHistoryRoutedCurrentEnergyFinite.A` as a
downstream subledger.  The current Gold producer is
`NativeBirthChargePacking.A / SelectedGeneratorStorageCoercivity.A`, which pays
pure scale-native zoom births.

## 2. Input I: stopped routed-current square-packing

The local branch assembly was recorded in:

```text
mpp-forward-gold-stopped-routed-current-square-packing-from-derivative-bv-assembly-20260627.md
```

It proves conditionally that

```math
\sum_{Q\subseteq P}\|\Delta_QJ^S\|^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P)
\tag{1}
```

from two branch gates:

```text
fixed stopped-core derivative BV
strict reset active-weight escape/rigidity
```

The fixed-core branch is supplied by the signed scale-potential lift:

```math
P_R=\Gamma_RZ^S,
\qquad
\partial_\sigma P_R=\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S.
```

The reset branch is supplied by:

```text
announceable active-weight Cauchy reduction
announceable reset derivative representation
reset witness interval bounded overlap
zero-cost selected reset rigidity after tightness
no-free high-weight tube escape charge
```

Certification status: locally assembled, but source-graph installation must state explicitly that the stopped selector is finite, parent-known, first-exit based, and excludes future tail selection.

## 3. Input II: finite original routed energy

The routed energy is

```math
\mathcal E_{route}(P)
=\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right).
\tag{2}
```

The local energy-stability note proves conditional domination under finite stopped routing:

```math
\mathcal E_{route}(P)
\le C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{3}
```

Certification status: not yet globally certified unless the source graph already installs the full material clock ledger

```math
\int_{\operatorname{Hist}(P)}\Theta_{full}\le C(u_0)+CR_{legal}(P)+CStop(P)
\tag{4}
```

and explicitly identifies the routed current as an energy-stable stopped projection of the original material derivative/service data.

The exact certification blocker is:

```text
RoutedCurrentEnergySubledgerOfFullMaterialClock.A / GaugeReducedAnnularDerivativeDensityControl.A
```

as a source-graph theorem, not just a local note.

## 4. Input III: selector-correct log-amplification identity

The identity note records:

```math
\Delta_Q\lambda_{sel}
=\ell_Q(\Delta_QJ^S)-\psi_Q+e_Q,
\qquad \psi_Q\ge0.
\tag{5}
```

with bounded readout and error packing:

```math
\sum_{Q\subset P}|e_Q|^2\mathcal R(Q)
\le CR_{legal}(P)+CStop(P).
\tag{6}
```

Certification status: locally verified under the stopped finite-score selector model.  The source graph/manuscript must certify that selected density is actually defined by the stopped score

```math
\lambda_{sel}(Q)=s_R(Q)+r_Q^{legal}-\Psi_Q^{stop},
\qquad s_R(Q)=\ell_R(J^S(Q)),
\tag{7}
```

not fitted after reading the future selected tail.

## 5. Relay theorem

The parent-drop/full-clock relay note records:

```math
\text{(1)}+\text{(3)}+\text{(5)}
\Longrightarrow
\sum_QA(Q)<\infty.
\tag{8}
```

Then the installed continuation criterion gives

```math
\sum_QA(Q)<\infty
\Longrightarrow
\mathcal T_{full}(u;[0,T))<\infty
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty.
\tag{9}
```

Certification status: valid as a relay, conditional on the three inputs being promoted noncircularly.

## 6. Audit verdict

The local route is assembled, but certification remains open.

The exact remaining certification tasks are:

```text
1. Promote StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
   with explicit finite stopped selector / first-exit / no-future-tail hypotheses.

2. Do not promote OriginalHistoryRoutedCurrentEnergyFinite.A through downstream
   full-clock/subledger language.  Treat routed-current energy as support for
   reset/projection/current-motion ledgers unless it is produced noncircularly
   before selected readout.

3. Promote SelectorCorrectLogAmplificationIdentity.A
   by defining selected density through stopped scores and recording legal/stop errors.

4. Insert ParentDropFullClockRelayFromSquarePacking.A
   into the manuscript theorem chain with every legal/stop ledger explicit.
```

Until these are promoted and audited in the source graph/manuscript, the route is a strong conditional proof spine, not a final Clay-level proof.

## 7. Next hinge

The next concrete work unit is not another local branch estimate.  It is a source-graph/manuscript promotion task:

```text
Promote the stopped routed-current square-packing route into the theorem chain and audit the three required inputs for noncircularity.
```
