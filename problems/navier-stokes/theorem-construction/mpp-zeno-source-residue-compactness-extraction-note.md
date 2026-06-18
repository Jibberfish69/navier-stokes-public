# MPP Zeno Source-Residue Compactness Extraction Note

## Status

This note proves the compactness half of the Zeno rigidity route under the
localized source-refill hypotheses already isolated on the ancestry branch.

It does not prove the Liouville/rigidity half.

## Setting

Assume a terminal Zeno source-refill branch:

```math
\cdots\to P^{-2}\to P^{-1}\to P^0
```

with radii `r_m\downarrow0`, terminal times `t_m\uparrow T_\ast`, and

```math
\sum_m r_m^2<\infty.
```

Assume the branch is legal same-fluid, has bounded packet-local local-energy
data after the standard parabolic normalization, and carries nonzero normalized
active source residue:

```math
\pi(P^{-m-1}\to P^{-m})\ge c_0>0.
\tag{ZCE.1}
```

These are exactly the hypotheses available after localized source-pulse
failure, edge disintegration, and passage to the uncharged Zeno branch.

## Rescaling

For each packet `P^{-m}` with center `(x_m,t_m)` and radius `r_m`, define:

```math
u^{(m)}(y,s)
:=
r_m\,u(x_m+r_m y,t_m+r_m^2s),
```

```math
p^{(m)}(y,s)
:=
r_m^2\,p(x_m+r_m y,t_m+r_m^2s),
```

on fixed backward cylinders `Q_R^-:=B_R\times[-R^2,0]`.

The local energy bounds and pressure local estimates are invariant under this
parabolic scaling.  For every fixed `R`,

```math
\sup_m
\left[
\|u^{(m)}\|_{L^\infty_sL^2_y(Q_R^-)}
+\|\nabla u^{(m)}\|_{L^2(Q_R^-)}
+\|p^{(m)}\|_{L^{3/2}(Q_R^-)}
\right]
<\infty.
\tag{ZCE.2}
```

## Compactness

By the local suitable-solution compactness theorem applied to `(ZCE.2)`, there is a
subsequence, not relabeled, and an ancient local suitable limit

```math
(u_\ast,p_\ast)
```

on every fixed backward cylinder, with:

```math
u^{(m)}\to u_\ast
\quad\text{strongly in }L^2_{loc},
```

```math
\nabla u^{(m)}\rightharpoonup\nabla u_\ast
\quad\text{weakly in }L^2_{loc},
```

and pressure convergence weakly in `L^{3/2}_{loc}` after subtracting additive
time functions whose spatial gradients vanish.

The limit is an ancient local suitable Navier-Stokes solution on
`\mathbb R^3\times(-\infty,0]` in the local sense.

## Source-Residue Measure

Let `\mu_m^{src}` be the normalized active source-residue measure associated to
the edge `P^{-m-1}\to P^{-m}` after parabolic rescaling.  The source-pulse lower
bound `(ZCE.1)` and the localized parent-edge construction give:

```math
\mu_m^{src}(Q_1^-)\ge c_0.
\tag{ZCE.3}
```

The localized source upper envelope gives finite Radon mass on every fixed
`Q_R^-`:

```math
\sup_m \mu_m^{src}(Q_R^-)<\infty.
\tag{ZCE.4}
```

Thus, after another subsequence,

```math
\mu_m^{src}\stackrel{*}{\rightharpoonup}\mu_\ast^{src}
```

as Radon measures on compact subsets, and `(ZCE.3)` gives:

```math
\boxed{
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
}
\tag{ZCE.5}
```

## Theorem `ZCE.A`

```math
\boxed{
\textbf{ZenoCompactnessExtraction.A:}
\quad
\text{an uncharged legal Zeno source-refill branch extracts an ancient local
suitable source-residue limit }(u_\ast,p_\ast,\mu_\ast^{src})
\text{ with }\mu_\ast^{src}\ne0.
}
```

This proves the extraction half of `ZenoSourceResidueRigidity.A`.

## Remaining Rigidity Wall

The extraction theorem does not force the ancient limit into a rigid class:

```math
\text{Type I},
\quad
\text{finite global ancient energy},
\quad
\text{critical smallness},
\quad
\text{self-similar},
\quad
\text{two-dimensional / axisymmetric},
\quad
\text{bounded ancient vorticity}.
```

Nor does it prove:

```math
\mu_\ast^{src}=0.
```

Therefore the remaining theorem is:

```math
\boxed{
ZenoResidueLiouville.A:
\quad
\text{every Zeno-extracted ancient source-residue limit has }
\mu_\ast^{src}=0.
}
```

or a stronger theorem producing a rigid class on which that Liouville statement
is known.

## Export

The Zeno rigidity branch is now sharpened to:

```math
\boxed{
ZenoCompactnessExtraction.A
+
ZenoResidueLiouville.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
}
```

The first factor is supplied by this note.  The second remains open.
The direct Liouville attempt
`mpp-zeno-residue-liouville-direct-attempt-note.md` proves only the
cancellation-class implication, and the license audit
`mpp-zeno-cancellation-class-production-license-audit-note.md` records that
weak signed cancellation is not enough to kill the native positive residue.
The current honest replacement is therefore a rigid-class package
`ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A`.
