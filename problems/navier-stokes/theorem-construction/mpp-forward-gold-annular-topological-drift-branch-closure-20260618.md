# Annular Topological Drift Branch Closure

Date: 2026-06-18

Status: branch closed.  The Dehn-twist / mapping-class idea contributes one
missing readout channel to the annular no-escape framework.  It does not
produce an independent closure route for the forward-gold terminal source atom.

Role: close the geometric-topological side branch opened by the surface,
Weingarten, current/varifold, Dehn twist, and annular no-escape discussion.

## Closed branch

The branch asked whether the missing terminal Zeno defect could be attacked by
surface geometry and topology:

```text
Weingarten / moving frames
currents and varifolds
annular collar compactness
Dehn twists / mapping-class drift
Fenchel-Nielsen style length-twist accounting
```

The useful object is now fixed:

```math
B_{\rm ann}\mathcal Z
=
(\gamma_\pm U,\mathcal T_\pm U,
\mathcal A_{\rm conn},\Pi_{\rm mod}F^{mod},
\operatorname{Tw}_{ann},\mathcal A_{tw},
\partial T,\operatorname{Tr}_{src},W_{\rm pair}).
\tag{CL.1}
```

This is the complete annular readout needed by the conditional no-escape
theorem.

## What Dehn twists add

On an annulus `S^1 x [0,1]`, the model twist is

```math
(\theta,t)\mapsto(\theta+2\pi k t,t).
\tag{CL.2}
```

It is boundary-trivial but changes the interior annular marking.  Therefore
boundary traces and endpoint holonomy are insufficient.

The twist contribution is:

```math
\operatorname{Tw}_{ann}(\mathcal Z)\in\mathbb Z,
\qquad
\mathcal A_{tw}(\mathcal Z).
\tag{CL.3}
```

On a fixed-modulus collar, one unit of twist has nonzero action:

```math
|\operatorname{Tw}_{ann}|^2
\lesssim
\operatorname{Mod}(A)\,\mathcal A_{tw}.
\tag{CL.4}
```

Thus nonzero topological drift becomes visible as connection/twist action.

On a degenerating collar, twist can become cheap:

```math
\mathcal A_{tw}(\Theta_1)\sim L^{-1}\to0.
\tag{CL.5}
```

That is not a new escape route.  It is exactly the collar/modulus branch:

```text
CollarCapacityLegalCharge.A
ModulusToSelectedSourceResidence.A
AnnularDefectEvacuation.A
TerminalAnnularBoundaryMassBound.A
```

So the Dehn-twist branch terminates in the already exposed no-escape support
requirements.

## What the branch does not add

It does not prove terminal anti-atom control.  The terminal layer

```math
g_m(s)={a\over\tau_m}1_{(-\tau_m,0]}
\tag{CL.6}
```

is untouched by twist accounting unless the selected source carrier is already
tied to the annular readout.

It does not prove Door 1 native-source identification.  The nonzero-flux branch
still needs

```math
\text{MinimalChainProjectedResidueIdentity.A}
\tag{CL.7}
```

or the equivalent source-resolved paired trace identity.

It does not prove Door 2 profile production.  The zero-flux branch still needs

```math
\text{MinimalZenoProfileProduction.A}
\tag{CL.8}
```

with the existing children `SingleBubbleCanonicalGauge.A`,
`CanonicalGaugeCoercivity.A`, `ModulationForcingNativeProjection.A`,
`NoNeutralModulationLoop.A`, `RenormalizedActionFinite.A`, and
`AnnularDefectEvacuation.A`.

It does not turn Weingarten equations into the proof language.  Weingarten is
only the smooth local form of the moving-frame geometry.  The durable language
remains:

```text
moving frames + currents/varifolds + stress/source readout
```

with topological drift added as a mapping-class component.

## Final closure statement

The complete contribution of this branch is:

```math
\boxed{
\text{TopologicalDriftVisibility.A}
}
\tag{CL.9}
```

where

```math
\begin{aligned}
&\text{AnnularMarkingCompactness.A}
+\text{BoundedModulusOrCollarCharge.A}
+\text{AnnularTwistActionLedger.A}\\
&\quad
+\text{DonorEdgeMonodromyReadout.A}
\Longrightarrow
\text{TopologicalDriftVisibility.A}.
\end{aligned}
\tag{CL.10}
```

Once `(CL.9)` is added to `MinimalZenoTraceNoEscape.A`, the topological side is
closed: no Dehn-twist, mapping-class, or Fenchel-Nielsen twist variable remains
as an untracked independent Zeno escape.

The active branch returns to:

```math
\boxed{
\text{SourceResolvedCarrierCurrent.A}
+\text{CarrierBoundaryLegalBound.A}
+\text{SourceWeightedPolarSaturation.A}
+\text{MovingAnnularTraceCompactness.A}
+\text{ResidualPreCauchyReadoutRouting.A}
}
\tag{CL.11}
```

with

```math
\text{ResidualPreCauchyReadoutRouting.A}
\equiv
\text{MinimalChainProjectedResidueIdentity.A}
\tag{CL.12}
```

on the nonzero-flux side, and `MinimalZenoProfileProduction.A` on the zero-flux
side.

Thus this branch is exhausted and closed as an independent line of inquiry.
Its surviving content is now a support term inside the complete annular
no-escape readout, not a live standalone theorem route.
