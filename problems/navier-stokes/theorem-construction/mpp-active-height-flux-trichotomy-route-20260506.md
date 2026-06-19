# MPP ActiveHeightFluxTrichotomy.A Route

Date: 2026-05-06

Status: theorem-strategy / bounded proof route; not a theorem discharge.

Purpose: refine the current `HeightFluxControl.A` wall into a theorem that uses
the whole CM witness architecture instead of trying to prove a scalar positive
source estimate in isolation.

## 0. God view

The live wall is the residual Field-face source wall:

```text
ScaleCriticalTreeCarleson.A
```

or the genuinely independent Zeno pair:

```text
ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A.
```

The best direct route currently reads:

```text
HeightFluxControl.A
=> DonorHeightCreation.A
=> ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

The obstruction under `HeightFluxControl.A` is the positive weighted shell flux:

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt.
\tag{AHF.1}
```

In the native trilinear presentation, the dangerous carrier is:

```math
|w_\ell|^2
\left[
e_\ell\cdot S^{loc}_{<\ell}e_\ell
\right]_+.
\tag{AHF.2}
```

Scalar damping and absolute commutator estimates return to the same source
wall.  The missing move is to spend the CM witness faces:

```text
Pack,
Part,
Field,
Zeno residue.
```

## 1. The sharper theorem

The theorem to prove is:

```text
ActiveHeightFluxTrichotomy.A.
```

For every same-fluid retained terminal Field-face packet family and heat window
`W`, any first large positive weighted height-flux event satisfies:

```text
first large positive height flux
=> Pack-gain event
   or Part/dwell failure
   or legal Field source charge
   or Zeno terminal residue atom.
```

Quantitatively:

```math
\begin{aligned}
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt
&\le
C\,\mathcal P_Q^{gain}(W)
+C\,\mathcal P_{N,Q}^{part}(W)\\
&\quad
+C\,\mathcal L_{N,Q}^{field}(W)
+C\,\mathcal Z_{N,Q}^{atom}(W)
+o_N(1).
\end{aligned}
\tag{AHF.3}
```

Here:

```text
\mathcal P_Q^{gain}     = accumulated positive strain not allowed by the Pack face;
\mathcal P_{N,Q}^{part} = heat-dwell / participation failure for the retained packet;
\mathcal L_{N,Q}^{field}= legal pressure/cutoff/source ledger already allowed in Field;
\mathcal Z_{N,Q}^{atom} = terminal Zeno source-residue atom.
```

If the CM witness split has already routed Pack and Part, and if the Zeno atom
is excluded, `(AHF.3)` gives `HeightFluxControl.A`.  Then the direct chain
closes the source wall.

## 2. Why this is not just a new alias

The failed shortcut was:

```math
Pack_Q \Longrightarrow PackGainLedger.A.
```

That is false.  A divergence-free affine strain can have bounded net
deformation while its accumulated positive strain diverges:

```math
A(t)=a(t)\operatorname{diag}(1,-1),
\qquad
a(t)=K\omega\cos(\omega t).
```

The net deformation sees:

```math
\int a(t)\,dt,
```

while the source wall sees:

```math
\int a(t)_+\,dt.
```

So finite Pack gauge alone cannot control `(AHF.2)`.

The trichotomy target is the missing heat-dwell sampling principle:

```text
If high packets only harvest the positive strain phases, the harvesting itself
is bounded by the same participation, Field source-charge, and terminal Zeno
residue ledgers appearing in (AHF.3). If that bound fails while Pack remains
bounded, the selective heat-dwell sampler is the obstruction.
```

The affine counterexample counts positive strain without a retained high packet
that must survive parabolic heat dwell and same-fluid participation.  The
actual NS packet cannot teleport between positive phases for free.

## 3. Heat-dwell sampling lemma

The first named sublemma target is:

```text
HeatDwellSampling.A.
```

Correction after the direct attempt: heat dwell alone is not enough.  A
constant retained packet can sit through alternating positive and negative
sampled strain, so positive-phase action is not controlled by net strain unless
the temporal variation of the sampled low strain is charged.  The deterministic
replacement is the BV inequality:

```math
\int_W e(t)[\sigma(t)]_+\,dt
\le
\sup_W e\left[\int_W\sigma(t)\,dt\right]_+
+\sup_W e\,|W|\,\mathrm{Var}_W(\sigma).
\tag{AHF.4'}
```

Thus the real PDE target below this lemma is:

```text
LowStrainBVCharge.A.
```

It must route the weighted `|W| Var_W(sigma)` term into Part, Field, Zeno, or
parabolic-burst inheritance.

