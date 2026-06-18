# ATD_m^epsilon Moving Same-Fluid Cylinder Gain

Status: conditional local theorem.

## Statement

Let `Q_r^Phi(a_0,t_0)` be a same-fluid moving cylinder whose chart is CKN-admissible and whose distortion satisfies

```math
\Gamma_\sharp\le M_\sharp.
```

Assume the normalized scale-critical packet obeys

```math
SCF_{base}(Q_r^\Phi(a_0,t_0))\le \varepsilon_m,
```

where `SCF_base` uses the CKN-compatible velocity and pressure normalization for the moving frame. Then there are constants

```math
\theta_m\in(0,1/2),
\qquad
C_m<\infty,
```

depending only on `m,nu,M_sharp` and the finite route parameter set, such that on the shrunken cylinder

```math
Q_{\theta_m r}^\Phi(a_0,t_0)
```

the finite-depth averaged affine tower packet holds:

```math
ATD_m(Q_{\theta_m r}^\Phi).
```

Equivalently,

```math
SCF_{base}\le\varepsilon_m
\Longrightarrow
ATD_m^\varepsilon.
```

## Proof

Rescale the moving cylinder to unit size. The bounded-distortion hypothesis `\Gamma_\sharp\le M_\sharp` gives a pullback whose Jacobian, inverse Jacobian, metric tensor, parabolic measure, and gradient norms are comparable to the unit-cylinder quantities by constants depending only on `M_sharp`. The CKN-compatible normalization gives

```math
\iint_{Q_1}|u-u_1^{norm}|^3
+
\iint_{Q_1}|p-p_1^{norm}|^{3/2}
+
\iint_{Q_1}|\nabla u|^2
\le \varepsilon_m.
```

Choose `\varepsilon_m` below the CKN epsilon-regularity threshold for this bounded-distortion frame. The local epsilon-regularity theorem gives smoothness on a smaller cylinder, and parabolic bootstrapping gives, for all derivative depths needed by the route,

```math
\sup_{Q_{1/2}}|\nabla^k u|+\sup_{Q_{1/2}}|\nabla^{k+1}p|
\le C_{m,M_\sharp,\nu}
\qquad (k\le m+2).
```

Scaling back gives

```math
\sup_{Q_{r/2}^\Phi} r^{k+1}|\nabla^k u|
+
\sup_{Q_{r/2}^\Phi} r^{k+3}|\nabla^{k+1}p|
\le C_{m,M_\sharp,\nu}.
```

These bounds control each tower rung `U_q`, each forcing rung in

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
```

and each finite affine-normalized residual slot in the averaged packet.

For every residual slot in `X_{\theta r}` one obtains

```math
\|\zeta_{\theta r}\nabla_{\theta r}^{\beta}R_{q,j}^{\theta r}(s_a)\|_{\bar L^2}^2
\le C_m\theta^2.
```

After summing over the finite center/rung/derivative list, choose `\theta_m` so that

```math
C_m\theta_m^2\le \eta_X.
```

This gives the averaged seed

```math
X_{\theta r}(s_a)\le\eta_X.
```

The same local derivative bounds give

```math
X_{\theta r}\in L^\infty(I_{\theta r}),
\qquad
N_{\theta r}\in L^1(I_{\theta r}).
```

For the averaged center forcing, test the tower equations against transported mollifiers:

```math
\frac{d}{dt}\bar U_{q,j}^{\theta r}
=
\langle K_q,\varphi_{j,\theta r}\rangle
+\text{moving-frame terms}.
```

The pressure part is controlled either by the pressure derivative bounds above or by integration by parts onto the mollifier. The viscous part is controlled by the available `U_{q+2}` rung. Moving-frame terms are controlled by the same distortion and derivative bounds. Hence

```math
\mathcal K_{\le m}^{avg,\theta r}\in L^1(I_{\theta r}),
F_{\theta r}\in L^1(I_{\theta r}).
```

Thus the finite-depth averaged affine tower packet `ATD_m` holds on `Q_{\theta_m r}^Phi`.

## Output

The local theorem supplies the route input

```math
SCF_{base}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
```

on every SCF-good same-fluid cylinder.

## Boundary

This theorem is local. It gives no terminal approach-tail coverage by itself. Global coverage remains the separate task

```math
SGC.A_{a.e.}+CAVG.J.
```

The affine normalization is licensed only through the CKN-compatible same-fluid frame and pressure normalization used in `SCF_base`.
