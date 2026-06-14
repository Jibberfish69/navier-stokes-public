# MPP Major Non-Euler CM Contrapositive Closures

## Status

Installed for the major non-Euler Navier-Stokes surfaces named by the live edge.

This is not a census theorem for every text artifact in the lane.  It is the
object-level closure of the major surfaces that actually try to move retained
source mass, terminal source atoms, active height flux, signed current, square
reserve, or readout cover structure.

The rule is:

```text
a surface is CM-live only when its selected failure lands in Pack, Part, Field,
or a typed subcase already sorted to those faces.
```

All other major surfaces are kept as supplier, route, or readout support.  They
may be useful, but they are not promoted to a fourth CM face.

## 1. Governing CM Primitive

The primitive remains:

```math
Exit(Q):=\neg Member(Q;O_{NS}^{work}).
```

The witness envelope is:

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

So the contrapositive program does not ask every major estimate to be proved as
a positive theorem from `OriginalSmoothData`.  It asks:

```text
if this surface fails in the selected terminal branch, which CM face breaks?
```

The answer is recorded below.

## 2. Root Source-Control Detectors

### `ScaleCriticalTreeCarleson.A`

Installed theorem:

```math
RawSCTCFailurePartition.A
+SCTCFailureToFaceWitness.A
+RetainedSCTCFailureFieldExit.A.
```

Therefore:

```math
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

On the retained branch:

```math
Pack_Q+Part_{N,Q}
+\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

This is the Carleson turnover.  The failed scale-critical source reserve is not
an outside estimate anymore.  If the carrier and PDE participation still
survive, the only place the retained failure can go is one-field coherence.

The positive supplier theorem

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A
```

remains separate.

### Zeno / `TemporalNonAtomicSource.A`

Installed theorem:

```math
RawZenoFailurePartition.A
+ZenoAtomFailureToFaceWitness.A
+RetainedZenoAtomFieldExit.A.
```

Therefore:

```math
\neg_{sel} TemporalNonAtomicSource.A(Q)
+NoEarlierSelectedSourceSlice.A
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

On the retained branch:

```math
Pack_Q+Part_{N,Q}
+ZeroHeatTimeSourceResidue.A
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

So the Zeno terminal atom is the same kind of diagnostic as the Carleson tree:
after Pack and Part survive, the selected terminal source atom breaks `Field`.

The positive non-Carleson temporal anti-atom theorem remains separate.

## 3. Retained Amplitude

Major surface:

```text
RetainedFaceAmplitudeGain.A
```

Installed conditional theorem:

```math
PackGainLedger.A+PartEnvelope.A
\Longrightarrow
RetainedFaceAmplitudeGain.A.
```

Thus:

```math
\neg RetainedFaceAmplitudeGain.A
\Longrightarrow
\neg PackGainLedger.A
\vee
\neg PartEnvelope.A
\vee
\text{residual source-wall term}.
```

Interpretation against the CM faces:

```text
not PackGainLedger.A   -> Pack-side extension failure;
not PartEnvelope.A     -> Part participation/envelope failure;
residual source wall   -> Carleson/Zeno Field diagnostic.
```

This closes retained amplitude as a major CM boundary surface.  It does not
install the stronger implication:

```math
Pack_Q+Part_{N,Q}\Longrightarrow RetainedFaceAmplitudeGain.A.
```

The missing piece there is whether the current `Pack_Q` already includes the
positive low-strain gain ledger.  Current notes say it does not.

## 4. Active Height Flux And Low-Strain BV

Major surfaces:

```text
ActiveHeightFluxTrichotomy.A
LowStrainBVCharge.A
HeatDwellSampling.BV
NearBandBVToBurstOrSource.A
FrameBVCharge.A
```

The corrected active-height target is not a scalar source estimate.  It is a
face-routing statement:

```math
\text{first large positive height flux}
\Longrightarrow
Pack\text{-gain event}
\vee
Part\text{/dwell failure}
\vee
legal\ Field\ source\ charge
\vee
Zeno\ terminal\ residue\ atom.
```

The low-strain BV attempt proves a real partial mechanism:

```text
far-low temporal variation has a parabolic scale-separation gain.
```

The near-band and frame terms reduce to:

```text
NearBandMaterialSourceCharge.A + FrameBVCharge.A,
```

then, after ASAC and one-sided pair-weight corrections, to:

```text
TerminalWeightedNoFreeSink.A
```

and finally to:

```text
ZenoSourceResidueRigidity.A
```

plus already named boundary/projected-cutoff/local-donor bookkeeping.

Therefore the major height/low-strain surface is closed as a typed CM
disjunction:

```text
Pack gain -> Pack;
Part/dwell -> Part;
legal source charge -> Field support;
Zeno atom -> Field by the Zeno diagnostic.
```

It is not closed as a positive proof of `HeightFluxControl.A` or
`SquareReserveEvolution.A`.

## 5. Signed-Current Presentations

Major surfaces:

```text
TerminalSignedSaturation.A
TerminalSkewLocalizationLedger.A
WeightedLiftedDefectCarleson.A
ParabolicEdgeResistance.A
ParabolicNoFreeSink.A
ParabolicCycleCoercivity.A
OffFamilyCounteredgeCharge.A
```

The signed-current ledger proves the important negative fact:

```math
\text{signed-current route is not a lower installed closure.}
```

The route factors conditionally as:

```math
BareDyadicSkewCurrent.0
+TerminalSignedSaturation.A
+ParabolicEdgeResistance.A
\Longrightarrow
ParabolicSourceCurrent.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

