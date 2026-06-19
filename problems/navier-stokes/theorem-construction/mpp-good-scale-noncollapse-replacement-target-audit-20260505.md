# GoodScaleNonCollapse Replacement Target Audit

## Status

Theorem-facing placement note for the proposed replacement target

```math
GoodScaleNonCollapse.A:
\quad
OriginalSmoothData
\Longrightarrow
\inf_{(a,t)\in Q^\Phi(I,A_\sharp)}r_{good}(a,t)>0.
```

Verdict:

```math
\boxed{
GoodScaleNonCollapse.A
\text{ is the right replacement interface for }READ.COVER,
\text{ but not a strictly lower source-wall root.}
}
```

It proves exactly the positive-scale cover object consumed by the terminal
readout layer.  Proving it from `OriginalSmoothData` still requires the same
upstream source-wall closure currently isolated as

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Setup

Let

```math
\mathcal T:=Q^\Phi(I,A_\sharp)
```

be the retained same-fluid terminal window, assumed compact in the transported
material topology used by the readout cover notes.  Define

```math
r_{good}(a,t)
:=
\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le \varepsilon_m\}.
```

Also define the material bad set at threshold `\varepsilon` by

```math
\mathcal B_\varepsilon^\Phi
:=
\{(a,t)\in\mathcal T:
\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon\}.
```

We use the installed strict-margin stability already used in
`READ.COVER`: if

```math
SCF_{base}(Q_r^\Phi(a,t))\le \varepsilon_m/2,
```

then after a same-fluid center perturbation and a shrink of `r`, the cylinder
remains `\varepsilon_m`-good.

## Theorem 1: GoodScaleNonCollapse Gives UniformReadCover

Assume

```math
\inf_{(a,t)\in\mathcal T}r_{good}(a,t)\ge R_*>0.
```

Then there exist finitely many same-fluid cylinders

```math
Q_{r_i}^{\Phi}(a_i,t_i)_{i=1}^{M}
```

such that

```math
\mathcal T
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_i\ge R_*/4,
```

and

