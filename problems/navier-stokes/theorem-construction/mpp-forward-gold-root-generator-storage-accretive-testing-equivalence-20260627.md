---
theorem_id: forward-gold-root-generator-storage-accretive-testing-equivalence-20260627
status: equivalence-installed-producer-still-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
audits:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-adjoint-testing-data-construction-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-accretive-reference-state-boundary-20260627.md
attacks_hinge:
  - SelectedGeneratorStorageCoercivity.A
  - StoppedAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
  - StoppedPredictableRootGeometryCompensator.A
effect: >-
  Installs the equivalence between the parent-known root generator
  storage/coercivity theorem and the stopped accretive testing/Hilbert-BMO
  producer.  The testing route is not a new frontier beside root geometry: it is
  a way to construct the same original-ledger storage for the visible/silent/
  exchange root generator before selected readout.  Closure still requires
  independent accretive reference states and testing-defect Carleson packing from
  original material history.
---

# Root generator storage and stopped accretive testing

The corrected root-defect note leaves the live producer in this form:

```math
H_P^\ast\|\mathcal G_P^{root}\|^2\,d\sigma dt
+dA_P^{sel/chart}
\le
-D_{\sigma,t}M_P
+d\Theta_P^{orig}
+dR_{\rm legal,P}
+dStop_P.
\tag{1}
```

This is the same theorem as the stopped accretive testing/BMO producer, written
in generator language.

## 1. From storage to testing

Let \(T_S\) be the stopped same-material transform whose output is the lifted
visible/silent/exchange root carrier.  A stopped testing family \(b_P\) gives

```math
|\langle b_P\rangle_P|\ge c,
\qquad
\|b_P\|_{L^2(P,\mathcal R)}^2\le C\mathcal R(P),
\tag{2}
```

and

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C\mathcal R(P)+CR_{\rm legal}(P).
\tag{3}
```

Together with Carleson packing of testing defects,

```math
\sum_{P\subseteq P_0}Def_{test}(P)
\le C\mathcal R(P_0)+CR_{\rm legal}(P_0),
\tag{4}
```

the stopped \(Tb\)/BMO theorem gives

```math
\sup_{P'\subseteq P}
{1\over \mathcal R(P')}
\int_{\operatorname{Hist}(P')}H_P^\ast\|\mathcal G_P^{root}\|^2
\le C_N(u_0)+{R_{\rm legal}(P')+Stop(P')\over\mathcal R(P')}.
\tag{5}
```

Thus `(2)`--`(4)` imply the original-ledger bound required by `(1)`.

## 2. From storage to root geometry

Once `(5)` is available, the corrected root-defect tightness theorem applies.
Escaped mass cannot be charged to \(dA^{wt}+dA^{conn}\).  It must either:

1. survive as a same-carrier zero-cost parent-subtracted root defect, or
2. pay the original generator ledger in `(5)`, legal loss, or stop loss.

The zero-cost same-carrier limit is rigid:

```math
D_\infty=(I-\Pi_{\mathcal P_-})Z_\infty=0,
\tag{6}
```

because all remaining motion is inherited parent-predictable transport.
Therefore `(5)` gives the stopped root-geometry compensator.

## 3. What remains open

The stopped testing construction is not automatic.  The open theorem is exactly

```text
MaterialAdjointAccretiveTestingData.A
```

or equivalently

```text
SelectorReferenceStateFromOriginalHistory.A
+ TestingDefectChargeToInstalledLedgers.A.
```

It must construct testing data from original material history with:

```math
|\langle b_P\rangle_P|\ge c,
\qquad
\|b_P\|_{L^2(P,\mathcal R)}^2\le C\mathcal R(P),
```

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C\mathcal R(P)+CR_{\rm legal}(P),
```

and Carleson packing of every testing defect.

## 4. Result

The proof tree should now read:

```text
MaterialAdjointAccretiveTestingData.A
  -> SelectedGeneratorStorageCoercivity.A
  -> OriginalLedgerRootDefectTightness.A
  -> StoppedPredictableRootGeometryCompensator.A
  -> stopped routed participation current
  -> selected-density / endpoint consumers.
```

The stopped \(Tb\)/BMO route and the root-geometry route are not competitors.
They are two coordinates of the same original-ledger producer.  Partial, not
Gold closed.
