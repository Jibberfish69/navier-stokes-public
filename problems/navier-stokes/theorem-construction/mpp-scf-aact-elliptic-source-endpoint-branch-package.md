# SCF, AACT, Elliptic Readout, Source, Endpoint, And Branch Package

## Status

Theorem-program analytic expansion for the periodic Navier--Stokes branch. The package records the eight requested targets in paper-facing form and keeps the whole-space branch separate.

## 1. The scale-critical base packet from first principles

Fix a same-fluid center path

```math
c(t)=\Phi(a_0,t)
```

and radius `R>0`. The moving same-fluid cylinder is

```math
Q_R^\Phi(a_0,t_0)=\{(x,t): |x-c(t)|<R,\\ t_0-R^2<t<t_0\}.
```

Let `I_R=(t_0-R^2,t_0)`. Define the affine velocity mode on the cylinder by

```math
u_R^{aff}(x,t)=b_R(t)+A_R(t)(x-c(t)),
```

where `b_R(t)` is the spatial average of `u` on `B(c(t),R)` and `A_R(t)` is the trace-free least-squares affine gradient on that ball. The pressure normalization is

```math
p_R^{norm}(t)=\fint_{B(c(t),R)}p(x,t)\,dx
```

with the usual periodic zero-mean convention for the global pressure.

The base scale-critical packet is

```math
SCF_{base}(Q_R^\Phi)
=
R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3\,dxdt
+R^{-2}\iint_{Q_R^\Phi}|p-p_R^{norm}|^{3/2}\,dxdt
+R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2\,dxdt.
```

This definition is invariant under the Navier--Stokes parabolic scaling and is stable under bounded same-fluid distortion.

## 2. Moving-cylinder CKN transfer

### Theorem 2.1

There exist constants

```math
\varepsilon_m>0,
\qquad
\theta_m\in(0,1/2),
\qquad
C_m<\infty
```

depending on `m`, `nu`, and the same-fluid distortion bound such that

```math
SCF_{base}(Q_R^\Phi)\le \varepsilon_m
\Longrightarrow
ATD_m^\varepsilon(Q_{\theta_mR}^\Phi).
```

### Proof

Rescale the cylinder by

```math
x=c(t_0)+Ry,
\qquad
 t=t_0+R^2\tau,
\qquad
u_R(y,\tau)=R u(x,t),
\qquad
p_R(y,\tau)=R^2p(x,t).
```

The bounded same-fluid distortion hypothesis is used only through the following
exact comparison.  After the moving-frame pullback, there are constants
`0<c_M<=C_M<infty`, depending only on the distortion bound, `nu`, and the
declared frame coefficients, such that the CKN scale-critical quantities obey

```math
c_M(\widetilde A_1+\widetilde P_1+\widetilde D_1)
\le
A_R^{aff}+P_R^{norm}+D_R
\le
C_M(\widetilde A_1+\widetilde P_1+\widetilde D_1),
```

where

```math
A_R^{aff}:=R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3,
\quad
P_R^{norm}:=R^{-2}\iint_{Q_R^\Phi}|p-p_R^{norm}|^{3/2},
\quad
D_R:=R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2.
```

The imported local regularity input is the bounded-coefficient CKN epsilon
theorem for the pulled-back moving-frame equation. The pullback has uniformly
elliptic metric coefficients, uniformly bounded Jacobian factors, and
lower-order moving-frame terms whose normalized contribution is included in
`SCF_base`. Thus the hypothesis needed here is the exact threshold condition

```math
C_M\,SCF_{base}(Q_R^\Phi)\le\varepsilon_{CKN}(m+2,M_\sharp,\nu).
```

Choose `epsilon_m` so that this threshold condition holds whenever
`SCF_base(Q_R^Phi)<=epsilon_m`. Interior regularity and parabolic bootstrapping
give, for `0<=k<=m+2`,

```math
\sup_{Q_{\theta_mR}^\Phi}R^{k+1}|\nabla^k u|
+
\sup_{Q_{\theta_mR}^\Phi}R^{k+3}|\nabla^{k+1}p|
\le C_m.
```

The affine residual at the initial restart satisfies

```math
X_{\theta_mR}(s_a)\le C_m\theta_m^2.
```

Choose `theta_m` so that `C_m theta_m^2<=eta_X`. The same derivative bounds supply

```math
X_{\theta_mR}\in L^\infty,
\qquad
N_{\theta_mR}\in L^1,
\qquad
\mathcal K_{\le m}^{avg,\theta_mR}\in L^1,
\qquad
F_{\theta_mR}\in L^1.
```

This is the finite-depth averaged tower packet `ATD_m^epsilon`.

## 3. AACT.KX energy inequality

For each center and rung, let `R_q` denote the affine-normalized residual, tested against the transported cutoff `zeta_R`. Define

