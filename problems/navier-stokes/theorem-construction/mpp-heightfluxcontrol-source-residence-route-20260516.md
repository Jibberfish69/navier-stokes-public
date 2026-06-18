# MPP HeightFluxControl.A Source-Residence Route

Date: 2026-05-16

Status: alternate closure route found; conditional, not promoted.

Purpose: record the non-full-principal way to close `HeightFluxControl.A` after
`mpp-heightfluxcontrol-full-principal-attempt-20260516.md`.  The route does not
try to bound the whole tail-weighted native shell residual.  It instead uses the
retained-face trichotomy and tries to remove the only surviving terminal branch:
the zero-thickness Zeno source atom.

## 0. Target

The source-wall direct branch still needs:

```math
HeightFluxControl.A
\Longrightarrow
DonorHeightCreation.A
\Longrightarrow
ReserveCreationCharge.A
\Longrightarrow
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The failed full-principal route tried to prove `HeightFluxControl.A` by a
global tail-weighted residual estimate.  This note tests the other route:

```math
\boxed{
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
ResidueEvacuationWithoutSquareSource.A
\Longrightarrow
ActiveHeightFluxTrichotomy.A
\Longrightarrow
HeightFluxControl.A.
}
```

This is a real alternative to the full-principal estimate.  It is not a theorem
discharge unless `PositiveRemainderDepletion.A` is proved independently of
`ScaleCriticalTreeCarleson.A`, `TemporalNonAtomicSource.A`, and
`ZenoSourceResidueRigidity.A`.

## 1. Retained-face trichotomy input

`mpp-active-height-flux-trichotomy-route-20260506.md` reduces a first large
positive height-flux event to four channels:

```text
Pack gain,
Part / heat-dwell failure,
legal Field source charge,
terminal Zeno source-residue atom.
```

The post-ASAC notes remove the active frame-alignment and signed pair-weight
pieces.  More precisely:

```text
ASAC.A
+ NearBandBoundaryPack.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> NearBandMaterialSourceCharge.A.
```

The non-Zeno donor trees telescope by `LocalDonorBalance.A` and
`EntranceLeafDecay.A`.  Thus the only branch still not paid by retained
Pack/Part/legal Field bookkeeping is:

```text
terminal Zeno source-residue atom.
```

In the trichotomy language this is the object named:

```text
ResidueEvacuationWithoutSquareSource.A.
```

It means terminal atom exclusion without importing `HeatScaleSquareSource.A`,
`LocalPositiveSourceCarleson.A`, or `ScaleCriticalTreeCarleson.A`.

## 2. Source-residence theorem that would remove the atom

A sufficient theorem is:

```math
\boxed{
PositiveViscositySourceThickness.A:
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
C_R\varepsilon^\theta+o_m(1),
\qquad \theta>0.
}
```

It implies:

```math
PositiveViscositySourceThickness.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

Indeed, the first implication is weak-star passage on terminal time strips.
With the no-earlier-selected-source slice from the first-pulse/Zeno extraction,
terminal non-atomicity puts the residue limit in the temporal rigid class
`B_time`, and the source residue vanishes there.

The route-native way to produce the thickness theorem is:

```math
\boxed{
SameFluidSourceResidence.A.
}
```

This theorem must use that the source is the same-fluid Navier-Stokes native
positive pre-Cauchy source, not an arbitrary external `L^1_t` forcing.

## 3. Packet mechanism: PositiveRemainderDepletion.A

