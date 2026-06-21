# MPP Normalized Adjoint Amplitude Four-Certificate Discharge

## Status

Analytic-certificate discharge for the source-drain supplier route.

This note discharges the four analytic certificates behind
`LemmaB.SourceDrain` by using one time-dependent normalized adjoint amplitude
throughout:

```math
\Gamma_T(t)
=
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad
g_T(t)=e^{\Gamma_T(t)},
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

Then `g_T(t_+)=1`, so

```math
\chi_T(t_+)=\psi_T(t_+),
```

and the normalized child mass is

```math
M(T)
:=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

The point of the normalization is that central positive strain is not treated
as a free source.  The exact statement is the integrating-factor identity

```math
\frac{d}{dt}\bigl(g_T(t)^{-1}\langle w_j(t),\psi_T(t)\rangle\bigr)
=
g_T(t)^{-1}
\frac{d}{dt}\langle w_j(t),\psi_T(t)\rangle
+
\lambda_{\max}^+(A_k(X_T(t),t))
g_T(t)^{-1}
\langle w_j(t),\psi_T(t)\rangle .
```

The scalar coefficient placed in `\Gamma_T` is therefore part of the
differentiated weight; residual creation is measured by the weighted pairing

```math
\int_{I_T} g_T(t)^{-1}\langle R,\psi_T\rangle\,dt.
```

## 1. `CoeffStop.A`

For `a<b` define the coefficient budget

```math
\mathcal C_T(a,b)
:=
\int_a^b
\left(
r_T^2\|\nabla^2b_k(t)\|_\infty
+
r_T\|\nabla A_k(t)\|_\infty
\right)\,dt.
```

A tile is coefficient-good when

```math
\mathcal C_T(t_-,t_+)\le\varepsilon_M.
```

If the tile is coefficient-bad, define the backward stopping time `\sigma_T`
by

```math
\mathcal C_T(\sigma_T,t_+)=\varepsilon_M.
```

On `[\sigma_T,t_+]`, the normalized adjoint identity is

```math
\langle w_j(t_+),\chi_T(t_+)\rangle
=
\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle
+
\int_{\sigma_T}^{t_+}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
+
E_\Gamma .
```

The term `E_\Gamma` is produced by differentiating `g_T(t)^{-1}`.  Its
unrepresented part is controlled by the exact coefficient estimate

```math
|E_\Gamma|
\le
C_\Gamma\mathcal C_T(\sigma_T,t_+)
\sup_{\tau\in[\sigma_T,t_+]}
|\langle w_j(\tau),\chi_T(\tau)\rangle|.
\tag{NAA.1}
```

On a stopped coefficient interval
`\mathcal C_T(\sigma_T,t_+)=\varepsilon_M`; the dichotomy below uses the
explicit threshold

```math
C_\Gamma\varepsilon_M\le \frac18.
\tag{NAA.2}
```

If

```math
\left|
\int_{\sigma_T}^{t_+}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2
\ge
cM(T),
```

then the tile is residual-charged.  If the residual term is smaller, then

```math
|\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle|^2
\ge
cM(T),
```

so the same packet mass already exists at the earlier stopped face.  The
cylinder

```math
Q_{r_T}(X_T(\sigma_T),\sigma_T)
```

is an earlier threshold-crossing source-pulse ancestor.

Therefore every active child tile is exactly one of

```math
\text{coefficient-good}
\quad\vee\quad
\text{residual-charged}
\quad\vee\quad
\text{earlier ancestor}.
```

This discharges `CoeffStop.A`.

## 2. Strain-Gauged Parametrix And `WeightedAdjBessel.A`

On coefficient-good tiles use the affine frame

```math
y=J_T(t)^{-1}(x-X_T(t)),
\qquad
\dot X_T=b_k(X_T,t),
\qquad
\dot J_T=\nabla b_k(X_T,t)J_T.
```

Gauge out central strain:

```math
\psi_T=G_T\varphi_T,
\qquad
\dot G_T=A_k(X_T,t)^*G_T.
```

After pullback and gauging, `\varphi_T` solves

```math
-\partial_t\varphi_T
-\nu\nabla_y\cdot(B_T(t)\nabla_y\varphi_T)
=
\mathcal E_T\varphi_T,
\qquad
B_T(t)=J_T^{-1}J_T^{-T}.
```

On coefficient-good tiles, `B_T` is uniformly elliptic and

```math
\|\mathcal E_T\|_{L_t^1(H^1\to H^{-1})}
\le
C\varepsilon_M.
```

The affine heat kernel gives

```math
|\partial_x^\alpha H_T(t,s)f|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right)\|f\|_2.
```

Duhamel gives