The direct `LowStrainBVCharge.A` attempt further splits this target.  Far-low
strain has a parabolic scale-separation gain after expanding `D_tS`; only the
near band and frame rotation remain genuinely dangerous:

```text
NearBandBVToBurstOrSource.A + FrameBVCharge.A.
```

The near-band attempt then absorbs subparabolic heat variation and routes
non-subparabolic amplitude to parabolic-rate burst height.  The current
microfrontier is:

```text
NearBandMaterialSourceCharge.A + FrameBVCharge.A.
```

The material-source audit identifies this as the same signed positive-source
balance obstruction carried by `WeightedLiftedSkewDefectLegal.A`: generic
pressure/material-source estimates are circular, and time integration by parts
feeds the term back into the localized strain-production source unless signed
saturation, active-alignment depletion, tangent-weight rigidity, or donor
depletion is installed.

The frame audit gives the same verdict for `FrameBVCharge.A`: subparabolic
non-rotating frame variation is controlled by the subparabolic bound,
parabolic-amplitude variation routes to burst height, and the live remainder is
active frame-alignment depletion through
`ActiveStrainAlignmentCost.A / TPNI.A / TerminalSignedSaturation.A`.

The active-alignment depletion route is assembled in
`mpp-asac-parent-drain-assembly-20260506.md` after
`mpp-native-tpni-adjoint-parent-drain-20260506.md`.  It proves:

```text
ASAC.A
```

on the terminal first-pulse parent-drain route.  At this reduction level the
frame-BV remainder consumes `ASAC.A`; the remaining live microfrontier is the
near-band material/pressure source charge.

The near-band source charge has now been sharpened in
`mpp-nearband-material-source-after-asac-reduction-20260506.md`.  Its active
alignment term also consumes `ASAC.A`.  After boundary and projected-cutoff
bookkeeping, the remaining near-band primitive is:

```text
TerminalWeightedNoFreeSink.A
```

or, in the pre-existing source-current vocabulary:

```text
TerminalSignedSaturation.A + TwoTowerDonorDepletion.A.
```

Thus the post-ASAC height-flux microfrontier is no longer
`NearBandMaterialSourceCharge.A + FrameBVCharge.A` in full.  It is the signed
terminal source-current edge:

```text
TerminalWeightedNoFreeSink.A
```

with donor depletion reduced in the existing notes to `RefillTreeWellFounded.A`
and the terminal Zeno source-residue alternatives.

The pair-weight side of that edge has also been sharpened in
`mpp-one-sided-pair-weight-defect-after-asac-20260506.md`.  The absolute
`PairWeightFlattening.A` target is too strong for the positive source consumer.
The needed one-sided positive pair defect is ASAC-paid:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

So the remaining signed-current branch is not terminal weight coherence.  It is
the signed-partner / internal-donor part:

```text
TerminalSignedSaturation.A
```

or the donor-depletion route:

```text
TwoTowerDonorDepletion.A
```

with the existing refill-tree / Zeno split.

The terminal weighted no-free-sink edge is now reduced in
`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md`:

```text
ASAC.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A.
```

Therefore the post-ASAC height-flux microfrontier has moved to:

```text
ZenoSourceResidueRigidity.A
```

plus the already named boundary/projected-cutoff/frame bookkeeping ledgers.

Model statement.  Let `e(t)>=0` be the active high-shell packet energy on a
heat window `W` whose length is fixed by constants independent of `j`:

```math
\tau_j=(\nu2^{2j})^{-1}.
```

```math
c_h\tau_j\le |W|\le C_h\tau_j.
\tag{AHF.3a}
```

Let:

```math
\sigma_j(t):=e_j(t)\cdot S^{loc}_{<j}(t)e_j(t).
```

Assume retained participation:

```math
\int_W e(t)\,dt
\ge c_{part}
\tau_j\sup_W e(t)
-\mathcal P_{N,Q}^{part}(W).
\tag{AHF.4}
```

Then:

```math
\int_W e(t)[\sigma_j(t)]_+dt
\le
C\left[\int_W \sigma_j(t)dt\right]_+\sup_W e(t)
+C\,\mathcal P_{N,Q}^{part}(W)
+C\,\mathcal L_{N,Q}^{field}(W)
+C\,\mathcal Z_{N,Q}^{atom}(W).
\tag{AHF.5}
```

Interpretation:

```text
positive strain action can only be spent if either the whole heat window has
positive net strain, or the packet is selectively sampling positive phases.
Selective sampling is not free: it is a dwell/participation/source/Zeno event.
```

This is the exact replacement for the false implication
`Pack_Q=>PackGainLedger.A`.

## 4. Pack spend after heat-dwell sampling

Once `(AHF.5)` replaces positive action by net action on the same heat window,
the Pack face becomes relevant again:

```math
\left[\int_W \sigma_j(t)dt\right]_+
\le
\log \Gamma_{\mathrm{pack},Q}(W)
+\mathcal E^{frame}_{N,Q}(W)
+\mathcal L^{transport}_{N,Q}(W).
\tag{AHF.6}
```

This is not the false accumulated-positive-strain claim.  It is only a
net-strain claim on a heat-dwell window.  The proof input is the transported
deformation equation together with the frame and packet error ledgers; until
those estimates prove `(AHF.6)`, this clause is exactly the `NetPackSpend.A`
burden.

Thus:

```text
HeatDwellSampling.A + NetPackSpend.A
=> ActiveHeightFluxTrichotomy.A.
```

## 5. Parabolic-rate strain burst branch

The viscosity-response route already proved a useful lower fact:

```text
ParabolicRateStrainBurst_j
=> large lower/intermediate donor height.
```

Use it inside the trichotomy, not as a separate headline.

If:

```math
\|S_{<j}^{loc}\|_{L^\infty}
>
\theta\nu2^{2j},
\tag{AHF.7}
```

then `InverseParabolicBurst.A` forces a lower shell concentration.  On a
first-height run, this lower concentration is either inherited from the past,
newly created by a height flux event, or belongs to the Zeno/participation
failure side.  Hence the bad coefficient set is not a scalar obstruction; it is
another input to the same trichotomy.

## 6. Zeno side

If selective sampling occurs on shorter and shorter subwindows while Pack and
Part are still typed as present, the limiting object is a terminal time atom of
the native positive source-residue measure:

```math
\mu_*^{src}(B_R\times\{0\})>0.
```

The genuinely independent Zeno theorem is therefore:

```text
ResidueEvacuationWithoutSquareSource.A.
```

It must prove terminal atom exclusion without importing
`HeatScaleSquareSource.A`, because that route is equivalent to the direct
source wall.

## 7. Conditional closure theorem

The useful theorem-grade packet is:

```text
HeatDwellSampling.BV
+ NetPackSpend.A
+ FarLowMaterialDerivativeEnvelope.A
+ FarLowPackAbsorption.A
+ NearBandMaterialSourceCharge.A
+ FrameBVCharge.A
+ ParabolicBurstInheritance.A
+ ResidueEvacuationWithoutSquareSource.A
=> ActiveHeightFluxTrichotomy.A.
```

Then:

```text
ActiveHeightFluxTrichotomy.A
+ Pack routed
+ Part routed
+ legal Field-loss ledger
+ Zeno atom excluded
=> HeightFluxControl.A
=> DonorHeightCreation.A
=> ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

Finally:

```text
ScaleCriticalTreeCarleson.A
=> Field restored
=> CM restored
=> Member preserved
=> no finite-time class exit
=> smoothness.
```

## 8. External idea support

This is consistent with the geometric depletion literature.  Constantin and
Fefferman's vorticity-direction criterion, Deng--Hou--Yu's vortex-filament
geometry, and later anisotropic-diffusion scenarios all point to the same broad
principle: violent stretching must either carry coherent geometry or pay a
regularizing geometric/viscous cost.  The repo-native translation is not
vorticity-direction regularity by itself.  It is:

```text
active high packet + positive low-strain sampling + heat dwell
=> Pack/Part/Field/Zeno charge.
```

Primary references used as outside intuition, not as proof imports:

- Constantin--Fefferman, *Direction of Vorticity and the Problem of Global
  Regularity for the Navier-Stokes Equations*, Indiana Univ. Math. J. 42
  (1993), 775--789.
- Deng--Hou--Yu, *Geometric properties and non-blowup of 3-D incompressible
  Euler flow*, arXiv:math-ph/0402032.
- Grujic, *Vortex stretching and anisotropic diffusion in the 3D Navier-Stokes
  equations*, arXiv:1405.3498.

## 9. Current verdict

`ActiveHeightFluxTrichotomy.A` is the strongest current architecture because it is
the first target that can lawfully spend all three CM faces plus the Zeno
alternate.  It does not pretend to prove a positive source estimate from scalar
energy.  Its exact content is the inequality `(AHF.3)`: positive source creation
is routed to Pack gain, Part/dwell failure, legal Field source charge, or a Zeno
source-residue atom.

The direct proof target is:

```text
HeatDwellSampling.A.
```

If that fails, the failure mode itself will be informative:

```text
high packets can selectively sample positive strain phases under heat dwell,
bounded Pack, retained Part, legal Field loss, and no Zeno atom.
```

That is a concrete obstruction model under the displayed no-PACK/no-PART/no-FIELD/no-Zeno
hypotheses, not another vague source-wall name.