Use the localized pre-Cauchy source split:

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+\mathcal D_P
+\operatorname{div}_{\Phi}\mathcal J_P
+\mathcal R_P.
```

Here:

```text
\partial_t E_P      telescopes on legal refill trees,
D_P                 is drain,
div_Phi J_P         is boundary / cutoff legal loss,
R_P                 is the only interior positive remainder.
```

The needed packet theorem is:

```math
\boxed{
PositiveRemainderDepletion.A:
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\operatorname{Drain}_{parent}(P)
+\operatorname{Loss}_{legal}(P),
\quad 0<\theta<1.
}
```

If this holds uniformly on bounded-overlap same-fluid terminal families, then
every positive native source pulse spends local drain, legal parent drain, or
legal loss.  Finite refill trees telescope.  Non-Zeno branches die at entrance
leaves.  A terminal Zeno branch cannot carry a positive source atom with zero
residence time, because each positive pulse in the branch has to spend a
summable same-fluid charge before arriving at the terminal slice.

Thus:

```math
\boxed{
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
ResidueEvacuationWithoutSquareSource.A.
}
```

Combining with the retained-face trichotomy gives the alternate closure:

```math
\boxed{
PositiveRemainderDepletion.A
+ ActiveHeightFluxTrichotomy.A\text{ bookkeeping}
\Longrightarrow
HeightFluxControl.A.
}
```

## 4. Direct proof test for PositiveRemainderDepletion.A

After legal pressure, cutoff, commutator, and boundary terms are removed, the
main part of `\mathcal R_P` is the native positive strain/source carrier:

```math
\mathcal R_P^{main}
:=
\chi_P\langle S_{<j}^{loc}w_j,w_j\rangle.
```

Equivalently:

```math
\left[\mathcal R_P^{main}\right]_+
=
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

The attempted drain absorption would need:

```math
\left[\langle S_{<j}^{loc}w_j,w_j\rangle\right]_+
\le
\theta\nu|\nabla w_j|^2
+\operatorname{Drain}_{parent}
+\operatorname{Loss}_{legal}.
```

The installed inputs do not imply this.  On a selected terminal packet the
active high shell may be polarized in an expanding eigendirection of the
localized lower strain:

```math
S_{<j}^{loc}e=\lambda e,
\qquad
\lambda>0,
\qquad
w_j\parallel e.
```

Then the positive source is:

```math
\langle S_{<j}^{loc}w_j,w_j\rangle
=
\lambda |w_j|^2,
```

and no sign or drain absorption follows from incompressibility, energy,
pressure routing, finite banding, same-fluid transport, or preterminal
smoothness.

The signed exchange route also does not prove the packet theorem.  The signed
dyadic cancellation happens before the operations that define the selected
terminal source:

```text
one-sided weights,
localized cutoffs,
same-fluid packet selection,
terminal active selection,
positive-part extraction.
```

Cauchy / Young gives only an active-square envelope, which is the scale-critical
reserve target again.  A reverse-Holder parent concentration theorem closes
this subcase only if it proves that boundedly many parents carry a fixed
fraction of the positive source; finite banding and same-fluid transport do not
rule out diffuse legal parentage.

## 5. Verdict

The alternate route is:

```math
\boxed{
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
ResidueEvacuationWithoutSquareSource.A
\Longrightarrow
ActiveHeightFluxTrichotomy.A
\Longrightarrow
HeightFluxControl.A.
}
```

This route is cleaner than the failed full-principal shell residual estimate:
it attacks the terminal Zeno atom directly by forcing source residence.

The route is still open.  The exact surviving analytic atom is:

```math
\boxed{
PositiveRemainderDepletion.A
}
```

in the strong form that pays the native positive pre-Cauchy remainder by drain,
legal parent drain, or legal loss on every bounded-overlap same-fluid terminal
family.  Proving only a branch-local or post-Cauchy envelope is not enough; it
must imply source residence and hence terminal residue evacuation without using
the square-source Carleson theorem.

The circularity boundary is recorded in
`mpp-common-hinge-prd-execution-audit-20260516.md`: the post-ASAC conditional
route

```text
ZenoSourceResidueRigidity.A => PositiveRemainderDepletion.A
```

cannot be used as the proof of the common hinge, because the intended source
residence route then returns to `ZenoSourceResidueRigidity.A`.
