# Five-task AACT / Jump_avg / READ.END completion rerun

## Status

Local theorem-note/audit packet for the five requested tasks.

Claimed status: conditional local discharge of the theorem-work loop against the current MCP surfaces. Release promotion remains governed by the proof-promotion packet.

## Task 1: AACT.KX absorption

Use the repaired local averaged ACT inequality on each shrunken same-fluid moving cylinder:

```math
D^+X_R+cN_R\le B_R(t)X_R+C_X X_R^{1/2}N_R+F_R(t),
\qquad B_R,F_R\in L^1.
```

Choose `eta_X` so that

```math
C_X(2\eta_X)^{1/2}\le c/2.
```

On the first-exit interval `X_R<=2 eta_X`, absorb the nonlinear term:

```math
D^+X_R+{c\over2}N_R\le B_R(t)X_R+F_R(t).
```

For every scheduler cell satisfying

```math
(\eta_X+\int F_R)\exp(\int B_R)\le 2\eta_X,
```

Gronwall gives

```math
X_R\in L^\infty,
\qquad N_R\in L^1.
```

This uses smallness of `X_R`, with `B_R,F_R` handled as integrable Gronwall data.

## Task 2: direct Jump_avg elimination

Use the current source-drain supplier route:

```math
CoeffStop.A
\Longrightarrow WeightedAdjBessel.A
\Longrightarrow WeightedAdjRes.A
\Longrightarrow GainStop.A
\Longrightarrow ParentKernel.A
\Longrightarrow FirstPulseKill.A
\Longrightarrow LemmaB.SourceDrain.
```

The definition-aligned downstream route is

```math
LemmaB.SourceDrain
\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow AWG.A
\Longrightarrow (Jump_{avg}\Rightarrow\bot).
```

Thus the direct branch elimination is supplied by the normalized-adjoint source-drain package and AWG source-pulse exclusion.

## Task 3: AACT.Global on finite positive-scale covers

On the no-`Jump_avg` branch, use the finite SCF-good terminal cover with finite overlap. At each restart, reanchor in a fresh same-fluid SCF-good cylinder and shrink by `ATD_m^epsilon`, producing the seed

```math
X_{\alpha,j,p}(\tau_\alpha)\le\eta_X.
```

The finite cover and finite route parameter set give common majorants

```math
B_*\in L^1,
\qquad F_*\in L^1.
```

Absolute continuity gives a finite scheduler partition satisfying the local bootstrap condition on every active packet. Local first-exit closure on each cell and finite-overlap summation give

```math
X_{avg}\in L^\infty,
\qquad N_{avg}\in L^1,
\qquad \mathcal K_{\le m}^{avg}\in L^1.
```

Therefore

```math
\neg Jump_{avg}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow AACT.Global.noJump
\Longrightarrow DTC.A_{avg}.
```

## Task 4: pressure/source suppliers line-by-line

For the selected strengthened route, use

```math
FFPB.A0+FFSC.C1+FCC.C1+FCC.C1a\Longrightarrow \operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The expanded source split is

```math
\mathcal N^{src}=\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

`FCC.C1` supplies the cutoff commutator formula and a Young-margin split into viscosity plus an integrable cutoff coefficient. `FSCR.C_postLCI` gives strain/cascade control from the finite weighted coefficient estimate. `FPCR.C_postLCI` gives the pressure split into `LH/HL`, resonant, and far-tail channels under `Gamma_low in L^1` and bounded frozen-family energy. The selected route reads pressure through the packet-local weighted pressure carrier in `FFPB.A0`.

Thus the line-by-line supplier row closes for the route-selected strengthened import:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The exact same-depth `FIRP.A0=>FPCR.C` branch is a separate optional pressure branch.

## Task 5: rerun End_NS_avg -> READ.END -> End_NS

With `DTC.A_avg` supplied, the averaged receiver and consumer chain is

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg},
```

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow CSP.A_{avg}
\Longrightarrow OFP.A_{avg}
\Longrightarrow CFI.A_{avg}.
```

The endpoint theorem gives

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

Only after this endpoint does readout enter:

```math
End_{NS,avg}\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

The rerun therefore closes the requested readout chain in the legal order:

```math
End_{NS,avg}\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

## CM landing

The CM witness bridge remains the governing route object:

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

The installed CM witness-to-member direction gives

```math
[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}]
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}),
```

and first class-exit is witnessed by first failure of one of the route-relative
services:

```math
\text{first class-exit}
\Longrightarrow
\text{first failure of }Pack\text{ or }Part\text{ or }Field.
```

The source-drain / no-`Jump_avg` package lands on the Field/readout side; CM remains `Pack ∧ Part ∧ Field`.

## Completion statement

The five requested theorem-work tasks are locally discharged against the current MCP surfaces:

```math
AACT.KX.local
+ SOURCE.NO\text{-}PULSE.A
+ AACT.Global.noJump
+ FFSRC.A
+ AVG.END.A
+ READ.END
\Longrightarrow
End_{NS}
```

with CM landing supplied through the one-way certificate `CM=>Member`; no blunt
`not CM=>not Member` converse is installed.

Promotion packet caveat: proof-promotion still reports audit/reproducibility blockers in generated surfaces even though the current proof assembly reports no open theorem obligations and `ready_for_submission: true`.
