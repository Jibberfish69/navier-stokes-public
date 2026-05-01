# Persistent-Support Transport Coefficient Threshold Result

## Target

The desired coefficient theorem was

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}
\le c\nu2^{2j}.
```

## Fixed-shell obstruction

Let `e` be a nonzero coherent mode in the range of `\mathbb S_D(j)\mathbb H_D`. For `A>0`, set

```math
X_A=Ae.
```

Then

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX_A\|_{L^\infty}
=A\|\nabla_De\|_{L^\infty}.
```

The right side `c\nu2^{2j}` is fixed once `j` and `nu` are fixed. Choosing `A` large violates the target. Thus the fixed-shell theorem cannot follow from persistent support and projection geometry alone.

## Valid threshold estimate

By boundedness of the selector and Sobolev/Bernstein on the carrier side,

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}
\le C2^{\alpha j}\|\mathbb H_DX\|_{H_D^0}
```

for the relevant carrier spectral exponent `\alpha`. More generally,

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}
\le C_s\|X\|_{H_D^s}.
```

Therefore the viscous-scale bound holds only above the dynamic threshold

```math
2^{2j}\ge C(c\nu)^{-1}\|X\|_{H_D^s}.
```

## Consequence

The target must be replaced by one of two stronger statements:

```math
\text{an amplitude/energy bound giving a uniform active-shell threshold,}
```

or

```math
\text{a readout-preserving normalization }\mathcal N_j
\text{ with }
\|\nabla_D\mathcal N_j\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j}.
```

The next theorem target is the normalization theorem, because the direct persistent-support coefficient theorem is false at fixed shell and arbitrary amplitude.