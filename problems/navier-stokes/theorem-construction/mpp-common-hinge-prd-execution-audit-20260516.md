# MPP Common-Hinge PRD Execution Audit

Date: 2026-05-16

Status: bounded execution of the proposed common hinge; no closure from
installed inputs.

Purpose: test whether `PositiveRemainderDepletion.A` can close both source-wall
paths at once:

```math
\text{Path 1: direct Carleson/source payment}
```

and

```math
\text{Path 2: Zeno source-residue rigidity}.
```

## 0. Required independent hinge

The useful theorem is not merely:

```math
PositiveRemainderDepletion.A.
```

It is:

```math
\boxed{
IndependentPositiveRemainderDepletion.A
}
```

meaning `PositiveRemainderDepletion.A` proved without importing any of:

```text
ScaleCriticalTreeCarleson.A,
LocalPositiveSourceCarleson.A,
TemporalNonAtomicSource.A,
ZenoSourceResidueRigidity.A.
```

This independence is essential.  The theorem is supposed to pay or thicken the
native positive source before either source-wall path is allowed to spend its
own endpoint.

## 1. Why an independent PRD would close both paths

The localized pre-Cauchy split is:

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+\mathcal D_P
+\operatorname{div}_{\Phi}\mathcal J_P
+\mathcal R_P.
```

`PositiveRemainderDepletion.A` says:

```math
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\operatorname{Drain}_{parent}(P)
+\operatorname{Loss}_{legal}(P),
\qquad 0<\theta<1.
```

If this is proved independently and uniformly on bounded-overlap same-fluid
terminal families, then:

```math
PositiveRemainderDepletion.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
NativeTrilinearDefectDomination.A
\Longrightarrow
\mu_*^{sing}=0.
```

That closes Path 1.

The same estimate also forces source residence: a positive terminal source atom
cannot arrive through a Zeno refill branch without spending drain, legal parent
drain, or legal loss on the way.  Therefore:

```math
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
TemporalNonAtomicSource.A.
```

Together with the no-earlier-selected-source slice, this gives the temporal
class `B_time`; the source-residue Liouville step is then the support argument:
no earlier source plus no terminal atom implies no source residue.  This closes
Path 2:

```math
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

## 2. The post-ASAC conditional route is circular for this purpose

`mpp-positive-remainder-depletion-post-asac-conditional-closure-20260516.md`
records a valid conditional closure:

```math
ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A
\Longrightarrow
PositiveRemainderDepletion.A.
```

This is useful as a conditional assembly, but it cannot be used to close both
paths through PRD, because the intended forward chain is:

```math
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

Combining these two chains gives the loop:

```math
ZenoSourceResidueRigidity.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

That loop is not a proof.  One side must be supplied independently:

```text
either independent PRD/source-residence,
or independent ZenoSourceResidueRigidity / TemporalNonAtomicSource,
or direct ScaleCriticalTreeCarleson.A.
```

## 3. Direct PRD proof test

After legal pressure, cutoff, commutator, and boundary pieces are removed, the
main positive remainder is:

```math
[\mathcal R_P^{main}]_+
=
\chi_P |w_{j_P}|^2
\left[
e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}
\right]_+.
```

