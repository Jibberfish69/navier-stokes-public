---
theorem_id: forward-gold-selector-stopped-source-carrier-reduction-20260627
status: stopped-carrier-reduction-installed-global-selector-nondegeneracy-replaced-by-paid-reselection
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / log-amplification carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - IndependentRootHilbertCarrierBound.A
  - SelectorCarrierNondegeneracyOrPaidReselection.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - AdjointSelectedCapacityGain.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/thread-trajectories/assess-stirling-for-ns-binomials.yaml
---

# Selector-stopped source-carrier reduction

The current split is right but too global if stated as one selector
nondegeneracy theorem.  A selected density does not need one carrier to remain
globally Lipschitz through every label, cutoff, packet, order-lock, and tie
event.  It needs fixed-carrier control on the intervals where the selected
readout is stable, and it needs the unstable intervals to be charged before the
martingale reverse-Holder theorem is used.

This note replaces the global selector-nondegeneracy demand by a stopped
source-carrier formulation.

## 1. Starting split

The source-origin Hilbert test leaves two obligations:

```text
IndependentRootHilbertCarrierBound.A
SelectorCarrierNondegeneracyOrPaidReselection.A
```

The martingale step is already installed as a consumer theorem.  Once the
selected density ratios have

```math
\log r_Q=\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\qquad
r_Q={f_Q\over f_{\operatorname{par}(Q)}},
\tag{1}
```

with a fixed-carrier square-function bound and a paid error square-function
bound, stochastic-exponential martingale BMO gives

```math
f\in RH_{1+\varepsilon}(d\mathcal R).
\tag{2}
```

That reverse-Holder gain is the selected-density / first-ratio gain needed by
the Gold trajectory.

So the real PDE/selector problem is not `(2)`.  It is how to obtain `(1)` from
the original same-material history without defining \(Z\) from the future
selected tail.

## 2. Stop where the selected readout ceases to be fixed-carrier

For a retained material tree, define a stopping family \(\mathcal S\).  A child
node is stopped when one of the following first occurs:

1. the selected label, cutoff, packet, rung, or projection changes without an
   already-declared legal/collar defect;
2. the order-lock gap becomes the active positive channel-first/full-packet
   mismatch;
3. the selected scalar crosses a tie or degeneracy surface so that logarithmic
   readout is no longer Lipschitz in the same source carrier;
4. the jump size needed for the compensated stochastic exponential exceeds the
   declared subgaussian/jump budget;
5. the source carrier needed for the selected readout changes from the
   original-history visible/silent/exchange carrier to a carrier defined by the
   descendant selected density.

On a stopped interval \(S\), the selected carrier is fixed in the only sense
needed for the martingale theorem: every descendant \(Q\subseteq S\) before the
next stop admits

```math
\log r_Q
=\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^{S},
\tag{3}
```

where \(Z^S\) is chosen from the original-history carrier

```math
Z^S=Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex}.
\tag{4}
```

The stopped readout theorem is therefore local:

```text
StoppedSelectorCarrierReadout.A
```

