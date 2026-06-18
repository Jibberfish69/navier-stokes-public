# ZenoSourceResidueRigidity.A from OriginalSmoothData

## Target

Prove

```math
OriginalSmoothData\Longrightarrow ZenoSourceResidueRigidity.A.
```

That is, every uncharged legal Zeno source-refill branch extracts a rigid ancient source-residue limit, and the inherited source residue vanishes there.

## Closed half: compactness extraction

The compactness half is installed:

```math
ZenoCompactnessExtraction.A.
```

For a legal Zeno branch with radii `r_m\downarrow0` and
`\sum_m r_m^2<\infty`, use the parabolic rescaling from
`ZenoCompactnessExtraction.A`:

```math
u^{(m)}(y,s)=r_m u(x_m+r_m y,t_m+r_m^2s),\qquad
p^{(m)}(y,s)=r_m^2 p(x_m+r_m y,t_m+r_m^2s).
```

The compactness input is the exact fixed-cylinder bound

```math
\sup_m\left[
\|u^{(m)}\|_{L^\infty_sL^2_y(Q_R^-)}
+\|\nabla u^{(m)}\|_{L^2(Q_R^-)}
+\|p^{(m)}\|_{L^{3/2}(Q_R^-)}
\right]<\infty
\qquad\text{for each fixed }R,
```

together with the local energy inequality and normalized source-residue mass
bound.  The local suitable compactness theorem then gives a subsequence with
`u^{(m)}\to u_*` strongly in `L^2_loc`, `\nabla u^{(m)}\rightharpoonup\nabla u_*`
weakly in `L^2_loc`, `p^{(m)}` converging weakly in `L^{3/2}_{loc}` after
subtracting additive time functions, and
`\mu_m^{src}\stackrel{*}{\rightharpoonup}\mu_*^{src}` as locally finite Radon
measures.  Thus the extracted ancient local suitable source-residue limit is

```math
(u_*,p_*,\mu_*^{src})
```

with nonzero inherited residue:

```math
\mu_*^{src}(Q_1^-)
\ge c_0>0.
```

## Liouville half

The broad statement

```math
\text{every ancient local suitable source-residue limit has }\mu_*^{src}=0
```

is not installed. Local suitable compactness does not force Type I control, finite global ancient energy, critical smallness, bounded ancient vorticity, self-similarity, two-dimensionality, or axisymmetry.

A conditional Liouville theorem is valid for the source-cancellation class `\mathcal B_{src}`: if all licensed pre-Cauchy source tests vanish in the ancient limit, then every test pairing of `\mu_*^{src}` vanishes and hence

```math
\mu_*^{src}=0.
```

The missing theorem is therefore class production:

```math
ZenoCancellationClassProduction.A:
\quad
\text{every uncharged Zeno source-refill ancient limit lies in }\mathcal B_{src}
\text{ or another rigid class with residue Liouville.}
```

## Direct tests

Same-fluid ancestry preserves carrier/fibre coherence. It does not impose global boundedness, critical smallness, symmetry, or source cancellation in the rescaled ancient limit.

Local energy and pressure bounds provide compactness. They do not produce a rigid ancient class.

Weak signed cancellation is insufficient for the native positive residue measure. Strong native cancellation is equivalent to the residue vanishing and cannot be assumed on the surviving source-pulse branch.

## Verdict

The compact-rigidity branch is advanced to:

```math
ZenoCompactnessExtraction.A
+
ZenoCancellationClassProduction.A
+RigidClassResidueVanish.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

`ZenoCompactnessExtraction.A` and the cancellation-class residue-vanishing implication are installed. The open atom is

```math
OriginalSmoothData\Longrightarrow ZenoCancellationClassProduction.A.
```

Thus `ZenoSourceResidueRigidity.A` remains open from current materials.
