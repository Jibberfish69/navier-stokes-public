---
theorem_id: forward-gold-spent-source-projection-nonreuse-audit-20260627
status: chain-reuse-branch-closed-relative-to-fresh-selected-scale-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / native birth packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - NativeBirthAtomNonReuse.A
  - SpentNativeReserveNoReuse.A
  - NativeBirthChargePacking.A
  - SelectedScaleNativeReserveAtom.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-charge-packing-obstruction-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-packing-selected-scale-atom-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
---

# Spent-source projection nonreuse audit

This note tests the first-birth / no-reuse mechanism in the current Gold
hinge.  The silent-source fork has already removed the false boundary-only
obstruction.  The remaining question is whether a retained selected birth can
keep reading the same original-history source atom after that atom has already
been spent.

## 1. Stopped source carrier

On a stopped same-material parent \(P\), let

```math
Z_P
=
Z_P^{vis}\oplus Z_P^{sil}\oplus Z_P^{ex}
```

be the signed original-history carrier:

- \(Z^{vis}\) is the pressure-Hodge Schur quotient;
- \(Z^{sil}\) is the boundary-flat pressure-potential bubble coordinate;
- \(Z^{ex}\) is the same-material strain/exchange coordinate that pays
  selected silent source.

For a selected child \(Q\subset P\), write the source increment as

```math
\Delta_Q Z_P.
```

Let \(\mathcal S_{<Q}\) be the closed span of increments already spent by
strict selected ancestors of \(Q\), and set

```math
F_Q
:=
(I-\Pi_{\mathcal S_{<Q}})\Delta_QZ_P.
\tag{1}
```

This is the fresh native source part at \(Q\).  The spent part is

```math
R_Q^{spent}:=\Pi_{\mathcal S_{<Q}}\Delta_QZ_P.
\tag{2}
```

## 2. Fresh part packs by Hilbert geometry

Along one stopped laminar chain the fresh pieces are orthogonal by
construction.  Across siblings, stopped material disjointness and the retained
atlas give the same bounded-overlap factor as the parent-drop tree.  Therefore

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{\rm src}}^2
\le
C_N\|Z_P\|_{\mathcal H_{\rm src}}^2
+R_{\rm legal}(P).
\tag{3}
```

This proves the nonreuse part of the Hilbert mechanism.  A native atom that
has already been spent cannot be counted a second time as fresh source.

## 3. Spent part is not a free selected birth

Suppose a retained selected high-ratio birth at \(Q\) is carried mainly by
the spent component:

```math
\omega_Q\simeq1,
\qquad
\|F_Q\|_{\mathcal H_{\rm src}}^2\ll1.
\tag{4}
```

Then the selected readout at \(Q\) is not seeing a new original-history source
increment.  It is reusing an ancestor source direction.

There are only three possibilities.

First, the selected carrier and readout have not changed.  Then \(Q\) is
lower-band carry of the ancestor source, not a strict native birth.

Second, the selected carrier, cutoff, projection, rung, or order-lock label has
changed.  This is exactly the stopped selector/reselection jump.  The installed
BV/coarea closure gives

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N\sum_{S\subseteq P}
(\Omega_S^{strain/ex}+D_S^{vis/rad})
+R_{\rm legal}(P).
\tag{5}
```

Third, the reused direction is Schur-silent.  The silent-source normal form
says it is either unselected projected constraint material or selected only by
same-material strain/exchange service:

```math
A_{\rm sel}^{silent}(Q)
\le
C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+R_{\rm legal}(Q).
\tag{6}
```

Thus a spent source direction cannot create a new unpaid selected birth.

## 4. Chain nonreuse conclusion

After deleting lower-band carry, legal/entrance, paid selector jumps, paid
silent-source exchange, and already-declared full-exchange refunds, every
strict retained selected birth must satisfy the fresh lower-edge form

```math
\omega_Q
\le
C_N\|F_Q\|_{\mathcal H_{\rm src}}^2
+R_{\rm paid}(Q)
+R_{\rm legal}(Q).
\tag{7}
```

So `NativeBirthAtomNonReuse.A` is closed at the chain-reuse level:

```math
\text{strict selected birth}
\Longrightarrow
\text{fresh source increment}
\quad\text{or paid carry/reselection/silent-exchange}.
\tag{8}
```

The same statement is the spent-source projection form of `SpentNativeReserveNoReuse.A`.

## 5. What this does not prove

Equation `(7)` is useful only if the fresh source norm is a selected-scale
root reserve.  The still-open estimate is

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{\rm src}}^2
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P)
\tag{9}
```

with \(Z_P\) built from original-history source channels and with the Hilbert
norm weighted strongly enough to see selected first-ratio action.

The current installed root carrier only gives source attachment and ordinary
Hilbert packing.  It does not yet prove the selected-scale lower edge against
the critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{10}
```

That tail has finite raw source mass and infinite selected first-ratio action.

## 6. Result

The no-reuse branch is no longer the live obstruction.  A selected descendant
cannot reuse an already-spent native source atom unless it is lower-band carry
or creates a paid selector/silent-exchange/full-exchange event.

The remaining Gold theorem is sharper:

```text
SelectedScaleFreshNativeRootReserve.A
```

Statement: the fresh native source increments left after the spent-source
projection carry selected-scale weight and have finite root norm from the
original smooth material history.

Equivalently, prove the weighted root bound

```math
\sum_{Q\subset P}\omega_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{11}
```

without defining the norm from the future selected tail.
