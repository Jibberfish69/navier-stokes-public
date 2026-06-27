---
theorem_id: forward-gold-selector-readout-root-bound-merge-audit-20260627
status: selector-readout-and-reselection-merge-into-full-exchange-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped Hilbert BMO producer
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
  - SelectorCarrierNondegeneracyOrPaidReselection.A
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedFullExchangeActionCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-hilbert-bmo-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-direct-production-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-full-exchange-native-reserve-pivot-20260627.md
---

# Selector readout / root-bound merge audit

This note audits the current split

```text
SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
+
SelectorCarrierNondegeneracyOrPaidReselection.A
```

against the later stopped selector and exchange notes.

The split is useful for the consumer theorem, but it is not two independent
Gold producers.

## 1. Consumer structure

On a stopped interval \(S\), the fixed-carrier readout has the form

```math
\log r_Q
=
\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^S,
\qquad
Z^S=Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex}.
\tag{1}
```

The stochastic-exponential BMO lemma is a consumer.  It applies once the stopped
tree has

```math
\sum_{S\subseteq P}\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
+
\sum_{S\subseteq P}\sum_{Q\subseteq S}
|e_Q^S|^2\mathcal R(Q)
+
\operatorname{Stop}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

Per stopped interval, Hilbert geometry gives only

```math
\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
\le
C\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
+R_{\rm legal}(S).
\tag{3}
```

So the nonconsumer work is the stopped-root summation plus paid stopping.

## 2. Selector readout status

The finite-menu and fixed-carrier branches are closed: on the retained fixed
subtail, the label increment vanishes except for declared legal/collar defects.

The already-paid selector/cutoff/projection/rung/order-lock branch is also
closed: its contribution is part of \(e_Q^S\) and is paid by the visible
selector-collar, order-lock, Body-defect, or legal ledgers.

The continuum moving-selector branch is not a separate producer after
`SelectorStratumCrossingVariationBound.A`.  The unpaid stopping/reselection
measure satisfies

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\bigl(\Omega_S^{strain/ex}+D_S^{vis/rad}\bigr)
+R_{\rm legal}(P).
\tag{4}
```

Thus selector readout and reselection reduce to the full stopped exchange
action.  They do not remain an independent wall once that action is included.

## 3. Root-bound status

The original-history root square-function bound is still not proved:

```math
\sum_{S\subseteq P}
\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{5}
```

The invalid shortcut is to choose \(Z^S\) from the future selected descendant
tail.  That makes `(5)` the desired selected reserve theorem in Hilbert
coordinates.

The stopped source-carrier production test reduces `(5)` to the stopped
parent-drop / selected action trace coercivity estimate

```math
\sum_{S'\in ch_{\rm stop}(S)} A(S')
\le
\langle U_S,\mathsf S_S^{stop}U_S\rangle
+R_{\rm stop}(S)+R_{\rm legal}(S),
\tag{6}
```

and then to the selected compression/root reserve

```math
\sum_{Q\in\mathcal T(P)}
\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{7}
```

## 4. Merged live theorem

Combining `(4)` with `(5)` shows the current split has one remaining
proof-bearing producer:

```text
StoppedFullExchangeActionCarleson.A
```

equivalently

```text
SelectedCompressionRootReserve.A
```

or the forward-native reserve birth theorem

```text
ForwardNativeReserveBirthPaysFullPLS.A.
```

The live estimate is

```math
\sum_{S\subseteq P}
\bigl(\Omega_S^{strain/ex}+D_S^{vis/rad}\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{8}
```

Once `(8)` is proved, the selector stopping and readout errors are paid, the
stopped Hilbert square-function bound follows through the visible/silent/exchange
carrier, stochastic-exponential BMO gives the reverse-Holder gain, and the
strict half-barrier is broken.

## 5. Result

The selector readout branch is conditional, but it is not an independent
remaining wall.  The exact Gold live edge is the full stopped exchange/root
reserve:

```text
prove that every retained selected high-ratio birth is lower-band carry,
visible same-history birth, or paid/legal, with finite original-history root
reserve.
```

Stale formulations that leave `SelectorCarrierNondegeneracyOrPaidReselection.A`
beside the root-bound theorem should be read as consumer-side bookkeeping unless
they explicitly point back to `(8)`.
