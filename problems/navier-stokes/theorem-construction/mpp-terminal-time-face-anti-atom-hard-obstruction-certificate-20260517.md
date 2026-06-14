---
ns_viewer:
  theorem_id: terminal-time-face-anti-atom-hard-obstruction-20260517
  status: hard-obstruction-certificate-new-time-thickness-required
  proof_role: exact_gold_obstruction_for_terminal_zeno_source_branch
  logical_landing_node: terminal_time_face_source_atom
  edge_effect: "Certifies that the installed source-wall route reaches a precise terminal time-face concentration obstruction. The note does not prove TerminalTimeFaceAntiAtom.A; it names the theorem strength needed to close the gold source-wall route and keeps that missing time-thickness input from being counted as an installed supplier."
---

# MPP TerminalTimeFaceAntiAtom.A Hard Obstruction Certificate

Date: 2026-05-17

Status: hard obstruction certificate for the current closure path.

Purpose: certify the state of the source-wall closure path after direct attacks on the four nearest mechanisms under `TerminalTimeFaceAntiAtom.A`.

## 0. Sharp closure theorem

The closure theorem for the terminal Zeno source branch is

```math
\boxed{TerminalTimeFaceAntiAtom.A.}
```

Its target is the terminal time-slab modulus

```math
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le \omega_R(\varepsilon)+o_N(1),
\qquad \omega_R(\varepsilon)\to0.
```

This theorem implies

```math
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A
\Longrightarrow
\text{source-wall closure on the terminal Zeno branch.}
```

## 1. Direct mechanism results

The following direct mechanisms have now been tested.

```math
ResidenceLowerBound.A
```

fails because same-fluid ancestry supplies lineage and parabolic residence windows, while Zeno refinement permits

```math
\tau_N:=r_N^2\downarrow0.
```

```math
ScaleInvariantParentChargeQuantum.A
```

fails because normalized terminal source mass can persist while physical parent charge shrinks with scale. Diffuse parent clouds also defeat a fixed single-edge charge lower bound.

```math
TransportedBoundaryTightness.A
```

fails because transported shells control boundary entry, while terminal source concentration can occur inside the shell over shrinking time intervals.

```math
LocalEnergyTraceAntiAtom.A
```

fails because the local energy inequality supplies compactness and admits terminal defect measures. The trace route restates the anti-atom target in energy language.

## 2. Model obstruction

The common obstruction is the terminal time-face concentration model

```math
F_N^{src,+}(t)=\tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}(t),
\qquad \tau_N\downarrow0.
```

It satisfies the available `L^1_t` source budget:

```math
\int F_N^{src,+}(t)\,dt=1,
```

and converges to a terminal atom:

```math
F_N^{src,+}(t)dt\rightharpoonup \delta_T.
```

The installed ledgers track mass, ancestry, boundary flux, and energy trace. They do not provide a modulus excluding this concentration pattern.

## 3. Required new input

A closure proof must add one genuinely new theorem of the following strength:

```math
\boxed{TerminalTimeFaceAntiAtom.A,}
```

or a theorem that implies it, such as

```math
UniformTemporalSourceIntegrability_p.A,
\qquad p>1,
```

```math
ScaleInvariantParentChargeQuantum.A
+\text{a scale-summability penalty,}
```

```math
TransportedNoIncomingFlux.A
\text{ for the full retained terminal class,}
```

or

```math
LocalEnergyTraceAntiAtom.A
\text{ as a strengthened trace theorem.}
```

## 4. Closure status

The current installed inputs reduce the source-wall root to this hard endpoint. The route has a precise closure target and a precise obstruction model. The closure itself requires a new terminal time-thickness mechanism.

## 5. Verdict

The terminal Zeno source branch is closed conditionally by

```math
TerminalTimeFaceAntiAtom.A.
```

At the present theorem resolution, `TerminalTimeFaceAntiAtom.A` is the hard obstruction. This certificate should be treated as the active closure bottleneck for `source-wall-root-after-reconcile`.

## 6. Non-claims

This certificate does not prove `TerminalTimeFaceAntiAtom.A`.

It does not close the stronger scale-uniform annular supplier.

It does not turn a terminal time-face source atom into an admitted CM witness.
It only records the exact obstruction that a gold proof must remove before that
route can be counted as a supplier.
