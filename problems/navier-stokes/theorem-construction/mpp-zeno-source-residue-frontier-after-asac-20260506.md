# MPP Zeno Source-Residue Frontier After ASAC

Date: 2026-05-06

Status: frontier audit after post-ASAC reductions; no hidden non-circular Zeno
closure found.

Purpose: record the exact terminal atom left after
`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md` and prevent the
route from drifting back into broad `ZenoBoundedClass_B.A` language.

## 0. Post-ASAC arrival point

The current chain is:

```text
ASAC.A
+ PositivePairWeightDefectCharge.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A
=> NearBandMaterialSourceCharge.A.
```

The non-Zeno donor branch is discharged by local donor-balance telescoping plus
entrance leaf decay.  The active-alignment and one-sided positive pair-weight
defects are discharged by ASAC.  Therefore the only live donor/no-free-sink
atom is:

```text
ZenoSourceResidueRigidity.A.
```

## 1. Installed compactness half

`mpp-zeno-source-residue-compactness-extraction-note.md` proves:

```text
ZenoCompactnessExtraction.A.
```

An uncharged legal Zeno source-refill branch extracts an ancient local suitable
source-residue limit:

```math
(u_\ast,p_\ast,\mu_\ast^{src})
```

with nonzero inherited native positive source residue:

```math
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
\tag{ZAF.1}
```

Thus the remaining rigidity theorem cannot be merely compactness.  It must
force the limiting residue to vanish.

## 2. Narrowest rigid class found

The classical rigid classes are not produced by installed inputs:

```text
finite global ancient energy,
Type I,
critical smallness,
bounded ancient vorticity,
self-similar / discretely self-similar,
two-dimensional / axisymmetric,
native source-cancellation.
```

The only sharp class using the first-pulse information is the temporal-support
class:

```text
B_time.
```

It consists of Zeno-extracted limits with:

```math
\mu_\ast^{src}(B_R\times[-R^2,-a])=0
\quad
\forall R<\infty,\ \forall a>0,
\tag{ZAF.2}
```

and:

```math
\mu_\ast^{src}(B_R\times\{0\})=0
\quad
\forall R<\infty.
\tag{ZAF.3}
```

For `B_time`, the Liouville implication is elementary:

```math
\boxed{
ZenoResidueLiouville_{B_{time}}.A:
B_{time}\Longrightarrow \mu_\ast^{src}=0.
}
\tag{ZAF.4}
```

The first condition `(ZAF.2)` is the no-earlier-selected-source information.
The second condition `(ZAF.3)` is the missing theorem:

```text
TemporalNonAtomicSource.A.
```

Therefore:

```math
\boxed{
ZenoCompactnessExtraction.A
+NoEarlierSelectedSourceSlice.A
+TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
}
\tag{ZAF.5}
```

## 3. Temporal anti-atom is the exact atom

The theorem is:

```math
\boxed{
\textbf{TemporalNonAtomicSource.A:}\quad
\mu_\ast^{src}(B_R\times\{0\})=0
\quad\forall R<\infty
}
\tag{TNA}
```

for every same-fluid terminal Zeno source-refill rescaling produced by
`ZenoCompactnessExtraction.A`.

The known sufficient condition is:

```math
\boxed{
UniformTemporalSourceIntegrability_p.A:
\left\|
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}
\right\|_{L_s^p((-1,0))}
\le C_R
\quad\text{for some }p>1.
}
\tag{UTI}
```

