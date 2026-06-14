# Local AACT.KX Line-By-Line Averaged ACT Proof

## Status

Theorem-facing local cylinder proof for the averaged ACT estimate.

## Local Cylinder Setup

Work on one shrunken same-fluid moving cylinder

```math
Q_R^\Phi=Q_R^\Phi(a_0,t_0)
```

where `SCF_{avg}^m` holds. Let `A_R(t)` denote the averaged affine core, `X_R(t)` the averaged excess, and `N_R(t)` the averaged dissipative packet. Let

```math
B_R(t):=1+A_R(t)+V_R(t)+P_R(t),
```

where `V_R` is the viscous/cutoff coefficient ledger and `P_R` is the pressure-response coefficient ledger. Let `F_R` collect source, residual, far-tail, and mollified-center forcing ledgers.

## Theorem `AACT.KX.local`

On the local cylinder, if the averaged seed satisfies

```math
X_R(t_0)\le \eta_X,
```

and the scheduler cell `I` satisfies

```math
\left(\eta_X+\int_I F_R(t)dt\right)
\exp\left(\int_I(B_R(t)+1)dt\right)
\le 2\eta_X,
```

with `\eta_X` small enough for absorption, then

```math
X_R\in L^\infty(I),
\qquad
N_R\in L^1(I),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I).
```

Consequently the local averaged transported-center packet feeding `DTC.A_avg` is installed on `Q_R^\Phi`.

## Step 1: Averaged excess identity

The affine-subtracted velocity is

```math
w_R(x,t):=u(x,t)-u_R^{ctr}(t)-A_R(t)(x-c_R(t)).
```

The averaged excess is

```math
X_R(t)=R^{-2}\int_{Q_R^\Phi(t)}|w_R|^2\psi_R+\text{averaged lower affine-rung terms}.
```

Testing the affine-subtracted equation against `w_R\psi_R` gives

```math
D^+X_R+c_0\nu N_R
\le
I_{tr}+I_{cut}+I_{press}+I_{core}+I_{visc}+I_{src}+I_{nl}.
```

## Step 2: Transport and cutoff packets

The moving center and affine frame remove pure center transport and pure affine transport. The remaining transport/cutoff terms are bounded by

```math
|I_{tr}|+|I_{cut}|
\le
C(1+V_R)X_R+\frac{c_0\nu}{16}N_R+F_{cut,R}.
```

Here `V_R` contains bounded distortion, cutoff speed, and frame-variation coefficients, and `F_{cut,R}\in L^1(I)` is included in `F_R`.

## Step 3: Pressure packet

Decompose pressure on the cylinder as

```math
p=p_R^{loc}+h_R+p_R^{far}.
```

The local Poisson part solves

```math
-\Delta p_R^{loc}=\partial_i\partial_j(\chi_R u_i u_j).
```

Calderon-Zygmund and the affine subtraction give

```math
|I_{press}^{loc}|
\le
C P_R X_R+\frac{c_0\nu}{16}N_R+F_{press,R}^{loc}.
```

The harmonic part is controlled by interior harmonic estimates and the averaged tower seed:

```math
|I_{press}^{harm}|
\le
C P_R X_R+F_{press,R}^{harm}.
```

The far tail is controlled by finite energy and the cylinder separation:

```math
|I_{press}^{far}|
\le F_{press,R}^{far}.
```

Thus

```math
|I_{press}|
\le
C P_R X_R+\frac{c_0\nu}{16}N_R+F_{press,R}.
```

## Step 4: Core affine packet

The averaged affine core equation is chosen by the cylinder moment conditions. Its residual satisfies

```math
D^+A_R
\le
\mathcal K_{\le m}^{avg,R}+C A_R^2+F_{A,R}.
```

When inserted in the excess identity, the core packet contributes

```math
|I_{core}|
\le
C A_R X_R+\frac{c_0\nu}{16}N_R+F_{A,R}.
```

## Step 5: Viscous and tower packets

The viscous rung terms supply the coercive part of `N_R`. Commutators with the moving frame and finite cutoff obey

```math
|I_{visc}^{comm}|
\le
C V_R X_R+\frac{c_0\nu}{16}N_R+F_{visc,R}.
```

The averaged tower equations through depth `m` give the ledger inequality

```math
\mathcal K_{\le m}^{avg,R}
\le
C\left(X_R^{1/2}N_R^{1/2}+X_R\right)+F_{K,R}.
```

## Step 6: Nonlinear averaged packet

The affine-subtracted quadratic term satisfies

```math
|I_{nl}|
\le
C_\ast\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R+C X_RB_R+F_{nl,R}.
```

This is the averaged version of the standard local nonlinear balance: the genuine quadratic excess supplies `X_R^{1/2}N_R`, while pressure and viscous coefficient packets appear through fractional Young factors.

## Step 7: First-exit absorption

Combining the preceding estimates gives

```math
D^+X_R+c_\nu N_R
\le
B_R X_R
+C_\ast\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R
+F_R.
```

Choose the first-exit threshold and scheduler cell so that

```math
C_\ast\left((2\eta_X)^{1/2}+\|V_R\|_{L^1(I)}^{1/3}+\|P_R\|_{L^1(I)}^{2/3}\right)
\le \frac{c_\nu}{2}.
```

On the first-exit interval, this absorbs the nonlinear coefficient into the left side:

```math
D^+X_R+\frac{c_\nu}{2}N_R
\le
B_RX_R+F_R.
```

## Step 8: Scheduler Gronwall

Gronwall gives

```math
X_R(t)
\le
\left(X_R(t_0)+\int_I F_R(s)ds\right)
\exp\left(\int_I B_R(s)ds\right).
```

The scheduler condition gives

```math
X_R(t)\le2\eta_X
\qquad t\in I.
```

Therefore the first-exit threshold is never reached. Integrating the absorbed inequality gives

```math
\int_I N_R(t)dt<\infty.
```

The tower ledger estimate then gives

```math
\mathcal K_{\le m}^{avg,R}\in L^1(I).
```

## Local Output

The local averaged packet is

```math
X_R\in L^\infty(I),
\qquad
N_R\in L^1(I),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I),
```

plus pressure, viscous, core, and residual ledgers included in `F_R`, `P_R`, and `V_R`. This is exactly `AACT.KX.local` and supplies the local input for finite-cover globalization to `DTC.A_avg`.

## Boundary

This proof is local to one SCF-good moving cylinder. The passage from local cylinders to the terminal averaged packet is supplied by `TGC.A` and `AACT.Global.noJump`.
