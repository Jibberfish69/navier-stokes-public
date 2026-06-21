# Active ASAC work plan after NoIncoming audit

## Status

Execution routing note. The direct anisotropic backward-uniqueness route is reserve-only. The active proof route for `ASAC.A` is now the source-ancestry drain route through principal-flow adjoint packets.

## Completed in this loop

1. `ASAC-to-TPNI.Reduction.A` was formalized as a conditional reduction:

```math
PacketNormalForm.A
+TPNI.A
+NoIncomingLicense.A
+SourceTether.A
+LimitPass.A
\Longrightarrow ASAC.A.
```

2. `NoIncomingLicense_src.A` was isolated as the installed weak license:

```math
TerminalActiveWindow+FirstPulseSelection
\Longrightarrow FirstPulse.NoParent.
```

3. `NoIncomingLicense_global.A` was separated and left open. Terminal selection alone does not provide full no-incoming parabolic boundary control for direct ancient backward uniqueness.

4. `AnisotropicBackwardUniqueness.A` was tested and left as a reserve route requiring

```math
NoIncomingFlux_{global}.A+AnisotropicStokesCarleman.A.
```

## Active proof path

The next route is

```math
PrincipalFlowAdjoint.A
\Longrightarrow ParentOrCharge.A
\Longrightarrow NoFreeCreate.A
\Longrightarrow SourceDrain.B
\Longrightarrow TPNI.A
\Longrightarrow PATC.A
\Longrightarrow ASAC.A.
```

The already-recorded conditional five-gate packet proves this chain under concrete packet-calculus assumptions:

```math
CoeffStop.A,
\qquad
WeightedAdjBessel.A,
\qquad
WeightedAdjRes.A,
\qquad
GainStop.A,
\qquad
QuietEdgeBesselContraction.A,
\qquad
FirstPulseKill.A.
```

## Immediate theorem target

The shortest next theorem-facing attack is `WeightedAdjRes.A`, because it is the analytic square estimate that turns residual creation into dissipation charge:

```math
\boxed{
\sum_T g_T^{-2}
\left|\int_{I_T}\langle R_{j,k},\psi_T\rangle\,dt\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
}
```

It decomposes into two independent subtargets:

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int\sum_{q>N}D_q+o_N(1)
\tag{ResidualPair.A}
```

and

```math
\left\|\sum_T c_T g_T^{-1}\psi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
\tag{WeightedAdjBessel.A}
```

`ResidualPair.A` is likely the cleaner first proof attempt, because it is mostly pressure / commutator / cutoff / off-packet bookkeeping. `WeightedAdjBessel.A` is deeper packet calculus involving the strain-gauged parametrix.

## Next action

Attack `ResidualPair.A` first:

```math
R_{j,k}=R^{comm}+R^{press}+R^{cut}+R^{off}.
```

Prove termwise:

```math
\|R^{comm}\|_{H^{-1}}^2\le C_{comm}D_j,
\quad
\|R^{press}\|_{H^{-1}}^2\le C_{press}D_j,
\quad
\|R^{cut}\|_{H^{-1}}^2\le C_{cut}\nu\|\nabla w_j\|_2^2,
\quad
\sum_{j>N}\|R_j^{off}\|_{H^{-1}}^2=o_N(1).
```

These four component estimates are the exact dissipation-side input for
`WeightedAdjRes.A`. They supply that side only when the constants are uniform
on the selected same-fluid family and the off-shell tail tends to zero. Failure
of any displayed estimate identifies the residual component that still prevents
the drain proof.

## CM typing

All of this remains branch-supplier work:

```math
ASAC.A\Rightarrow SOURCE.NO\text{-}PULSE.A\Rightarrow AWG.A\Rightarrow no\ Jump_{avg}\Rightarrow PCTP.hard/TTU.A.
```

It does not by itself bridge into `licensed Part/Field face`. The CM contrapositive program still needs the witness integration bridge after the source-pulse branch is eliminated.
