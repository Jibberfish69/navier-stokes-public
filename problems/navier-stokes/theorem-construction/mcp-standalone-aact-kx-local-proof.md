# Standalone AACT.KX.local Proof

## Statement

Let `Q_R^Phi` be one bounded-distortion same-fluid moving cylinder. Assume `SCF_avg^m` and `ATD_m^epsilon` on the shrunken cylinder, with `m` at least the route depth required by endpoint readout. Let `X_R` be the averaged affine-subtracted excess, `N_R` the averaged dissipation packet, and `A_R` the averaged affine core. Set

```math
B_R:=1+A_R+V_R+P_R,
```

where `V_R` contains moving-frame, cutoff, and viscous-commutator coefficients, and `P_R` contains pressure-response coefficients. Let `F_R` contain source, cutoff, pressure-tail, harmonic, frame, and finite-rung forcing remainders.

If

```math
X_R(t_0)\le\eta_X
```

and on a scheduler interval `I`

```math
\left(\eta_X+\int_I F_R\right)
\exp\left(\int_I B_R\right)\le 2\eta_X,
```

with absorption smallness

```math
C_*\left((2\eta_X)^{1/2}+\|V_R\|_{L^1(I)}^{1/3}+\|P_R\|_{L^1(I)}^{2/3}\right)\le c_\nu/2,
```

then

```math
X_R\in L^\infty(I),\qquad N_R\in L^1(I),\qquad \mathcal K_{\le m}^{avg,R}\in L^1(I).
```

## Proof

Write the affine residual

```math
w_R(x,t)=u(x,t)-u_R^{ctr}(t)-A_R(t)(x-c_R(t)).
```

The normalized excess has the form

```math
X_R=R^{-2}\int |w_R|^2\psi_R+\text{finite averaged affine-rung terms}.
```

Testing the affine-subtracted equation against `w_R psi_R` gives

```math
D^+X_R+c_0\nu N_R
\le I_{tr}+I_{cut}+I_{press}+I_{core}+I_{visc}+I_{src}+I_{nl}.
```

The moving-frame calculation writes transport through the affine-relative velocity. The center and affine modes cancel by construction, and the remainder satisfies

```math
|I_{tr}|\le C(1+V_R)X_R+{c_0\nu\over 16}N_R+F_{tr,R}.
```

Cutoff and moving-boundary terms have the same normalized coefficient structure:

```math
|I_{cut}|\le C(1+V_R)X_R+{c_0\nu\over 16}N_R+F_{cut,R}.
```

For pressure, use

```math
p=p_R^{loc}+h_R+p_R^{far}
```

with CKN-compatible gauge and affine frame potential removed. Calderon-Zygmund on the local part, harmonic interior estimates, and energy control of the far part yield

```math
|I_{press}|\le C P_R X_R+{c_0\nu\over 16}N_R+F_{press,R}.
```

The affine core moment equation satisfies

```math
D^+A_R\le \mathcal K_{\le m}^{avg,R}+C A_R^2+F_{A,R},
```

and its contribution to the excess obeys

```math
|I_{core}|\le C A_R X_R+{c_0\nu\over 16}N_R+F_{A,R}.
```

The viscous term supplies the coercive part of `N_R`; frame and cutoff commutators satisfy

```math
|I_{visc}^{comm}|\le C V_R X_R+{c_0\nu\over 16}N_R+F_{visc,R}.
```

The finite averaged tower packet gives

```math
\mathcal K_{\le m}^{avg,R}\le C(X_R^{1/2}N_R^{1/2}+X_R)+F_{K,R}.
```

The nonlinear affine-excess term is estimated by interpolation and Young's inequality:

```math
|I_{nl}|\le C_*\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R+C B_R X_R+F_{nl,R}.
```

Combining all terms gives

```math
D^+X_R+c_\nu N_R
\le B_RX_R+C_*\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R+F_R.
```

Run a first-exit argument on the interval where `X_R<=2 eta_X`. The scheduler smallness absorbs the nonlinear dissipation coefficient and gives

```math
D^+X_R+{c_\nu\over2}N_R\le B_R X_R+F_R.
```

Gronwall yields

```math
X_R(t)\le\left(X_R(t_0)+\int_I F_R\right)
\exp\left(\int_I B_R\right)\le2\eta_X.
```

The first-exit threshold is therefore preserved. Integrating the absorbed inequality gives `N_R in L^1(I)`. The tower ledger estimate then gives `K_{<=m}^{avg,R} in L^1(I)`.

This proves `AACT.KX.local`.

## Output for globalization

The local output is exactly the packet used by the finite-cover scheduler:

```math
X_R\in L^\infty,
\qquad N_R\in L^1,
\qquad \mathcal K_{\le m}^{avg,R}\in L^1.
```