```math
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

Hence

```math
GoodScaleNonCollapse.A
\Longrightarrow
UniformReadCover.A
\Longrightarrow
READ.COVER.
```

### Proof

For each `(a,t)\in\mathcal T`, the definition of `r_{good}` gives a radius
`s(a,t)>R_*/2` with

```math
SCF_{base}(Q_{s(a,t)}^\Phi(a,t))\le\varepsilon_m.
```

Shrink to

```math
\rho(a,t):=s(a,t)/2\ge R_*/4.
```

The SCF packet is monotone under restriction, so

```math
SCF_{base}(Q_{\rho(a,t)}^\Phi(a,t))\le\varepsilon_m.
```

The same-fluid cylinders `Q_{\rho(a,t)}^\Phi(a,t)` form an open cover of
`\mathcal T`.  Compactness gives a finite subcover.  The lower radius bound is
preserved because every selected radius is at least `R_*/4`.

## Theorem 2: NoBadMaterialSet Gives GoodScaleNonCollapse

Assume the strict-threshold bad set is empty:

```math
\mathcal B_{\varepsilon_m/2}^\Phi=\varnothing.
```

Then

```math
\inf_{(a,t)\in\mathcal T}r_{good}(a,t)>0.
```

Consequently

```math
NoBadMaterialSet.A
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
```

### Proof

For every `(a,t)\in\mathcal T`, emptiness of
`\mathcal B_{\varepsilon_m/2}^\Phi` supplies a radius `r(a,t)>0` with

```math
SCF_{base}(Q_{r(a,t)}^\Phi(a,t))\le\varepsilon_m/2.
```

By strict-margin stability, there are a material neighborhood `U(a,t)` and a
radius `\rho(a,t)>0` such that every center `(a',t')\in U(a,t)` has

```math
SCF_{base}(Q_{\rho(a,t)}^\Phi(a',t'))\le\varepsilon_m.
```

Thus

```math
r_{good}(a',t')\ge\rho(a,t)
\quad\text{for all }(a',t')\in U(a,t).
```

The neighborhoods `U(a,t)` cover the compact set `\mathcal T`; choose a finite
subcover `U(a_i,t_i)`.  Then

```math
\inf_{\mathcal T}r_{good}
\ge
\min_i \rho(a_i,t_i)>0.
```

## Theorem 3: GoodScaleNonCollapse Is The No-Jump Interface

On a compact retained terminal tail,

```math
\inf_{\mathcal T}r_{good}=0
\Longrightarrow
Jump_{avg}(\mathcal T).
```

This is the installed `StrictMargin.Jump` direction.  Therefore any installed
branch theorem proving

```math
\neg Jump_{avg}(\mathcal T)
```

also proves

```math
GoodScaleNonCollapse.A
```

on that terminal tail.

Conversely, `GoodScaleNonCollapse.A` directly rules out terminal scale collapse
and supplies the finite readout cover, so it is the cleaner replacement
interface for all downstream uses of the no-`Jump_avg` cover branch.

The lawful replacement chain is:

```math
\neg Jump_{avg}
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
UniformReadCover.A
\Longrightarrow
READ.COVER.
```

## Placement Against The Current Source Wall

The false overclaim is:

```math
OriginalSmoothData
\Longrightarrow
GoodScaleNonCollapse.A
```

with no additional source-wall theorem.  That is not installed.

Under the current post-`SourceWall.Reconcile.A` authority, the source-side route
is still:

```math
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
\neg Jump_{avg}
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
```

The alternate route remains:

```math
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
\neg Jump_{avg}
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
```

Thus `GoodScaleNonCollapse.A` is the correct broad readout-facing target, but
its proof from `OriginalSmoothData` is not independent of the reopened
source-wall root.

## Relation To The Proposed Replacement Targets

The proposed targets collapse as follows.

```math
GoodScaleNonCollapse.A
\Longrightarrow
UniformReadCover.A
```

by compactness.

```math
NoBadMaterialSet.A
\Longrightarrow
GoodScaleNonCollapse.A
```

by strict-margin stability plus compactness.

```math
TerminalEpsilonRegularityCompactness.A
```

is a contradiction-form proof strategy for `NoBadMaterialSet.A` or
`GoodScaleNonCollapse.A`.  It must still show that a terminal tangent with
retained positive defect is impossible.  In the current source-wall grammar,
that impossibility is exactly the Zeno branch:

```math
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A.
```

```math
AveragedFieldToCover.A
```

is already represented by the installed terminal readout order:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read.
```

It is valid only after the averaged endpoint package removes the bad material
or `Jump_avg` branch; it cannot be spent upstream to prove that removal.

```math
TerminalDefectLiouville.A
```

is the same strategy as the Zeno residue branch unless it supplies a different
rigid class or a new finite-pricing theorem for diffuse legal source-parent
ancestry.

## Broad Target To Attack

