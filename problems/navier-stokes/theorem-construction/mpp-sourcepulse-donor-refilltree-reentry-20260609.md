# MPP SourcePulse Donor / Refill-Tree Reentry

## Status

Active-completion reentry after the source-pulse branch was reopened by the
June 9 receiver / averaged-endpoint pass.

This note is not a final proof.  It records the parent-thread theorem judgment
needed to keep the Navier-Stokes PDFs from claiming CMI finality while the
source-pulse branch remains open.

## Governing Target

The current route has reduced the still-live branch to:

```math
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A.
```

Here `SourcePulseExclusion.A` means exclusion of heat-scale,
scale-critical nonlinear source pulses carrying mixed bilinear dissipation on
active terminal windows.  Current equivalent presentations are:

```math
SOURCE.NO\text{-}PULSE.A,\quad
SignedLocalSource.A,\quad
MSC.Spill.NoPulse,\quad
MSC.BadAC,\quad
QDrain.A,\quad
ActiveSquareCarleson.A.
```

These are route-equivalent presentations of the same wall.  None is installed
from `OriginalSmoothData`.

## Donor / Refill Tree Reduction

The donor algebra is installed locally.  The theorem
`LocalDonorBalance.A` says that a legal donor packet can feed a child pulse only
by draining, by absorbing licensed loss, or by being refilled by an earlier
legal parent:

```math
\pi(P^-\to child(P^-))
\le C_{\mathrm{refill}}
\Delta E(P^-)
+\pi(parent(P^-)\to P^-)
+\ell(P^-).
```

Finite legal refill trees telescope.  Branches that reach a fixed preterminal
entrance surface are controlled by `EntranceLeafDecay.A`.  Therefore the donor
route no longer stops at the local balance identity.

The remaining donor theorem is:

```math
RefillTreeWellFounded.A.
```

The direct refill-tree audit shows that `RefillTreeWellFounded.A` is not proved
by raw energy, local energy, finite banding, same-fluid transport, or scale-time
summation.  The only branch not controlled by the installed non-Zeno theorem is
terminal Zeno source-refill ancestry:

```math
\cdots\to P^{-2}\to P^{-1}\to P^0,
\qquad
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

## Zeno Alternatives

The current exact split is:

```math
EntranceLeafDecay.A
+
\left(
ScaleCriticalTreeCarleson.A
\vee
ZenoSourceResidueRigidity.A
\right)
\Longrightarrow
RefillTreeWellFounded.A.
```

`EntranceLeafDecay.A` is installed for non-Zeno branches.  The two Zeno
closures are open.

### Carleson / Charge Side

`ScaleCriticalTreeCarleson.A` has been reduced to the localized positive
pre-Cauchy source Carleson estimate:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
o_N(1)+\text{summable legal losses}.
```

The installed `ParentSquareEmbed.A` controls the diffuse parent cloud under the
transported packet Bessel hypotheses, but it reduces the source wall to the
same scalar reserve.  It does not prove the reserve.

The direct Carleson attempts show that the estimate is not installed by:

```math
\text{Cauchy/Young envelopes},
\quad
\text{global trilinear cancellation},
\quad
\text{pressure/cutoff routing},
\quad
\text{finite dyadic banding},
\quad
\text{same-fluid transport},
\quad
\text{first-moment dissipation}.
```

The operational scalar atom on this side is:

```math
ReserveCreationCharge.A
```

or an equivalent theorem charging first-time creation of the donor square
reserve on terminal heat windows.  Generated theorem-creation files that list
`ScaleCriticalTreeCarleson.A` as already available are stale support surfaces:
their own solver verdicts leave a new subprimitive open, and current direct
attempts demote them.  They cannot be spent as proof.

### Rigid Ancient Residue Side

The compactness half is installed:

```math
ZenoCompactnessExtraction.A.
```

An uncharged legal Zeno source-refill branch extracts an ancient local suitable
source-residue limit:

```math
(u_\ast,p_\ast,\mu_\ast^{src}),
\qquad
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
```

This is extraction, not contradiction.  Local suitable compactness does not
force Type I control, finite global ancient energy, critical smallness,
symmetry, self-similarity, bounded ancient vorticity, or source cancellation.

The residue-vanishing implication is valid only after the limit is put in a
rigid / cancellation class.  The open atom is:

```math
OriginalSmoothData
\Longrightarrow
ZenoCancellationClassProduction.A.
```

Equivalently, prove a rigid class
`ZenoBoundedClass_{\mathcal B}.A` for the extracted limit and a matching
`ZenoResidueLiouville_{\mathcal B}.A`.

## Parent Judgment

The active proof target has sharpened from the broad source-pulse label to this
two-atom Zeno split:

```math
\boxed{
ReserveCreationCharge.A
\quad\vee\quad
ZenoCancellationClassProduction.A.
}
```

A proof of either atom closes the terminal Zeno source-refill branch, gives
`RefillTreeWellFounded.A`, gives `TwoTowerDonorDepletion.A`, and supplies the
donor route to `SourcePulseExclusion.A`.

Until one of these atoms, or a genuinely equivalent remove / charge / rigidify
theorem, is proved from `OriginalSmoothData`, the PDFs must not say that finite
Clay terminal counterexamples are excluded.

## Next Loop Target

Attack the Carleson / charge side first:

```math
ReserveCreationCharge.A
```

because it is the exact scalar place where the parent-square / source-Carleson
route fails.  The rigid ancient-residue side remains live in parallel:

```math
ZenoCancellationClassProduction.A.
```

Both are theorem work.  Neither is manuscript polish, build status, or finality
evidence until it is proved and then paid into the rendered PDFs.
