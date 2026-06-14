# Frame-Term Local Energy Inequality In Same-Fluid Moving Frame

Status: conditional local calculation theorem.

## Statement

Let `(u,p)` be a suitable Navier-Stokes solution on an Eulerian cylinder containing the same-fluid moving cylinder

```math
Q_r^\Phi(a_0,t_0).
```

Set

```math
c(t)=\Phi(a_0,t),
\qquad
x=c(t)+rA(t)y,
\qquad
s=(t-t_0)/r^2,
```

where `A(t)` is an invertible `C^1` frame. Assume

```math
\|A\|+\|A^{-1}\|+r^2\|A^{-1}\dot A\|\le C(M_\sharp)
```

on the cylinder, and assume the affine frame velocity

```math
V(x,t)=c'(t)+\dot A(t)A(t)^{-1}(x-c(t))
```

is the affine velocity mode subtracted in `SCF_base`.

Then the Eulerian local energy inequality pulled back by

```math
\varphi(x,t)=\eta(y(x,t),s(t))
```

gives a normalized local energy inequality whose added transport terms contain only the affine-relative velocity

```math
u_{rel}(x,t)=u(x,t)-V(x,t),
```

and whose metric/diffusion coefficients are uniformly controlled by the frame bounds. Consequently the added frame terms are bounded by the `SCF_base` packet and the scale-normalized frame ledgers.

## Calculation

The derivatives of the pulled-back test function are

```math
\nabla_x\varphi
=r^{-1}A^{-T}\nabla_y\eta,
```

```math
\partial_t\varphi
=r^{-2}\partial_s\eta
-\left(r^{-1}A^{-1}c'(t)+A^{-1}\dot A(t)y\right)\cdot\nabla_y\eta,
```

and

```math
\Delta_x\varphi
=r^{-2}\operatorname{div}_y(G(t)\nabla_y\eta),
\qquad
G(t)=A^{-1}A^{-T}.
```

The local energy inequality contains the transport combination

```math
\partial_t\varphi+u\cdot\nabla_x\varphi.
```

Substituting the formulas above gives

```math
\partial_t\varphi+u\cdot\nabla_x\varphi
=r^{-2}\partial_s\eta
+r^{-1}A^{-1}(u-c'-\dot A A^{-1}(x-c))\cdot\nabla_y\eta.
```

Thus the moving-frame transport term is controlled by

```math
A^{-1}u_{rel}.
```

This is exactly the affine residual measured in `SCF_base`.

The diffusion term is controlled by the uniformly elliptic matrix `G(t)`. Since `A` and `A^{-1}` are bounded, `G` has ellipticity constants depending only on `M_sharp`.

The pressure term is handled with the CKN-compatible pressure gauge and the frame affine pressure potential. The time-dependent pressure constant has zero gradient. The affine frame pressure potential accounts for inertial affine forcing from the moving frame. The remaining pressure fluctuation is the pressure component of `SCF_base`.

## Inequality form

For every nonnegative `eta`, the normalized local energy inequality has the form

```math
E_\eta(s_2)+\nu\int_{s_1}^{s_2}D_\eta(s)\,ds
\le
C(M_\sharp,\nu)
\int_{s_1}^{s_2}
\left[
|u_{rel}|^3+|p^{norm}|^{3/2}+|\nabla u|^2
\right]_{Q_1}\,ds
+
\mathcal F_{frame}(\eta),
```

where `mathcal F_frame` is controlled by the scale-normalized frame ledger already included in the admissibility hypotheses.

## Consequence

Under the moving-cylinder admissibility hypotheses,

```math
SCF_{base}(Q_r^\Phi)\le\varepsilon_m
```

is a valid input for the local CKN-style theorem leading to

```math
ATD_m^\varepsilon.
```

## Boundary

Bounded spatial distortion controls metric and Jacobian terms. The time-dependent affine frame requires the explicit scale-normalized bound on `A^{-1}dot A` and the affine-relative residual in `SCF_base`.
