# MPP Current Route Linear Proof Order Note

## Status

Manuscript-facing proof-order note for the current Navier-Stokes route after
`SourceWall.Reconcile.A` was resolved by demoting normalized-adjoint
source-drain to conditional support.

This note is not a new theorem proof.  It linearizes the present repo route and
keeps the reopened root source wall visible.

## Governing Split

The CM witness bridge is installed:

```math
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q),
```

and its contrapositive witness is installed:

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
```

The source-pulse branch is separate.  The normalized-adjoint source-drain
package is accepted as conditional analytic support, but not as an
unconditional proof of `SOURCE.NO-PULSE.A` from `OriginalSmoothData`.

The live root is:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

## Conditional Signed-Current Proof Order

The most structural direct attack keeps the signed Navier--Stokes source
exchange until the final positive-part extraction:

```math
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
```

The current audit does not treat `LocalizedSkewCurrent.A` as installed.  The
installed algebra is only the bare unweighted dyadic skew current:

```math
BareDyadicSkewCurrent.0.
```

The missing localization step is:

```math
LocalizedSkewCurrent.A:
\quad
\partial_tE_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

with the non-skew pressure, cutoff, transport, off-family, and boundary terms
in `L_P`.  The theorem-grade audit reduces this to:

```math
TerminalSkewLocalizationLedger.A
\quad\text{or equivalently}\quad
TerminalSignedSaturation.A.
```

The hard theorem is:

```math
\boxed{
CycleHeatAction.A:
\text{ terminal closed source-current cycles pay viscous heat action.}
}
```

The direct attempt on `CycleHeatAction.A` also fails without a no-free-sink
input:

```math
ParabolicNoFreeSink.A:
\text{ internal source-current paths feeding terminal positive divergence are
boundary-fed, heat-action charged, legal-loss charged, or earlier forbidden.}
```

The closed-cycle subcase is the sharper heat-action coercivity target:

```math
ParabolicCycleCoercivity.A
\quad\text{with first-current pruning for earlier storage paths.}
```

The audited conditional package is:

```math
TerminalSignedSaturation.A
+ParabolicEdgeResistance.A
\Longrightarrow
ParabolicSourceCurrent.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The direct attempts do not install either input.  `TerminalSignedSaturation.A`
returns to `SignedPositiveBalance.A` / native positive source control, and
`ParabolicEdgeResistance.A` leaves a scale-critical flux-amplitude remainder
equivalent to `ScaleCriticalTreeCarleson.A`.  Therefore the signed-current
route is conditional support, not a lower live root.

## Scalar Direct Fallback

The direct branch now begins with the installed diffuse-parent square embedding:

```math
ParentSquareEmbed.A
\quad+\quad
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

The installed part is `ParentSquareEmbed.A`.  The live scalar reserve is:

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+\mathrm{legal\ losses}.
}
```

The latest scalar dynamic attempt records:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A,
\qquad
SquareReserveEvolution.A\text{ not installed.}
```

The exact scalar reduction is:

```math
ReserveCreationCharge.A
\quad\text{with sufficient condition}\quad
ActiveWindowHeight.A.
```

Neither is installed from the current first-moment, local-energy,
donor-balance, normalized-adjoint, or compactness inputs.

If this reserve is proved, the source-wall chain is:

```math
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

## Zeno Proof Order

The alternate source-wall root is:

```math
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

The compactness extraction supplies a local suitable ancient source-residue
limit, but the current repo does not yet produce the rigid class `B`, nor the
residue Liouville theorem inside that class.

The temporal-support candidate would supply such a class through:

```math
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
B_{time}.
```

The implication is valid conditionally, but the latest attempt shows
`UniformTemporalSourceIntegrability_p.A` is not installed and reduces to
`HeatScaleSquareSource.A`, route-equivalent to the same positive source-control
wall.

## Conditional Source-Drain Support

The normalized-adjoint package remains useful as the conditional analytic core:

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

Its missing unconditional certificate is the no-diffuse-ancestry version of
`FirstPulseKill.A`.  Once either reopened root theorem closes that source-wall
gap, this conditional support can feed the downstream readout chain.

## Downstream Order After Root Closure

After a root source-wall theorem supplies `SOURCE.NO-PULSE.A`, the downstream
order is:

```math
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

The terminal-tail/readout chain then feeds the `Field` row, together with the
typed Pack and Part rows:

```math
Pack.TTU\Longrightarrow Pack_Q,
```

```math
Part.NoDrop\Longrightarrow Part_{N,Q},
```

```math
Field.Readout_{source\text{-}pulse}
\Longrightarrow
Field_{N,r,Q}.
```

With the three rows supplied, the CM witness bridge gives:

```math
CM_{N,r,Q}
\Longrightarrow
Smooth_N(Q),
```

and the all-depth statement gives:

```math
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q).
```

Finally this supplies the Clay-facing conclusion for smooth finite-energy
Navier-Stokes data.

## Release Boundary

The release/review bundle can be final only after the reopened root source wall
is proved and shared builders stop flattening the lane to export-ready posture.
Until then, generated packet/review/submission surfaces are downstream cleanup
artifacts rather than theorem authority.
