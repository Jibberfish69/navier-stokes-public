---
theorem_id: forward-gold-testing-defect-ledger-charge-reduction-20260627
status: testing-defect-reduced-to-full-exchange-and-reset-ledger-packing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - TestingDefectChargeToInstalledLedgers.A
  - StoppedFullExchangeActionCarleson.A
  - PaidReselectionStoppingCarleson.A
  - StoppedRoutedParticipationCurrentCarleson.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-thinning-corona-rebase-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-stopped-selected-action-trace-coercivity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bmo-producer-testing-boundary-20260627.md
effect: >-
  Shows that the stopped testing-defect Carleson theorem is not an independent
  pressure/CZ problem after selector rebase.  Its local charge reduces to
  Schur, stop/legal, and the full-exchange/reset ledgers.  Schur telescopes and
  selector-thinning stop mass is finite; the remaining nonclosed part is exactly
  StoppedFullExchangeActionCarleson.A plus PaidReselectionStoppingCarleson.A.
---

# Testing-defect charge reduction

After the selector-thinning corona rebase, every packet used for testing is a
thick stopped packet in its own reference measure.  The accretive reference
state is available and has controlled \(L^2\) size.  The remaining testing
problem is:

```math
\sum_{P\subseteq P_0}Def_{\rm test}(P)
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{1}
```

This note identifies exactly what `(1)` still depends on.

## 1. Local defect charge

For a thick or rebased stopped packet \(P\), the stopped transform output splits
into visible, silent-selected, exchange, reset, and legal pieces:

```math
T_S(b_P\nu^S)
=
\mathcal G_P^{vis}
+\mathcal G_P^{sil}
+\mathcal G_P^{ex}
+\mathcal G_P^{reset}
+\mathcal G_P^{legal}.
\tag{2}
```

The reference normalization is now uniformly controlled, so no inverse
selector-thickness factor remains.  By the local source-origin and augmented
trace-coercivity inputs,

```math
Def_{\rm test}(P)
\le
C\Bigl(
B_{\rm Schur}(P)
+E_{\rm top\text{-}ex}(P)
+S_{\rm material}(P)
+Reset(P)
+Stop_{\rm thin}(P)
+R_{\rm legal}(P)
\Bigr).
\tag{3}
```

This is the correct pointwise charge.  It is local; it is not yet the global
Carleson estimate.

## 2. Terms that already pack

The pressure-visible Schur part telescopes over the stopped parent-child tree:

```math
\sum_{P\subseteq P_0}B_{\rm Schur}(P)
\le
C B_{\rm Schur}(P_0)+C R_{\rm legal}(P_0).
\tag{4}
```

The selector-thinning stop mass packs by the corona rebase:

```math
\sum_{P\subseteq P_0}Stop_{\rm thin}(P)
\le
C_{\theta_\ast}\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{5}
```

The legal terms pack by the legal residual normal form:

```math
\sum_{P\subseteq P_0}R_{\rm legal}(P)
\le
CR_{\rm legal}(P_0).
\tag{6}
```

Thus summing `(3)` gives

```math
\sum_{P\subseteq P_0}Def_{\rm test}(P)
\le
C B_{\rm Schur}(P_0)
+C_{\theta_\ast}\mathcal R(P_0)
+C R_{\rm legal}(P_0)
+C Stop(P_0)
+C\sum_{P\subseteq P_0}
\left(
E_{\rm top\text{-}ex}(P)
+S_{\rm material}(P)
+Reset(P)
\right).
\tag{7}
```

## 3. Remaining live part

Therefore `TestingDefectChargeToInstalledLedgers.A` closes exactly when

```math
\sum_{P\subseteq P_0}
\left(
E_{\rm top\text{-}ex}(P)
+S_{\rm material}(P)
\right)
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0)
\tag{8}
```

and

```math
\sum_{P\subseteq P_0}Reset(P)
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{9}
```

These are the already named global producers:

```text
StoppedFullExchangeActionCarleson.A
```

and

```text
PaidReselectionStoppingCarleson.A / StoppedReselectionNoEscape.A.
```

## 4. Consequence

The stopped testing theorem is now reduced to the same two global root-geometry
payments exposed by the augmented trace-coercivity route.  No separate
pressure-only or endpoint-clock theorem remains inside the testing defect.

The current proof tree is:

```text
StoppedFullExchangeActionCarleson.A
  + PaidReselectionStoppingCarleson.A
  -> TestingDefectChargeToInstalledLedgers.A
  -> MaterialAdjointAccretiveTestingData.A
  -> SelectedGeneratorStorageCoercivity.A
  -> OriginalLedgerRootDefectTightness.A
  -> paid root geometry
  -> stopped routed participation current.
```

Partial, not Gold closed.  The reference-state and selector-thinning branches
are discharged; the remaining work is the full-exchange/reset global packing
inside the same stopped material tree.