Statement:

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}
+e_Q^{S}
\qquad (Q\subseteq S,\ Q \text{ before the next stop}).
\tag{5}
```

This avoids the false global statement that one selector coordinate remains
nondegenerate through all reselections.

## 3. The stopped carrier square function is noncircular only at the root

Within a fixed stopped interval, nested source projections give the formal
Bessel estimate

```math
\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
\le
C\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
+R_{\rm legal}(S).
\tag{6}
```

The circular move is to choose \(Z^S=L^{-1}f_{\rm sel}^{desc}\).  That makes
`(6)` a disguised selected reserve theorem.

The noncircular root theorem must instead say that the stopped source carrier
has finite root energy because it is generated from the original pressure,
silent-bubble, and exchange history:

```text
StoppedIndependentRootHilbertCarrierBound.A
```

Statement:

```math
\sum_{S\in\mathcal S(P)}
\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+R_{\rm stop}(P).
\tag{7}
```

The term \(R_{\rm stop}\) is not allowed to contain the future selected-density
tail.  It may contain only visible selector/collar variation, full-packet
order-lock gap, retained Body-II/III defects, or legal synchronization loss.

Thus `(7)` is the root-bound form of source-origin Hilbert energy.  It is the
place where the PDE must produce the carrier from original history.

## 4. Reselection is a measure, not a pointwise theorem

The selector side should be stated as a stopping-measure estimate, not a global
Lipschitz condition.  Let \(\operatorname{Stop}(P)\) be the selected reserve
lost into stopped children of \(P\).  The needed theorem is:

```text
PaidReselectionStoppingCarleson.A
```

Statement:

```math
\operatorname{Stop}(P)
+
\sum_{S\subseteq P}
\sum_{Q\subseteq S}
|e_Q^{S}|^2\mathcal R(Q)
\le
C\,\Omega_{\rm ol/sel}(P)
+C\,K_{\rm sel}(P)
+C\,K_C^+(P)
+R_{\rm legal}(P).
\tag{8}
```

Here \(\Omega_{\rm ol/sel}\) is the order-lock / visible selector-collar
variation ledger already identified in the selector-variation bridge.  The
important point is that an unpaid stopping family is not a new fourth route.  By
the order-lock alignment note,

```math
d\Omega_{\rm ol/sel}
\le
C f\,d\mathcal R + dR_{\rm legal}
\tag{9}
```

in the only dangerous channel-first case, so an unpaid infinite stopping
measure is the same selected-density half-tail in reselection coordinates.

## 5. Consumer theorem on the stopped tree

Assume `(5)`, `(7)`, and `(8)`.  Refine the retained material tree by declaring
the stopped children as restart roots.  On each stopped interval \(S\), the
stochastic-exponential lemma applies to `(3)`.  Summing over stops and using
`(7)`--`(8)` gives

```math
\sup_{P}
{1\over\mathcal R(P)}
\sum_{S\subseteq P}
\sum_{Q\subseteq S}
\left(
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2
+|e_Q^S|^2
\right)\mathcal R(Q)
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{10}
```

The stopped martingale version of John--Nirenberg then yields

```math
\int_P f^{1+\varepsilon}\,d\mathcal R
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{11}
```

Equation `(11)` is the selected-density reverse-Holder gain.  By the
selected-density / order-lock alignment notes, this pays the full first-ratio
action bound:

```math
\sum_{Q\subseteq P}A(Q)<\infty,
\tag{12}
```

and therefore discharges `AdjointSelectedCapacityGain.A` in the constant-test
form.

## 6. What this improves

This reduction removes two bad formulations.

First, it does not demand global selector nondegeneracy.  The selector is
allowed to stop, change label, hit a tie, or lose order-lock, but those events
must be paid before reverse Holder is invoked.

Second, it does not define the Hilbert carrier from the future selected tail.
The root energy in `(7)` must come from the original same-material
pressure-visible, silent-bubble, and exchange history.

So the sharper remaining production theorem is the combined stopped theorem:

```text
StoppedSourceCarrierAndPaidReselection.A
```

Statement:

```math
\boxed{
\text{original-history source carrier root bound on stopped intervals}
+
\text{paid reselection stopping measure}
}
\Longrightarrow
f\in RH_{1+\varepsilon}(d\mathcal R).
\tag{13}
```

The consumer implication from `(5)`, `(7)`, and `(8)` to `(11)` is now a
standard stopped martingale argument.  The remaining nonconsumer work is to
prove `(7)` and `(8)` from the same-material pressure/strain/exchange ledgers
without letting \(R_{\rm stop}\) be the selected-density tail in disguise.

## 7. Relation to the two bad-tree branches

If `(7)` fails, the obstruction is the repeated-core branch: one original
material ancestry carries infinite source-origin Hilbert root energy without a
legal original-history charge.  This is the Hilbert form of
`RepeatedCorePositiveVariationRootBound.A`.

If `(8)` fails, the obstruction is the shrinking/reselecting-core branch:
selected mass keeps restarting through smaller stopped windows at summable raw
cost.  This is the reselection form of
`ScaleInvariantSelectedCapacityNoEscape.A`.

Thus the stopped-carrier route does not create a new proof wall.  It gives the
best current synthesis of the two Gold branches:

```text
reused-core divergence
  => source-origin stopped root Hilbert energy failure;

shrinking-core escape
  => unpaid reselection stopping Carleson failure.
```

Closing both pieces gives the selected-density reverse-Holder theorem, hence the
strict selected first-ratio gain, hence the active Gold full-clock route.