But current direct attempts show:

```text
TerminalSignedSaturation.A        -> native positive source-control wall;
WeightedLiftedDefectCarleson.A    -> positive active strain-production carrier;
ParabolicEdgeResistance.A         -> scale-critical flux-amplitude remainder;
OffFamilyCounteredgeCharge.A      -> TerminalSignedSaturation.A;
ParabolicNoFreeSink.A             -> TerminalSignedSaturation.A.
```

Thus the signed-current family has no independent CM face.  Its selected
failures are sorted as:

```text
retained pack-gain or carrier failure -> Pack;
participation/localization failure    -> Part;
terminal positive source branch       -> Field through Carleson or Zeno;
unproved signed-current theorem       -> supplier route, not CM primitive.
```

## 6. Square Reserve / Reserve Creation / Native Trilinear Forms

Major surfaces:

```text
SquareReserveEvolution.A
ReserveCreationCharge.A
SquareChargeEvolution.A
NativeTrilinearDefectDomination.A
```

The direct first-pulse test shows why the old budget is too weak.  A one-shell
terminal pulse can make:

```math
\int\sum_{\ell>N}D_\ell(t)\,dt\to0
```

while the square reserve stays bounded below by a fixed positive constant:

```math
\mathcal R_N(I)
=
\int_I
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\ge c_{sq}>0.
```

So `SquareReserveEvolution.A` cannot be derived from installed first-moment tail
charge plus past-reserve damping.  It needs a square-amplitude charge identity:

```text
SquareChargeEvolution.A.
```

CM consequence:

```text
failure of the square-reserve supplier law is not a new face.
```

If the failed square reserve is selected and retained, it is exactly the
Carleson source-reserve failure already sorted:

```math
Pack_Q+Part_{N,Q}
+\neg_{sel} ScaleCriticalTreeCarleson.A
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

If the obstruction is merely the absent square-charge identity, it remains open
supplier work, not a CM landing.

## 7. Good Scale, `READ.COVER`, And Endpoint Readout

Major surfaces:

```text
GoodScaleNonCollapse.A
UniformReadCover.A
READ.COVER
Field.Read
DTC.Read
READ.END
PCTP.hard / TTU.A
```

Installed interface:

```math
GoodScaleNonCollapse.A
\Longrightarrow
UniformReadCover.A
\Longrightarrow
READ.COVER.
```

This is a downstream readout interface.  It is not an upstream source-wall
primitive.

The proof of:

```math
OriginalSmoothData\Longrightarrow GoodScaleNonCollapse.A
```

still needs one of:

```math
ScaleCriticalTreeCarleson.A
```

or

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Therefore selected readout failure is Field-side support only.  It may expose a
failure in endpoint one-field readout, but it does not become Pack or Part
unless a separate hypothesis in the readout chain fails.

## 8. `SOURCE.NO-PULSE.A`, `AWG.A`, `TGC.A`, and no-`Jump_avg`

Major surfaces:

```text
SOURCE.NO-PULSE.A
AWG.A
TGC.A
no-Jump_avg
normalized-adjoint SourceDrain support
```

The unconditional source-drain theorem fails at diffuse legal source-parent
ancestry.  The normalized-adjoint package remains conditional support:

```math
CoeffStop.A+WeightedAdjBessel.A+WeightedAdjRes.A+GainStop.A+ParentKernel.A
+FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

But `FirstPulseKill.A` does not price diffuse legal ancestry.  So:

```text
SOURCE.NO-PULSE.A / AWG.A / TGC.A / no-Jump_avg
```