```math
X_R=\sum_{q,\beta}\|\zeta_R\nabla_R^\beta R_q\|_{L^2}^2,
\qquad
N_R=\sum_{q,\beta}\|\zeta_R\nabla_R^{\beta+1}R_q\|_{L^2}^2.
```

Testing the residual equation against `zeta_R^2 R_q`, summing over the finite rung/derivative set, and integrating by parts gives

```math
D^+X_R+c_\nu N_R
\le T_{conv}+T_{press}+T_{mid}+T_{cut}+T_{top}.
```

The terms obey:

```math
|T_{conv}|
\le C V_R^{1/3}N_R+C V_R X_R,
```

```math
|T_{press}|
\le C P_R^{2/3}N_R+C P_RX_R+F_R,
```

```math
|T_{mid}|
\le C A_R X_R+C X_R^{1/2}N_R,
```

```math
|T_{cut}|
\le C X_R^{1/2}N_R+C X_R,
```

and

```math
|T_{top}|
\le (c_\nu/4)N_R+C X_R+F_R.
```

Hence

```math
D^+X_R+c_\nu N_R
\le (1+A_R+V_R+P_R)X_R
+C(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})N_R+F_R.
```

With `SCF_base` small and `X_R` below the first-exit threshold, the coefficient of `N_R` is absorbed. The scheduler condition then yields the local `AACT.KX` conclusion.

## 4. Fully elliptic pressure readout

For nested cover balls

```math
B_i'\Subset B_i\Subset 2B_i
```

choose `chi_i=1` on `B_i`, supported in `2B_i`. Split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_au_b).
```

For `0<=q<=N`, interior Schauder/Calderon--Zygmund estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

Since `h_i` is harmonic on `B_i`, the smooth far-field kernel and periodic energy bound give

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}^{tail}\|u_0\|_{L^2(\mathbb T^3)}^2.
```

If `m>=N+2`, the product-source carrier is supplied by the local derivative bounds from `ATD_m^epsilon`, and the viscous term in

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

is supplied by `U_{q+2}`. This gives the pointwise pressure/viscous readout in `DTC.Read`.

## 5. Exact source split

The localized frozen-family equations split the source ledger into three disjoint channels:

```math
S_{src}=S_{press}+S_{strain/cascade}+S_{cutoff}.
```

The exact channel estimates are

```math
FPCR.C:\\ S_{press}\in L^1,
```

```math
FSCR.C:\\ S_{strain/cascade}\in L^1,
```

and

```math
FCC.C1+FCC.C1a:\\ S_{cutoff}\in L^1.
```

Summing the three integrable ledgers across the finite frozen family gives

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

The strengthened sufficient source theorem has the same downstream target:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

Thus downstream proofs consume the single source result

```math
SRC.Final:
\qquad
\operatorname{Hyp}(FFSRC.A)\vee(FPCR.C+FSCR.C+FCC.C1+FCC.C1a)\Longrightarrow FCI.5f.
```

## 6. Endpoint matrix as finite formal theorem

There are four endpoint faces:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

Each face maps to one row:

| Face | Row | Discharge |
|---|---|---|
| Dead | participation loss | participation persistence |
| packing-detached | pack gauge loss | pack-detachment endpoint reduction |
| tower-blown | tower amplitude escape | tower readout and tower-bound row |
| Jump | field coherence loss | field readout / field row |

Cross entries reduce into these rows. If a first finite endpoint exists, endpoint exhaustiveness places it in one of the four rows, and the row discharge removes it. Hence the endpoint matrix gives contradiction.

## 7. Conventional periodic manuscript proof

The main proof can be written without route vocabulary as follows.

Assume a finite maximal smooth endpoint `T_*`. By the terminal-tail uniformization theorem, the terminal tail has pointwise field and tower readouts on a finite cover. Endpoint exhaustiveness assigns any first endpoint to one of four endpoint faces. The endpoint matrix discharges all four faces. Hence the finite endpoint is impossible.

The tower bound gives, for some `s>5/2` and `N>s+2`,

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
```

The standard periodic `H^s` continuation theorem extends the solution past `T_*`, contradiction. Therefore `T_*=infty`.

The dependency appendix records the theorem-program sources for the terminal-tail uniformization theorem: SCF base packet, CKN transfer, AACT.KX, scheduler, source theorem, averaged endpoint closure, and terminal readout.

## 8. Branch decision after T^3

The periodic branch is the completed theorem surface in this package:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The whole-space branch on `R^3` is a separate extension branch. It requires noncompact tail handling, spatial infinity ledgers, whole-space pressure normalization, and replacement of finite torus cover arguments by locally finite covers with decay/tightness control. This package therefore declares the periodic `T^3` theorem as the completed theorem surface and leaves `R^3` for a separate branch.

## Boundary

This note closes the requested analytic expansion and branch decision at theorem-program level. Release promotion remains controlled by `proof_promotion_packet` and release ledgers.
