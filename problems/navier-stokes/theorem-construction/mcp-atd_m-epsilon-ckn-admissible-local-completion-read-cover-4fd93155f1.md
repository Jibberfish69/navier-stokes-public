# ATD_m^epsilon CKN-Admissible Local Completion

Status: local theorem completed under the stated CKN-admissible moving-cylinder hypotheses.

## Theorem

Let `Q_r^Phi(a_0,t_0)` be a same-fluid moving cylinder for a suitable Navier-Stokes solution. Assume:

```math
\Gamma_\sharp(Q_r^\Phi)\le M_\sharp,
```

and that the same-fluid chart is CKN-admissible: after rescaling by `r` and pulling back by the moving frame, the Jacobian, inverse Jacobian, metric tensor, parabolic measure, and gradient norms are comparable to the unit-cylinder quantities by constants depending only on `M_sharp`, and the local energy inequality is preserved with constants depending only on `M_sharp` and `nu`.

Assume the normalized base packet satisfies

```math
SCF_{base}(Q_r^\Phi(a_0,t_0))\le\varepsilon_m,
```

where `SCF_base` uses the CKN-compatible moving-frame velocity normalization and pressure normalization. Choose `epsilon_m` below the CKN epsilon threshold for the bounded-distortion frame.

Then there is `theta_m in (0,1/2)` such that on

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

Rescale to `r=1` and pull back by the same-fluid moving frame. Bounded distortion gives a uniformly elliptic/parabolic chart whose constants depend only on `M_sharp`. The normalized smallness becomes

```math
\iint_{Q_1}|u-u_1^{norm}|^3
+
\iint_{Q_1}|p-p_1^{norm}|^{3/2}
+
\iint_{Q_1}|\nabla u|^2
\le\varepsilon_m.
```

The pressure normalization is the CKN-compatible one for the moving frame; affine pressure modes are absorbed into that normalization. With `epsilon_m` below the corresponding epsilon-regularity threshold, the CKN theorem gives local boundedness and smoothness on `Q_{1/2}`.

Choose an interior bootstrap cylinder between `Q_{1/2}` and the CKN-good unit
cylinder.  For every `k <= m+2`, apply the differentiated Navier--Stokes
equation for `\nabla^k u` and the CKN-gauged pressure equation

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
```

Interior parabolic estimates for the velocity and interior elliptic estimates
for this pressure equation give

```math
\sup_{Q_{1/2}}|\nabla^k u|+
\sup_{Q_{1/2}}|\nabla^{k+1}p|
\le C_{k,m,M_\sharp,\nu}.
```

Scaling back gives

```math
\sup_{Q_{r/2}^\Phi}r^{k+1}|\nabla^k u|
+
\sup_{Q_{r/2}^\Phi}r^{k+3}|\nabla^{k+1}p|
\le C_{k,m,M_\sharp,\nu}.
```

These estimates control every tower rung `U_q` for `q <= m+2` and every pressure derivative needed for the forcing rungs. Since

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
```

the pressure term is controlled by the pressure bounds and the viscous term by the `U_{q+2}` rung.

For the averaged affine residual packet, the CKN-bootstrapped smoothness gives, after affine normalization and center subtraction,

```math
\|\zeta_{\theta r}\nabla_{\theta r}^{\beta}R_{q,j}^{\theta r}(s_a)\|_{\bar L^2}^2
\le C_m\theta^2
```

for every finite slot in `X_{theta r}`. Choose `theta_m` so that the finite sum obeys

```math
X_{\theta_m r}(s_a)\le\eta_X.
```

The same derivative bounds give

```math
X_{\theta_m r}\in L^\infty(I_{\theta_m r}),
\qquad
N_{\theta_m r}\in L^1(I_{\theta_m r}).
```

For the averaged center forcing, test the tower equations against transported mollifiers:

```math
\frac{d}{dt}\bar U_{q,j}^{\theta r}
=
\langle K_q,\varphi_{j,\theta r}\rangle
+\text{moving-frame terms}.
```

The pressure term is controlled by the pressure derivative bounds, equivalently by integration by parts onto the mollifier. The viscous term is controlled by the `U_{q+2}` rung. The moving-frame terms are controlled by bounded distortion and the same interior derivatives. Therefore

```math
\mathcal K_{\le m}^{avg,\theta_m r}\in L^1(I_{\theta_m r}),
\qquad
F_{\theta_m r}\in L^1(I_{\theta_m r}).
```

This is exactly `ATD_m` on the shrunken same-fluid cylinder.

## Consequence

On every SCF-good same-fluid cylinder,

```math
SCF_{base}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX.
```

## Boundary

This is a local theorem. It supplies no global terminal coverage by itself. The global route still needs

```math
SGC.A_{a.e.}+CAVG.J.
```

The conclusion is averaged tower data. Pointwise `DTC.A` is recovered later through `DTC.Read` on the finite cover supplied by `READ.COVER`.
