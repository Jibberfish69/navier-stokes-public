# MPP ScaleNormalizedPulseReserveSpend.A Fanout Reentry

Date: 2026-06-09

Status: active-completion proof fanout. This note does not close public Clay
finality.

## Target

The current public-finality child is still:

```text
NoGenuineExitFromSmoothData.A
<- OriginalSmoothDataPackSurvival.A
<- ScaleNormalizedPulseReserveSpend.A.
```

The tested theorem is:

```text
ScaleNormalizedPulseReserveSpend.A:
every source-balanced active pulse on selected terminal heat-scale windows
spends a same-ledger finite reserve.
```

This theorem must feed first-exit Pack survival. It cannot be a CM face label
or a renamed source-pulse exclusion theorem.

## Checked Normal Form

The source-pulse normal-form and native-measure notes put the survivor in a
precise form. If the reserve-spend theorem fails, there is a terminal same-fluid
active packet

```text
P_n=(Q_n^Phi,j_n,I_n), |I_n| ~ 2^{-2j_n}, j_n -> infinity, t_n -> T_*
```

with nonzero normalized native positive source mass after legal losses and
installed finite reserves are removed. In measure language,

```text
mu_src^+ = f rho_inst + mu_sing,  mu_sing != 0,  mu_sing perp rho_inst.
```

The problem is exactly the singular native positive source component. Existing
energy, first-moment dissipation, scheduler smallness, pressure/cutoff losses,
signed exchange, local energy, compactness, and same-fluid transport do not
dominate it.

## Fanout Test

There are only three non-alias ways to spend this pulse.

### 1. Domination reserve

Prove:

```text
NativeSourceAC.A
```

or equivalently a native positive source Carleson theorem. This would imply
`LocalPositiveSourceCarleson.A`, `SourcePulseExclusion.A`, and the active-square
or positive-Carleson reserve needed by the Pack-survival route.

Current status: not installed. The existing active-square, signed
lifted-remainder, source-time concentration, pressure-spread, and
eigendirection-decorrelation attempts all return to the same heat-scale
source-balanced pulse.

### 2. Ancestry / charge

Prove:

```text
ParentConcentrationOrDiffuseCharge.A
```

then close the remaining terminal refill tree by:

```text
RefillTreeWellFounded.A.
```

The source-parent audit shows that `EdgeDisintegrate.A` handles source recovery
and same-fluid edge fidelity once the localized pre-Cauchy source packet is
used. The missing part is parent lower density, summable loss, or a finite
diffuse-parent charge.

Current status: not installed. The direct parent-concentration pass reduces the
unpaid branch to terminal Zeno source-refill. The terminal Zeno branch reduces
again to:

```text
BASACTimeFaceAntiAtom.A
```

or the super-L1 form:

```text
UniformTemporalSourceIntegrability_{p,B_ASAC}.A, p>1.
```

### 3. Rigid terminal residue

Produce a rigid source-residue class and prove a matching Liouville theorem:

```text
ProducedRigidSourceResidueClass_B.A + SourceResidueLiouville_B.A.
```

Current status: not installed. `ZenoCompactnessExtraction.A` gives a local
suitable source-residue limit with nonzero inherited native positive source
mass. The useful Liouville half exists only after the terminal time-face
anti-atom subclass is produced. The production theorem is again:

```text
BASACTimeFaceAntiAtom.A.
```

## CM Face Boundary

A terminal singular native source residue can be classified as a Pack/Part face
inside the CM contrapositive witness tree. That classification is installed
support for:

```text
Exit(Q):=not Member(Q).
```

It does not prove the public Clay no-genuine-exit bridge by itself. For CMI
finality, this branch must either spend the pulse as a finite same-ledger
reserve or prove a noncircular first-exit Pack-survival replacement.

## Result

`ScaleNormalizedPulseReserveSpend.A` is not installed.

The loop should stop using a single broad reserve-spend label as though it were
one serial theorem. The live proof fanout is:

```text
NativeSourceAC.A
or ParentConcentrationOrDiffuseCharge.A + RefillTreeWellFounded.A
or ProducedRigidSourceResidueClass_B.A + SourceResidueLiouville_B.A.
```

At current installed resolution, both the ancestry branch and the rigid-residue
branch reduce to the same sharp executable target:

```text
BASACTimeFaceAntiAtom.A / UniformTemporalSourceIntegrability_{p,B_ASAC}.A.
```

The next loop pass should attack that theorem directly while keeping the
domination-reserve route as a parallel evidence lane. Until one of these
fanout branches is proved and propagated through
`OriginalSmoothDataPackSurvival.A` and `NoGenuineExitFromSmoothData.A`, both
PDFs remain nonfinal.

## New Live Criticism

`NS-LIVE-20260609-096`: the active loop had narrowed the proof leaf to
`ScaleNormalizedPulseReserveSpend.A`, but that label is still too broad for
smart continuation unless it is split into its three non-alias proof branches:
native-source domination reserve, ancestry/diffuse-parent charge, and rigid
terminal source-residue Liouville. Current installed evidence leaves the
ancestry and rigid branches both feeding `BASACTimeFaceAntiAtom.A /
UniformTemporalSourceIntegrability_{p,B_ASAC}.A`, so the next pass must attack
that time-face anti-atom theorem directly while keeping CMI finality false.
