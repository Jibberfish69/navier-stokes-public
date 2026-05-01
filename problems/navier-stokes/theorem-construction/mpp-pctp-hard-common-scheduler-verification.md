# PCTP.hard Common AACT Scheduler Verification

## Status

Discharged on the strict averaged-good branch.

The existing surface `mpp-aact-global-common-scheduler.md` proves the scheduler part of `AACT.Global` once the terminal tail lies in the strict averaged-good finite-cover branch supplied by `AVG.COVER.A`.

## Theorem

Assume a terminal same-fluid approach tail has a finite positive-scale SCF-good cover

```math
\{Q_{R_i}^{\Phi}(a_i,t_i)\}_{i=1}^{J},
\qquad R_i\ge R_*>0,
```

with bounded overlap, `ATD_m^\varepsilon` on each shrunken cylinder, and a finite route-required parameter set `\mathscr P_{req}`. Then one common finite scheduler partition runs `AACT.KX` for every cover element and every required parameter instance. Consequently the strict averaged-good branch gives

```math
DTC.A_{avg}.
```

## Proof

For each cover element and parameter instance, define the local scheduler ledgers

```math
B_{i,p}(t):=1+A_{i,p}(t)+V_i(t)+P_i(t),
\qquad
G_{i,p}(t):=F_{i,p}(t).
```

The `SCF_base` condition gives the local scale-critical `V_i` and `P_i` integrals. The `ATD_m^\varepsilon` gain supplies the finite-depth averaged affine tower packet and the local averaged forcing/center ledgers. Hence

```math
B_{i,p},G_{i,p}\in L^1(I_i).
```

Extend these functions by zero outside their local intervals and sum over the finite cover and finite parameter set:

```math
B(t):=\sum_{i,p}B_{i,p}(t),
\qquad
G(t):=\sum_{i,p}G_{i,p}(t).
```

Since the sums are finite,

```math
B,G\in L^1(0,T_*).
```

By absolute continuity of the Lebesgue integral, choose a finite partition of the terminal interval into subintervals `J_l` so that on each `J_l`, the integrals of `B` and `G` are small enough to force the local scheduler inequality for every `i,p`:

```math
\left(\eta_X+\int_{J_l}F_{i,p}\right)
\exp\left(\int_{J_l}(1+A_{i,p}+V_i+P_i)\right)
\le 2\eta_X.
```

The local `AACT.KX` first-exit estimate applies on every cover element and every parameter instance on every scheduler subinterval. It gives

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

Bounded overlap and the finite cover sum these local outputs into the global averaged transported-center packet. Therefore

```math
DTC.A_{avg}
```

holds on the strict averaged-good terminal branch.

## Noncircularity

This proof uses only the strict averaged-good finite cover, `SCF_base`, `ATD_m^\varepsilon`, local `AACT.KX`, finiteness of the parameter set, and finite overlap. It does not use `READ.COVER`, `DTC.Read`, old pointwise `DTC.A`, old pointwise `Field`, old `CFI.A`, or pointwise `End_NS` upstream.

## Consequence

Together with cover-degeneration classification,

```math
\text{terminal tail}
\Longrightarrow
\text{strict averaged-good branch}\vee Jump_{avg},
```

and on the strict averaged-good branch the common scheduler gives `DTC.A_avg`. The remaining check is the promotion packet.