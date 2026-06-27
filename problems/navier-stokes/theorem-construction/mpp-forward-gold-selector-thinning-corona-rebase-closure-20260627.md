---
theorem_id: forward-gold-selector-thinning-corona-rebase-closure-20260627
status: selector-thickness-defect-closed-by-stopped-rebase-testing-defect-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - SelectorThicknessDefectCarlesonFromOriginalHistory.A
  - SelectorReferenceStateFromOriginalHistory.A
  - MaterialAdjointAccretiveTestingData.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-thick-thin-reduction-20260627.md
effect: >-
  Corrects the thin-selector branch: parent-normalized inverse-thickness is not
  a charge to be packed.  A thin selector is a stopping/rebasing event.  On the
  rebased selected child, the reference measure is the child mass, and the
  stopped tree packs geometrically.  The remaining open theorem is the global
  stopped testing-defect charge to installed original-history ledgers.
---

# Selector thinning is a corona rebase, not an inverse-density charge

The thick/thin reduction defined

```math
\theta_P={\mathcal R(S_P)\over \mathcal R(P)}.
\tag{1}
```

On the thick branch \(\theta_P\ge\theta_\ast\), the normalized selector

```math
b_P^0={\mathbf 1_{S_P}\over \theta_P}
\tag{2}
```

is an accretive \(L^2\)-controlled reference test on \(P\).

The thin branch was written as an inverse-thickness defect

```math
Def_{\rm thin}(P)
=
\left(\theta_P^{-1}-\theta_\ast^{-1}\right)_+\mathcal R(P).
\tag{3}
```

That is the wrong object to pack.  It measures the cost of forcing a
parent-normalized test through a packet where the selected support is too thin.
The stopped \(Tb\) construction does not need to do that.

## 1. Correct thin-branch rule

If

```math
\theta_P<\theta_\ast,
\tag{4}
```

do not build the parent-normalized test `(2)` on \(P\).  Declare a stopped
selector child \(P^{sel}\) supported on \(S_P\), with rebased reference measure

```math
\mathcal R(P^{sel})=\mathcal R(S_P)=\theta_P\mathcal R(P).
\tag{5}
```

The parent \(P\) pays only the stopping/rebase mass

```math
Stop_{\rm thin}(P):=\mathcal R(P^{sel}).
\tag{6}
```

The normalized test is then built on the child packet, not on the parent.

## 2. Geometric packing

For each stopped parent \(P\), the maximal thin selected children are disjoint
inside \(S_P\).  Therefore

```math
\sum_{P'\in ch_{\rm thin}(P)}\mathcal R(P')
\le
\mathcal R(S_P)
=
\theta_P\mathcal R(P)
<
\theta_\ast\mathcal R(P).
\tag{7}
```

Iterating down the stopped tree gives

```math
\sum_{P\subseteq P_0}Stop_{\rm thin}(P)
\le
\left(\theta_\ast+\theta_\ast^2+\theta_\ast^3+\cdots\right)
\mathcal R(P_0)
=
{\theta_\ast\over 1-\theta_\ast}\mathcal R(P_0).
\tag{8}
```

Legal overlap and collar synchronization add only \(R_{\rm legal}(P_0)\) and
the already named stop/reset terms.  Hence

```math
\sum_{P\subseteq P_0}Stop_{\rm thin}(P)
\le
C_{\theta_\ast}\mathcal R(P_0)
+C R_{\rm legal}(P_0)+CStop(P_0).
\tag{9}
```

This is the desired selector-thickness packing, but with the correct stopped
quantity.

## 3. Reference-state consequence

Every packet in the testing corona is now one of two types.

Thick packet:

```math
\theta_P\ge\theta_\ast,
```

so `(2)` gives

```math
|\langle b_P^0\rangle_P|\ge1,
\qquad
\|b_P^0\|_{L^2(P,\mathcal R)}^2
\le
\theta_\ast^{-1}\mathcal R(P).
\tag{10}
```

Thin packet:

```math
\theta_P<\theta_\ast,
```

so the construction stops and rebases to \(P^{sel}\).  The parent does not need
a parent-normalized accretive test.  Its loss is \(Stop_{\rm thin}(P)\), which
packs by `(9)`.

Thus

```text
SelectorReferenceStateFromOriginalHistory.A
```

is closed in the stopped-corona sense:

```math
\|b_P^0\|_{L^2(P,\mathcal R)}^2
\le
C_{\theta_\ast}\mathcal R(P)
\tag{11}
```

on testing packets, and all non-testing thin parents are paid by the Carleson
stop mass `(9)`.

## 4. Remaining theorem

After the corona rebase, the live testing theorem has only one nonlocal
obligation left:

```text
TestingDefectChargeToInstalledLedgers.A
```

For the thick testing packets and rebased selected children, prove

```math
\sum_{P\subseteq P_0}Def_{\rm test}(P)
\le
C\left(
B_{\rm Schur}(P_0)
+E_{\rm top\text{-}ex}(P_0)
+S_{\rm material}(P_0)
+Stop(P_0)
+Reset(P_0)
+R_{\rm legal}(P_0)
\right).
\tag{12}
```

The selector-thickness branch is no longer open as an inverse-density problem.
It is a stopped-corona packing term, and that term is finite by geometric
decay of selected mass along the same material tree.
