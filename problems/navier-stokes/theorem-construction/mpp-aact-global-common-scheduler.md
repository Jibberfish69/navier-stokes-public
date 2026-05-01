# AACT.Global Common Scheduler

## Status

Conditional theorem installed for the strict averaged-good branch of `PCTP.hard`.

This note proves the scheduler part of `AACT.Global` once the terminal tail is in the strict averaged-good finite-cover branch supplied by `AVG.COVER.A`.

## Theorem

Assume a terminal same-fluid approach tail satisfies the strict averaged-good alternative:

1. it has a finite positive-scale SCF-good cover

```math
\{Q_{R_i}^{\Phi}(a_i,t_i)\}_{i=1}^{J},
\qquad R_i\ge R_*>0;
```

2. the shrunken cylinders have bounded overlap;
3. `ATD_m^\varepsilon` applies on each shrunken cylinder;
4. the route-required packet/parameter set `\mathscr P_{req}` is finite.

Then there is a common finite scheduler partition on which local `AACT.KX` runs for every cover element and every required parameter instance. Consequently the strict averaged-good branch gives

```math
DTC.A_{avg}.
```

## Proof

For each cover element, each local averaged ACT packet has scheduler coefficients

```math
A_R(t),\qquad V_R(t),\qquad P_R(t),\qquad F_R(t).
```

The `SCF_base` condition supplies the scale-critical local `V_R` and `P_R` integrals. The `ATD_m^\varepsilon` gain supplies the finite-depth averaged affine tower packet, including the local averaged forcing and center ledgers. Hence for every cover element `i` and every required parameter `p`,

```math
B_{i,p}(t):=1+A_{i,p}(t)+V_i(t)+P_i(t)\in L^1(I_i),
```

and

```math
G_{i,p}(t):=F_{i,p}(t)\in L^1(I_i).
```

Extend these functions by zero outside their local intervals. Since the cover and `\mathscr P_{req}` are finite, define

```math
B(t):=\sum_{i,p}B_{i,p}(t),
\qquad
G(t):=\sum_{i,p}G_{i,p}(t).
```

Then

```math
B,G\in L^1(0,T_*).
```

By absolute continuity of the Lebesgue integral, choose a finite partition of the terminal interval into subintervals `J_l` such that on each `J_l`,

```math
\int_{J_l}B(t)\,dt
```

and

```math
\int_{J_l}G(t)\,dt
```

are small enough to force the scheduler inequality for every local packet:

```math
\left(\eta_X+\int_{J_l}F_{i,p}\right)
\exp\left(\int_{J_l}(1+A_{i,p}+V_i+P_i)\right)
\le 2\eta_X.
```

The local `AACT.KX` first-exit argument therefore applies on every cover element and every required parameter instance on every scheduler subinterval. The local outputs are

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

Bounded overlap and finiteness of the cover allow these local outputs to be summed into the global averaged transported-center packet. Thus

```math
DTC.A_{avg}
```

holds on the strict averaged-good terminal branch.

## Link with the cover dichotomy

The previous cover-degeneration note proves that every terminal tail is either in this strict averaged-good finite-cover branch or enters `Jump_avg`. Therefore:

```math
AVG.COVER.A+ATD_m^\varepsilon+\text{common scheduler}
\Longrightarrow
DTC.A_{avg}\quad\text{or}\quad Jump_{avg}.
```

The `Jump_avg` alternative is handled by the averaged endpoint matrix after `End_NS_avg`; it is not removed by pointwise readout upstream.

## Boundary

This theorem uses only averaged objects and pre-endpoint data on the strict-good branch. It does not use `READ.COVER`, `DTC.Read`, old `DTC.A`, old `Field`, old `CFI.A`, or pointwise `End_NS` upstream.