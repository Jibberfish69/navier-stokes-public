# TGC.A Terminal Good-Cover Scheduler Theorem

## Status

Conditional discharge of the cover/scheduler handoff for the averaged route.

This note responds to the obstruction isolated in `mcp-aact-global-finite-cover-scheduler-attempt.md`: `SGC.A_a.e` alone covers compact subsets of the good material region, while a terminal sequence of SCF-good cylinders with radii shrinking to zero blocks `RWS.C_scale` unless that degeneration is classified.

The newer cover-degeneration surface supplies the missing classification:

```math
\text{terminal SCF-good radius degeneration}\Longrightarrow Jump_{avg}.
```

Therefore, on the branch where `Jump_avg` is absent, a terminal strict-good cover exists. This note proves the scheduler consequence needed by `AACT.Global`.

## Definitions

Let

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

The averaged jump face is read as loss of every positive same-fluid SCF-good coherence scale along the terminal tail:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\text{or terminal SCF-good radii degenerate to zero on }\mathcal T.
```

The second clause is the strict-margin version recorded in `mpp-pctp-hard-cover-degeneration-as-jump-avg.md`.

## Theorem `TGC.A`

On a bounded-distortion same-fluid terminal approach tail `\mathcal T`, assume

```math
SGC.A_{a.e.}+ATD_m^\varepsilon
```

and assume the branch has no averaged jump face:

```math
\neg Jump_{avg}(\mathcal T).
```

Then there exists a terminal SCF-good same-fluid cover with finite overlap and a common scheduler majorant sufficient to globalize local `AACT.KX` into `DTC.A_avg`:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
\text{terminal scheduled averaged cover}
\Longrightarrow
DTC.A_{avg}.
```

## Proof

By `SGC.A_a.e`, every compact subset of the strict good material region admits finitely many SCF-good same-fluid cylinders. By the cover-degeneration theorem, terminal failure of a positive SCF-good scale is `Jump_avg`. Since this branch assumes `\neg Jump_avg`, no terminal scale degeneration occurs.

Hence the terminal tail has a strict-good margin in the following route sense: after possibly replacing the tail by a terminal subtail, there are finitely many same-fluid cylinders

```math
\{Q_{r_j}^{\Phi}(a_j,t_j)\}_{j=1}^{J}
```

with

```math
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
r_j\ge r_*>0,
```

covering the required route portion of `\mathcal T`, with finite overlap controlled by the same-fluid geometry and the bounded pack distortion.

On each selected cylinder, `ATD_m^\varepsilon` supplies the shrunken averaged affine tower packet:

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

The local `AACT.KX` first-exit inequality has the form

```math
D^+X_j+cN_j
\le
B_jX_j+C_jX_j^{1/2}N_j+F_j,
```

where `C_jX_j^{1/2}N_j` is absorbed on the scheduled interval and

```math
B_j=1+A_j+V_j+P_j\in L^1(I_j).
```

Because the cover is finite and has finite overlap, define the common scheduler majorants

```math
B_*(t):=\sum_{j=1}^{J}\mathbf 1_{I_j}(t)B_j(t),
\qquad
F_*(t):=\sum_{j=1}^{J}\mathbf 1_{I_j}(t)F_j(t).
```

Then

```math
B_*,F_*\in L^1([t_0,T_*)).
```

By absolute continuity of the integral, partition the terminal interval into scheduler subintervals `I_\alpha` such that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}(B_*+1)\right)
\le2\eta_X.
```

On each scheduler subinterval, local `AACT.KX` gives

```math
X_j\in L^\infty(I_\alpha\cap I_j),
\qquad
N_j\in L^1(I_\alpha\cap I_j),
\qquad
\mathcal K_{\le m,j}^{avg}\in L^1(I_\alpha\cap I_j).
```

Summing over the finite cover and finite route parameter set gives the global averaged packet

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

The finite-overlap `RWS.C_scale` transfer then reads these scheduled local packets at the fixed averaged receiver scale. The affine-subtracted pressure packet, viscous rung readout, and far-pressure energy tail are all included in the local `ATD_m^\varepsilon` / `AACT.KX` outputs and summed by the same finite-overlap majorant. Hence

```math
DTC.A_{avg}
```

is installed on the no-`Jump_avg` terminal branch.

This proves `TGC.A`.

## Noncircularity

The proof uses only:

1. `SGC.A_a.e` compact-good covers;
2. the definition and cover-degeneration classification of `Jump_avg`;
3. local `ATD_m^\varepsilon`;
4. local `AACT.KX`;
5. finite-cover summation and absolute continuity of `L^1` scheduler budgets.

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

`Jump_avg` is still removed only downstream by

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Consequence

Combining this theorem with the local averaged ACT packet gives the previously missing global handoff:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
DTC.A_{avg}.
```

Thus `AACT.Global` is conditionally discharged on the no-`Jump_avg` branch, with the bad branch routed to the averaged endpoint matrix.

The averaged route may now continue through

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}
\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}\Longrightarrow End_{NS,avg}.
```

The old pointwise endpoint remains behind the terminal readout layer

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

## Boundary

This note does not claim full `PCTP.hard`. It closes the terminal scheduler obstruction for the averaged branch under the current `Jump_avg` classification. The next proof check is to re-run `AACT.Global` with `TGC.A` installed, then pass to the averaged receiver and endpoint chain.