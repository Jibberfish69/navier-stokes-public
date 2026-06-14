# MPP ActiveShellAmplitudeGain.A Completion Attempt

Date: 2026-05-17

Worker: ASAG

Scope: `ActiveShellAmplitudeGain.A` as one of the May 16 positive source-supplier entrances.

## Status

`ActiveShellAmplitudeGain.A` is not proved unconditionally from the installed inputs.

The valid theorem-grade part is conditional:

```math
ActiveShellSourceNormalize.A
\quad\Longrightarrow\quad
SquareSourceEstimate.A
\quad\Longrightarrow\quad
ActiveShellAmplitudeGain.A
\quad\Longrightarrow\quad
ActiveSquareUpperTailCarleson.A.
```

The noncircular direct proof from `OriginalSmoothData` fails at the same-carrier
active-square/source reserve. The exact surviving primitive for this worker is

```text
PositiveActiveCarlesonReserve.A / ActiveSquareUpperTailCarleson.A
```

equivalently the source-flux formulation

```text
SquareSourceEstimate.A / ActiveShellSourceNormalize.A.
```

At the May 16 global source-supplier boundary this is one presentation of the
same source-pulse/positive-source wall whose smallest current forward-facing
atom is `PositiveRemainderDepletion.A`; the immediate ASAG collapse is the
active-square reserve, not the Zeno temporal anti-concentration branch.

## Sources Read

- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/source-frontier.yaml`
- `problems/navier-stokes/theorem-packet.yaml`
- `problems/navier-stokes/theorem-repair.yaml`
- `problems/navier-stokes/dependency-discharge.yaml`
- `problems/navier-stokes/submission-verdict.yaml`
- `problems/navier-stokes/target-operating-contract.yaml`
- `problems/navier-stokes/theorem-construction/mpp-positive-remainder-source-supplier-handoff-20260516.md`
- `problems/navier-stokes/theorem-construction/mpp-terminal-source-reverse-holder-to-active-shell-source-normalization-20260516.md`
- `problems/navier-stokes/theorem-construction/mpp-independent-prd-alternative-proof-attempts-20260516.md`
- `problems/navier-stokes/theorem-construction/mpp-active-shell-amplitude-gain-from-ns-expansion-20260506.md`
- `problems/navier-stokes/theorem-construction/mpp-activeshell-amplitude-gain-final-collapse-note.md`
- `problems/navier-stokes/theorem-construction/mcp-active-shell-amplitude-gain-source-normalization-obstruction-active-shell-amplitude-gain-09ae95f994.md`
- `problems/navier-stokes/theorem-construction/mcp-active-shell-source-normalization-obstruction-active-shell-source-normalization-fdd05c46cc.md`
- `problems/navier-stokes/theorem-construction/mcp-active-shell-amplitude-gain-hard-obstruction-for-nu_scf-carleson-active-shell-amplitude-gain-for-nu_scf-carleson-51312fcf31.md`
- `problems/navier-stokes/theorem-construction/active-square-carleson-from-shell-amplitude-gain.md`
- `problems/navier-stokes/theorem-construction/mpp-retained-face-amplitude-gain-target-and-pack-gain-gap-20260505.md`
- `problems/navier-stokes/theorem-construction/mpp-pack-gain-ledger-direct-test-and-obstruction-20260505.md`
- `problems/navier-stokes/theorem-construction/mpp-activeamplitude-carleson-direct-attempt-note.md`
- `problems/navier-stokes/theorem-construction/mcp-square-source-estimate-with-amplitude-normalization-square-source-estimate-with-amplitude-normalization-5146a2c26a.md`
- `problems/navier-stokes/theorem-construction/mpp-square-source-originaldata-final-collapse-note.md`
- `problems/navier-stokes/theorem-construction/mpp-positive-remainder-depletion-post-asac-conditional-closure-20260516.md`
- `problems/navier-stokes/theorem-construction/mpp-signed-positive-balance-post-asac-frontier-update-20260516.md`
- `problems/navier-stokes/theorem-construction/mcp-activeshellsourcenormalize-onwardcommutatortailsplit-a00b163ada.md`
- `problems/navier-stokes/theorem-construction/mcp-positivesourcesuppliercycle-stabilizedfrontier-asac-a-dafcf89d79.md`
- `problems/navier-stokes/theorem-construction/mpp-signedlocalsource-originalsmoothdata-direct-attempt-note.md`
- `problems/navier-stokes/theorem-construction/mcp-sourcepulseexclusion-a-frontier-consolidation-nohop-a-c1de0ffe1b.md`

## Target

On bounded-overlap same-fluid terminal active windows, prove a shell amplitude
gain of the form

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t)
```

