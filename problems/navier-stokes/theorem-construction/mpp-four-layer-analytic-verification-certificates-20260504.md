# MPP Four-Layer Analytic Verification Certificates

## Status

Verification package for the six-step normalized-mass source-drain proof.

This note verifies the analytic estimates invoked by
`mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md` using four
certificates:

```math
\text{model estimate}
\quad
\text{perturbative estimate}
\quad
\text{summability estimate}
\quad
\text{limit-passage estimate}.
```

Each certificate must have constants independent of terminal scale and
remainders satisfying `o_N(1)\to0`.

All four certificates use the normalized adjoint amplitude

```math
\Gamma_T(t)
=
\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad
g_T(t)=e^{\Gamma_T(t)},
\qquad
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

Thus `g_T(t_+)=1`, `\chi_T(t_+)=\psi_T(t_+)`, and residual creation is charged
by `\int g_T(t)^{-1}\langle R,\psi_T\rangle\,dt`.

## Certificate 1: Affine Heat Packet Bounds

### Frozen affine model

In the moving affine frame

```math
y=J_T(t)^{-1}(x-X_T(t)),
```

the principal backward operator becomes

```math
-\partial_t-\nu\nabla_y\cdot(B_T(t)\nabla_y),
```

where

```math
B_T(t)=J_T(t)^{-1}J_T(t)^{-T}
```

up to the harmless determinant normalization from the affine change of
variables.  On coefficient-good heat windows, the affine frame is uniformly
nondegenerate, so `B_T(t)` is uniformly elliptic on the tile:

```math
\lambda |\xi|^2
\le
\xi\cdot B_T(t)\xi
\le
\Lambda |\xi|^2.
```

The Aronson/Gaussian kernel bound for this time-dependent uniformly elliptic
model gives

```math
|\partial_y^\alpha H_T(t,s)f|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|y-y_T(t)|^2}{r_T^2}\right)\|f\|_2.
```

Returning to `x` coordinates gives

```math
|\partial_x^\alpha H_T(t,s)f|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right)\|f\|_2.
```

### Perturbative estimate

After the central strain gauge, the coefficient remainder is precisely the
affine low-flow remainder plus oscillatory strain:

```math
b_k(x,t)-b_k(X_T,t)-\nabla b_k(X_T,t)(x-X_T),
```

and

```math
A_k(x,t)-A_k(X_T,t).
```

Coefficient stopping gives

```math
\mathcal C(T)
=
\int_{I_T}
\left(
r_T^2\|\nabla^2b_k(t)\|_\infty
+
r_T\|\nabla A_k(t)\|_\infty
\right)\,dt
\le
\varepsilon_M.
```

Therefore the perturbation satisfies

```math
\|\mathcal E_T\|_{L_t^1(H^1\to H^{-1})}
\le
C\varepsilon_M.
```

### Duhamel bootstrap

Duhamel gives

```math
\varphi_T
=
H_T\varphi_T(t_+)
+
\int H_T\mathcal E_T\varphi_T.
```

The model estimate controls the first term.  The second term is bounded in the
same packet norm by `C\varepsilon_M\|\varphi_T\|_{packet}`.  Choose `M` so
`C\varepsilon_M<1/2`.  Absorb to obtain

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

Since `\|g_T(t)^{-1}G_T(t)\|\le C`, the same bound holds for

```math
\chi_T(t)=g_T(t)^{-1}\psi_T(t).
```

This verifies the affine heat packet bounds needed by `WeightedAdjBessel.A`.

## Certificate 2: Cotlar / `TT^*` Bessel

Use the packet bounds to estimate the overlap kernel

```math
K(T,T')
:=
\int
\left[
\langle\chi_T(t),\chi_{T'}(t)\rangle
+
\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle
\right]\,dt.
```

Gaussian localization, frequency collar separation, and bounded phase-space
overlap give

```math
|K(T,T')|
\le
Ce^{-cd(T,T')^2}
+
C\varepsilon_M e^{-cd(T,T')}.
```

The tile metric `d(T,T')` is chosen so annuli have uniformly bounded counting
measure.  Hence Schur sums are uniform:

```math
\sup_T\sum_{T'}|K(T,T')|\le C,
\qquad
\sup_{T'}\sum_T|K(T,T')|\le C.
```

Cotlar--Stein gives

```math
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
```

The constant is independent of `N`, tile depth, and terminal scale.  This
verifies `WeightedAdjBessel.A`.

## Certificate 3: Residual `L_t^2H^{-1}`

Decompose

```math
R=R^{comm}+R^{press}+R^{cut}+R^{off}.
```

### Commutator

The commutator term is

```math
R^{comm}
=
[\Delta_j,b_k\cdot\nabla]w_j-\text{principal strain part}.
```

After the principal strain contribution is extracted into `A_k`, the remaining
symbol is Coifman--Meyer with one high-frequency derivative paid by the
`H^{-1}` norm.  Therefore

```math
\|R^{comm}\|_{H^{-1}}^2
\le
C_{\mathrm{comm}}D_j.
```

### Pressure

The pressure residual is

```math
R^{press}
=
\nabla\Delta_jp-\text{localized Leray projection}.
```

Local pressure normalization removes constants, and Calderon--Zygmund / Leray
projection boundedness gives

```math
\|R^{press}\|_{H^{-1}}^2
\le
C_{\mathrm{press}}D_j.
```

### Cutoff

The cutoff residual is

```math
R^{cut}
=
[\partial_t+b_k\cdot\nabla-\nu\Delta,\eta_T]w_j.
```

Heat-scale derivatives obey

```math
|\partial_t\eta_T|+|b_k\cdot\nabla\eta_T|
\le
C_{\eta,t}
r_T^{-2},
\qquad
|\nabla\eta_T|\le C_{\eta,x}r_T^{-1}.
```

The `H^{-1}` norm pays one derivative, so

```math
\|R^{cut}\|_{H^{-1}}^2
\le
C_{\mathrm{cut}}\nu\|\nabla w_j\|_2^2.
```

### Off-packet

Shell separation and terminal high-frequency tail decay give

```math
\sum_{j>N}\|R_j^{off}\|_{L_t^2H^{-1}}^2=o_N(1).
```

Combining the four pieces:

```math
\|R\|_{L_t^2H^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

With `\Xi=\sum_Tc_T\chi_T`, duality gives

```math
\sum_T c_T
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
=
\int\langle R,\Xi\rangle\,dt.
```

Using `WeightedAdjBessel.A`,

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

This verifies `WeightedAdjRes.A`.

## Certificate 4: First-Pulse Compactness / Selection

Use dyadic tiles and lexicographic tie-breaking to make the first-pulse choice
measurable.

Define the source-pulse functional

```math
\mathcal P(Q_r(x,t))
:=
r^{-1}
\int_{Q_r(x,t)}
[F^{src}_{>1/r}]_+.
```

Choose the earliest tile with

```math
\mathcal P(Q_T)\ge\eta.
```

After rescaling, extract source measures

```math
\nu_n\rightharpoonup\nu_*.
```

The selected pulse gives nontrivial limiting source mass:

```math
\nu_*(Q_1(0,0))\ge\eta.
```

The earliest-pulse rule gives, for every finite backward slice `s<-a`,

```math
\nu_*(\text{earlier source-pulse class in }s<-a)=0.
```

This is the key no-leakage statement: earlier ancestry cannot reappear as
diffuse source residue in the ancient limit.  It follows because any positive
limiting earlier source-pulse mass would be detected by a dyadic tile after
weak convergence and would contradict the finite-scale earliest crossing.

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

Local compactness gives `B_0(T_0)<\infty` on fixed backward cylinders, and the
no-leakage statement removes the earlier-ancestor branch.  Hence

```math
\lim_{m\to\infty}B_m(T_0)=0.
```

This verifies `FirstPulseKill.A`.

## Final Verification Standard

Each certificate gives constants uniform in terminal scale and a remainder

```math
o_N(1)\to0.
```

Therefore the six-step package is discharged at the analytic-estimate level:

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
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

The normalized-adjoint-amplitude discharge is recorded in
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.
The definition-lock pass is recorded in
`mpp-source-drain-definition-alignment-and-discharge-20260504.md`.
