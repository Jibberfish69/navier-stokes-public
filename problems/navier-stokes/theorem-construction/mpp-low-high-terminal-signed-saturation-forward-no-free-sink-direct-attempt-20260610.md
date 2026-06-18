---
ns_viewer:
  theorem_id: low-high-terminal-signed-saturation-forward-no-free-sink-direct-attempt-20260610
  status: failed-reduced-to-lowhigh-terminal-source-time-antiatom
  proof_role: active_completion_proof_no_free_sink
  logical_landing_node: low_high_terminal_signed_saturation_forward_no_free_sink
  edge_effect: "Tests whether the low-high source-current branch supplies a forward same-window no-free-sink theorem. Retained partners, legal exits, ASAC pair-weight defects, and finite donor trees are paid; the proof fails exactly at terminal Zeno source-time concentration."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-one-sided-nearband-material-source-current-legal-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-weighted-no-free-sink-independent-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-timeface-no-source-atom-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-no-zero-heat-time-residue-inside-nsclass-attempt-20260506.md
  downstream_consequence: "LowHighTerminalSignedSaturationForwardNoFreeSink.A is not proved. The next executable child is LowHighTerminalSourceTimeAntiAtom.A, UniformTemporalSourceIntegrability_{p,lowhigh}.A, LowHighPositiveActiveCarlesonReserve.A, LowHighSameWitnessSuperL1TerminalResidence.A, or an equivalent non-source Pack-survival theorem."
---

# MPP LowHighTerminalSignedSaturationForwardNoFreeSink.A Direct Attempt

Date: 2026-06-10

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The source-current legality pass left:

```text
LowHighTerminalSignedSaturationForwardNoFreeSink.A.
```

The theorem would say that every selected low-high terminal positive
source-current edge is paid in the forward public survival chain: its signed
partner is retained, legally exited, finitely depleted, or otherwise paid
without using CM face classification as the payment.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: forward same-window no-free-sink theorem for the low-high
first-Pack survival branch.

Logical skeleton: exhaustive edge partition plus terminal Zeno branch test.

Mechanism tested: signed-current antisymmetry, ASAC pair-weight payment, legal
exit ledgers, finite donor telescoping, and terminal source-time
anti-concentration.

## Paid Cases

For a selected positive terminal source-current edge in the low-high branch,
the installed source-current corpus gives the same edge partition as the
post-ASAC no-free-sink notes.

Retained signed partners are paid by the ASAC one-sided pair-weight charge.
Legal exits are paid by the declared boundary, cutoff, pressure, projection,
collar, and off-family ledgers. Finite non-Zeno donor sinks are paid by
`LocalDonorBalance.A + EntranceLeafDecay.A`.

These are real payments. They remove the generic graph-flow obstruction.

## Surviving Branch

The only uncharged branch is a terminal Zeno source-refill chain with an
explicit time-marginal form:

```text
I_m=(T_m-tau_m,T_m],
tau_m -> 0,
g_m >= 0,
integral_{I_m} g_m(s) ds >= M0 > 0,
no fixed preterminal entrance leaf,
sup_m integral_{I_m} g_m(s) ds < infinity.
```

The installed estimates do not rule out such a marginal. In particular they
do not rule out the exact witness family

```text
g_m(s)=m 1_{(-1/m,0]}(s).
```

For that family,

```text
integral g_m(s) ds = 1,
integral |s| g_m(s) ds = 1/(2m) -> 0,
g_m(s) ds weak-* -> delta_0.
```

The proof-bearing point is the general one: finite local `L1_s` mass plus
vanishing time thickness does not imply a terminal anti-atom theorem. Fixed
positive viscosity, local energy, same-fluid ancestry, selected no-parent data,
lateral no-incoming language, and terminal capacity language do not supply the
missing preterminal residence modulus.

## CM Face Support Is Not The Forward Payment

`TerminalSourceResidueCMExit.A` and
`TerminalSignedSaturationCMFaceReduction.A` correctly classify the surviving
residue as Pack/Part/Field witness-face support in the CM contrapositive route.

That is not the same as proving this forward no-free-sink theorem. The current
public branch is trying to pay first-Pack survival before claiming the PDF is
CMI-final. A terminal source-time atom may be a CM exit witness, but it is not
a proof that the first-Pack survival branch has been excluded from original
smooth data.

## Result

`LowHighTerminalSignedSaturationForwardNoFreeSink.A` is not proved.

The exact live child is:

```text
LowHighTerminalSourceTimeAntiAtom.A,
UniformTemporalSourceIntegrability_{p,lowhigh}.A,
LowHighPositiveActiveCarlesonReserve.A,
LowHighSameWitnessSuperL1TerminalResidence.A,
LowHighTerminalSourceCarleson.A,
LowHighRigidAntiAtomLiouvilleProduction.A,
or a genuinely non-source Pack-survival theorem.
```

Until one of these is installed and propagated through
`LowHighTerminalSignedSaturationForwardNoFreeSink.A`,
`OneSidedNearBandMaterialSourceCurrentLegal.A`,
`TerminalPressureHessianNoSustain_lowhigh.A`,
`DynamicLowHighEigenpacketNoFreeze.A`,
`SelectedLowHighPositiveStrainDecorrelation.A`,
`LowHighPackSourceCarlesonReserve.A`,
`ScaleNestedLowHighPackMoleculeRigidity.A`,
`TwoProfilePackMoleculeRigidity.A`,
`CrossProfilePackAtomBelongsToRigidProfile.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-224`: `LowHighTerminalSignedSaturationForwardNoFreeSink.A`
is not proved. Retained partners, legal exits, ASAC pair-weight defects, and
finite donor trees are paid, but the terminal Zeno source-refill branch still
allows nonnegative time marginals supported in `I_m=(T_m-tau_m,T_m]`, with
`tau_m -> 0`, fixed positive selected mass, and only finite `L1_s` control. The
exact witness `g_m(s)=m 1_{(-1/m,0]}` has unit mass, vanishing heat-time
moment, and weak-* endpoint limit `delta_0`. CM face classification uses that
residue as exit-witness support; it does not provide the forward
first-Pack-survival payment. The active loop must prove a low-high terminal
source-time anti-atom, uniform temporal source integrability, positive active
Carleson reserve, same-witness super-`L1` terminal residence, source Carleson
theorem, rigid anti-atom production, or a genuinely non-source Pack-survival
theorem before claiming forward no-free-sink, source-current legality, pressure
no-sustain, dynamic no-freeze, or PDF finality.