with summable reserve

```math
\int_I\sum_{j\in active} r_j(t)\,dt
\le
C2^{-2\delta N}.
```

Here the shell ledger uses fixed constants
`c_D2^{2j}E_j(t)\le D_j(t)\le C_D2^{2j}E_j(t)`. The estimate is strong
enough to pay the active square upper tail and hence to feed the
source-normalization/no-pulse route.

## Conditional Part That Does Close

The selected shell balance is the inequality

```math
E_j'(t)+c\nu D_j(t)
\le
F_j(t)+L_j(t),
```

where `F_j` is the nonlinear active shell source/flux and `L_j` is legal loss.

Assume source dominance on the same selected windows:

```math
F_j(t)
\le
\theta\nu D_j(t)+R_j(t),
\qquad 0<\theta<c,
```

with

```math
\int_I\sum_{j\in active} R_j(t)\,dt
+
\int_I\sum_{j\in active}2^{-j}R_j(t)^2\,dt
\le
C2^{-2\delta N}.
```

Then

```math
E_j'(t)+(c-\theta)\nu D_j(t)
\le
R_j(t)+L_j(t).
```

Since `c_D2^{2j}E_j\le D_j\le C_D2^{2j}E_j`, Duhamel on a heat-scale window
gives damping of inherited amplitude, while `R_j+L_j` is the only source of
renewed active mass.
After multiplying by `2^{2j}` and applying

```math
2^{-j}a^2
\le
\varepsilon\nu a+
\left[2^{-j}a^2-\varepsilon\nu a\right]_+,
```

the positive excess is controlled by the Duhamel source reserve. Summing over
the active bounded-overlap family gives `ActiveShellAmplitudeGain.A`.

This is a real conditional proof. It is exactly the source-normalized route
already recorded in the square-source and active-square notes.

## Direct Attempt 1: Energy And First-Moment Dissipation

Installed energy and dissipation give only first-moment control:

```math
\int_0^{T_*}\sum_jD_j(t)\,dt<\infty.
```

ASAG needs square-strength heat-scale control:

```math
\int_I\sum_{j\in active}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int_I\sum_{j\in active}D_j(t)\,dt
+o_N(1).
```

First moment does not imply this. A heat-scale pulse model with

```math
|I_j|=2^{-2j},
\qquad
D_j(t)=2^{2j}\mathbf 1_{I_j}(t)
```

has order-one first moment on the window but active-square contribution

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt
=
2^j.
```

The constants can be damped in a sequence to keep the global first-moment
ledger finite while preserving failure along selected terminal windows. Thus
the energy ledger cannot be upgraded into ASAG without a new source-reserve
or temporal anti-concentration theorem.

Collapse of this attempt:

```text
active-square reserve.
```

## Direct Attempt 2: Smooth Original Data / Fixed-Shell Regularity

For fixed shell `j` and compact `T<T_*`, preterminal smoothness bounds all shell
amplitudes. The ASAG target is a coupled terminal statement:

```math
j\to\infty,
\qquad
t\uparrow T_*.
```

Data-dependent fixed-shell bounds do not provide `o_N(1)` scale-normalized
control on the selected moving high shells.

The source-flux obstruction is sharper. For a smooth finite-mode
divergence-free profile with nonzero shell flux, amplitude scaling gives

```math
F_j(Au)=A^3F_j(u),
\qquad
|F_j(Au)|^2=A^6|F_j(u)|^2.
```

So a universal square-source estimate cannot be obtained from smoothness alone.
For the fixed-data terminal theorem, the same obstruction appears as absence of
a scale-normalized active-window source theorem.

Collapse of this attempt:

```text
SquareSourceEstimate.A / ActiveShellSourceNormalize.A.
```

## Direct Attempt 3: Viscous Damping In The Shell Law

Viscosity gives damping only after the source fails to replenish the active
shell. The shell law allows source-balanced pulses with, for some fixed
`0<\kappa<c`,

```math
F_j(t)\ge (c-\kappa)\nu D_j(t)
```

on heat-scale terminal windows. In that case

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)
```

