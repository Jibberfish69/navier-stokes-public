# Standalone CKN-to-ATD_m^epsilon Moving-Cylinder Theorem

## Statement

Let `Q_r^Phi(a_0,t_0)` be a same-fluid moving parabolic cylinder with bounded distortion

```math
\Gamma_\sharp\le M_\sharp.
```

Assume the normalized scale-critical packet satisfies

```math
SCF_{base}(Q_r^\Phi(a_0,t_0))\le \varepsilon_m,
```

where `SCF_base` uses the affine-relative velocity and the CKN-compatible pressure gauge. If `epsilon_m` is chosen below the bounded-frame epsilon-regularity threshold, then there are constants

```math
\theta_m\in(0,1/2),\qquad C_m<\infty,
```

depending only on `m,nu,M_sharp`, such that the shrunken cylinder `Q_{theta_m r}^Phi` carries the finite-depth averaged affine tower packet `ATD_m^epsilon`.

## Proof

Rescale the moving cylinder by

```math
x=c(t)+rA(t)y,
\qquad s=(t-t_0)/r^2.
```

Bounded distortion gives uniformly elliptic metric coefficients and uniformly
bounded Jacobian factors. The imported local regularity input is the
bounded-coefficient CKN epsilon theorem for this pulled-back moving-frame
equation; the lower-order frame terms are part of the normalized residual
measured in `SCF_base`.

The pressure normalization is

```math
p^{norm}=p-c(t)-p_{aff}^{frame}(x,t).
```

The constant gauge has zero spatial derivative, and the affine frame potential cancels the inertial affine force. Thus the pressure term in `SCF_base` is the CKN pressure fluctuation for the normalized equation.

The smallness assumption gives

```math
\iint_{Q_1}|u_{rel}|^3+|p^{norm}|^{3/2}+|\nabla u|^2\le \varepsilon_m.
```

By the bounded-coefficient CKN epsilon theorem, the normalized solution is smooth on `Q_{1/2}` and satisfies, for all `k<=m+2`,

```math
\sup_{Q_{1/2}}|\nabla^k u|+\sup_{Q_{1/2}}|\nabla^{k+1}p|\le C_{m,M_\sharp,\nu}.
```

Scaling back gives

```math
\sup_{Q_{r/2}^\Phi} r^{k+1}|\nabla^k u|
+
\sup_{Q_{r/2}^\Phi} r^{k+3}|\nabla^{k+1}p|
\le C_{m,M_\sharp,\nu}.
```

These estimates control every velocity rung `U_q`, every pressure derivative entering `K_q`, and the viscous rungs through depth `m+2`. The affine moments and residual slots defining `ATD_m^epsilon` are finite sums of these normalized derivative bounds. Choosing `theta_m` so that the finite sum of residual slots is at most `eta_X` gives the seed

```math
X_{\theta_m r}(s_a)\le\eta_X.
```

The same derivative estimates give

```math
X_{\theta_m r}\in L^\infty,
\qquad N_{\theta_m r}\in L^1,
\qquad \mathcal K_{\le m}^{avg,\theta_m r}\in L^1.
```

This is `ATD_m^epsilon`.

## Constant dependence

The constants depend only on

```text
m, nu, M_sharp, dimension, fixed cutoff profile.
```

They are invariant under the physical radius `r` after parabolic normalization.

## Output

```math
SCF_{base}\le\varepsilon_m\Longrightarrow ATD_m^\varepsilon.
```
