# AACT.KX Constants And Scale Bookkeeping

## Status

Closed bookkeeping surface for the local and global averaged ACT estimates.

## Order of choices

Fix the endpoint depth `N` required by the endpoint matrix and the continuation readout. Choose

```math
m\ge N+2.
```

The extra two derivatives supply the viscous part of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,\qquad q\le N.
```

Fix the finite route parameter set `P_req` and a same-fluid distortion bound `M_sharp` on the terminal cover.

Choose the nonlinear absorption threshold `eta_X` so that

```math
C_*(2\eta_X)^{1/2}\le c_\nu/4.
```

Choose the CKN smallness threshold

```math
\varepsilon_m=\varepsilon_m(m,N,\nu,M_\sharp,P_{req})
```

below the bounded-frame epsilon threshold needed by `ATD_m^epsilon`.

The local regularity theorem gives a shrink factor

```math
\theta_m=\theta_m(m,N,\nu,M_\sharp,P_{req})\in(0,1/2)
```

such that every `SCF_base <= epsilon_m` cylinder yields the finite-depth averaged tower packet on the shrunken cylinder and the seed

```math
X_{\theta_m R}(s)\le eta_X.
```

After `Field_avg` supplies the terminal cover, set

```math
r_*:=\min_i r_i>0.
```

This lower radius belongs to terminal readout and finite-cover uniformity. It is chosen after `Field_avg` and before global summation.

## Scale invariance

The normalized cylinder variables use parabolic scaling

```math
x=c(t)+Ry,
\qquad \tau=(t-t_0)/R^2.
```

The quantities `SCF_base`, `X_R`, `N_R`, `B_R dt`, and `F_R dt` are scale-normalized. The local inequality

```math
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R
```

has the same form on every cylinder after normalization. The constants depend only on

```text
m, N, nu, M_sharp, P_req
```

and never on the physical radius `R`.

## Scheduler bookkeeping

On a scheduler cell `I_alpha`, require

```math
C_*\left((2\eta_X)^{1/2}+\|V_R\|_{L^1(I_\alpha)}^{1/3}+\|P_R\|_{L^1(I_\alpha)}^{2/3}\right)\le c_\nu/2,
```

and

```math
\left(\eta_X+\int_{I_\alpha}F_R\right)
\exp\left(\int_{I_\alpha}B_R\right)\le2\eta_X.
```

For the terminal finite cover, define common majorants

```math
B_*:=\sum_{j,p}1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}1_{I_j}F_{j,p}.
```

Finiteness of the cover and `P_req` gives `B_*,F_* in L^1`; absolute continuity gives a common scheduler partition.

## Verdict

The constants are frozen in the order

```text
N -> m -> P_req,M_sharp -> eta_X -> epsilon_m -> theta_m -> Field_avg cover -> r_* -> scheduler partition.
```

All local estimates are scale-invariant, and all terminal-cover constants enter only through finite-cover summation and readout.