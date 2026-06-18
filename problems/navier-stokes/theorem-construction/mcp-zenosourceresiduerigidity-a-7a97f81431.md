# ZenoSourceResidueRigidity.A conditional proof note

## Status

Conditional theorem note.  Zeno compactness and the residue-vanishing implication are usable.  The missing supplier is temporal spread of the terminal source measure, or production of a rigid ancient class with residue Liouville.

## Target

Prove

```math
ZenoSourceResidueRigidity.A:
\quad
\mu_*^{src}=0
\text{ on the terminal Zeno source-residue limit.}
```

The Zeno extraction gives an ancient local suitable source-residue limit

```math
(u_*,p_*,\mu_*^{src})
```

with inherited source residue on a fixed backward cylinder if the terminal branch survives.

## Conditional route through temporal non-atomicity

Assume

```math
TemporalNonAtomicSource.A:
\quad
\mu_*^{src}(B_R\times\{0\})=0
\quad \forall R<\infty.
```

The first-pulse/Zeno extraction supplies the no-earlier-selected-source slice.  With no terminal atom, the residue lies in the temporal rigid class used by the source-residue Liouville step.  Therefore each compactly supported source test has zero pairing with `\mu_*^{src}`.  Hence

```math
\mu_*^{src}=0.
```

This proves

```math
TemporalNonAtomicSource.A
+NoEarlierSelectedSourceSlice.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

A sufficient analytic supplier for temporal non-atomicity is

```math
UniformTemporalSourceIntegrability.A:
\quad
\|F_m^{src,+}\|_{L_s^p((-1,0);\mathcal M(B_R))}\le C_R,
\qquad p>1.
```

Indeed, Holder gives

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p},
```

and weak-star passage gives zero mass on `B_R\times\{0\}`.

## Conditional route through a rigid ancient class

Assume

```math
ZenoCancellationClassProduction.A:
\quad
(u_*,p_*,\mu_*^{src})\in\mathcal B_{src},
```

where `\mathcal B_{src}` is a class in which every licensed pre-Cauchy source test vanishes.  Assume also

```math
RigidClassResidueVanish.A:
\quad
(u_*,p_*,\mu_*^{src})\in\mathcal B_{src}
\Longrightarrow
\mu_*^{src}=0.
```

Then

```math
ZenoCancellationClassProduction.A+RigidClassResidueVanish.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

## Obstruction to an unconditional proof from installed inputs

Finite positive Radon mass and `L^1_t` source control permit terminal concentration.  Model time densities

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

have uniformly bounded `L^1` mass and converge weakly to a terminal atom at
`s=0`.  More explicitly, for any nonzero `f in L^2` define

```math
R_m:=\int_{-1/m}^{0}m e^{(0-s)\nu\Delta}f\,ds .
```

Strong continuity of the heat semigroup gives `R_m -> f` in `L^2`; hence
`\liminf_m ||R_m||_2 >= ||f||_2/2` for all large `m`.  Fixed viscosity alone
therefore does not rule out a nonvanishing terminal response.

Local suitable compactness gives ancient limits.  It supplies local energy and pressure bounds, while the installed surfaces supply no Type I bound, global finite ancient energy, critical smallness, symmetry, two-dimensionality, or source-cancellation class production for every surviving Zeno branch.

## Verdict

The valid conditional closures are

```math
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A,
```

and

```math
ZenoCancellationClassProduction.A+RigidClassResidueVanish.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

The next unsupplied atom is

```math
UniformTemporalSourceIntegrability.A
```

or equivalently TerminalResidueAtomExclusion.A / ZenoCancellationClassProduction.A.