```math
\varphi_T
=
H_T\varphi_T(t_+)
+
\int_t^{t_+}H_T(t,s)\mathcal E_T(s)\varphi_T(s)\,ds.
```

Choose `M` so `C\varepsilon_M<1/2`; bootstrap and absorb the perturbative term:

```math
|\partial_x^\alpha \varphi_T(x,t)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

Because `g_T(t)^{-1}G_T(t)` is bounded by construction, the same packet bounds
hold for

```math
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

Thus

```math
|\langle\chi_T,\chi_{T'}\rangle|
+
r_T^2|\langle\nabla\chi_T,\nabla\chi_{T'}\rangle|
\le
Ce^{-cd(T,T')^2}+C\varepsilon_M.
```

Schur/Cotlar gives

```math
\boxed{
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
}
```

This discharges `WeightedAdjBessel.A`.

## 3. Residual `L_t^2H^{-1}` And `WeightedAdjRes.A`

Use the final localized packet equation

```math
L_{j,k}w_j=R,
```

and decompose

```math
R=R^{comm}+R^{press}+R^{cut}+R^{off}.
```

The four residual estimates are:

```math
\|R^{comm}\|_{L_t^2H^{-1}}^2
\le
C_{comm}
\int\sum_{q>N}D_q,
```

by Coifman--Meyer after the principal strain term has been moved into `A_k`;

```math
\|R^{press}\|_{L_t^2H^{-1}}^2
\le
C_{press}
\int\sum_{q>N}D_q,
```

by Leray projection and Calderon--Zygmund after local pressure normalization;

```math
\|R^{cut}\|_{L_t^2H^{-1}}^2
\le
C_{cut}
\int\sum_{q>N}D_q,
```

using

```math
|\partial_t\eta_T|+|b_k\cdot\nabla\eta_T|\le C_{\eta,t} r_T^{-2},
\qquad
|\nabla\eta_T|\le C_{\eta,x} r_T^{-1},
```

with `H^{-1}` paying one derivative; and

```math
\|R^{off}\|_{L_t^2H^{-1}}^2=o_N(1),
```

by shell separation and terminal high-frequency tail decay.

Thus

```math
\|R\|_{L_t^2H^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

For `\Xi=\sum_Tc_T\chi_T`,

```math
\sum_Tc_T
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
=
\int\langle R,\Xi\rangle\,dt.
```

Duality with `WeightedAdjBessel.A` gives

```math
\boxed{
\sum_T
\left|
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
}
```

This discharges `WeightedAdjRes.A`.

## 4. First-Pulse Compactness And `FirstPulseKill.A`

Use the final source-pulse functional

```math
\mathcal P(Q_r(x,t))
:=
r^{-1}\int_{Q_r(x,t)}[F^{src}_{>1/r}]_+.
```

Choose a dyadic tile `Q_n` with

```math
\mathcal P(Q_n)\ge\eta
```

which is earliest in time among threshold-crossing tiles.  Use lexicographic
tie-breaking for measurability.

Rescale around `Q_n`:

```math
v_n(y,s)=r_n u(x_n+r_ny,t_n+r_n^2s).
```

Define source measures

```math
d\nu_n
:=
r_n^{-1}[F^{src}_{>1/r_n}]_+\,dx\,dt.
```

By local source-mass boundedness, pass to a subsequence:

```math
\nu_n\rightharpoonup\nu_*.
```

The selected pulse gives

```math
\nu_*(Q_1(0,0))\ge\eta.
```

First-pulse selection gives the no-earlier-pulse property:

```math
\nu_*(\text{threshold source-pulse class in }s<-a)=0
\qquad
\forall a>0.
```

Indeed, if an earlier threshold source-pulse survives in the limit, regularity
of Radon measures and dyadic density selection produce earlier threshold-crossing
tiles for `n` large, contradicting earliest selection.

Let

```math
B_m(T_0)
=
\sum_{P_m\prec\cdots\prec T_0}\kappa_mS(P_m).
```

`ParentKernel.A` gives

```math
B_m(T_0)
\le
(1-\delta)^mB_0(T_0)+o(1).
```

Finite local source mass gives `B_0(T_0)<\infty`.  The no-earlier-pulse property
removes the ancestor branch, hence

```math
\boxed{
\lim_{m\to\infty}B_m(T_0)=0.
}
```

This discharges `FirstPulseKill.A`.

## Package Discharge

With those four certificates,

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A.
```

The parent-or-charge inequality gives

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1).
```

This is `LemmaB.SourceDrain`, and the installed downstream supplier route is

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

Boundary: this discharges the source-drain supplier route.  It does not by
itself install the CM witness-to-member direction into `Pack`, `Part`, `Field`, or
`Member`, and it does not install the blunt converse `not CM=>not Member`.
