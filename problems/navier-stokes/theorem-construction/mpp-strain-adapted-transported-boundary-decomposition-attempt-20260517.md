# MPP StrainAdaptedTransportedBoundaryDecomposition.A

Date: 2026-05-17

Status: failed as a full tightness theorem. The decomposition isolates the incoming stable-channel obstruction.

## Target

Use the frozen-strain transported geometry to split boundary flux into stable and unstable pieces, then prove boundary tightness:

```math
Flux_{\partial \mathcal C_R^{tr}}
=
Flux_{unstable,out}+Flux_{stable,in}+Flux_{mixed/pressure}.
```

The theorem target is simultaneous vanishing of all three terms in the transported exhaustion.

## Attempt 1: unstable outgoing flux

In unstable transported directions, far-field material tends to move away from the observation region. This gives the correct sign intuition for outgoing kinetic flux.

This pays only one boundary sector. The terminal obstruction can receive mass through stable directions that contract toward the observation region.

## Attempt 2: stable incoming flux

Stable directions are the hard channel. In a trace-free strain, expansion and contraction coexist. A stable incoming tube can bring ancient far-field energy or pressure work into the terminal region.

No installed tail estimate prevents such incoming mass. The missing input is global spatial exhaustion or a no-incoming theorem.

## Attempt 3: trace-free cancellation

Trace-free strain balances volume change overall, yet boundary flux is signed and anisotropic. Cancellation between stable and unstable boundary sectors is unavailable after positive flux selection and local energy inequality estimates.

## Attempt 4: ASAC equality on the boundary

ASAC equality pays angular alignment defects in the selected source-current ledger. Boundary pressure and kinetic flux through transported shells are full field quantities. The ASAC channel has the wrong support and the wrong geometry for shell tightness.

## Attempt 5: pressure work on transported shells

Pressure work couples boundary sectors. It has no sign in the stable/unstable split. Controlling it requires pressure-tail cancellation or a Hardy-type transported shell estimate.

## Verdict

`StrainAdaptedTransportedBoundaryDecomposition.A` gives a useful decomposition, and it fails as a full production theorem.

It reduces transported-boundary tightness to two remaining hard pieces:

```text
1. incoming stable-channel tail control;
2. pressure-tail cancellation on transported shells.
```

The next listed item is the pressure-tail Hardy cancellation test.## Continuation audit: ChatGPT 2026-05-17

This pass rechecked `StrainAdaptedTransportedBoundaryDecomposition.A` after `TransportedBoundaryTightness.A` stayed open.

The decomposition remains useful and insufficient. It splits transported boundary flux into unstable outgoing, stable incoming, and mixed/pressure sectors. The unstable outgoing sector has the correct sign intuition. The stable incoming sector can import ancient far-field kinetic or pressure work into the terminal region. Trace-free strain gives volume balance and no signed positive-flux cancellation after terminal/local-energy selection.

ASAC equality controls selected source-current angular leakage and does not control full field flux on transported shells. Pressure work couples sectors and requires a separate tail theorem.

Conclusion: `StrainAdaptedTransportedBoundaryDecomposition.A` remains open as a full tightness theorem and reduces to:

```math
StableIncomingTailControl.A,
\quad
PressureTailHardyTransportedShells.A.
```

The next adjacent mechanism is `PressureTailHardyTransportedShells.A`.
