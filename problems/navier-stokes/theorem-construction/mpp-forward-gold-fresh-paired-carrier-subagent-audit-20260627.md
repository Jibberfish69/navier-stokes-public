---
theorem_id: forward-gold-fresh-paired-carrier-subagent-audit-20260627
status: audited-current-edge-fresh-source-weighted-paired-carrier-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh source weighted paired carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - FreshNativeRootUpperBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-codex-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/weighted-tail-flux-lifted-j-sum-audit.md
  - problems/navier-stokes/theorem-construction/middle-band-flux-gap-kernel-theorem.md
  - problems/navier-stokes/theorem-construction/far-corona-carleson-direct-attack.md
subagent_audit:
  positive_route_agent: 019f074d-e922-7de1-9ed1-1342e177e9a4
  countermodel_agent: 019f074d-ee56-70d2-8db0-7b179e731a25
---

# Fresh paired-carrier subagent audit

The current Gold edge is the same-material fresh weighted paired-carrier
estimate.  This audit records the result of the paired proof-side and no-go
side checks.

The live estimate is

```math
\int_0^{T^*}
\sum_{k>N+M}
2^k a_k^{fresh}(t)\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{1}
```

Here both factors are read on the same original material history:
`a_k^{fresh}` is the lower fresh source amplitude, while
`\mathcal D_k^{\uparrow,fresh}` is the upper packet stress/dissipation queue.
Neither factor is allowed to be defined from the future selected descendant
tail.

## 1. No-go side

The fresh orthogonal half-tail remains lawful against the installed paid
reductions:

```math
\|F_\ell\|_{\mathcal H_{raw}}^2={2^{-\ell}\over \ell+1}.
\tag{2}
```

It has finite raw Bessel mass,

```math
\sum_\ell \|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\tag{3}
```

but divergent selected-critical first-ratio mass,

```math
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2
=
\sum_\ell {1\over \ell+1}
=\infty .
\tag{4}
```

Spent-source projection kills reuse, not fresh orthogonal mass.  The
selector/reselection, silent-source, full-exchange, entrance/legal, subheat,
and recirculation reductions can all be set to zero or paid without touching
the half-tail.  Therefore those installed reductions do not imply the selected
critical root upper bound.

## 2. Positive-route side

The strongest noncircular analytic gain currently installed is the weighted
tail-flux reduction.  It gives the one-sided scale-gap kernel

```math
2^{-\sigma(k-j)}
\tag{5}
```

and turns the selected `j`-weighted lifted term into

```math
\sum_{j>N+M+4}2^j\mathcal R_{j,lift}^{\sigma}(t)
\le
C_\sigma
\sum_{k>N+M}
2^k a_k(t)\mathcal D_k^\uparrow(t).
\tag{6}
```

This is a real structural reduction.  It is stronger than raw Bessel and it
keeps the lower-prefix / upper-queue coupling.  It still stops at the paired
carrier on the right side of `(6)`.

The existing Hardy/Volterra and far-corona notes agree with this diagnosis:
Hardy/Schur summation is not the remaining obstruction once the gap kernel is
exposed.  The missing theorem is a one-sided square / Carleson theorem on the
coupled two-scale density, or a factorized same-material theorem strong enough
to imply it.

## 3. Current edge

The current live theorem is therefore:

```text
FreshSourceWeightedPairedCarrierBound.A
```

Equivalent proof mechanisms are:

```text
SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
```

or

```text
SameMaterialDERplusEPFreshSourceRoute.A.
```

The half-tail no-go rules out treating freshness, nonuse, silent-source
routing, selector payment, recirculation closure, or raw Bessel geometry as the
producer.  The positive route must prove the same-material paired-carrier bound
directly, or construct a bounded-below same-material storage whose drop pays
the positive fresh paired carrier.
