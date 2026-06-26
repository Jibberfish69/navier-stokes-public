---
theorem_id: forward-gold-pressure-hessian-affine-tail-global-poisson-direct-test-20260626
status: direct-test-fails-instantaneous-pressure-poisson-does-not-exclude-time-separated-affine-half-tail
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
tests_hinge:
  - PressureHessianBalancedAffineTailExclusion.A
  - HighRatioLaminarAncestryMultiplicityTax.A
source_surfaces:
  - problems/navier-stokes/source-frontier.yaml
  - system/meta/research-os/proof-relay/state.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-goodlambda-strain-equation-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-inclusion-under-capacity-hinge-20260626.md
---

# Pressure-Hessian Affine Tail Global Poisson Direct Test

This note tests the next possible closure of the pressure-Hessian-balanced
affine tail:

```text
Maybe the global pressure Poisson field makes many affine half-tail packets
interact, so the critical tail has to pay a non-summable pressure/Hodge tax.
```

The result is negative for the direct pressure-Poisson route.  The pressure
field is the right same-fluid attachment, but instantaneous elliptic coupling
does not by itself force the missing first ratio moment.

## 1. Current enemy

The current bad profile is a selected laminar high-ratio terminal half-tail made
from pressure-Hessian-balanced affine strain packets.  At scale \(r\), the local
core has

```math
u_r(x,t)\simeq A_r(t)x,
\qquad
\operatorname{tr}A_r=0,
\qquad
|A_r|\simeq r^{-2},
```

on a heat window of length \(r^2\).  The pressure Hessian is chosen from the
local Navier--Stokes law:

```math
\nabla^2p_r=-(\dot A_r+A_r^2).
```

The installed global-matching audit gives the scale:

```math
\text{raw physical cost}=O(r),
\qquad
\text{normalized material action}=O(1).
```

Thus a terminal sequence with \(\sum_k r_k<\infty\) still has room for
infinitely many unit normalized actions unless one original-history mechanism
adds an extra tax.

## 2. Instantaneous Poisson coupling

At each fixed time,

```math
-\Delta p
=
\partial_i\partial_j(u_i u_j)
=
\operatorname{tr}((\nabla u)^2).
```

For a family of localized affine cores, write the pressure source schematically
as

```math
f(t)=\sum_k f_k(t)+f_{\rm int}(t),
\qquad
p(t)=(-\Delta)^{-1}f(t).
```

The possible global pressure tax would have to come from cross interactions:

```math
\sum_{k\ne \ell}
\left\langle f_k(t),(-\Delta)^{-1}f_\ell(t)\right\rangle
```

or from an equivalent Hodge/collar capacity interaction on the laminar tree.

This does not close directly for two reasons.

First, the pressure equation is time-slice elliptic.  Terminal affine packets
can be arranged as separate heat-window visits along the same material history.
When two visits are not active at the same time, their pressure sources do not
interact through the instantaneous Poisson equation.  The pressure field
attaches each visit to the same coupled law, but it does not remember earlier
visits as an elliptic cross term.

Second, when visits do overlap in time, the Poisson cross term is signed.  The
Riesz/Hodge operator supplies partner structure and nonlocal attachment, not a
one-sided lower bound for the selected positive strain lobe after terminal
selection.  This is the same obstruction already recorded in the pressure
positive-part notes: Calderon--Zygmund structure is not positivity preserving.

So the direct route

```math
\text{many affine packets}
\quad\Longrightarrow\quad
\text{non-summable global Poisson interaction}
```

is not theorem-grade from the installed inputs.

## 3. Laminar ancestry does not change this by itself

The supplied laminar target is still the right skeleton:

```text
HighRatioCoreLaminarity.A
+ HighRatioLaminarAncestryMultiplicityTax.A
```

After paid nonlaminar exits, the surviving visits should be read on a laminar
material ancestry.  On one ancestry line, repeated visits must register in
Cauchy--Green deformation, complete-frame/Hodge rotation, collar-normal
separation, or annular turnstile variation.

The problem is not the deterministic single-line tax.  The problem is the
global reserve for that tax.  Localized affine matching shows that the raw
root ledgers stay radius-weighted:

```math
\sum_k O(r_k)<\infty,
```

while the normalized ancestry count can diverge:

```math
\sum_k 1=\infty.
```

Thus laminarity plus instantaneous pressure attachment still needs a weighted
same-history reserve.  The pressure Poisson equation alone does not create it.

## 4. Exact surviving theorem

The pressure-Hessian-balanced affine tail is not excluded by local strain
equations, by signed Betchov identities, by global divergence-free matching, or
by instantaneous pressure Poisson interaction.

The remaining theorem is the same-history no-Zeno statement for the affine
half-tail:

```text
GlobalSameHistoryAffineBurstNoZeno.A
```

Plain statement:

For one original smooth transported Navier--Stokes material history, a selected
laminar terminal chain of pressure-Hessian-balanced affine strain visits cannot
have summable raw heat/energy/collar costs while carrying divergent normalized
high-ratio action.

Equivalently, prove a weighted laminar ancestry reserve for Cauchy--Green
deformation, complete-frame/Hodge rotation, collar-normal separation, and
annular turnstile variation that dominates the first ratio moment:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

## 5. Result

The global pressure-Poisson interaction route is attachment, not closure.

The live Gold edge remains the original-history affine-tail exclusion, now with
one more false shortcut removed: instantaneous pressure/Hodge nonlocality does
not by itself beat the half-tail.  The proof must use a genuinely time-history
reserve on the laminar material ancestry, or an equivalent bounded-below
same-material action storage.
