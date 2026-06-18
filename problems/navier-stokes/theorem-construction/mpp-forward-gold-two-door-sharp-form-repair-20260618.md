# Forward-Gold Two-Door Sharp Form Repair

Date: 2026-06-18

Status: frontier repair and partial downstream solve.  The forward gold theorem
is still open.

2026-06-18 continuation: Door 1 is further sharpened in
`mpp-forward-gold-door1-projected-local-precauchy-residue-identity-attempt-20260618.md`.
The finite selector and conditional positive-part implication are paid there;
the live Door 1 blocker is `ProjectedLocalPreCauchyResidueIdentity.A`.

Further Door 1 sharpening is recorded in
`mpp-forward-gold-weighted-skew-to-terminal-signed-saturation-20260618.md`.
Inside `WeightedLiftedSkewDefectLegal.A`, the post-ASAC live core is
`TerminalSignedSaturation.A` or equivalent `InternalDonorSinkDepletion.A`.

The next continuation attempts are recorded in
`mpp-forward-gold-door1-shadow-ledger-attempt-20260618.md` and
`mpp-forward-gold-door2-gauge-stationarity-attempt-20260618.md`.  They sharpen
the current children to `Door1TerminalSourceTimeAntiAtom.A` /
`StressFluxZenoRefillRigidity.A` on Door 1, and
`SingleBubbleCanonicalGauge.A + ZeroFluxDriftVisibility.A +
RenormalizedActionFinite.A + AnnularDefectEvacuation.A` on Door 2.

The Door 1 source-time child is further split in
`mpp-forward-gold-door1-terminal-source-cost-dichotomy-20260618.md` into
`Door1SameShadowSuperL1Residence.A` or
`StressFluxZenoRefillRigidity.A / Door1InfiniteCostEndpointArtifact.A`.
The same-shadow residence attempt then shows that the actual density/price
children are `Door1PositiveActiveCarlesonReserve.A`,
`Door1SourceDensityReverseHolder.A`, and `Door1TerminalTimePriceLedger.A`, with
the rigidity/artifact branch still live.
The donor-graph continuation
`mpp-forward-gold-door1-no-free-terminal-zeno-donor-chain-20260618.md` sharpens
all of this to the single Door 1 atom `NoFreeTerminalZenoDonorChain.A`: retained
partners, legal exits, finite donor trees, and preterminal entrance branches are
paid, and only the infinite terminal Zeno donor chain remains.
The Door 2 drift attempt reduces `ZeroFluxDriftVisibility.A` to
`CanonicalGaugeCoercivity.A + ModulationForcingNativeProjection.A +
NoNeutralModulationLoop.A`.

Role: fix the June 17 two-door stress-flux packet after the generic anti-atom
attempts and the direct two-door attempts.  The repair separates the solved
finite selector and Liouville-consumer pieces from the two remaining production
bridges.

This is a forward-positive gold note.  It is not a CM contrapositive note.

## Checked surfaces

The governing two-door packet is
`mpp-gold-stress-flux-bridge-and-landau-liouville-test-20260617.md`.

The direct packet attempt is
`mcp-terminalstressfluxantiatomtwodoorpacketattempt-a-stressfluxselectordomination-a-zenocriticalprofileproduction-a-zerofluxcriticalprofileliouville-a-1c958d83b9.md`.

The two direct bridge attempts are:

```text
mcp-stressfluxselectordominationattempt-a-stressfluxselectordomination-a-dc0beb7ff3.md
mcp-zenocriticalprofileproductionattempt-a-zenocriticalprofileproduction-a-zerofluxcriticalprofileliouville-a-6024ef0bd0.md
```

The native-source definition checked here is
`mpp-sourcepulse-native-source-measure-decomposition-note.md`, where the
branch-native positive measure is

```math
\mu_{src,N}^+(P)
:=
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt.
\tag{TD.1}
```

The external downstream theorem candidate checked here is Vladimir Sverak,
"On Landau's Solutions of the Navier-Stokes Equations",
`https://arxiv.org/abs/math/0604550`.

## Current sharp form

The current gold pursuit is exactly:

```math
\text{terminal annular/Zeno collapse}
\Longrightarrow
\text{critical stress-flux residue }\Phi_0
\tag{TD.2}
```

with two doors:

```math
\Phi_0\ne0
\Longrightarrow
\text{selected positive native source carrier},
\tag{TD.3}
```

and

```math
\Phi_0=0
\Longrightarrow
\text{exact Landau-class profile}
\Longrightarrow
U=0.
\tag{TD.4}
```

The repair below changes the bookkeeping:

```math
\boxed{
\text{finite vector selection is solved; native-carrier identification is open.}
}
\tag{TD.5}
```

```math
\boxed{
\text{zero-flux Landau-class Liouville is solved conditionally; profile
production is open.}
}
\tag{TD.6}
```

## Door 1: selector part is solved

Let

```math
\mathcal L:=\{\pm e_1,\pm e_2,\pm e_3\}.
\tag{TD.7}
```

For every vector `\Phi\in\mathbb R^3`,

```math
\max_{\ell\in\mathcal L}[\ell\cdot\Phi]_+
\ge
{|\Phi|\over\sqrt3}.
\tag{TD.8}
```

Indeed, choose `i` with `|\Phi_i|\ge |\Phi|/\sqrt3`; then either `e_i` or
`-e_i` gives a positive projection of that size.

Thus the finite selector part of
`StressFluxSelectorDomination.A` is not the hard theorem.  A nonzero vector
point-force residue can always be seen by a finite family of scalar positive
projections.