does not force amplitude decay. Excluding that balance is precisely
`ActiveShellSourceNormalize.A` or `SquareSourceEstimate.A`; using it here would
be circular.

Collapse of this attempt:

```text
SquareSourceEstimate.A.
```

## Direct Attempt 4: ASAC / Signed Exchange

The post-ASAC route pays active alignment and the one-sided positive pair-weight
defect on the signed partner branch. That is why the signed-current continuation
now goes to `TerminalWeightedNoFreeSink.A` and then to the Zeno source-residue
rigidity input.

ASAG is the absolute-value residual-tail branch. Once the lifted weighted
remainder is estimated by absolute value, the surviving term is the same
positive carrier

```math
2^{-j}D_j(t)^2
```

on selected terminal windows. ASAC does not convert this square density into a
summable reserve. The weighted commutator split therefore leaves

```math
TerminalSignedSaturation.A
\quad+\quad
ActiveShellAmplitudeGain.A,
```

with ASAC helping the first side and not proving the second.

Collapse of this attempt:

```text
active-square reserve.
```

## Direct Attempt 5: Retained Pack-Gain / CM Face Boundary

The retained-face amplitude note gives a valid conditional packet-envelope
argument:

```math
PackGainLedger.A+PartEnvelope.A
\Longrightarrow
RetainedFaceAmplitudeGain.A.
```

This does not prove ASAG from `OriginalSmoothData`. The current `Pack_Q`
finite-deformation gauge does not imply `PackGainLedger.A`; the oscillatory
trace-free affine strain test keeps net deformation bounded while the
accumulated positive strain action diverges.

Thus the retained-face route can classify an amplitude failure against a
strengthened Pack/Part boundary, but it does not supply the branch-native
active-shell amplitude gain needed for source-pulse exclusion.

Collapse of this attempt:

```text
PackGainLedger.A if one works inside retained-face CM classification;
active-square reserve if one works on the positive source-supplier route.
```

## Direct Attempt 6: Zeno Temporal Anti-Concentration

The Zeno route is a different stabilized door:

```math
TemporalNonAtomicSource.A
```

by a non-Carleson mechanism. It would rigidify or evacuate terminal source
residue and then feed the post-ASAC PRD loop.

It does not prove ASAG unless it is first converted into super-`L^1` source
residence or square-source control on the same terminal active windows. The
known route to that conversion uses

```math
HeatScaleSquareSource.A / ScaleCriticalTreeCarleson.A,
```

which is Carleson strength and circular for ASAG. Therefore Zeno temporal
anti-concentration is a parallel supplier entrance, not the collapse of the
ASAG proof attempt.

Collapse of this attempt:

```text
not Zeno for ASAG; returns to SquareSourceEstimate.A if used to force ASAG.
```

## Completion Verdict

No noncircular proof of

```math
OriginalSmoothData\Longrightarrow ActiveShellAmplitudeGain.A
```

is obtained from the installed repo inputs.

The exact immediate surviving primitive is:

```text
ActiveSquareUpperTailCarleson.A / PositiveActiveCarlesonReserve.A.
```

The equivalent source-flux formulation is:

```text
SquareSourceEstimate.A / ActiveShellSourceNormalize.A.
```

The global May 16 source-supplier list may still name
`PositiveRemainderDepletion.A`, `LocalPositiveSourceCarleson.A`,
`SquareSourceEstimate.A`, `ActiveShellAmplitudeGain.A`, or non-Carleson Zeno
temporal anti-concentration as entrances. This worker's branch says:

```text
ActiveShellAmplitudeGain.A fails by collapsing to active-square reserve /
SquareSourceEstimate.A.
```