Use `GoodScaleNonCollapse.A` as the displayed contrapositive replacement
interface:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
}
```

But the theorem work that can actually discharge the first arrow is still one
of:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

or

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

No current repo surface proves a strictly smaller primitive from installed
inputs.

## Conditional Discharge From The Current Root Split

The interface has a conditional discharge under either current root supplier.

### Direct Carleson supplier

Assume the installed `ParentSquareEmbed.A` packet and prove
`ScaleCriticalTreeCarleson.A`:

```math
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\le
o_N(1)+Loss_{legal}.
```

Then the direct chain is:

```math
ParentSquareEmbed.A
+ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
\neg Jump_{avg}
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
```

Thus the direct version of the desired replacement theorem is:

```math
\boxed{
OriginalSmoothData
+ParentSquareEmbed.A
+ScaleCriticalTreeCarleson.A
\Longrightarrow
GoodScaleNonCollapse.A
}
```

where `OriginalSmoothData` supplies the retained same-fluid setup and all
installed legal ledgers, while the displayed reserve supplies the only missing
source-wall ingredient.

### Zeno rigidity supplier

Alternatively, assume an explicit rigid class `B` such that

```math
OriginalSmoothData
\Longrightarrow
ZenoBoundedClass_B.A
```

and prove

```math
ZenoResidueLiouville_B.A:
\quad
B\Longrightarrow \mu_*^{src}=0.
```

Then a positive terminal source-residue tangent is impossible.  The Zeno bad
set collapses, hence the source-pulse/no-`Jump_avg` branch is eliminated:

```math
ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
\neg Jump_{avg}
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
```

So the Zeno version of the replacement theorem is:

```math
\boxed{
OriginalSmoothData
+ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\Longrightarrow
GoodScaleNonCollapse.A.
}
```

## Bounded Solve Attempt From Installed Inputs

The direct route was checked against the installed ledgers.

The installed high-frequency first-moment control has the form

```math
\int_I\sum_{k>N}D_k(t)\,dt\to0.
```

It does not imply `ScaleCriticalTreeCarleson.A`.  The scalar heat-window
countermodel is:

```math
D_{m+5}(t)={A_m\over h_m}\mathbf 1_{I_m}(t),
\qquad
A_m\to0,
\qquad
h_m\ll 2^m A_m^2.
```

Then

```math
\int_{I_m}D_{m+5}(t)\,dt=A_m\to0,
```

but

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
=
2^mA_m^2h_m^{-1}
```

need not tend to zero.  Thus finite first-moment dissipation, raw energy tail
smallness, finite donor balance, and endpoint smooth-tail data do not produce
the required square reserve.

The active-shell and square-source alternatives do not lower the wall.  Their
installed collapse notes reduce them back to source-pulse normalization:

```math
OriginalSmoothData\Rightarrow SquareSource.A
\quad\text{reduces to}\quad
OriginalSmoothData\Rightarrow SourcePulseExclusion.A,
```

and

```math
OriginalSmoothData\Rightarrow ActiveShellAmplitudeGain.A
\quad\text{reduces to}\quad
OriginalSmoothData\Rightarrow SourcePulseExclusion.A.
```

Therefore they cannot be imported to prove `ScaleCriticalTreeCarleson.A`
without circularity.

The Zeno route was also checked against the current candidate classes.  The
audited classes do not get produced by `OriginalSmoothData` on the terminal
residue extraction:

```math
\text{finite global ancient energy, Type I, critical smallness,}
```

```math
\text{bounded ancient vorticity, self-similarity, symmetry reduction,}
```

```math
\text{or finite branch entropy.}
```

The strongest current Zeno refinement is the temporal-support candidate
`B_{time}`.  Its Liouville half is elementary:

```math
\mu_*^{src}(\{s<0\})=0
\quad\text{and}\quad
\mu_*^{src}(\{s=0\})=0
\Longrightarrow
\mu_*^{src}=0.
```

The no-earlier-source half is supported by first-pulse minimality, but the
terminal anti-atom half is not installed.  The exact missing theorem is:

```math
TemporalNonAtomicSource.A:
\quad
\mu_*^{src}(B_R\times\{0\})=0
\quad\forall R<\infty,
```

or, more quantitatively,

```math
UniformTemporalSourceIntegrability_p.A:
\quad
\left\|
\|F_n^{src,+}(s,\cdot)\|_{\mathcal M_y}
\right\|_{L_s^p((-1,0))}
\le C_R
\quad(p>1).
```

This theorem is not supplied by local Radon mass compactness; terminal time
atoms are compatible with the current Zeno extraction.

So the replacement target is formally discharged up to the exact current root
split, and the self-attempt from installed inputs stops at the same wall:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
TemporalNonAtomicSource.A
\text{ producing }
ZenoBoundedClass_{B_{time}}.A+ZenoResidueLiouville_{B_{time}}.A.
}
```
