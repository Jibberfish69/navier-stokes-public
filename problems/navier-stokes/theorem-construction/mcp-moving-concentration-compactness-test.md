# Moving Concentration Compactness Test

## Status

Conditional compactness theorem for terminal concentration sequences.

## Input

Assume `Pack.TTU`, so same-fluid cylinders are uniformly comparable. Let the active terminal label family have a compact closure in the retained label topology.

The constructed defect carriers are

```math
\mu_D=|\nabla u|^2\,dx\,dt,
```

and, in each cutoff chart,

```math
\mu_{P,\chi}=|p^{loc}_\chi|^{3/2}\,dx\,dt.
```

## Concentration sequence

A moving concentration sequence is a sequence of pack-stabilized cylinders

```math
Q_{r_n}^{\Phi}(a_n,t_n),
\qquad t_n\uparrow T_* ,
```

such that the normalized SCF defect satisfies

```math
\limsup_{n\to\infty}
\bigl(D_u(Q_{r_n}^{\Phi}(a_n,t_n))+P(Q_{r_n}^{\Phi}(a_n,t_n))\bigr)>0.
```

## Compactness extraction

Since the active label closure is compact, pass to a subsequence with

```math
a_n\to a_*.
```

Since `t_n\uparrow T_*`, the time centers converge to the terminal face. For the scales, pass to a subsequence so that either

```math
r_n\to r_*>0,
```

or

```math
r_n\downarrow0.
```

Thus every moving concentration sequence has a terminal subsequence in the compactified label-time-scale space:

```math
(a_n,t_n,r_n)\to(a_*,T_*,r_*)
\quad\text{with }r_*\in[0,r_0].
```

## Defect extraction

On a finite cutoff chart family, the measures `\mu_D` and `\mu_{P,\chi}` are finite Radon measures. By weak compactness of finite Radon measures on compact chart closures, the localized restrictions along the extracted cylinders admit a subsequential defect functional.

If `r_*>0`, the defect is a positive terminal mass on a fixed positive-scale cylinder family.

If `r_*=0`, the defect is a blow-up concentration at the terminal label `(a_*,T_*)`, detected by positive parabolic density of the normalized `D_u/P` mass.

In both cases the moving concentration sequence compactifies to a terminal defect object:

```math
\mathfrak D_{SCF}(a_*,T_*,r_*)>0.
```

## Output

The compactness theorem is:

```math
\boxed{
\text{moving }D_u/P\text{ concentration}
\Longrightarrow
\text{nonzero terminal }SCF\text{ defect after subsequence.}
}
```

## Boundary

This theorem gives compactness of the defect carrier. It does not yet type the defect into

```math
tower\text{-}blown
\qquad\text{or}\qquad
Jump_{avg}.
```

That endpoint typing is the next theorem.