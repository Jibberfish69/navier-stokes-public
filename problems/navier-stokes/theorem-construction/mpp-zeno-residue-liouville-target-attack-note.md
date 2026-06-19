# MPP ZenoResidueLiouville.A Target Attack Note

## Status

Attack on the compact-rigidity side of the terminal Zeno source-refill branch.

The extraction half is already recorded as:

```math
\boxed{ZenoCompactnessExtraction.A.}
```

It gives an ancient local suitable source-residue limit:

```math
(u_\ast,p_\ast,\mu_\ast^{src})
```

with inherited nonzero source residue:

```math
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
```

The remaining target is:

```math
\boxed{
ZenoResidueLiouville.A:
\quad
\mu_\ast^{src}=0
\text{ for every Zeno-extracted ancient source-residue limit.}
}
```

If proved, it contradicts the inherited lower bound and closes the
`ZenoSourceResidueRigidity.A` alternative.

## Attempt 1: Finite Global Ancient Energy

The original solution has finite torus energy:

```math
\sup_{t<T_\ast}\|u(t)\|_{L^2(\mathbb T^3)}^2<\infty.
```

Under the parabolic rescaling

```math
u^{(m)}(y,s)=r_m\,u(x_m+r_my,t_m+r_m^2s),
```

the global `L^2` energy on the expanding rescaled torus scales as:

```math
\|u^{(m)}(s)\|_{L^2_y}^2
=
r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2.
```

This may blow up as `r_m\downarrow0`.  The Zeno compactness extraction supplies
local energy bounds on fixed cylinders, not finite global ancient energy.

Thus finite-energy ancient Liouville theorems do not apply.

## Attempt 2: Type I Or Critical Norm Control

A Type I or critical-norm bound would place the ancient limit in a known rigid
class:

```math
|u_\ast(y,s)|\le C_I |s|^{-1/2},
\qquad
\|u_\ast\|_{L^\infty_s L^3_y}<\infty,
```

or a stated Serrin-critical hypothesis

```math
u_\ast\in L^q_sL^p_y,\qquad \frac2q+\frac3p=1,\quad 3<p\le\infty.
```

The source-pulse / Zeno branch supplies a lower bound on normalized active
source residue.  It does not provide an upper Type I envelope, critical
smallness, or a global critical norm bound on the rescaled sequence.  Local
energy compactness is subcritical relative to the desired Liouville class.

Thus Type I / critical Liouville cannot be imported.

## Attempt 3: Self-Similarity From Zeno Scaling

The Zeno condition says:

```math
r_m\downarrow0,\qquad \sum_m r_m^2<\infty.
```

It does not impose a fixed scaling ratio or discrete self-similarity.  Legal
source-refill edges may pass through varying same-fluid centers, packet shapes,
and scale ratios.  After subsequence extraction one obtains an ancient local
suitable limit, but no self-similar or discretely self-similar identity:

```math
u_\ast(y,s)
\neq
\lambda u_\ast(\lambda y,\lambda^2s)
```

is forced by the installed packet laws.

Thus self-similar Liouville does not apply.

## Attempt 4: Backward Uniqueness / Epsilon Regularity

Backward uniqueness and epsilon regularity require either suitable vanishing,
smallness, or a regularity class strong enough to propagate zero.  The extracted
object carries nonzero source residue:

```math
\mu_\ast^{src}(Q_1^-)\ge c_0.
```

This is the opposite of the smallness input needed by epsilon regularity.
Local suitable compactness alone does not convert nonzero residue into zero
residue.

Thus regularity criteria are consumers, not suppliers, on this branch.

## Attempt 5: General Ancient Local-Suitable Liouville

The broad theorem:

```math
\text{every ancient local suitable source-residue limit has }
\mu_\ast^{src}=0
```

is not available and is too strong for the installed route.  Local suitable
ancient objects may carry nontrivial local energy and coherent source
structure.  The extraction theorem preserves nonzero residue precisely because
the terminal branch was selected from active source-pulse packets.

Therefore broad ancient compactness does not close the branch.

## Result

The compact-rigidity side is reduced to a genuinely new rigid-class production
theorem:

```math
\boxed{
ZenoRigidClassProduction.A:
\quad
\text{every uncharged Zeno source-refill ancestry limit lies in a rigid
Liouville class }\mathcal B.
}
```

plus the corresponding Liouville theorem:

```math
\boxed{
SourceResidueLiouville[\mathcal B].A:
\quad
\mathcal B\Longrightarrow \mu_\ast^{src}=0.
}
```

Equivalently:

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
}
```

remains open.

## Conditional Closure

If a rigid-class production theorem and its Liouville theorem are installed,
then:

```math
ZenoCompactnessExtraction.A
+ZenoRigidClassProduction.A
+SourceResidueLiouville[\mathcal B].A
\Longrightarrow
ZenoSourceResidueRigidity.A
\Longrightarrow
RefillTreeWellFounded.A
\Longrightarrow
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

But the current installed estimates supply only local suitable ancient
compactness, not the rigid class required to kill the inherited source residue.
