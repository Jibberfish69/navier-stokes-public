---
ns_viewer:
  theorem_id: uniform-relative-holder-scale-budget-direct-attempt-20260609
  status: partial-regular-density-core-closed-geometry-compatibility-open
  proof_role: selector_source_regularization_bounded_follow_up
  logical_landing_node: cap-family-compatible-regular-core-selection
  edge_effect: "Tests UniformRelativeHolderScaleBudget.A. A source-native positive regular density core can be extracted from a nonnegative L1 diagonal density with positive integral by dyadic level selection, Lusin regularization, and finite small-diameter covering; this gives positive retained mass and relative oscillation on the retained core. The remaining unpaid atom is CapFamilyCompatibleRegularCoreSelection.A: make that regular core compatible with the fixed finite entrance-sector / shell-core-cap family and all downstream same-strip packets."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-source-native-diagonal-density-oscillation-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md
    - problems/navier-stokes/theorem-construction/mpp-diagonal-density-holder-stopping-retained-mass-direct-attempt-20260609.md
  downstream_consequence: "The next theorem atom is CapFamilyCompatibleRegularCoreSelection.A: refine the positive regular density core into the predetermined finite entrance-sector / shell-core-cap family while retaining positive mass in every required sector/cap and preserving transport, exact-potential comparison, CG gap, and selector-strain synchronization on the same strip."
---

# MPP Uniform Relative Holder Scale Budget Direct Attempt

Date: 2026-06-09

Status: bounded follow-up proof attempt. This note does not close
`UniformRelativeHolderScaleBudget.A`, `SourceNativeDiagonalDensityOscillation.A`,
`QSP.11p`, `QSP.11r`, `FinitePositiveReferenceShellBumpPacket.A`,
`PTCShapeNormalization.A`, `D.7mq`, Pack survival, or CMI finality.

## Target

The active target is:

```text
UniformRelativeHolderScaleBudget.A.
```

It must produce a source-native same-strip finite entrance-sector selection with
relative diagonal-density oscillation and retained positive mass, while
preserving the finite shell/core-cap family, transport packet, exact-potential
comparison, CG gap, and selector-strain packet.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native retained regularity budget for diagonal density.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: prove the measure-theoretic regular-core sublemma, then test
compatibility with the fixed QSP geometry.

Mechanism: dyadic level selection, Lusin regularization, uniform continuity on
a compact retained core, finite small-diameter covering, and downstream
geometry compatibility.

## Closed Piece: Positive Regular Density Core

Let `(G,\mu)` be one finite-measure selector-good strip and let
`\delta\ge 0` be the diagonal density on `G`, with

```math
\int_G \delta\,d\mu>0.
```

Then there exists a level window

```math
0<a<b<\infty
```

such that

```math
E_{a,b}:=\{x\in G:a\le \delta(x)\le b\}
```

has positive measure. Indeed, the sets

```math
\{2^k\le \delta<2^{k+1}\},\qquad k\in\mathbb Z,
```

partition `{0<\delta<\infty}` up to null sets. Since the integral is positive,
one such dyadic level set has positive measure after discarding the null and
infinite-value parts.

By Lusin's theorem, for any small loss `\varepsilon>0` below
`\mu(E_{a,b})`, there is a compact set

```math
K\subset E_{a,b}
```

with positive measure on which `\delta` is continuous. On `K`, the bounds

```math
a\le \delta\le b
```

hold and continuity is uniform.

Given any `0<\gamma<1`, choose `r>0` so that

```math
|x-y|<r,\quad x,y\in K
\quad\Longrightarrow\quad
|\delta(x)-\delta(y)|\le \gamma a/4.
```

Cover `K` by finitely many sets `K_1,\dots,K_N` of diameter below `r`, and
discard null pieces. For each retained piece with positive measure,
`\delta` oscillates by at most `\gamma a/4`. Its retained average satisfies

```math
\bar\delta(K_i)\ge a.
```

Therefore on each retained piece,

```math
\operatorname*{osc}_{K_i}\delta
\le
(\gamma/4)\bar\delta(K_i)
<
\gamma\bar\delta(K_i).
```

So the source-native measure-theoretic core is real:

```text
positive diagonal-density mass
=> positive retained regular core with finite local relative oscillation.
```

This part uses only the diagonal density and the strip measure. It does not
use the cap-floor / shell-bump loop.

## Compatibility Failure

The closed sublemma does not yet prove `UniformRelativeHolderScaleBudget.A`.
The retained sets `K_i` come from the density level set and Lusin compact core.
They are not automatically the terminal entrance-sector cells required by the
QSP/TPS branch.

The downstream proof needs more:

```text
the retained regular core must refine or occupy the fixed finite entrance-sector
/ shell-core-cap family;
each required sign/cap sector must retain the needed positive mass;
the same retained strip must carry finite shell comparability;
the same retained strip must carry the transport packet;
the same retained strip must carry exact-potential comparison and CG gap;
the same retained strip must carry selector-strain compatibility.
```

The Lusin core may concentrate in one sector, miss a required cap, or select a
subset that no longer matches the predetermined finite-frame geometry. That is
the same reason raw positive total mass could not pay finite QSP cap occupancy.

## Result

`UniformRelativeHolderScaleBudget.A` is partially paid.

The source-native positive regular core lemma is proved:

```text
positive L1 diagonal density
=> positive retained finite local relative-oscillation core.
```

The full theorem remains open because the regular core has not been made
compatible with the fixed finite entrance-sector / shell-core-cap family and
the downstream same-strip packet stack.

The narrow next theorem atom is:

```text
CapFamilyCompatibleRegularCoreSelection.A:
refine the positive regular density core into the predetermined finite
entrance-sector / shell-core-cap family while retaining positive mass in every
required sector/cap and preserving transport, exact-potential comparison, CG
gap, and selector-strain synchronization on the same strip.
```

## New Live Criticism

`NS-LIVE-20260609-147`: `UniformRelativeHolderScaleBudget.A` is only partially
paid. The positive regular density core lemma is proved by dyadic level
selection, Lusin regularization, and finite small-diameter covering, but the
proof still lacks `CapFamilyCompatibleRegularCoreSelection.A`: the retained
regular core must be made compatible with the fixed finite entrance-sector /
shell-core-cap family and all downstream same-strip packets.
