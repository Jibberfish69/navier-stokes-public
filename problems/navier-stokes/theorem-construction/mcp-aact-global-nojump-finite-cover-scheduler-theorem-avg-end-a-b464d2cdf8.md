# AACT.Global.noJump Finite-Cover Scheduler Theorem

## Status

Theorem-facing hardening of the averaged ACT globalization step on the no-`Jump_avg` branch.

## Inputs

Let `\mathcal T` be a bounded-distortion same-fluid terminal tail with `\neg Jump_{avg}`. By `TGC.A` and `TGC.class`, there is a finite SCF-good cover

```math
\mathcal Q_j=Q_{r_j}^{\Phi}(a_j,t_j),
\qquad 1\le j\le J,
```

with

```math
r_j\ge r_*>0,
\qquad
SCF_{base}(\mathcal Q_j)\le\varepsilon_m,
\qquad
\operatorname{ovlp}(\{\mathcal Q_j\})\le\Omega.
```

Let `\mathscr P_{req}` be the finite route parameter set, with cardinality `P`.

On each shrunken cover cylinder and each `p\in\mathscr P_{req}`, `ATD_m^\varepsilon` supplies local averaged seed and ledgers:

```math
X_{j,p}(s_{j,p})\le\eta_X,
\qquad
F_{j,p},B_{j,p}\in L^1(I_j),
```

and local `AACT.KX` supplies the first-exit inequality

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p}.
\tag{1}
```

## Theorem `AACT.Global.noJump+`

There is a finite scheduler partition of the terminal interval such that, for every cover element and route parameter,

```math
X_{j,p}\in L^\infty,
\qquad
N_{j,p}\in L^1,
\qquad
\mathcal K_{\le m,j,p}^{avg}\in L^1.
```

Consequently, finite-overlap summation gives

```math
DTC.A_{avg}.
```

## Common Majorants

Define

```math
B_*(t):=\sum_{j=1}^J\sum_{p\in\mathscr P_{req}}\mathbf 1_{I_j}(t)B_{j,p}(t),
```

```math
F_*(t):=\sum_{j=1}^J\sum_{p\in\mathscr P_{req}}\mathbf 1_{I_j}(t)F_{j,p}(t).
```

Since `J` and `P` are finite,

```math
B_*,F_*\in L^1([t_0,T_*)).
```

## Absorption Step

Choose `\eta_X` so that

```math
C_X(2\eta_X)^{1/2}\le c/2.
```

As long as `X_{j,p}\le2\eta_X`, the term `C_XX_{j,p}^{1/2}N_{j,p}` is absorbed into the left side of `(1)`, giving

```math
D^+X_{j,p}+\frac c2N_{j,p}
\le
B_{j,p}X_{j,p}+F_{j,p}.
\tag{2}
```

## Scheduler Partition

By absolute continuity of the integral, partition `[t_0,T_*)` into finitely many scheduler cells `I_\alpha` on the terminal subtail so that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le2\eta_X.
\tag{3}
```

On each cell, Gronwall applied to `(2)` yields

```math
X_{j,p}(t)
\le
\left(X_{j,p}(t_\alpha)+\int_{I_\alpha}F_{j,p}\right)
\exp\left(\int_{I_\alpha}B_{j,p}\right)
\le2\eta_X.
```

The first-exit assumption is therefore closed on each cell. Integrating `(2)` gives

```math
\int_{I_\alpha\cap I_j}N_{j,p}(t)dt
\le
C\left(\eta_X+
\int_{I_\alpha}F_*+
\int_{I_\alpha}B_*X_{j,p}\right)<\infty.
```

The local ledgers then give

```math
\mathcal K_{\le m,j,p}^{avg}\in L^1(I_\alpha\cap I_j).
```

## Finite-Cover Summation

Summing across `j` and `p`, and using overlap `\Omega`, gives global averaged bounds

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

The fixed lower radius `r_*`, finite overlap `\Omega`, and finite route parameter set allow the receiver-scale transfer `RWS.C_scale`. The affine pressure, viscous, and far-pressure ledgers are included in `F_*` and `\mathcal K_{\le m}^{avg}`. Therefore the averaged dynamic tower certificate holds:

```math
DTC.A_{avg}.
```

## Upstream Inputs Used

The proof uses `SGC.A_{a.e.}`, `TGC.A`, `TGC.class`, `ATD_m^\varepsilon`, local `AACT.KX`, finite overlap, and absolute continuity of `L^1` ledgers.

`READ.COVER`, `DTC.Read`, `Field.Read`, `End_NS`, pointwise `DTC.A`, and pointwise `Field` enter after averaged endpoint closure.

## Boundary

This theorem globalizes local averaged ACT on the no-`Jump_avg` branch. The complementary `Jump_avg` branch is routed to `AVG.END.A`.