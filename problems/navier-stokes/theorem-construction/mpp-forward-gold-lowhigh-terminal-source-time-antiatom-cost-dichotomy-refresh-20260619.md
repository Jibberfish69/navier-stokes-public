---
title: Forward-Gold Low-High Terminal Source-Time Anti-Atom Cost Dichotomy Refresh
date: 2026-06-19
status: cost-dichotomy-installed-forward-supplier-not-produced
governing_program: forward-positive gold route with CM Part/Field readout kept separate
claim_boundary:
  logical_landing_node: LowHighTerminalSourceTimeAntiAtom.A
  claim_status: conditional_only
  edge_effect: "Refreshes the low-high terminal source-time branch after the cost dichotomy, limit-of-class artifact theorem, and Pack-Part/Field landing theorem. Uniform super-L1 residence kills the atom. A surviving atom is an infinite-cost endpoint boundary artifact and can land as not Pack_Q when no positive-scale carrier bridge exists. Neither branch supplies a forward no-free-sink theorem from original smooth data."
  downstream_consequence: "The low-high molecule branch no longer needs another raw terminal anti-atom relabel. It needs original-data production of the super-L1/source-Carleson residence budget, a participation/donor-drain theorem, a positive-scale retained-carrier bridge, or acceptance of the branch as CM Pack-face support rather than forward-gold closure."
evidence_refs:
  - problems/navier-stokes/theorem-construction/mpp-lowhigh-terminal-source-cost-dichotomy-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-lowhigh-limit-of-class-terminal-artifact-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-lowhigh-infinite-cost-endpoint-source-pack-face-landing-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-same-witness-superl1-source-carleson-direct-attempt-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-same-witness-terminal-strip-modulus-direct-attempt-20260609.md
---

# Forward-Gold Low-High Terminal Source-Time Anti-Atom Cost Dichotomy Refresh

## Target

The low-high molecule branch reduces to a selected terminal source-time strip:

```text
I_m=(T_m-\tau_m,T_m],
\qquad
\tau_m\downarrow0,
\qquad
g_m\ge0,
\qquad
\int_{I_m}g_m(s)\,ds\ge M_0>0.
```

The target label is:

```text
LowHighTerminalSourceTimeAntiAtom.A.
```

The existing June 10 notes already sharpen this target into a cost dichotomy.

## Installed Conditional Anti-Atom

If the same selected low-high witness has a uniform super-\(L^1\) residence
budget,

```math
\int_{I_m} g_m(s)^p\,ds\le C,
\qquad p>1,
```

then Holder gives

```math
\int_{I_m}g_m(s)\,ds
\le
C^{1/p}\tau_m^{1-1/p}\to0.
```

So the atom is excluded:

```text
UniformTemporalSourceIntegrability_{p,lowhigh}.A
=> LowHighTerminalSourceTimeAntiAtom.A.
```

This part is proved as a conditional theorem.

## Installed Infinite-Cost Alternative

If positive terminal mass survives, then every super-\(L^1\) residence cost
diverges:

```math
\int_{I_m}g_m(s)^p\,ds
\ge
M_0^p\,\tau_m^{1-p}\to\infty,
\qquad p>1.
```

The model

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

is exactly this branch. It has finite \(L^1\) mass, weak-* endpoint limit, and
infinite every-super-\(L^1\) residence cost.

## Installed Limit-Of-Class Classification

The no-residence branch is not a hidden preterminal density. As measures on the
closed terminal interval,

```math
g_m(s)\,ds\rightharpoonup M\delta_{T^*}.
```

The limit is singular with respect to time measure and has no positive
preterminal \(L^1_s\) density. The installed classification is:

```text
positive low-high terminal source atom
=> limit-of-class terminal boundary artifact.
```

## Installed CM Pack-Face Landing

When no positive-scale retained-carrier bridge is supplied, the infinite-cost
endpoint artifact lands as Field-certification face support:

```text
LowHighInfiniteCostEndpointSource.A
=> not Pack_Q.
```

This is a CM class-exit readout after witness admission. It is not a forward
payment for:

```text
LowHighTerminalSignedSaturationForwardNoFreeSink.A.
```

## What Remains Open

The forward-gold route still lacks production from original smooth data of the
budget that kills the atom:

```text
Original smooth data
=> UniformTemporalSourceIntegrability_{p,lowhigh}.A
```

or one of its same-witness equivalents:

```text
same-witness Orlicz/Morrey residence,
LowHighPositiveActiveCarlesonReserve.A,
LowHighSameWitnessSuperL1TerminalResidence.A,
LowHighTerminalSourceCarleson.A,
LowHighTerminalStripModulus.A.
```

The existing same-witness source-Carleson and terminal strip modulus attempts
do not produce that budget from current finite-\(L^1\), BV trace, weak trace,
same-fluid, zero-ASAC, paid-exit, or no-earlier-slice inputs.

## Correct Branch State

The low-high terminal source-time branch is now:

```text
uniform super-L1 residence
  => atom vanishes;

surviving endpoint atom with no positive-scale carrier bridge
  => infinite-cost boundary artifact
  => not Pack_Q after CM witness admission.
```

The unresolved forward-positive branch is narrower:

```text
ParticipationTransferThrottle.A / DonorDrainCompetition.A
```

must produce the same-witness super-\(L^1\) budget, or

```text
PositiveScaleRetainedCarrierBridge_lowhigh.A
```

must retype the endpoint artifact as a positive-scale carrier branch, or

```text
GenuinelyNonSourcePackSurvival.A
```

must bypass the terminal source strip entirely.

## Consequence

This closes `LowHighTerminalSourceTimeAntiAtom.A` as a raw independent target.
It is solved conditionally and classified on the no-residence side. What is not
solved is the forward production of the residence budget from original smooth
data, or the retained positive-scale carrier bridge that would stop the
endpoint artifact from landing as `not Pack_Q`.
