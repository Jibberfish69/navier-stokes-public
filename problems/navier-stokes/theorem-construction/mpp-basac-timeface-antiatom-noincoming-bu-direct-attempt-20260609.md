---
ns_viewer:
  theorem_id: basac-timeface-antiatom-noincoming-bu-direct-attempt-20260609
  status: failed-noincoming-bu-not-independent
  proof_role: basac_timeface_antiatom_direct_attempt
  logical_landing_node: terminal-source-residence-mechanism
  edge_effect: "Tests whether BASACTimeFaceAntiAtom.A can be proved from no-incoming / backward-uniqueness inputs for the produced B_ASAC source-residue class. The route fails as an independent theorem: selected no-parent is weaker than global transported no-incoming flux; lateral no-incoming leaves compact terminal time-face source atoms; including the terminal face only detects the atom; and anisotropic backward uniqueness requires a regular ancient class plus no-incoming boundary data, while B_ASAC still carries the terminal source measure. The active target remains a genuine terminal source-residence or trace-absolute-continuity theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-post-affine-pack-survival-sharp-target-selection-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-basac-timeface-antiatom-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-basac-noincomingflux-direct-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-zenoresidue-liouville-basac-direct-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mcp-anisotropic-backward-uniqueness-transform-test-20260504.md
  downstream_consequence: "No-incoming / backward uniqueness stays conditional support after terminal source residence is supplied. It cannot replace BASACTimeFaceAntiAtom.A. The next executable theorem is TerminalSourceResidenceMechanism.A, such as UniformTemporalSourceIntegrability_{p,B_ASAC}.A or PositiveSourceTraceAC_{B_ASAC}.A."
---

# MPP BASACTimeFaceAntiAtom.A No-Incoming / Backward-Uniqueness Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`BASACTimeFaceAntiAtom.A`, `UniformTemporalSourceIntegrability_{p,B_ASAC}.A`,
`OriginalSmoothDataPackSurvival.A`, `NoGenuineExitFromSmoothData.A`, or CMI
finality.

## Target

The active leaf is:

```text
BASACTimeFaceAntiAtom.A
```

equivalently:

```text
UniformTemporalSourceIntegrability_{p,B_ASAC}.A, p>1.
```

This pass tests whether the terminal anti-atom can be proved instead by a
no-incoming / backward-uniqueness theorem for the produced `B_ASAC` class.

## Installed Inputs

The produced `B_ASAC` class has:

```text
same-fluid terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect,
paid legal/projected/cutoff/boundary exits,
paid finite and non-Zeno donor exits,
finite local L^1_s source mass.
```

It also carries selected source-parent no-incoming information from the
first-pulse/no-parent construction.

The anisotropic backward-uniqueness transform is valid on finite slabs after
freezing strain, but its own audit leaves the ancient no-incoming boundary
condition open.

## Direct Attempt

### 1. Selected No-Parent To Global No-Incoming

`FirstPulse.NoParent` excludes earlier selected same-fluid source parents. A
global no-incoming theorem must control full transported-boundary inflow for
kinetic energy, pressure energy, and nonselected packet flux.

Those are different objects. A diffuse legal source cloud or far-field packet
family can enter through a transported boundary without producing one bounded
earlier selected parent. The selected no-parent license does not give the
global no-incoming boundary condition required by backward uniqueness.

### 2. Lateral No-Incoming To Time-Face Anti-Atom

Even a useful lateral transported no-incoming theorem would not remove a source
measure sitting on the terminal time face. The model

```text
g_m(s)=m 1_{(-1/m,0]}(s)
```

with compact spatial support has bounded local `L^1_s` mass, zero fixed
negative-time source slice in the limit, and a nonzero terminal atom at `s=0`.
Lateral spatial flux may vanish while the terminal source charge remains.

So lateral no-incoming is not the time-face anti-atom theorem.

### 3. Include The Terminal Face In The Flux

If the terminal time face is included in the parabolic boundary, the source
atom is detected as terminal boundary flux. That reformulation identifies the
obstruction; it does not prove the obstruction vanishes.

The theorem would still need an independent terminal source-residence,
anti-atom, or trace-continuity mechanism.

### 4. Backward Uniqueness

Backward uniqueness applies to a sufficiently regular ancient PDE class with
the right vanishing or no-incoming boundary data. The present `B_ASAC` object is
a local suitable source-residue limit with a native positive source measure on
the terminal boundary.

The source measure is not a perturbative error in the current class. It is the
surviving object to be removed. Applying backward uniqueness after deleting it
would assume the conclusion.

## Result

The no-incoming / backward-uniqueness route does not prove
`BASACTimeFaceAntiAtom.A` from current inputs.

It is valid only as conditional support:

```text
NoIncomingFlux_{B_ASAC}.A
+ AnisotropicBackwardUniqueness.A
+ terminal source anti-atom / residence
=> ZenoResidueLiouville_{B_ASAC}.A.
```

It cannot replace the terminal source anti-atom theorem.

## New Live Criticism

`NS-LIVE-20260609-184`: the direct no-incoming / backward-uniqueness attempt
does not remove the `B_ASAC` terminal time-face source atom. Selected no-parent
is weaker than global no-incoming flux, lateral no-incoming leaves compact
terminal time-face charge, and backward uniqueness needs a regular ancient
class plus boundary data that the produced `B_ASAC` class does not supply. The
next theorem must produce a genuine terminal source-residence mechanism, such
as `UniformTemporalSourceIntegrability_{p,B_ASAC}.A`,
`PositiveSourceTraceAC_{B_ASAC}.A`, or another theorem that directly forbids
zero-thickness native positive source mass, before Pack survival or PDF
finality can be claimed.
