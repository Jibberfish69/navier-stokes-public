---
theorem_id: forward-gold-fresh-common-selector-refinement-identity-repair-20260627
status: direct-identity-repaired-to-common-selector-refinement-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh source-square branch
logical_landing_node: fresh_same_carrier_identity_and_overrun_tail_ui
repairs_hinge:
  - FreshSameCarrierIdentity.A
  - FreshSameCarrierIdentityAndOverrunTailUI.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-same-carrier-overrun-ordering-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-identity-vs-global-root-reserve-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-carrier-identity-or-terminal-atom-dichotomy-20260627.md
edge_effect: >-
  Direct FreshSameCarrierIdentity.A is not a standalone analytic equality after
  independent source/queue/native selections. It is false at the selector
  algebra level unless the three readouts have already been forced onto one
  stopped common selector. The source-square branch should therefore use a
  common-selector refinement/no-loss theorem: refine the lower fresh source,
  upper active queue, and selected positive native trilinear carrier to one
  stopped same-material transaction, while charging selector changes, order-lock
  gaps, legal exits, and donor/reselection defects before the overrun split is
  applied.
downstream_consequence: >-
  Do not ask the relay to prove same-carrier identity as an after-the-fact
  equality between independently selected carriers. The first gate of the
  source-square branch is common-selector refinement plus no-loss. If that
  refinement succeeds, the bounded coefficient branch is paid and the second
  gate is FreshOverrunSameCarrierTailUI.A. If it fails, the failure is a paid
  selector/order-lock/legal/donor defect or the retained terminal visible
  source-curve readout already routed by the mismatch-to-terminal notes.
---

# Fresh Common-Selector Refinement Identity Repair

## Status

This note repairs the first source-square gate. It does not close the Gold
route.

The phrase

```text
FreshSameCarrierIdentity.A
```

has been doing two different jobs:

1. the installed local lower edge saying that a retained selected birth cannot
   be zero pressure-visible, zero silent/exchange, zero projector, zero
   annular, zero viscous/radius, and still be selected;
2. the branch-specific equality between the lower fresh source, the upper
   active queue, and the selected positive native trilinear carrier.

The first job is installed. The second job is not an analytic estimate that can
be proved after independent selection. It is a construction-order condition.

## 1. Direct identity is false after independent selection

Let the lower fresh source score, upper active queue score, and native positive
trilinear score be denoted schematically by

```math
L(P),\qquad U(P),\qquad N(P)
```

on retained packets \(P\).

If the selector for \(L\) is independent from the selector for \(N\), there is
no theorem forcing the maximizers or positive parts to coincide. The algebraic
countermodel is already enough:

```math
L(P_1)=1,\quad L(P_2)=0,
```

while

```math
N(P_1)=0,\quad N(P_2)=1.
```

Then the lower-source selected packet is \(P_1\), while the native positive
trilinear selected packet is \(P_2\). No pressure estimate, endpoint estimate,
source-square estimate, or CKN readout can turn those two selections into the
same carrier after the fact. The missing operation is not an estimate; it is
forcing the selections to be made on one stopped common carrier before the
positive-part extraction is used.

This is the same obstruction as the two-packet positive-part model:

```math
X_m^+=m{\bf 1}_{(-1/m,0]},
\qquad
X_m^-=-m{\bf 1}_{(-1/m,0]}.
```

The signed sum can cancel, while the selected positive component remains. So a
signed or averaged identity does not identify the selected positive carrier.

## 2. Correct first gate: common stopped-selector refinement

The viable first gate is therefore:

```text
FreshCommonSelectorRefinementNoLoss.A
```

Statement:

For every retained stopped root, refine the lower fresh visible/silent/exchange
source, the upper active queue, and the positive native trilinear density to one
stopped same-material selected transaction. Any mass lost in changing labels,
cutoffs, projections, order-lock, packet representatives, or rung/collar
coordinates is charged to legal, selector/reselection, order-lock, donor-chain,
or full exchange terms before the source-square split is applied.

After this refinement, the selected source-square carrier is literally

```math
\Pi_j^+(t)
=
\int_{\Omega_j(t)}
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+
\,dx,
```

on the same stopped selected packet. The "identity" is then typed into the
construction, not recovered as a separate estimate.

## 3. Installed support for the refinement

The stopped selector surfaces already supply the finite-change part of this
repair.

The stopped source-carrier reduction uses fixed selected-carrier intervals. It
stops when the selected label, cutoff, packet, projection, rung, order-lock, or
tie surface changes without payment. On each stopped interval the readout is
fixed-carrier.

The selector-stratum crossing BV closure proves that unpaid reselection is not
a second independent route. At fixed depth \(N\), selector-stratum crossings are
paid by variation of the same finite material selector packet, hence by the
full exchange action:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\right)
+R_{\rm legal}(P).
```

The order-lock alignment note proves that an unpaid order-lock gap is a
submeasure of the same selected first-ratio density, not a separate carrier.

Thus finite selector changes, order-lock gaps, and legal synchronization losses
do not justify a new identity theorem. They are already part of the stopped
common-selector/no-loss accounting.

## 4. Remaining gap after the repair

The common-selector repair leaves exactly two forward branches.

First, if the stopped common selector is retained and no mass is lost, the
bounded coefficient part of the source-square split is paid:

```math
\alpha_j^+\le K\nu r_j^{-2}
\quad\Longrightarrow\quad
\Pi_{j,K}^{bd}
\le
K T_{j-C_0}+Legal_j.
```

The remaining product branch is the selected overrun source

```math
a_{j,K}^{fresh,over}(s)
=
C_{LP}r_j^{1/2}
\int_{\Omega_{j,K}^{fresh,over}(T+r_j^2s)}
|w_j|^2\alpha_j^+\,dx.
```

The required theorem is

```text
FreshOverrunSameCarrierTailUI.A.
```

Second, if the stopped common-selector refinement loses retained positive mass,
the loss is not hidden. By the already installed mismatch notes, finite losses
land in legal/reselection/order-lock/donor/full-exchange terms, while the only
surviving uncharged branch is the visible terminal source-curve readout.

So the first gate should not be written as

```text
prove equality of independently selected carriers.
```

It should be written as

```text
construct one stopped common selected carrier and prove no-loss under that
refinement; otherwise route the retained loss to paid defects or terminal
visible readout.
```

## 5. Corrected hinge

The corrected source-square branch is:

```text
FreshCommonSelectorRefinementNoLoss.A
+
FreshOverrunSameCarrierTailUI.A.
```

The first term replaces direct `FreshSameCarrierIdentity.A`. It is the same
mathematical intention, but with the construction order made explicit.

The live proof burden is still open. The repair removes a false theorem target:
same-carrier identity cannot be proved as an after-the-fact equality between
independently selected positive carriers. It has to be built by stopped common
selection, with no-loss paid by the full same-material selector/exchange
accounting.
