---
theorem_id: forward-gold-stopped-full-exchange-native-reserve-pivot-20260627
status: stopped-full-exchange-reduced-to-forward-native-compression-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped exchange / full clock
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedFullExchangeActionCarleson.A
  - SelectedCompressionRootReserve.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - GlobalSamePacketFullClockFromOriginalData.A
uses:
  - SelectorStratumCrossingVariationBound.A
  - StoppedExchangeReselectionCompensator.A
  - FullSamePacketPLSNoRecirculationEquivalence.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-collar-normal-compression-capacity-lower-bound-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-reserve-minimal-bad-chain-compactness-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pls-no-recirculation-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mcp-availableparticipationentropyconstruction-a-globalsamepacketfullclockfromoriginaldata-a-a85c6d09fe.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-fullmovingsamematerialservicecarrierthetanl1-a-globalsamepacketfullclockfromoriginaldata-a-cee9b9b065.md
---

# Stopped full exchange native-reserve pivot

The selector-stratum side is no longer the best Gold target.  The checked BV
closure absorbs unpaid reselection into the same stopped exchange action:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
+R_{\rm legal}(P).
\tag{1}
```

So the live stopped Bellman burden is the original-history action estimate:

```math
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

This is `StoppedFullExchangeActionCarleson.A`.

## 1. Better object

The better object is not another crossing theorem, a standalone silent-bubble
Carleson theorem, or a local commutator primitive.  The better object is the
root reserve that pays selected compression service on the original material
history.

The compression audit has already separated the local lower bound from the
missing theorem.  On a retained selected unit core \(Q\), pressure-visible/null
routing gives a branch-local lower bound

```math
A(Q)
\le
C\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+R_{\rm legal}(Q)
\Bigr).
\tag{3}
```

The missing theorem is the upper root reserve on the stopped laminar tree
\(\mathcal T(P)\):

```math
\sum_{Q\in\mathcal T(P)}
\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{4}
```

This is `SelectedCompressionRootReserve.A`.  It is the compression-coordinate
form of `(2)`.

## 2. Noncircular reserve law

The no-recirculation note proves that a terminal-tail reserve is equivalent to
already knowing the full clock.  The reserve has to be forward-native.  The
right theorem is:

```text
ForwardNativeReserveBirthPaysFullPLS.A
```

Statement:

```math
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le
dR_N,
\qquad
\mathfrak R_N^{nat}\ge0,
\qquad
\mathfrak L_N\ge-C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty,
\tag{5}
```

where \(\mathfrak R_N^{nat}\) is built from original-history ledgers, not from
\(\int_t^{T^*}d\Omega_N^{full}\).  The admissible source channels are the
moving material Hodge projector, strain/frame log storage, Schur normal
pressure-collar defect storage, annular stress storage, and frequency-local
native reserve birth.

Integrating `(5)` proves `(2)`.  Conversely, defining the reserve from the
future action proves nothing.

## 3. Proof spine to attack next

The noncircular proof should be an ancestry/no-free-upward-transfer statement.
For every retained selected child action, prove that exactly one paid origin
occurs:

1. the action is lower-band carry inherited from the same selected parent and
   consumes already-present native reserve;
2. the action is a new same-history birth visible to material Hodge/projector
   motion, annular stress, strain-frame compression, or Schur normal
   pressure-collar defect;
3. the action is entrance, nonlaminar, legal, or selector/order-lock paid.

There must be no fourth branch:

```math
\text{unpaid high-ratio upward birth invisible to annular stress, Hodge/projector motion, entrance mass, and lower-band carry.}
\tag{6}
```

In differential form the desired local balance is

```math
dA_{\rm sel}^{+}
\le
dB_N^{nat}
+dC_N^{carry}
+dR_N^{entr/legal}
-d\mathfrak S_N^{spent},
\tag{7}
```

and the root estimate is

```math
\sum_{Q\in\mathcal T(P)}A_{\rm sel}(Q)
\le
\mathfrak R_N^{nat}(P)
-\mathfrak R_N^{nat}(\partial\mathcal T(P))
+C_N^{paid}(P)
+R_{\rm legal}(P).
\tag{8}
```

The spent term is essential.  It prevents the same root compression reserve
from being counted repeatedly down a shrinking retained chain.  Any refund or
recirculation of spent reserve must appear as positive full exchange action and
is charged in `(5)`.

## 4. Why compactness alone is not enough

The minimal-bad-chain compactness test is still useful, but it is not the
closure proof.  A failed tail produces a normalized local suitable packet with
unit selected action and only radius-weighted raw cost.  The local affine core
survives the packet equations, and the global matching cost can remain in the
collar/boundary defect package.

Thus compactness only identifies the forbidden fourth branch `(6)`.  The proof
has to show that branch cannot be legal in the original material ancestry
ledger.  That is a reserve-birth/no-free-upward-transfer theorem, not a local
rigidity theorem by itself.

## 5. Result

The Gold route is now sharper:

```text
StoppedFullExchangeActionCarleson.A
<=
SelectedCompressionRootReserve.A
<=
ForwardNativeReserveBirthPaysFullPLS.A
```

The next useful theorem note should attack the last line directly: construct
the forward-native reserve and prove that every selected high-ratio birth is
either lower-band carry, visible same-history birth, or paid/legal.  If the
proof fails, the exact obstruction is an unpaid high-ratio upward birth
invisible to all original-history source channels in `(6)`.
