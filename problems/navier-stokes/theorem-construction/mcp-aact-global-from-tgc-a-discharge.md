# AACT.Global From TGC.A Discharge

## Status

Conditional discharge of the frontier-loop item:

```math
AACT.Global:
\qquad
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on the no-`Jump_avg` terminal branch, without using `READ.COVER`, `End_NS`, pointwise `DTC.A`, pointwise `Field`, or pointwise retained native forcing upstream.

## Preceding obstruction

The prior attempt `mcp-aact-global-finite-cover-scheduler-attempt.md` showed that local `AACT.KX` is available on each `SCF_base` good moving cylinder, but global discharge failed at terminal scale collapse:

```math
(a_n,t_n)\to T_*,
\qquad
r_n\downarrow0,
\qquad
SCF_{base}(Q_{r_n}^{\Phi}(a_n,t_n))\le\varepsilon_m.
```

Pointwise existence of positive good radii did not by itself give a terminal finite cover, fixed positive lower scale, or summable scheduler majorant.

## New input

`TGC.A` supplies the missing classification:

```math
\text{terminal SCF-good radius degeneration}\Longrightarrow Jump_{avg}.
```

Therefore, on the branch where `Jump_avg` is absent, terminal scale collapse is forbidden and the good-cylinder family has a strict terminal cover/scheduler form.

## Theorem `AACT.Global.noJump`

On a bounded-distortion same-fluid terminal approach tail, assume

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}.
```

Then

```math
DTC.A_{avg}
```

holds on the route-required terminal packet.

## Proof

By `SGC.A_{a.e.}`, every compact subset of the strict good material region has an `SCF_base` good finite subcover. By `TGC.A`, terminal failure of a positive SCF-good scale is `Jump_avg`. Since the branch assumes `\neg Jump_avg`, the terminal approach tail has a finite same-fluid good cover after passing to a terminal subtail:

```math
\{Q_{r_j}^{\Phi}(a_j,t_j)\}_{j=1}^{J},
\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
r_j\ge r_*>0,
```

with bounded overlap and the finite route-required parameter set `\mathscr P_{req}`.

On each shrunken cover element, `ATD_m^\varepsilon` gives the averaged affine tower seed and local coefficient ledgers:

```math
X_j(s_j)\le\eta_X,
\qquad
X_j\in L^\infty(I_j),
\qquad
N_j\in L^1(I_j),
\qquad
F_j\in L^1(I_j),
\qquad
\mathcal K_{\le m,j}^{avg}\in L^1(I_j).
```

For each cover element and each parameter `p\in\mathscr P_{req}`, local averaged ACT has the first-exit inequality

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_{j,p}X_{j,p}^{1/2}N_{j,p}+F_{j,p},
```

where

```math
B_{j,p}=1+A_{j,p}+V_j+P_j\in L^1(I_j),
\qquad
F_{j,p}\in L^1(I_j).
```

Because the cover and parameter set are finite, define common majorants

```math
B_*(t):=\sum_{j,p}\mathbf 1_{I_j}(t)B_{j,p}(t),
\qquad
F_*(t):=\sum_{j,p}\mathbf 1_{I_j}(t)F_{j,p}(t).
```

Then

```math
B_*,F_*\in L^1([t_0,T_*)).
```

By absolute continuity of the integral, choose a scheduler partition `I_\alpha` of the terminal interval so that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}(B_*+1)\right)
\le2\eta_X.
```

On each `I_\alpha`, the local `AACT.KX` first-exit argument absorbs the `X^{1/2}N` term and gives, uniformly over all cover elements and parameters,

```math
X_{j,p}\in L^\infty(I_\alpha\cap I_j),
\qquad
N_{j,p}\in L^1(I_\alpha\cap I_j),
\qquad
\mathcal K_{\le m,j,p}^{avg}\in L^1(I_\alpha\cap I_j).
```

Summing over the finite cover and finite parameter set yields global averaged packet bounds

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

The finite-overlap `RWS.C_scale` transfer reads these local packets at the fixed averaged receiver scale. The pressure-cell, viscous-rung, and far-pressure terms are included in the local `ATD_m^\varepsilon` / `AACT.KX` ledgers and are summed by the same finite-cover majorants. Therefore

```math
DTC.A_{avg}
```

is installed on the no-`Jump_avg` branch.

This proves `AACT.Global.noJump`.

## Branch conclusion

The averaged production branch now has the valid split

```math
SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}\ \vee\ Jump_{avg}.
```

Here the first alternative is discharged by `AACT.Global.noJump`, and the second is an endpoint face reserved for the averaged endpoint matrix.

## Noncircularity audit

The proof uses only:

1. `SGC.A_{a.e.}` compact-good coverage;
2. `ATD_m^\varepsilon` moving-cylinder gain;
3. `TGC.A` terminal scale-collapse classification;
4. local `AACT.KX` first-exit estimates;
5. finite-cover / finite-parameter common scheduler summation.

It does not use

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad End_{NS},
\quad DTC.A,
\quad Field,
\quad CFI.A.
```

`Jump_avg` is not removed here. It remains a downstream averaged endpoint face removed only after

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Consequence for PCTP.hard route

With this note installed, the averaged route may continue as

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}
\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}\Longrightarrow End_{NS,avg}.
```

Then terminal readout gives

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

This note discharges the scheduler/globalization part of `AACT.Global` on the no-`Jump_avg` branch and cleanly routes the complementary branch to the averaged endpoint matrix.