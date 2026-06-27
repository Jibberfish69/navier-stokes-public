---
theorem_id: forward-gold-critical-fresh-source-tent-carleson-governing-hinge-realignment-20260627
status: governing-hinge-realigned-to-critical-fresh-source-tent-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / global selected-action producer
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
governing_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
support_or_branch_hinges:
  - FreshCommonSelectorRefinementNoLoss.A
  - FreshOverrunSameCarrierTailUI.A
  - FreshSameCarrierIdentityAndOverrunTailUI.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-to-hs-relay-verification-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-codex-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-same-carrier-overrun-ordering-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-common-selector-refinement-identity-repair-20260627.md
edge_effect: >-
  Realigns the governing Gold hinge away from the optional source-square branch
  and onto the global selected-action producer. FreshSameCarrierIdentity plus
  FreshOverrunSameCarrierTailUI remains a valid source-square branch, but it is
  not the shortest global closure route. The global route is
  CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A,
  which produces FreshNativeRootUpperBound.A and feeds the already verified
  parent-drop-to-Hs relay directly.
downstream_consequence: >-
  Relay and goal-loop surfaces should treat source-square identity/overrun as a
  branch mechanism, not the top governing hinge. The next proof-bearing target
  is the selected-critical tent Carleson estimate for genuinely fresh
  same-material source increments from the original material history.
---

# Critical Fresh Source Tent Carleson Governing Hinge Realignment

## Status

This note changes the live Gold authority surface. It does not prove the
remaining theorem.

The source-square branch remains valid, but it is a branch route. The governing
global producer is the fresh root/tent theorem:

```text
CriticalFreshSourceTentCarleson.A
```

equivalently:

```text
FreshSourceCriticalScaleMemoryBound.A.
```

## 1. Why the source-square branch is not the governing hinge

The source-square branch has two ordered gates:

```text
FreshCommonSelectorRefinementNoLoss.A
+
FreshOverrunSameCarrierTailUI.A.
```

The first gate replaces direct after-the-fact carrier identity. The lower fresh
source, upper active queue, and selected positive native trilinear carrier must
be refined onto one stopped common selector before the positive carrier split
is applied. Selector changes, order-lock gaps, donor changes, and legal exits
are paid before the source-square split.

After that refinement, the bounded coefficient branch is paid by the
source-square parent tail, and the selected overrun branch needs endpoint tail
uniform integrability on the same carrier.

That route is legitimate. It is not the shortest global proof route, because it
first has to build the source-square carrier and then pay the overrun product.

## 2. The direct global producer

The parent-drop-to-\(H^s\) relay requires finite global selected action. It does
not require source-square carrier identity specifically. The direct global
producer is the fresh root upper bound:

```math
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

The sharp nonduplicate form is:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
```

where \(F_Q\) is the genuinely fresh visible/silent/exchange source increment
after spent-source projection and paid removals, and \(w(Q)\) is the selected
critical heat-scale / first-ratio weight produced from the original material
history.

This is exactly:

```text
CriticalFreshSourceTentCarleson.A.
```

## 3. What is already installed

The downstream relay is installed as a conditional consumer:

```math
\text{finite global selected action}
\Longrightarrow
\int d[\log(1+\mathcal P_{N_s}^{mat})]_+<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{classical relaunch.}
```

The silent-source escape is closed into augmented parent-drop. Boundary-flat
pressure-Hodge sources do not give zero-cost selected action: they are either
unselected constraint material or they spend same-material strain/exchange.

Raw freshness is also installed only at the zeroth-moment level:

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2
<\infty.
```

That does not imply the selected-critical estimate. The fresh orthogonal
half-tail

```math
\|F_\ell\|_{\mathcal H_{raw}}^2={2^{-\ell}\over \ell+1}
```

has finite raw mass and divergent selected-critical mass:

```math
\sum_\ell \|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty.
```

So the live producer is exactly the theorem that supplies the missing critical
weight from original-history scale memory, not from the future selected tail.

## 4. Correct live hinge

The governing Gold hinge should now be:

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

The source-square pair:

```text
FreshCommonSelectorRefinementNoLoss.A
+
FreshOverrunSameCarrierTailUI.A
```

is retained as a branch mechanism. It should not be promoted over the direct
fresh root/tent producer unless the proof deliberately chooses the
source-square branch.

The next proof-bearing work is therefore:

```text
prove the selected-critical tent Carleson estimate for genuinely fresh
same-material source increments from the original material history.
```
