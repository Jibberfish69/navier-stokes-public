# Affine-metric replacement for the isotropic packet bound `AMP.A`

## Status

Claimed local discharge of the affine-frame metric issue. The correct unconditional packet statement is affine-metric. The isotropic physical Gaussian is a stronger shortcut requiring a separate aspect-ratio theorem.

## Statement

Let

```math
\dot X_T=b_k(X_T,t),
\qquad
\dot J_T=(\nabla b_k)(X_T,t)J_T,
\qquad
J_T(t_+)=I,
```

and set

```math
y=J_T(t)^{-1}(x-X_T(t)).
```

For a coefficient-good tile, `PSE.A` gives the packet-space perturbation estimate for the pulled-back equation

```math
(-\partial_t-\nu\nabla_y\cdot(B_T(t)\nabla_y))\varphi_T
=\mathcal E_T\varphi_T.
```

Then the unconditional packet bound available from these hypotheses is

```math
|\partial_y^\alpha\varphi_T(t,y)|
\le C_\alpha r_T^{-3/2-|\alpha|}
\exp(-c|y|^2/r_T^2).
```

Equivalently, in physical variables,

```math
|\partial_y^\alpha\varphi_T(t,J_T(t)y+X_T(t))|
\le C_\alpha r_T^{-3/2-|\alpha|}
\exp(-c|y|^2/r_T^2).
```

The downstream Bessel and overlap estimates must use the affine distance

```math
d_{aff,t}(T,T')^2
=
\frac{|J_T^{-1}(X_{T'}(t)-X_T(t))|^2}{r_T^2+r_{T'}^2}
```

and its symmetric atlas version.

## Proof

The affine coordinate map is the exact central linear-flow normalization. The heat kernel for the spatially constant affine operator has a covariance matrix determined by `B_T(t)`. Gaussian kernel estimates hold in that covariance or affine metric directly. No conversion to a Euclidean ball is needed.

`PSE.A` supplies

```math
\|H_T(t,s)\mathcal E_T(s)u(s)\|_{\mathcal P_N}
\le C\beta_T(s)\|u(s)\|_{\mathcal P_{N+1}}
```

with

```math
\int_{I_T}\beta_T\le C\varepsilon_M+C2^{-cM}.
```

The same backward Gronwall argument from `AHP.A` closes the packet norm in the affine coordinates and gives the displayed Gaussian bound in `y`.

Since `b_k` is divergence-free,

```math
\frac{d}{dt}\det J_T(t)
=(\nabla\cdot b_k)(X_T(t),t)\det J_T(t)=0,
```

and `\det J_T(t)=1`. Hence the affine coordinate change preserves `L^2` normalization and the Gaussian packet volume scale. The physical packets are ellipsoids of volume comparable to `r_T^3`.

For two packets, the product estimate is performed in the affine variable of one packet, or in a symmetric common affine metric supplied by the atlas. It gives

```math
|\langle\chi_T(t),\chi_{T'}(t)\rangle|
+r_T^2|\langle\nabla_{aff}\chi_T(t),\nabla_{aff}\chi_{T'}(t)\rangle|
\le C e^{-c d_{aff}(T,T')^2}.
```

A bounded-overlap affine atlas then gives the same Schur/Cotlar estimate as the isotropic version:

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_{aff}^1}^2
\le C\sum_T|c_T|^2.
```

The physical dissipation form is exactly the affine heat quadratic form under the change of variables, so `H_{aff}^1` is the correct norm for the adjoint pairing with the transformed residual. This is the norm used by the affine heat operator.

## Obstruction to the isotropic shortcut

The coefficient-good budget is

```math
\int_{I_T}(r_T^2\|\nabla^2b_k\|_\infty+r_T\|\nabla A_k\|_\infty)dt.
```

It controls only the remainders after central affine extraction. It leaves the central matrix `\nabla b_k(X_T,t)` unrestricted. Thus one may have a purely linear incompressible flow

```math
b(x,t)=S(t)x,
\qquad \operatorname{tr}S(t)=0,
```

for which

```math
\nabla^2b=0,
\qquad \mathcal C(T)=0,
```

while

```math
J_T(t)=\mathcal T\exp\int_{t_+}^{t}S(\tau)d\tau
```

has arbitrarily large aspect ratio. Therefore a uniform estimate of the form

```math
\exp(-c|x-X_T(t)|^2/r_T^2)
```

cannot be derived from coefficient-goodness alone. Such an estimate requires an additional strain-tail or aspect-ratio stopping theorem.

## Consequence

The branch chain can proceed unconditionally only in the affine packet metric.
A downstream isotropic physical Gaussian bound is licensed exactly when a
separate theorem supplies a uniform aspect-ratio constant
`\sup_{T,t}\|J_T(t)\|\|J_T(t)^{-1}\|<\infty`. Together with `\det J_T(t)=1`,
that bound makes the affine ellipsoid and a physical ball comparable with
constants depending only on the aspect-ratio constant. Without that theorem,
the exact packet bound is the affine ellipsoid bound.