are not CM primitives.  They are supplier/readout surfaces.  They may feed
`GoodScaleNonCollapse.A`, `READ.COVER`, and endpoint `Field` readout only after
a licensed source-wall bridge.

## 9. Major Closure Theorem

```math
\boxed{
MajorNonEulerCMContrapositiveClosure.A
}
```

For the major non-Euler Navier-Stokes surfaces named above, every selected
failure has one of the following lawful outcomes:

```text
1. Pack exit;
2. Part exit;
3. Field exit;
4. typed Pack/Part/Field/Zeno subcase, with Zeno retained atoms sorted to Field;
5. supplier/readout quarantine with no independent CM primitive.
```

In particular:

```text
Carleson selected source-reserve failure -> Field after Pack and Part survive.
Zeno selected terminal atom              -> Field after Pack and Part survive.
Retained amplitude failure               -> Pack/Part, or returns to source-wall Field.
Height/low-strain failure                -> Pack/Part/Field/Zeno typed subcase.
Signed-current failure                   -> no new face; returns to Pack/Part or source-wall Field.
Square-reserve failure                   -> no new face; retained failure is Carleson Field.
Good-scale/readout failure               -> downstream Field/readout support.
PCTP/source/no-jump family               -> supplier/readout quarantine.
```

This is the major-surface analogue of the Carleson turnover: a surface matters
to the CM contrapositive program only once its selected failure has a face.

## 10. Parent-Covered Surface Check

The live edge names several child surfaces that do not need separate major
closures because they are already consumed by one of the major buckets above.
They are recorded here so absence from a headline is not read as omission.

| Surface family | Covered by | CM role |
|---|---|---|
| `ParentSquareEmbed.A`, `LocalPositiveSourceCarleson.A` | `ScaleCriticalTreeCarleson.A` | reduction/supplier into the Carleson `Field` diagnostic |
| `UniformTemporalSourceIntegrability_p.A`, `HeatScaleSquareSource.A` | Carleson/Zeno split | temporal integrability route reduces back to square source / Carleson unless an independent Zeno theorem is supplied |
| `TemporalNonAtomicSource.A`, `ZeroHeatTimeSourceResidue.A`, `ZenoSourceResidueRigidity.A` | Zeno detector | selected terminal atom becomes `Field` after Pack and Part survive |
| `HeatDwellSampling.BV`, `NearBandBVToBurstOrSource.A`, `NearBandMaterialSourceCharge.A`, `FrameBVCharge.A` | height/low-strain bucket | typed `Pack`/`Part`/`Field`/Zeno routing, not a new face |
| `TerminalWeightedNoFreeSink.A`, `TwoTowerDonorDepletion.A`, `PositivePairWeightDefectCharge.A` | post-ASAC signed-current / height-flux bucket | donor/no-free-sink child route; retained unresolved atom routes to Zeno/`Field` |
| `LocalizedSkewCurrent.A`, `TerminalSkewLocalizationLedger.A`, `CycleHeatAction.A`, `ParabolicCycleCoercivity.A`, `ParabolicNoFreeSink.A`, `OffFamilyCounteredgeCharge.A` | signed-current bucket | conditional support; failures return to `Pack`, `Part`, or source-wall `Field` |
| `FirstCrossingCarrier.A`, `GoodScaleNonCollapse_{1/2}.A`, `UniformReadCover.A` | GoodScale / `READ.COVER` bucket | readout interface, not an upstream CM primitive |
| `TGC.A.cover`, `TGC.A.noEscape`, `AACT.Global.noJump`, `AVG.END.A`, `READ.END`, `TTU.A` | PCTP / no-`Jump_avg` readout bucket | downstream consumer/readout support |

So no extra live-edge major bucket is missing.  These child surfaces are covered
only through their parent bucket; promoting one of them independently still
requires a named bridge into `Pack`, `Part`, or `Field`. `Member` is downstream
after the CM witness certificate.

## 11. What Remains Open

The following are still positive supplier problems, not missing CM landings:

```text
OriginalSmoothData => PositiveRemainderDepletion.A,
  sharpened to SourceWeightedTerminalAngularDepletion.A;
ActiveShellSourceNormalize.A / active-square reserve,
  the square-source and ASAG survivor;
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A,
  or a produced rigid Zeno residue class;
OneSidedNearBandMaterialStrainBV.A / TerminalPressureHessianNoSustain.A,
  if the eigenframe/pressure route is used;
ScaleCriticalTreeCarleson.A,
  as the Carleson formulation of the same source-wall Field-side burden.
```

They matter if the goal is to prove the positive smoothness supplier theorem.
They are not needed to say where the major selected failures leave CM.
