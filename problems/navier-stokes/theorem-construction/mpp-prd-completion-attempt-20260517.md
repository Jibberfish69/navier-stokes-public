# MPP PRD Completion Attempt

Date: 2026-05-17

Worker: PRD

## Status

Failed unconditional completion.

`PositiveRemainderDepletion.A` is proved conditionally from a source-weighted
terminal angular depletion estimate, but that estimate is not supplied by the
installed Navier-Stokes inputs. The attempt collapses exactly at the native
positive active carrier

```math
\nu_N(\mathcal F_N)
:=
\sum_{P\in\mathcal F_N}\int_{Q(P)}
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+
\,dxdt.
```

This is supplier-side source-wall work. It does not change the CM boundary:
`Pack`, `Part`, and `Field` are the witness faces, and `Member` is the forward
membership predicate, not a witness face.

## Live Authority Read

The direct live surfaces say the separate positive-supplier support atom, quarantined outside CM, is
`PositiveRemainderDepletion.A`, with `LocalPositiveSourceCarleson.A`,
`SquareSourceEstimate.A`, `ActiveShellAmplitudeGain.A`, or non-Carleson Zeno
temporal anti-concentration as genuine supplier entrances.

The May 16 notes install the following conditional chain:

```math
TerminalAngularMixing.A / AlignmentDecorrel.A
=> PositiveRemainderDepletion.A,
```

and

```math
ASAC.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalAngularMixing.A / AlignmentDecorrel.A.
```

They also record why the final Zeno input is not installed:

```math
TemporalNonAtomicSource.A
\quad\text{or}\quad
ZenoCancellationClassProduction.A + RigidClassResidueVanish.A
```

is sufficient, but current inputs give only `L^1_t` source mass and local
suitable compactness, not super-`L^1_t` residence, terminal atom exclusion, or
a produced rigid ancient class.

## Target

For every bounded-overlap same-fluid terminal family `\mathcal F_N`, prove

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+ \operatorname{Drain}_{parent}(\mathcal F_N)
+ \operatorname{Loss}_{legal}(\mathcal F_N)
+ o_N(1),
\qquad 0<\theta<1.
```

The localized pre-Cauchy split is

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+\mathcal D_P
+\operatorname{div}_{\Phi}\mathcal J_P
+\mathcal R_P.
```

Installed legal, pressure, cutoff, commutator, boundary, and low-order ledgers
reduce the proof to the main native carrier

```math
[\mathcal R_P^{main}]_+
=
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+.
```

Thus the exact missing estimate is:

```math
\boxed{
SourceWeightedTerminalAngularDepletion.A:
\quad
\nu_N(\mathcal F_N)
\le
\theta_0\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+ C\operatorname{Drain}_{parent}(\mathcal F_N)
+ C\operatorname{Loss}_{legal}(\mathcal F_N)
+ o_N(1),
\quad 0<\theta_0<1.
}
```

This is the source-weighted packet form of
`TerminalAngularMixing.A / AlignmentDecorrel.A / PositiveStrainDecorrelation.A`.

## Conditional Proof

Assume `SourceWeightedTerminalAngularDepletion.A`. Split

```math
\mathcal R_P
=
\mathcal R_P^{main}
+\mathcal R_P^{legal}
+\mathcal R_P^{low}.
```

The installed legal routing gives, after summing over the bounded-overlap
terminal family,

```math
\sum_P\int_{Q(P)}[\mathcal R_P^{legal}+\mathcal R_P^{low}]_+
\le
\varepsilon\sum_P\int_{Q(P)}\mathcal D_P
+ C\operatorname{Drain}_{parent}(\mathcal F_N)
+ C\operatorname{Loss}_{legal}(\mathcal F_N)
+ o_N(1).
```

The assumed source-weighted angular depletion gives the same form for
`\mathcal R_P^{main}` with coefficient `\theta_0<1` on the drain. Choose
`\varepsilon>0` with `\theta_0+\varepsilon<1`. Then

```math
\sum_P\int_{Q(P)}[\mathcal R_P]_+
\le
(\theta_0+\varepsilon)\sum_P\int_{Q(P)}\mathcal D_P
+ C\operatorname{Drain}_{parent}(\mathcal F_N)
+ C\operatorname{Loss}_{legal}(\mathcal F_N)
+ o_N(1),
```

which is `PositiveRemainderDepletion.A`.

## Unconditional Direct Attempt

The direct drain-absorption proof requires

```math
|w_j|^2[e_j\cdot S_{<j}^{loc}e_j]_+
\le
\theta\mathcal D_j+\text{legal/parent charges}
```

on the selected terminal active windows.

