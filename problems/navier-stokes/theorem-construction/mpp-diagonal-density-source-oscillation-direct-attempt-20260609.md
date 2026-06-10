---
ns_viewer:
  theorem_id: diagonal-density-source-oscillation-direct-attempt-20260609
  status: failed-oscillation-discharge
  proof_role: selector_source_packet_attempt
  logical_landing_node: diagonal-density-holder-stopping-retained-mass
  edge_effect: "Tests the diagonal-density source oscillation leaf and reduces it to a density-selected center rule plus a remaining Holder/adapted-stopping retained-mass theorem on the common selector-good strip."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-ptc-shape-normalization-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md
    - problems/navier-stokes/theorem-construction/mcp-density-selected-source-packet-closure-schedule-for-sg-4-tps-ep-a-2baab1f1b7.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
  downstream_consequence: "The next theorem atom is DiagonalDensityHolderStoppingRetainedMass.A: prove Holder/oscillation or density-adapted stopping for the diagonal density while preserving retained mass and same-strip synchronization."
---

# MPP Diagonal-Density Source Oscillation Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`PTCShapeNormalization.A`, `D.7mq`, `DG-Cal`, `PD.70z`, Pack survival, or CMI
finality.

## Target

The active source target is:

```text
DiagonalDensitySourceOscillation.A.
```

The required estimate is the sectorwise relative oscillation bound

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
\left|\delta_{j,Q}(a)-\bar\delta_j(Q)\right|
\le
\sigma_{\mathrm{diag}}\bar\delta_j(Q),
\qquad
0\le \sigma_{\mathrm{diag}}<1,
```

for every terminal entrance-sector cell `Q_s^{ent}\subset Q`.

## Attempt 1: Derive Oscillation From Positivity And The Parent Average

This fails. A nonnegative `L^1` density can have positive average on `Q` while
vanishing or spiking on an arbitrary terminal subcell. The existing
nonclosure audit gives the elementary model: on `Q=[0,1]`, a density may have
positive integral and still vanish at a prescribed center.

Thus positivity plus average mass does not imply sectorwise oscillation.

## Attempt 2: Use Density-Selected Parent Centers

This closes only the center lower-density part, provided the selector is
allowed to choose the center by the diagonal density.

Let

```math
E_Q=\{a\in Q:\delta_{j,Q}(a)\ge\bar\delta_j(Q)\}.
```

Since `\bar\delta_j(Q)` is the average of a nonnegative density, `E_Q` has
positive measure unless the density is exactly at the average almost
everywhere. Choosing `a_Q` as a Lebesgue point in `E_Q` gives

```math
\delta_{j,Q}(a_Q)\ge\bar\delta_j(Q).
```

So the parent-center lower-density packet is not the remaining hard point
after a density-selected center rule is admitted.

## Attempt 3: Propagate Center Lower Density To Whole Terminal Sectors

This is the live obstruction. To pass from a good center to a whole terminal
entrance-sector cell, the proof needs one of:

```text
parent-cell Holder control of delta_{j,Q},
terminal-cell Holder control of delta_{j,Q},
or an adapted stopping theorem that refines until the density oscillation is
small while preserving enough active selector-good mass.
```

The current installed notes prove the implications:

```text
Holder/adapted oscillation control => sectorwise relative oscillation
=> diagonal restriction stability
=> selector-side PTC-Shape.
```

They do not prove Holder regularity of the diagonal density from the present
Navier-Stokes/selector inputs, and they do not prove that density-adapted
refinement preserves the common selector-good family, core-cap family,
finite-frame geometry, shell packet, transport packet, CG gap, and same-strip
synchronization.

## Attempt 4: Use Density-Adapted Stopping

Density-adapted stopping would close the diagonal side if it proved both:

```text
oscillation: each retained terminal cell has
diam(Q_s)^\alpha [delta_{j,Q}]_{C^\alpha(Q_s)}
<= gamma bar delta_j(Q),

retention: the intersection of all such retained cells still has enough
selector-good mass on the same strip to feed the finite-frame branch.
```

The first line is local. The second line is global and is exactly why this
cannot be treated as a harmless refinement. If the stopping rule discards the
mass needed for the core-cap family or changes the strip/frame, the downstream
`PTCShapeNormalization.A -> D.7mq` chain does not compose.

So density-adapted stopping is the correct next method, but it is not installed.

## Result

`DiagonalDensitySourceOscillation.A` is not proved from the installed inputs.

The actual next theorem atom is:

```text
DiagonalDensityHolderStoppingRetainedMass.A:
prove either Holder/oscillation control for the diagonal density, or a
density-adapted stopping theorem, while preserving enough retained selector-good
mass and same-strip synchronization for the shell, transport, finite-frame,
exact-potential comparison, and CG-gap packets.
```

This is a genuine narrowing: the density-selected center lower-bound part can
be supplied by choosing centers from `{delta >= average}`; the unpaid
mathematics is the oscillation/stopping-retention theorem that lets that center
control every terminal entrance-sector cell without destroying the common
branch.

## New Live Criticism

`NS-LIVE-20260609-137`: `DiagonalDensitySourceOscillation.A` is still open.
The parent-center lower-density packet can be supplied by a density-selected
center rule, but the proof still lacks the theorem that gives Holder/oscillation
control, or density-adapted stopping with retained mass and same-strip
synchronization. The next target is
`DiagonalDensityHolderStoppingRetainedMass.A`.
