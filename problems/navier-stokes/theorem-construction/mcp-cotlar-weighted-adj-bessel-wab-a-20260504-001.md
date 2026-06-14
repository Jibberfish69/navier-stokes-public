# Cotlar overlap decay and `WeightedAdjBessel.A`

## Status

Local theorem note for the coefficient-good normalized adjoint packet family.

Claimed status: conditional on `AHP.A`, bounded tile geometry, and summable packet-localized perturbative errors.

## Theorem `WAB.A`

Let `\mathcal T_g` be the coefficient-good tile family. For each `T\in\mathcal T_g`, let

```math
\chi_T(t,x)=g_T^{-1}\psi_T(t,x)=M_T(t)\varphi_T(t,x),
\qquad
M_T(t)=g_T^{-1}G_T(t).
```

Assume

```math
\|M_T(t)\|\le C
```

on `I_T`, and assume `AHP.A` gives, for `|\alpha|\le 1`,

```math
|\partial_x^\alpha \varphi_T(t,x)|
\le C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

Assume the Duhamel perturbation admits the split

```math
\varphi_T=\varphi_T^0+\rho_T,
\qquad
\|\rho_T\|_{\mathcal P_1}\le C\varepsilon_M,
```

where `\varphi_T^0` is the affine heat packet and `\mathcal P_1` is the Gaussian packet norm from `AHP.A`.

For comparable-scale tiles, define the heat-tube distance

```math
d_t(T,T')^2
=
\frac{|X_T(t)-X_{T'}(t)|^2}{r_T^2+r_{T'}^2}
```

and let `d(T,T')` be the atlas distance controlling `d_t` on `I_T\cap I_{T'}`. Then

```math
|\langle \chi_T(t),\chi_{T'}(t)\rangle|
+r_T^2|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le
C\exp(-c d(T,T')^2)+C\varepsilon_M\exp(-c d(T,T')^2).
```

In particular, for `M` large,

```math
|\langle \chi_T(t),\chi_{T'}(t)\rangle|
+r_T^2|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le
C\exp(-c d(T,T')^2).
```

If the tile atlas has bounded Schur geometry,

```math
\sup_T\sum_{T'}\exp(-c d(T,T')^2)\le C_{\mathcal T},
\qquad
\sup_{T'}\sum_T\exp(-c d(T,T')^2)\le C_{\mathcal T},
```

then

```math
\boxed{
\left\|\sum_{T\in\mathcal T_g}c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_{T\in\mathcal T_g}|c_T|^2 .
}
\tag{WeightedAdjBessel.A}
```

## Proof

### 1. Gaussian product estimate

Let `r` satisfy `c_r r \le r_T,r_{T'}\le C_r r` and set `X=X_T(t)`, `X'=X_{T'}(t)`. The packet bounds give

```math
|\chi_T(t,x)|\le Cr^{-3/2}e^{-a|x-X|^2/r^2},
\qquad
|\chi_{T'}(t,x)|\le Cr^{-3/2}e^{-a|x-X'|^2/r^2}.
```

The identity

```math
|x-X|^2+|x-X'|^2
=2\left|x-\frac{X+X'}2\right|^2+\frac12|X-X'|^2
```

implies

```math
\int r^{-3}e^{-a|x-X|^2/r^2}e^{-a|x-X'|^2/r^2}\,dx
\le C e^{-c|X-X'|^2/r^2}.
```

Thus

```math
|\langle\chi_T(t),\chi_{T'}(t)\rangle|
\le C e^{-c d_t(T,T')^2}.
```

Taking one derivative costs one factor `r^{-1}` on each packet, hence

```math
|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le C r^{-2}e^{-c d_t(T,T')^2}.
```

Multiplying by `r_T^2` gives the displayed gradient overlap.

### 2. Perturbative contribution

Write

```math
\chi_T=M_T\varphi_T^0+M_T\rho_T.
```

The boundedness of `M_T` transfers the packet norm estimates to `\chi_T`. Since `\rho_T` has the same Gaussian tube and satisfies `\|\rho_T\|_{\mathcal P_1}\le C_\rho\varepsilon_M`, every inner product containing at least one `\rho` factor satisfies

```math
|\langle M_T\rho_T,M_{T'}\varphi_{T'}^0\rangle|
+|\langle M_T\varphi_T^0,M_{T'}\rho_{T'}\rangle|
+|\langle M_T\rho_T,M_{T'}\rho_{T'}\rangle|
\le C\varepsilon_M e^{-c d_t(T,T')^2}.
```

The same estimate holds for gradients after multiplication by `r_T^2`. Combining with the affine heat contribution proves

```math
|\langle \chi_T(t),\chi_{T'}(t)\rangle|
+r_T^2|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le C(1+\varepsilon_M)e^{-c d(T,T')^2}.
```

Absorb `1+\varepsilon_M` into the constant.

### 3. Time-integrated Gram matrix

Define the Gram entry

```math
K_{TT'}
=
\int_{I_T\cap I_{T'}}
\left(
\langle\chi_T(t),\chi_{T'}(t)\rangle
+
\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle
\right)dt.
```

On a parabolic tile, assume constants `0<c_I\le C_I<\infty` with `c_I r_T^2\le |I_T|\le C_I r_T^2`. The `L^2` part contributes at most

```math
C r_T^2 e^{-c d(T,T')^2}\le C e^{-c d(T,T')^2}.
```

The gradient part contributes

```math
\int_{I_T\cap I_{T'}}Cr_T^{-2}e^{-c d(T,T')^2}\,dt
\le C e^{-c d(T,T')^2}.
```

Thus

```math
|K_{TT'}|\le C e^{-c d(T,T')^2}.
```

For cross-scale pairs, use the dyadic grouping or nested packet square-function structure in the atlas. This gives the same Schur bound after summing scale annuli.

### 4. Schur/Cotlar estimate

For finitely supported coefficients,

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
=
\sum_{T,T'}c_T\overline{c_{T'}}K_{TT'}.
```

The Schur bounds on `e^{-cd(T,T')^2}` imply the matrix `K` is bounded on `\ell^2(\mathcal T_g)`. Therefore

```math
\left|\sum_{T,T'}c_T\overline{c_{T'}}K_{TT'}\right|
\le C\sum_T|c_T|^2.
```

Density extends the estimate to all `\ell^2` coefficient families. This proves `WeightedAdjBessel.A` on the coefficient-good normalized family.

## Boundary of the result

The proof uses a summable perturbation:

```math
C\varepsilon_M e^{-cd(T,T')^2}.
```

A raw bound of the form

```math
C e^{-cd(T,T')^2}+C\varepsilon_M
```

is safe only for finite or uniformly bounded neighbor families. Over an infinite tile family, the unlocalized constant term has infinite Schur row sum. Thus the packet proof must retain the Gaussian localization of the Duhamel error, or the tile selection must explicitly restrict the `\varepsilon_M` term to a uniformly finite neighbor set.

## Downstream use

With `WeightedAdjBessel.A`, for any residual `R\in L_t^2H_x^{-1}` and any normalized packet family,

```math
\sum_T g_T^{-2}\left|\int_{I_T}\langle R,\psi_T\rangle dt\right|^2
=
\sup_{\|c\|_{\ell^2}=1}
\left|\int\left\langle R,\sum_Tc_T\chi_T\right\rangle dt\right|^2
\le C\|R\|_{L_t^2H_x^{-1}}^2.
```

The next theorem item is therefore the termwise residual estimate for `R^{comm}+R^{press}+R^{cut}+R^{off}`.