The direct absorption estimate would need:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\le
\theta\nu|\nabla w_j|^2
+\operatorname{Drain}_{parent}
+\operatorname{Loss}_{legal}.
```

The installed route inputs do not force this.  A terminal high shell may remain
aligned with an expanding eigendirection of the localized lower strain:

```math
S_{<j}^{loc}e=\lambda e,
\qquad
\lambda>0,
\qquad
w_j\parallel e.
```

Then:

```math
\langle S_{<j}^{loc}w_j,w_j\rangle=\lambda |w_j|^2.
```

Trace-free strain, pressure recovery, same-fluid transport, finite banding, and
preterminal smoothness do not make this term nonpositive or charge it by the
installed ledger on the selected terminal windows.

Signed cancellation also fails at the needed level: cancellation occurs before
one-sided weights, cutoffs, same-fluid packet selection, and positive-part
extraction.  Cauchy / Young returns to the active-square Carleson reserve.  A
coefficient bound is only another presentation of the same product unless it is
paired with an active-square charge or alignment decorrelation theorem.

## 4. RN interpretation of the obstruction

Let `\nu_N` be the native positive source measure and `\rho_N` the installed
ledger measure.  A normal-form bad packet has:

```math
\rho_N(E_N)\to0,
\qquad
\nu_N(E_N)\ge c>0.
```

An independent PRD theorem would contradict this by proving uniform ledger
absolute continuity:

```math
\rho_N(E_N)\to0
\Longrightarrow
\nu_N(E_N)\to0.
```

Thus PRD is exactly a PDE proof of `UniformLedgerAC.A` in the native source
topology.  The Radon-Nikodym bookkeeping proves the two-case measure split; it
does not prove this PDE absolute-continuity statement.

## 5. Exact remaining independent atoms

The attempted common hinge reduces to one of the following genuinely new
non-circular theorems:

```math
\boxed{TerminalAngularMixing.A}
```

or equivalently:

```math
PositiveStrainDecorrelation.A,
\qquad
TerminalSourceCoherence.A,
\qquad
AlignmentDecorrel.A.
```

The exact missing consumer estimate is the displayed PRD bound itself: it must
control the source-weighted factor `[e\cdot S_{<j}^{loc}e]_+` on the same
selected terminal packets by the drain, parent charge, or legal loss terms in
that inequality.

Or:

```math
\boxed{PositiveActiveCarlesonReserve.A}
```

which would charge the active square on the same selected packets.

Or:

```math
\boxed{TerminalSourceReverseHolder.A}
```

equivalently a non-Carleson proof of:

```math
TemporalNonAtomicSource.A.
```

## 6. Verdict

The common-hinge strategy is correct only with an independent proof of PRD or
source residence.

The currently installed post-ASAC PRD closure depends on
`ZenoSourceResidueRigidity.A`, so it cannot be used to prove the Zeno branch.
The direct PRD attempt from installed inputs breaks on the source-weighted
positive strain product.

Therefore both source-wall paths remain open at the same non-circular source
control burden:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
UniformLedgerAC.A
}
```

