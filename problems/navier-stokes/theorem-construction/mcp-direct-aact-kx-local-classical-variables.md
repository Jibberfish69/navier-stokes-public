# Direct AACT.KX.local In Classical Variables

## Statement

On a bounded-distortion same-fluid moving cylinder

```math
Q_R^\Phi=
\{(x,t):x=c(t)+RA(t)y,\\ |y|<1,\\ |t-t_0|<R^2\},
```

define the affine residual

```math
w_R(x,t)=u(x,t)-u_R(t)-B_R(t)(x-c(t)),
```

where `u_R(t)` and the trace-free matrix `B_R(t)` are the weighted affine
least-squares coefficients against the transported cutoff `psi_R`.  Equivalently,
for `\xi=x-c(t)` and every trace-free matrix `G`,

```math
\int w_R(x,t)\psi_R(x,t)\,dx=0,
\qquad
\int w_R(x,t)\cdot G\xi\,\psi_R(x,t)\,dx=0.
```

The cutoff is assumed to have positive mass and a coercive weighted second
moment tensor on the cylinder, so this finite-dimensional system determines
`(u_R,B_R)` uniquely with constants depending only on the cutoff template and
the bounded-distortion ledger. Define

```math
X_R(t)=R^{-2}\int |w_R|^2\psi_R(x,t)\,dx
```

plus the finite lower affine-rung terms, and define `N_R` by the corresponding localized gradient/dissipation terms.

Then, on a scheduler cell, the classical variables satisfy

```math
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R.
```

## Classical calculation

The affine-subtracted Navier-Stokes equation is tested against `w_R psi_R`. The transport frame is

```math
V_R^{frame}(x,t)=c'(t)+\dot A(t)A(t)^{-1}(x-c(t)).
```

The material derivative decomposes as

```math
\partial_t+u\cdot\nabla
=
\partial_t+V_R^{frame}\cdot\nabla +(u-V_R^{frame})\cdot\nabla.
```

The first two terms differentiate the moving cutoff and the affine frame; their coefficients are bounded by the frame ledger. The last term is controlled by the affine residual. This gives the transport/cutoff contribution

```math
|I_{tr}|+|I_{cut}|\le C(1+V_R)X_R+{c\over16}N_R+F_{cut,R}.
```

For pressure, split on the cover element:

```math
p=p_R^{loc}+h_R+p_R^{far},
\qquad
-\Delta p_R^{loc}=\partial_i\partial_j(\chi_R u_i u_j).
```

The local part is controlled by Calderon-Zygmund and the affine-subtracted product expansion, the harmonic part by interior harmonic estimates, and the far part by the energy bound. Hence

```math
|I_{press}|\le C P_R X_R+{c\over16}N_R+F_{press,R}.
```

The viscous term gives coercivity:

```math
-\nu\int \nabla w_R:\nabla(w_R\psi_R)\le -cN_R+C V_RX_R+F_{visc,R}.
```

The affine-core moment equations give

```math
|I_{core}|\le C A_R X_R+{c\over16}N_R+F_{core,R}.
```

The quadratic term obeys the localized interpolation estimate

```math
|I_{nl}|\le C X_R^{1/2}N_R+C B_RX_R+F_{nl,R}.
```

Summing the displayed estimates yields the claimed inequality.

## Scheduler closure

On scheduler cells satisfying the explicit pointwise absorption and Gronwall
conditions

```math
C X_R^{1/2}\le c/2,
\qquad
\exp\!\left(\int_J B_R^+(t)\,dt\right)
\left(X_R(t_0)+\int_J F_R^+(t)\,dt\right)\le X_{\mathrm{cell}},
```

the inequality gives

```math
X_R\in L^\infty,
\qquad N_R\in L^1,
\qquad \mathcal K_{\le m}^{avg,R}\in L^1.
```

## Output

This is `AACT.KX.local` written purely in classical PDE variables: `u`, `p`, transported cutoffs, pressure splits, affine residuals, and moving-frame coefficients.
