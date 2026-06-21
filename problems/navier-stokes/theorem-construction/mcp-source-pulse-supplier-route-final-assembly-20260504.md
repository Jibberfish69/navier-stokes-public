# Source-pulse supplier route final assembly

## Status

Supplier-route assembly. The principal-flow adjoint drain route now gives the source-pulse / no-`Jump_avg` supplier chain at the definition-aligned route level. This closes the branch-supplier stack through `PCTP.hard / TTU.A` and exposes the remaining CM witness boundary.

This is not a Clay-level proof promotion and not a full CM contrapositive closure. It is the no-jump/source-pulse supplier discharge feeding the downstream terminal-tail consumer.

## Solved target chain

The active proof path was

```math
PrincipalFlowAdjoint.A
\Longrightarrow ParentOrCharge.A
\Longrightarrow NoFreeCreate.A
\Longrightarrow SourceDrain.B
\Longrightarrow TPNI.A
\Longrightarrow PATC.A
\Longrightarrow ASAC.A
\Longrightarrow SignedLocalSource.A
\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```

The current definition-aligned discharge surface locks this chain in the normalized-mass language as

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

and then spends it as

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

## Inputs now aligned

The route rests on the following aligned components.

1. `NoIncomingLicense_src.A`: first-pulse terminal selection gives `FirstPulse.NoParent`. Strong global no-incoming boundary control remains reserve-only and is not used.

2. `ResidualPair.A`: residuals satisfy

```math
\|R\|_{L_t^2H^{-1}}^2
\le C\int\sum_{q>N}D_q+o_N(1).
```

3. `ProjectedPacketPressure.A`: in the Leray-projected divergence-free packet frame, pressure gradients pair to zero and projection commutators are legal residuals.

4. `ProjectedAdjointPacket.A`: projected strain-gauged adjoint packets give the weighted Bessel estimate, conditional only on final packet-definition pinning.

5. `AffineMetric.A`: packet Gaussian and overlap estimates use the affine low-flow metric; isotropic physical Gaussian bounds are not required.

6. `WeightedAdjRes.A`: duality between `ResidualPair.A` and `WeightedAdjBessel.A` gives

```math
\sum_Tg_T^{-2}
\left|\int_{I_T}\langle R,\psi_T\rangle\,dt\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

7. `FirstPulseKill.A`: first-pulse selection removes the parent branch in the ancient limit, leaving only dissipation charge.

## Meaning for the source survivor

The singular native positive active source survivor is removed by the drain mechanism rather than by absolute-value bounding. The proof avoids the active-square tail wall by moving positive strain alignment into the principal packet flow and charging only residual creation.

In typed source language:

```math
OriginalSmoothData
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
```

on the branch-native source-pulse route, via the normalized source-drain package.

## CM contrapositive placement

This source-pulse supplier route occupies the Field / no-jump branch of the CM contrapositive program. Its downstream endpoint is

```math
PCTP.hard/TTU.A.
```

The route therefore supplies terminal-tail control for the averaged no-jump branch. It does not by itself prove the governing CM primitive

```math
Exit(Q):=\neg Member(Q;O_{NS}^{work}).
```

The remaining integration target is the witness bridge:

```math
PCTP.hard/TTU.A
\Longrightarrow
\text{licensed Part/Field witness landing.}
```

Equivalently, the source-pulse branch is now ready to be consumed by the CM witness grammar, but the bridge into a licensed `Part/Field` face still has to be written explicitly.

## Next target after this assembly

The next theorem-facing task is therefore

```math
\boxed{
WitnessFaceBridge.A:
\quad
PCTP.hard/TTU.A
\Longrightarrow
Field_{N,r,Q}\text{ or }Member(Q)\text{ readout on the retained terminal tail.}
}
```

This is the correct next CM-level target. Further work on source-pulse internals should stop unless a recheck finds a definition-lock inconsistency.

## Claimed status

Source-pulse / no-`Jump_avg` supplier route assembled and discharged at definition-aligned theorem-construction level. Full CM contrapositive closure remains open at `WitnessFaceBridge.A`.
