---
theorem_id: forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627
status: better-idea-installed-open-compensator-theorem
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped exchange-reselection synthesis
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AugmentedStoppedParentDrop.A
  - StoppedReselectionNoEscape.A
  - StoppedAugmentedExchangeSummability.A
  - PaidReselectionStoppingCarleson.A
uses:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - StoppedSourceCarrierAndPaidReselection.A
  - ExtremalBadTreeTwoBranchReduction.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-parent-drop-silent-source-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-selection-tax-density-atom-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626.md
  - subagent:gibbs:carleman-quotient-visible-observability-20260627
---

# Stopped exchange-reselection compensator synthesis

The better idea is to stop treating unpaid reselection and exchange summability
as two unrelated open branches.  After the silent-source reconciliation, they
are the same stopped compensator problem viewed from two sides.

The local invisible-child problem is no longer the right primary target.  Pure
Schur observability is false because boundary-flat pressure-Hodge sources
exist.  The installed replacement is the augmented stopped parent-drop:

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S^{\rm stop}_S U_S\rangle
+C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
\tag{1}
```

The pressure-visible child is paid by the stopped Schur drop.  The Schur-silent
selected child is paid by same-material strain/exchange and viscous/radius
loss.  Therefore the remaining Gold issue is not to make every invisible child
visible.  It is to prove that the exchange and reselection terms in `(1)` are
finite from the original material history.

## 1. The stopped Bellman inequality

Let

```math
B(S)=B_{\rm cap}(S)
```

be the pressure-Hodge capacity carrier on a stopped parent.  Capacity
monotonicity plus `(1)` gives

```math
\sum_{S'\in ch_{\rm stop}(S)}
\bigl(A(S')+B(S')\bigr)
\le
B(S)
+C\,\Xi(S)
+R_{\rm stop}(S)
+R_{\rm legal}(S),
\tag{2}
```

where

```math
\Xi(S):=\Omega_S^{strain/ex}+D_S^{vis/rad}.
\tag{3}
```

If the stopped terms obey

```math
\sum_{S\subseteq P}\Xi(S)+R_{\rm stop}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{4}
```

then `(2)` telescopes and gives the stopped source-carrier square function
needed by the selected-density reverse Holder consumer theorem.

So the actual open object is `(4)`.

## 2. Why the old split is inefficient

The older branch split says:

```text
global same-material exchange summability;
unpaid reselection no-escape.
```

That is true as a bookkeeping split, but it hides the mechanism.  A stopped
reselection occurs precisely when the selected readout stops being carried by
the same local source coordinate.  That can happen only through a change of
selector stratum:

```text
selected label / packet / eigendirection / cutoff / order-lock / projection.
```

Those strata are functions of the same original-history packet variables whose
motion is measured by the full strain/exchange ledger.  Thus a genuinely unpaid
reselection jump should be a jump of the exchange compensator, not a separate
measure-theoretic tax.

This avoids the terminal-density dead end.  A purely measure-theoretic critical
atom can evade a selection boundary tax.  A same-material selected packet has
more structure: its retained selector must keep crossing actual packet strata
to keep restarting without visible Schur payment.

## 3. Proposed compensator theorem

The sharper theorem is:

```text
StoppedExchangeReselectionCompensator.A
```

Statement:

For every stopped retained tree rooted at \(P\),

```math
R_{\rm stop}^{unpaid}(P)
\le
C
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
+R_{\rm legal}(P).
\tag{5}
```

Equivalently, unpaid reselection is controlled by the jump part of the same
Doob-Meyer compensator that controls continuous same-material exchange.

With `(5)`, `(4)` reduces to one original-history statement:

```text
StoppedFullExchangeActionCarleson.A
```

in the form

```math
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{6}
```

Thus the no-escape branch is not separate from the full-clock branch.  It is
the jump-control side of the same full-clock compensator.

## 4. Proof shape for `(5)`

Let \(Y(a,t)\) denote the finite-dimensional selector packet made from the
same-material variables that determine the selected readout on a stopped
interval: top strain direction, pressure-Hessian selected direction,
order-lock gap, cutoff/collar coordinate, and pressure-Hodge projection
coordinate.

Stopping surfaces are codimension-one strata in this packet:

```math
\Gamma_j=\{Y:\ g_j(Y)=0\}.
\tag{7}
```

Before a stop, the selected readout is Lipschitz on one stratum chamber:

```math
|\Delta\log\rho_{\rm sel}|
\le
C\|\Delta Z^S\|_{\mathcal H_{\rm src}}+e^S.
\tag{8}
```

An unpaid reselection jump means the path \(Y(a,t)\) crosses some
\(\Gamma_j\) without visible Schur, order-lock, collar, or legal payment.  The
coarea/BV crossing estimate should give

```math
\sum_{\text{unpaid crossings in }P}w_j(S)
\le
C\,\operatorname{Var}_P(Y)
+R_{\rm legal}(P).
\tag{9}
```

The packet variation is not a new clock.  In the material equations it is paid
by the same terms in `(3)`:

```math
\operatorname{Var}_P(Y)
\le
C
\sum_{S\subseteq P}
\Bigl(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\Bigr)
+R_{\rm legal}(P).
\tag{10}
```

Combining `(9)` and `(10)` gives `(5)`.

## 5. What this buys

The local pressure-Hodge currencies are still useful, but only on the visible
quotient.  Carleman, Rellich/Pohozaev, microlocal defect measures, DtN Riccati,
and adjoint polarization can help prove the visible part of `(1)`.  They cannot
be the primary Gold closure, because the silent-source note already shows that
pure boundary observability is false.

The clean local support theorem is therefore quotient-visible:

```text
StoppedQuotientVisibleSelectedTraceObservability.A
```

Statement:

```math
A_{\rm qvis}^{\rm stop}(S)
\le
C_N\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+C_N R_{\rm legal}(S),
\tag{11}
```

where \(A_{\rm qvis}^{\rm stop}\) is retained stopped selected action after
quotienting by the boundary-flat silent pressure-potential kernel.  This is the
right Carleman/unique-continuation target: it pays the boundary-visible branch
and leaves the silent branch to the same-material exchange term in `(1)`.

The nonlocal closure should instead attack the stopped compensator:

```math
\boxed{
\text{unpaid reselection jumps}
\;\le\;
\text{same-material exchange variation}
}
\tag{12}
```

Once `(12)` is proved, the stopped Bellman inequality has only the full
original-history exchange action left to sum.

## 6. Honest remaining burden

This note does not prove the Gold route.  It installs a better target.

The exact missing theorem is now the coarea/BV selector-stratum crossing
bound:

```text
SelectorStratumCrossingVariationBound.A
```

together with the original-history exchange Carleson bound:

```text
StoppedFullExchangeActionCarleson.A
```

These two statements would imply `StoppedExchangeReselectionCompensator.A`,
then `(4)`, then the stopped source-carrier square function, then the
selected-density reverse Holder gain.

The point is that the old unpaid-reselection branch should no longer be chased
as a standalone terminal atom exclusion.  The better mathematical object is the
single stopped exchange/reselection compensator attached to the original
same-material packet path.