Then Holder gives:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p},
```

and weak-* passage followed by `\varepsilon\downarrow0` proves `(TNA)`.

## 4. Why the known route is circular

`mpp-uniform-temporal-integrability-next-attempt-20260505.md` proves the
strongest installed reduction:

```text
HeatScaleSquareSource.A
=> UniformTemporalSourceIntegrability_2.A
=> TemporalNonAtomicSource.A.
```

But on the current route:

```text
HeatScaleSquareSource.A
== LocalPositiveSourceCarleson.A
== ScaleCriticalTreeCarleson.A.
```

Using that route here imports the same source-wall theorem the height-flux
branch is trying to close.  Thus `TemporalNonAtomicSource.A` is a clean
interface, but not a non-circular discharge unless it is proved by a different
mechanism.

## 5. Fresh non-Carleson test: causal heat-thickness

The tempting positive-viscosity idea is:

```text
a fixed-viscosity source residue should need nonzero heat-time thickness;
a pure terminal atom has no parabolic participation time and so should be a
class-exit/Euler-side readout rather than an internal NS event.
```

In theorem form this is:

```math
\boxed{
PositiveViscositySourceThickness.A:
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^\theta+o_m(1)
\quad\text{for some }\theta>0.
}
\tag{PVST}
```

`PVST` implies `TemporalNonAtomicSource.A` without first proving the
square-source Carleson estimate.

However, the direct Duhamel test shows why this is not installed.  A forcing
profile with time marginal

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
\tag{ZAF.6}
```

has bounded `L_s^1` mass, converges to a terminal atom, and can still create a
finite terminal response through the heat kernel:

```math
\int_{-1/m}^{0} e^{(0-s)\nu\Delta}F_m(s)\,ds.
\tag{ZAF.7}
```

For `|s|\ll1` in rescaled heat units, the heat kernel has not had time to
produce a smallness factor.  Thus fixed positive viscosity alone does not
supply `(PVST)` unless one proves an additional temporal spread, reverse
Holder, or square-source estimate for the native positive source carrier.

This is the exact obstruction: a terminal atom is a zero-thickness source
readout.  Ruling it out is precisely the missing temporal anti-concentration
theorem.

## 6. Current honest frontier

No independent narrower non-circular theorem below `TemporalNonAtomicSource.A`
is currently installed.

The frontier is:

```text
TemporalNonAtomicSource.A
```

with the caveat:

```text
known sufficient proof => UniformTemporalSourceIntegrability_p.A
=> HeatScaleSquareSource.A
=> ScaleCriticalTreeCarleson.A,
```

which is circular for the current route.

Equivalently, the post-ASAC height-flux/source-wall frontier is:

```text
ScaleCriticalTreeCarleson.A
```

or a genuinely new proof of:

```text
TemporalNonAtomicSource.A
```

that does not pass through `HeatScaleSquareSource.A`,
`LocalPositiveSourceCarleson.A`, or `ScaleCriticalTreeCarleson.A`.

## 7. Export to the current route

The route after this audit is:

```text
ZenoCompactnessExtraction.A
+ NoEarlierSelectedSourceSlice.A
+ TemporalNonAtomicSource.A
=> ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A
=> NearBandMaterialSourceCharge.A
=> ActiveHeightFluxTrichotomy.A
=> HeightFluxControl.A.
```

The only uninstalled theorem in that Zeno segment is:

```text
TemporalNonAtomicSource.A.
```

No promotion of `TerminalWeightedNoFreeSink.A`, `NearBandMaterialSourceCharge.A`,
or `HeightFluxControl.A` is licensed until that atom or the direct
`ScaleCriticalTreeCarleson.A` theorem is proved.

## 8. Class-exit classification of failure

`mpp-temporal-atom-viscosity-participation-classification-20260506.md` records
the only safe Euler/class-exit fold-in:

```text
not TemporalNonAtomicSource.A
+ NoEarlierSelectedSourceSlice.A
=> ZeroHeatTimeSourceResidue.A.
```

This proves that a terminal source-residue atom has zero heat-time
participation moment:

```math
\int (-s)\,d\mu_m^{src}\to0.
```

It is a class-exit signature, not an Euler membership discharge and not a contradiction
inside fixed positive-viscosity Navier-Stokes until a separate
`NoZeroHeatTimeResidueInsideNSClass.A` / temporal anti-concentration theorem is
proved.