or in PDE form:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
NativeTrilinearDefectDomination.A.
}
```

The direct alternatives to independent PRD are tested in
`mpp-independent-prd-alternative-proof-attempts-20260516.md`.  The vorticity /
enstrophy identity, local energy route, weighted one-sided tail-flux route, and
material-eigenframe turnover route all return to terminal angular mixing,
active-square Carleson reserve, terminal source reverse Holder control, or the
newly isolated near-band turnover/residence atoms:

```math
TerminalEigenframeTurnoverCharge.A
\quad\text{or}\quad
TerminalSourceResidenceEvacuation.A.
```

The turnover branch has now been chased one level deeper in
`mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md` and
`mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md`.  The sharp
fresh formulation is:

```math
OneSidedNearBandMaterialStrainBV.A
```

with the pressure form:

```math
TerminalPressureHessianNoSustain.A.
```

The pressure partner graph itself is normalized in
`mpp-pressure-hessian-partner-graph-normal-form-20260517.md`.  It replaces the
naive signed pressure-partner idea with the sharper Calderon--Zygmund pressure
partner target:

```math
TerminalCZPressureCancellation.A
+TerminalPressureCollarLegal.A
+PressureDonorNoFreeSink.A
\Longrightarrow TerminalPressureHessianNoSustain.A.
```

If that graph fails, the new bridge needed for Path 2 is

```math
PressureSustainResidueToSourceResidue.A.
```

The first pressure-specific atom is tested in
`mpp-terminal-cz-pressure-cancellation-direct-attempt-20260517.md`, which
sharpens it to:

```math
TerminalPressurePartnerSaturation.A.
```

That saturation atom is tested in
`mpp-terminal-pressure-partner-saturation-direct-attempt-20260517.md`, where the
pressure route reaches its current sharp bridge:

```math
PressureLobeSourceTether.A.
```

The tether is tested in
`mpp-pressure-lobe-source-tether-direct-attempt-20260517.md`.  The finite-packet
tether goes through `TerminalSkewLocalizationLedger.A`, so it is circular for
this route.  The noncircular pressure/Zeno bridge would have to be:

```math
PressureSustainResidueToSourceResidue.A.
```

The direct limit attempt
`mpp-pressure-sustain-residue-to-source-residue-direct-limit-attempt-20260517.md`
shows that this bridge is not automatic: positive pressure-sustain residue only
forces a pressure quadratic-gradient carrier, not native same-fluid source
residue.  The pressure branch therefore terminates at:

```math
PressureSourceAC.A
```

or, for the part singular to the source/legal carrier,

```math
PurePressureSustainResidueLiouville.A.
```

The independent angular-mixing continuation is recorded in
`mpp-sourceweighted-angular-depletion-independent-theorem-pass-20260517.md`.
It reduces the angular door to `TerminalWeightedNoFreeSink.A_ind`; the direct
no-free-sink attempt in
`mpp-terminal-weighted-no-free-sink-independent-attempt-20260517.md` pays
retained partners, legal exits, and finite donor trees, leaving terminal Zeno
refill as the hard source-current sink.

## 7. Route-relative negative certificate

`mpp-prd-installed-input-nonderivability-witness-20260516.md` strengthens this
from a failed proof attempt to a route-relative nonderivability statement:
within the installed ledger calculus, the aligned selected terminal
positive-strain packet is still permitted, so the installed inputs do not imply
`IndependentPositiveRemainderDepletion.A`.

This does not prove PRD false for Navier-Stokes.  It proves that any proof of
the common hinge must add one genuinely new endpoint supplier: source-weighted
angular decorrelation, active-square Carleson reserve, super-`L^1` source
residence, independent Zeno residue rigidity, pressure-source absolute
continuity, or a pure pressure-sustain residue Liouville theorem.

## 8. May 18 participation-density continuation

The pressure/eigenframe branch was followed through the pure pressure-sustain
residue fork.  The direct pressure endpoints remain open:

```math
PressureSourceAC.A / LocalizedLeraySourceTether.A_{ind},
\qquad
PurePressureSustainResidueLiouville.A,
\qquad
TerminalPressurePureStrainLegal.A.
```

The valid pressure result is only the diagnostic landing recorded in
`mpp-pressure-branch-exhaustion-to-field-face-diagnostic-20260517.md`.

The participation-density idea was then tested in
`mpp-basac-shared-participation-density-flux-exit-attempt-20260518.md`,
`mpp-source-measure-participation-density-bridge-verification-20260518.md`, and
`mpp-shared-participation-flux-balance-direct-attempt-20260518.md`.  It is a
valid CM-exit diagnostic route, but it is not a forward supplier discharge.
The exact obstruction is the B_ASAC-specific flux-balance failure recorded in
`mpp-basac-shared-participation-flux-balance-direct-attempt-20260518.md`:
after terminal positive selection, an internal signed donor can feed the
selected positive receiver without becoming incoming boundary flux.

Thus the participation-density route returns to:

```math
TerminalSignedSaturation.A
\quad/\quad
TwoTowerDonorDepletion.A
\quad/\quad
ZenoSourceResidueRigidity.A.
```

The signed-donor branch is already reduced by
`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md`: retained partners,
legal exits, ASAC pair-weight defects, finite donor trees, and non-Zeno entrance
leaves are paid.  The only uncharged donor case is again the terminal Zeno
source-refill branch.

Therefore this continuation does not create a fourth lower source-wall exit.
It confirms the common hinge:

```text
forward supplier closure now requires either a scale-critical source reserve
or a genuine terminal Zeno source-residue rigidity / anti-atom theorem.
```

## 9. May 19 terminal-refill proceed resolution

The terminal Zeno refill door was then followed through the installed
reverse-Holder and `B_ASAC` surfaces in
`mpp-terminal-zeno-refill-proceed-resolution-20260519.md`.

The conclusion is sharp:

```text
TerminalSourceReverseHolder.A is a valid closure form, but current inputs give
only L1 time source mass. B_ASAC^RH(p) has a Liouville theorem, but the route
does not produce B_ASAC => B_ASAC^RH(p). The May 19 shared-participation pass
classifies the surviving B_ASAC^closed terminal atom as incoming flux, paid
exit, or a Part/Field face witness; it does not discharge the forward PRD
supplier.
```

Thus the remaining forward supplier burden is no longer a lower ASAC
bookkeeping task. It is an external new-production theorem forcing temporal
thickness, no-incoming flux, active reserve, pressure time-face spread, or a
rigid time-face anti-atom subclass for the terminal source atom.