## Door 1: real missing bridge

The stress-flux identity gives

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
\Phi_0\delta_0.
\tag{TD.9}
```

After `(TD.8)`, Door 1 would close from the following sharper theorem:

```math
\boxed{
\text{ProjectedStressFluxNativeCarrierIdentification.A}
}
\tag{TD.10}
```

Target statement:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\ge
c\max_{\ell\in\mathcal L}[\ell\cdot\Phi_0]_+
-\mathrm{Legal}_N-o_N(1),
\tag{TD.11}
```

on a bounded-overlap same-fluid active family `\mathcal F_N`, with the legal
terms already routed into the installed ledgers.

Then `(TD.8)` and `(TD.11)` give

```math
\sum_{P\in\mathcal F_N}\mu_{src,N}^+(P)
\ge
c'|\Phi_0|-\mathrm{Legal}_N-o_N(1),
\tag{TD.12}
```

so a nonzero critical stress flux forces nonzero selected positive native
source carrier.

This is the exact Door 1 production bridge.  It is stronger and cleaner than
the older name `StressFluxSelectorDomination.A`, because the vector selector is
already paid.  The unpaid content is the identification of the projected stress
residue with the native pre-Cauchy positive carrier after localization, cutoff,
projection, positive-part extraction, packetization, and same-fluid selection.

The checked signed-edge surfaces explain why `(TD.11)` is not automatic:
bare signed stress or shell cancellation occurs before the one-sided weights,
localization, lifted reductions, terminal selection, and positive-part
extraction.  Those operations can retain the positive selected edge while its
signed partner leaves the usable terminal record.

Therefore:

```math
\boxed{
\text{StressFluxSelectorDomination.A}
=
\text{FiniteVectorSelector.A (proved)}
+
\text{ProjectedStressFluxNativeCarrierIdentification.A (open).}
}
\tag{TD.13}
```

## Door 2: zero-flux Liouville consumer is solved conditionally

The exact downstream theorem is:

```math
\boxed{
\text{ZeroFluxLandauClassLiouville.A}
}
\tag{TD.14}
```

Statement:

```math
\begin{gathered}
U:\mathbb R^3\setminus\{0\}\to\mathbb R^3
\text{ is smooth, divergence-free, stationary, and }(-1)\text{-homogeneous},
\\
-\nu\Delta U+(U\cdot\nabla)U+\nabla P=0
\quad\text{on }\mathbb R^3\setminus\{0\},
\\
\Phi_0=0
\end{gathered}
\Longrightarrow
U\equiv0.
\tag{TD.15}
```

Proof.  Rescale viscosity to `\nu=1`.  Sverak's Theorem 1 classifies every
nontrivial smooth `(-1)`-homogeneous steady three-dimensional Navier-Stokes
solution on `\mathbb R^3\setminus\{0\}` as a Landau solution.  The same paper
records that Landau solutions carry a nontrivial distributional point force at
the origin, while the corollary says a `(-1)`-homogeneous very weak solution
smooth away from the origin is zero.  The condition `\Phi_0=0` removes the
point force, so the profile is a very weak solution across the origin.  Hence
`U=0`.

Thus the Liouville consumer in Door 2 is not the current blocker.  It is
available after the repo produces the exact Landau-class hypotheses.

## Door 2: real missing bridge

The missing theorem remains:

```math
\boxed{
\text{ZenoCriticalProfileProduction.A}
}
\tag{TD.16}
```

The useful repaired decomposition is:

```math
\begin{array}{ll}
\text{CriticalMellinPoleToScaleOrbit.A}
&\text{produce a renormalized scale-orbit from the terminal pole},\\
\text{ModulationFreezing.A}
&\text{remove translation, rotation, and selector drift},\\
\text{AsymptoticStationarity.A}
&\text{kill residual }s\text{-dependence in the limit},\\
\text{HomogeneityExtraction.A}
&\text{upgrade critical scaling to exact }(-1)\text{-homogeneity},\\
\text{DefectMeasureEvacuation.A}
&\text{remove residual source and defect measure},\\
\text{SphereSmoothness.A}
&\text{produce a smooth }S^2\text{ profile}.
\end{array}
\tag{TD.17}
```

Only after `(TD.17)` can `(TD.14)` be applied.

So Door 2 is:

```math
\boxed{
\text{ZenoCriticalProfileProduction.A (open)}
+
\text{ZeroFluxLandauClassLiouville.A (conditional consumer solved).}
}
\tag{TD.18}
```

## Final repaired frontier

The generic forward-gold routes are no longer the sharp live object.  Their
failure identifies why finite `L^1_t` mass, weak tethering, rigid-class
postulates, source-square/Carleson postulates, and local collar costs do not
close the terminal atom.

The sharp two-door frontier after the donor-graph continuation is:

```math
\boxed{
\Phi_0\ne0:
\quad
\text{prove NoFreeTerminalZenoDonorChain.A inside TerminalSignedSaturation.A.}
}
\tag{TD.19}
```

```math
\boxed{
\Phi_0=0:
\quad
\text{prove ZenoCriticalProfileProduction.A, then apply
ZeroFluxLandauClassLiouville.A.}
}
\tag{TD.20}
```

This is the fixed gold state.  It solves the selector subproblem, pays the
finite Door 1 donor graph, and solves the zero-flux Liouville consumer.  The
remaining Door 1 bridge is the infinite terminal Zeno donor chain; the remaining
Door 2 bridge is exact Zeno profile production.
