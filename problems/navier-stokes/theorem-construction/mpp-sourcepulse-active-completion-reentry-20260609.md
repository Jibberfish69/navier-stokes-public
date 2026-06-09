# MPP SourcePulse Active Completion Reentry

## Status

Active-completion reentry after the June 9 receiver / Field endpoint pass.

This note is not a final proof.  It records the parent-thread theorem judgment
that prevents the Navier-Stokes PDFs from claiming CMI finality after the
conditional receiver machinery has been checked.

## Target

The live PDF blocker remains the same reader-facing claim:

```math
\text{finite Clay terminal counterexample}
\Longrightarrow
\bot.
```

The checked proof route cannot get this conclusion by spending
`LCI.A`, `DTC.A`, `CSP.A`, `OFP.A`, `Field`, or endpoint readout as if they were
unconditional consequences of original smooth data.

## Receiver / Field Endpoint Reentry

The common-collar attempt showed that the route-native proof of
`CommonCollarEnvelopePropagation.A` returns to an `EOC/LCI` fixed point.  The
noncircular receiver bypass proves only a retained still-live branch:

```math
\text{still-live retained receiver collar}
\Longrightarrow
EOC.A\Longrightarrow AFD.A\Longrightarrow AFD.B\Longrightarrow RCF.A
\Longrightarrow LCI.A.
```

The follow-up receiver audit gives the stronger structure:

```math
DTC.A_{\mathfrak p}
\Longrightarrow
EOC.A_{\mathfrak p}+AFD.A_{\mathfrak p}+AFD.B_{\mathfrak p}+RCF.A_{\mathfrak p}.
```

But the pointwise retained packet is conditional.  The retained branch runs
through local smooth center-ball forcing:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.PRE_{\mathfrak p}
\Longrightarrow
DTC.A_{\mathfrak p}.
```

The source check matters here: finite energy and the pressure Poisson equation
do not give the point-center pressure derivatives required by `NKF.Point` /
`NKF.Native`.  Therefore this retained pointwise route is a retained-window
conditional proof packet, not a proof from original smooth data.

## Averaged Replacement Route

The finite-energy-native replacement is averaged:

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

On the no-`Jump_avg` branch, `TGC.A` supplies the terminal scheduled averaged
cover and globalizes the local averaged ACT estimates.  The readout layer is
downstream:

```math
End_{NS,\mathrm{avg}}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

This ordering is legal only after the averaged endpoint package exists.  It
cannot be used upstream to prove the finite terminal cover, pointwise `DTC.A`,
or pointwise `Field`.

## Remaining Branch

The active averaged-route primitive is the branch-native elimination of
`Jump_avg`.  The current route reduces that primitive to:

```math
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A.
```

Equivalent current presentations are:

```math
SignedLocalSource.A,\quad
SOURCE.NO\text{-}PULSE.A,\quad
MSC.Spill.NoPulse,\quad
MSC.BadAC,\quad
QDrain.A.
```

The exact PDE atom is:

```math
\text{exclude heat-scale, scale-critical nonlinear source pulses carrying
mixed bilinear dissipation on active terminal windows.}
```

## Direct Proof Pass

The remove route is not installed.  The active source contains the strain /
vorticity production channel, and incompressibility plus pressure recovery do
not give a sign for the positive part after terminal weights, cutoffs, and
same-fluid selection.

The charge route is not installed.  Energy and local energy give first-moment
reserves, while a heat-scale pulse can carry order-one normalized active
source or active-square mass on a short window.  The missing charge theorem is
a native source absolute-continuity / active-window Carleson theorem:

```math
NativeSourceAC.A
\quad\text{or}\quad
ActiveSquareCarleson.A.
```

The rigidify route has one useful refinement.  Failure of
`SourcePulseExclusion.A` already supplies a localized source-balanced child
pulse, so the old global `MSC.Localize^{src}` bridge is not the next live
blocker for this presentation.  The parent theorem is now the wall:

```math
ParentConcentrationOrDiffuseCharge.A.
```

The direct parent audit leaves both branches open:

```math
ParentConcentration.A\quad\text{open},
\qquad
DiffuseParentCharge.A\quad\text{open}.
```

The obstruction is that the positive source-parent measure can be spread across
arbitrarily many legal predecessor packets.  Current finite-band, same-fluid,
local-energy, pressure/cutoff, signed, and positive-carrier surfaces do not
force bounded parent concentration and do not price the diffuse part by a
finite reserve.

The ancestry drain side is also open:

```math
BackwardDrainFunctional.A
```

or equivalently a finite reserve / bounded rank that spends or decreases on
every legal parent edge.  The compactness side is open as well:

```math
BoundedAncestryClass.A+SourceResidueLiouville.A.
```

Local suitable compactness alone does not put the ancient limit in a rigid
class, and broad ancient no-pulse is false without source-residue-specific
structure.

## Verdict

The receiver / Field endpoint pass does not close CMI finality.  It moves the
active proof target to the source-pulse branch:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A
}
```

with the sharp ancestry subtarget:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A
+
\left(
BackwardDrainFunctional.A
\vee
BoundedAncestryClass.A+SourceResidueLiouville.A
\right).
}
```

Until one of the remove, charge, or rigidify theorems is proved, the PDFs must
not say that finite Clay terminal counterexamples are excluded.  They may only
say that the current route has a conditional no-`Jump_avg` averaged endpoint
assembly and a live branch-native source-pulse theorem.

## Next Loop Target

Attack `ParentConcentrationOrDiffuseCharge.A` through one of two concrete
mechanisms:

1. prove a reverse-Holder / finite-complexity concentration theorem for the
   positive same-fluid source-parent measure; or
2. prove a diffuse-parent charge theorem, for example
   `TwoTowerDonorDepletion.A`, that assigns high-branching legal parent mass
   to a finite scale-normalized donor reserve.

Any manuscript or PDF finality claim must wait until this branch-native
source-pulse theorem, or an equivalent remove / charge / rigidify theorem, is
proved.