Installed incompressibility only gives `tr S=0`. A trace-free strain may still
have an expanding eigendirection. The local model

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
e=(1,0,0),
\qquad
w_j=|w_j|e
```

has

```math
[e\cdot Se]_+=2.
```

Thus the positive carrier can be full-size on the selected packet while
incompressibility, pressure recovery, finite-band localization, and same-fluid
transport remain legal. Those inputs preserve the carrier and route side
terms; they do not deplete the selected positive part.

The signed exchange route also stops here. Dyadic skew cancellation occurs
before terminal weights, projectors, cutoffs, same-fluid selection, and
positive-part extraction. ASAC pays the one-sided pair-weight defect, but the
post-ASAC comparison still needs the terminal no-free-sink/Zeno residue branch.
That branch is exactly `ZenoSourceResidueRigidity.A`, currently unproved from
installed inputs.

The Cauchy/Young route gives only

```math
[\mathcal R_P^{main}]_+
\le
C_{PRD}
\mathsf{ActiveSquare}_P+\text{legal lower-order terms}.
```

Summing this requires `ScaleCriticalTreeCarleson.A`,
`SquareSourceEstimate.A`, or `ActiveShellAmplitudeGain.A`. The installed
first-moment source/dissipation controls do not imply square-density control.
The scalar terminal pulse model

```math
D_m(t)=A_m/h_m\quad\text{on an interval }I_m,\qquad |I_m|=h_m
```

keeps `\int D_m=A_m` finite while making
`\int 2^mD_m^2` order-one or worse by choosing `h_m` small. This is the same
active-square obstruction recorded in the May 16 active-reserve attempt.

The temporal Zeno route also stops here. Current source compactness supplies
only

```math
\int_{-1}^{0}\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds\le C_R.
```

The terminal density

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has bounded `L^1_s` mass and weakly converges to a terminal atom. It has no
uniform `L^p_s` bound for any `p>1`, and fixed viscosity gives no smallness on
zero heat-time layers. Therefore temporal anti-concentration needs a new
reverse-Holder or super-`L^1_t` source-residence theorem.

The rigid-class Zeno route extracts an ancient local suitable source-residue
object, but the installed compactness class is too broad for residue Liouville.
No current surface produces Type I control, finite global ancient energy,
critical smallness, bounded ancient vorticity, symmetry, two-dimensionality, or
strong source cancellation for the extracted residue.

## Collapse Primitive

All five entrances return to the same missing positive source-reserve content:

```math
\boxed{
\text{source-weighted control of }
|w_j|^2[e_j\cdot S_{<j}^{loc}e_j]_+
\text{ on selected terminal same-fluid windows.}
}
```

The sharpest theorem-facing name for the PRD worker is:

```math
\boxed{
SourceWeightedTerminalAngularDepletion.A
}
```

with equivalent route presentations:

```math
TerminalAngularMixing.A / AlignmentDecorrel.A,
PositiveStrainDecorrelation.A,
PositiveActiveCarlesonReserve.A,
ScaleCriticalTreeCarleson.A / SquareSourceEstimate.A,
ActiveShellAmplitudeGain.A,
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A.
```

The Radon-Nikodym measure version is the weaker sign-decision target

```math
ULAC.PacketModulus.A:
\quad
\nu_N(E_N)\le\omega(\rho_N(E_N))+\epsilon_N,
\qquad
\omega(\eta)\downarrow0,\quad \epsilon_N\to0,
```

for selected terminal packet sets `E_N`. This eliminates the singular
native source residue for the positive supplier route, but PRD itself needs the
stronger depletion form with a strict drain coefficient `\theta<1`.

## Sufficient New Lemma

Any one of the following genuinely new lemmas would complete PRD
noncircularly:

1. `SourceWeightedTerminalAngularDepletion.A`, stated above.
2. `OneSidedSelectedWindowNegativePartComparison.A` with the post-ASAC Zeno
   no-free-sink branch independently discharged.
3. `SquareSourceEstimate.A / ScaleCriticalTreeCarleson.A` on the same selected
   native active packet family.
4. `ActiveShellAmplitudeGain.A` strong enough to convert first-moment viscous
   drain into an active-square reserve plus summable remainder.
5. `TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A`
   for the native positive source measure, with `p>1`, by a mechanism not
   importing the active-square or Carleson reserve.
6. A produced explicit Zeno rigid class `\mathcal B` together with
   `ZenoResidueLiouville_{\mathcal B}.A` for the extracted native source
   residue.

## Final Verdict

`PositiveRemainderDepletion.A` is conditional, not proved from installed
inputs.

Exact surviving atom:

```math
\boxed{
SourceWeightedTerminalAngularDepletion.A
}
```

Equivalently, prove a genuinely new source-weighted angular/decorrelation,
active-square, active-shell amplitude, super-`L^1_t` Zeno residence, or rigid
Zeno residue theorem for the same native positive active source carrier.
