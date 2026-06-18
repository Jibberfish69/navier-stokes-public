---
ns_viewer:
  theorem_id: uniform-pack-cross-term-integrability-direct-attempt-20260609
  status: failed-reduced-to-cross-profile-reverse-holder-production
  proof_role: proof_method_pivot
  logical_landing_node: uniform_pack_cross_term_integrability
  edge_effect: "Tests whether current inputs produce super-L1 / Orlicz / reverse-Holder control for selected positive cross-profile Pack terms."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-terminal-positive-cross-profile-source-control-face-landing-audit-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-basac-uniform-integrability-rigid-subclass-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-uniform-temporal-source-integrability-basac-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-reverseholder-parent-concentration-direct-attempt-note.md
  downstream_consequence: "UniformPackCrossTermIntegrability.A is valid as a conditional anti-atom route, but its production from current Pack/profile inputs is still open; pdfs_final remains false."
---

# MPP UniformPackCrossTermIntegrability Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active target is:

```text
UniformPackCrossTermIntegrability.A.
```

It should forbid zero-thickness terminal concentration of selected positive
cross-profile Pack source terms. A sufficient form is any one of:

```text
reverse-Holder in terminal time,
superlinear Orlicz / de la Vallee-Poussin control,
source-Carleson control,
active-square reserve,
or a comparable terminal anti-atom modulus.
```

## Conditional Anti-Atom Theorem

For a local ball `B_R`, let

```math
g_m^R(s)
=
\|F_{m,cross}^{Pack,+}(s,\cdot)\|_{\mathcal M(B_R)}
```

denote the selected positive cross-profile Pack source density.

If there is `p>1` with

```math
\|g_m^R\|_{L_s^p(-1,0)}\le C_R,
```

then Holder gives

```math
\int_{-\varepsilon}^0 g_m^R(s)\,ds
\le
C_R\varepsilon^{1-1/p}.
```

Passing to the terminal source measure removes the time-face atom. The same
conclusion follows from any superlinear Orlicz bound by de la Vallee-Poussin.

So the anti-atom half is clean and usable.

## Production Test From Current Inputs

Current inputs give local suitable compactness, finite local L1 source mass,
profile separation for raw or signed pieces, and the same-fluid terminal witness
grammar. They do not produce a super-L1 temporal bound for the selected
positive cross-profile source density.

The terminal layer model remains the obstruction:

```math
g_m(s)=m1_{(-1/m,0]}(s),
\qquad
\int_{-1}^0 g_m(s)\,ds=1,
\qquad
g_m(s)\,ds\rightharpoonup\delta_0.
```

It violates every uniform `L_s^p`, `p>1`, estimate and every superlinear Orlicz
bound, while preserving finite L1 mass and no fixed earlier selected source
slice.

## Why Cross-Profile Structure Does Not Add The Missing Gain

The cross-profile origin might look stronger than a generic source atom. The
needed gain would be a normalized square or decorrelation reserve:

```text
cross-profile source mass
<= scale-normalized square reserve
```

or a reverse-Holder residence theorem forcing the cross-profile source to occupy
positive terminal time.

No such theorem is installed. The previous reverse-Holder parent concentration
audit shows the same scaling problem: raw orthogonality prices unweighted donor
energy, while the normalized positive child-feeding source has mass \(1\).

Profile separation helps fixed signed tests. The selected positive terminal
Pack density can still choose the vanishing terminal layer and retain normalized
mass \(1\).

## Result

`UniformPackCrossTermIntegrability.A` is not produced from current inputs.

The pass narrows the next non-alias atom to:

```text
CrossProfileReverseHolderProduction.A
```

with equivalent useful forms:

```text
CrossProfilePackOrliczGain.A,
CrossProfileSourceCarlesonReserve.A,
CrossProfileActiveSquareReserve.A,
or CrossProfileTerminalLayerMorreyDecay.A.
```

Until one of these is installed and propagated through
`UniformPackCrossTermIntegrability.A`,
`TerminalPositiveCrossProfileSourceControl.A`,
`PositivePackDefectOrthogonality.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-169`: uniform integrability of selected positive cross-profile
Pack terms is not currently produced. The conditional anti-atom theorem is valid,
but finite L1 source mass, raw/profile orthogonality, and same-fluid terminal
custody do not give reverse-Holder, Orlicz, source-Carleson, active-square, or
terminal-layer Morrey control. The active loop must prove
`CrossProfileReverseHolderProduction.A`, `CrossProfilePackOrliczGain.A`,
`CrossProfileSourceCarlesonReserve.A`, `CrossProfileActiveSquareReserve.A`,
`CrossProfileTerminalLayerMorreyDecay.A`, or an equivalent theorem before the
cross-profile route can feed the CMI final gate.
