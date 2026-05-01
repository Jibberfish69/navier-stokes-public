# AACT.Global.noJump Lock

Status: conditional no-jump globalization theorem.

## Statement

On a bounded-distortion same-fluid terminal tail with

```math
\neg Jump_{avg},
```

`TGC.A` supplies a finite positive-scale SCF-good cover and scheduler-ready local ledgers. Then

```math
AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}.
```

## Proof

By `TGC.A`, the no-`Jump_avg` branch has finitely many SCF-good cylinders

```math
Q_j=Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
1\le j\le J,
```

with

```math
r_j\ge r_*>0,
\qquad
SCF_{base}(Q_j)\le\varepsilon_m,
\qquad
\operatorname{ovlp}\le\Omega.
```

For each finite route parameter `p in P_req`, `ATD_m^epsilon` supplies local seeds and ledgers

```math
X_{j,p}(s_{j,p})\le\eta_X,
\qquad
B_{j,p},F_{j,p}\in L^1(I_j).
```

Local `AACT.KX` gives

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p}.
```

Choose `eta_X` so that `C_X(2 eta_X)^{1/2} <= c/2`. On the first-exit interval `X_{j,p}<=2 eta_X`, this absorbs the nonlinear dissipation term and gives

```math
D^+X_{j,p}+\frac c2N_{j,p}
\le
B_{j,p}X_{j,p}+F_{j,p}.
```

Since `J` and `P_req` are finite, define common majorants

```math
B_*:=\sum_{j,p}1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}1_{I_j}F_{j,p}.
```

Then

```math
B_*,F_*\in L^1([t_0,T_*)).
```

Partition the terminal interval into finitely many scheduler cells `I_alpha` so that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le2\eta_X.
```

Gronwall closes the first-exit bootstrap on each cell, yielding

```math
X_{j,p}\in L^\infty,
\qquad
N_{j,p}\in L^1,
\qquad
\mathcal K_{\le m,j,p}^{avg}\in L^1.
```

Finite cover and finite-parameter summation, with overlap `Omega`, give the global averaged packet

```math
DTC.A_{avg}.
```

Finally `AVG.RCV.A` gives

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}.
```

## Boundary

The theorem uses only averaged objects. `READ.COVER`, `Field.Read`, `DTC.Read`, pointwise `DTC.A`, pointwise `Field`, and old `End_NS` enter downstream after `End_NS_avg`.