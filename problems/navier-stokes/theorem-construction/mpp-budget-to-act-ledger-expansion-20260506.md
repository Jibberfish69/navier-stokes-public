# BudgetToACTLedger.A Expansion

## Status

Failed unconditional theorem, with three rigorous conditional lemmas proved.

The positive-budget branch from `EffectiveViscousPacketAntiDegeneration.A` asked for

```math
BudgetToACTLedger.A:
\qquad
\liminf_m \mathcal V_m^{eff}>0
\Longrightarrow
\mathsf{Ledger}_{ACT}.
```

The exact conclusion is:

```math
\mathsf{Ledger}_{ACT}
=
H1+H2+H3+H4+H5+H6,
```

where the `ACT.KX` packet lists:

1. retained-window admission `RSCB.NKF`;
2. bounded pack gauge and finite same-fluid cover;
3. `ACT.KX` differential budget;
4. scheduler and scale seeds;
5. post-receiver source inputs;
6. tower and endpoint certificates.

The positive effective budget supplies only the absorption margin inside H3/H4. It does not supply H1, H2, H5, or H6.

## Exact expansion

`BudgetToACTLedger.A` expands into the following subtargets.

### `BTA.1` Absorption margin

```math
\liminf_m\mathcal V_m^{eff}\ge b>0
\Longrightarrow
\text{there is an absorption coefficient }b\text{ in the ACT inequality.}
```

### `BTA.2` Retained admission from budget

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow RSCB.NKF.
```

### `BTA.3` Pack gauge and finite cover from budget

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty
+\text{finite same-fluid cover.}
```

### `BTA.4` Scheduler majorants and restart seeds from budget

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
L,F\in L^1
+X(t_a)\le\eta
+\text{finite scheduler partition.}
```

### `BTA.5` Source inputs from budget

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1+FCC.C1a
\quad\text{or the source inputs required before them.}
```

### `BTA.6` Endpoint certificates from budget

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
END.Pack+END.Field+END.Exh+END.Cross+DTC\text{-to-TowerBound}.
```

## Rigorous proof of `BTA.1`

Assume the ACT excess inequality on a scheduler cell has the form

```math
dX+bN
\le
L(t)X+C_X X^{1/2}N+F(t),
\tag{1}
```

with `b>0`, `N\ge0`, and `X\ge0`. Let

```math
\eta:=\left(\frac{b}{4C_X}\right)^2.
```

On any interval where

```math
X(t)\le 4\eta,
```

one has

```math
C_X X(t)^{1/2}
\le
C_X(4\eta)^{1/2}
=
2C_X\frac{b}{4C_X}
=\frac b2.
```

Hence

```math
C_X X^{1/2}N\le \frac b2 N.
```

Substituting into `(1)` gives

```math
dX+\frac b2 N\le L(t)X+F(t).
\tag{2}
```

This proves the algebraic absorption margin.

## Rigorous proof of scheduler lemma under L1 inputs

Assume `L,F\in L^1([a,b])`, `L,F\ge0`, and `\eta>0`. By absolute continuity of the Lebesgue integral, for every `\delta>0` there is `h>0` such that every subinterval `J` with `|J|<h` satisfies

```math
\int_J L<\delta,
\qquad
\int_J F<\eta(e^{-\delta}-1/2)_+.
```

Choose `\delta` small enough that

```math
(\eta+\int_J F)\exp(\int_J L)
\le 2\eta.
```

Cover `[a,b]` by finitely many such subintervals. Then each scheduler cell `J` satisfies

```math
\left(\eta+\int_JF\right)
\exp\left(\int_JL\right)
\le 2\eta.
\tag{3}
```

This proves the scheduler partition once the `L^1` majorants are supplied.

## Rigorous proof of first-exit ACT bootstrap under seed and scheduler inputs

Assume on one scheduler cell `J=[a,c]`:

```math
X(a)\le\eta,
```

and `(2)` holds while `X\le4\eta`. Let `t_*` be the first time in `J` with
`X(t_*)=4\eta`, if such a time exists. On `[a,t_*]`, Gronwall gives

```math
X(t)
\le
\left(X(a)+\int_a^tF(s)\,ds\right)
\exp\left(\int_a^tL(s)\,ds\right).
```

Using `(3)` and `X(a)\le\eta` gives

```math
X(t)\le2\eta
\qquad(a\le t\le t_*),
```

contradicting `X(t_*)=4\eta`. Therefore no such first exit exists, and

```math
X(t)\le4\eta
\qquad(t\in J).
```

Integrating `(2)` on `J` yields

```math
\frac b2\int_JN(t)\,dt
\le
X(a)-X(c)+\int_JL(t)X(t)\,dt+\int_JF(t)\,dt<\infty.
```

Thus

```math
X\in L^\infty(J),
\qquad
N\in L^1(J).
```

This proves the ACT bootstrap once the seed, scheduler, and differential-budget inputs are supplied.

## Failure of `BTA.2`

`RSCB.NKF` is a retained-window smooth center-ball admission statement. It asserts local center-ball regularity, transported mollifier recovery, and point recovery. A scalar lower bound on `\mathcal V^{eff}` contains no local `C^2` velocity bound, no `C^{m+1,\alpha}` pressure bound, and no retained center-ball radius.

Therefore the implication

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow RSCB.NKF
```

is unsupported by current surfaces.

## Failure of `BTA.3`

Bounded pack gauge is controlled by the deformation equation

```math
\partial_tD_a\Phi=(\nabla u)(\Phi,t)D_a\Phi.
```

It follows from

```math
\int_I\|\nabla u(t)\|_{L^\infty(\Phi(A,t))}\,dt<\infty.
```

A positive scalar effective budget does not imply that stretching-rate integral. It also does not imply finite same-fluid cover existence at a positive terminal radius. Thus `BTA.3` is open.

## Failure of `BTA.4`

The scheduler proof above needs

```math
L,F\in L^1(I),
\qquad
X(t_a)\le\eta.
```

The positive budget gives the coefficient `b`, while `L` and `F` come from retained smooth norms, pressure/cutoff ledgers, source inputs, and finite-energy tails. Restart smallness comes from `ACT.X-Scale` / retained local smoothness. No current theorem derives these from `\liminf\mathcal V^{eff}>0` alone.

Thus `BTA.4` is open.

## Failure of `BTA.5`

The source inputs are the pressure/cascade/cutoff packet estimates:

```math
FPCR.C,
\qquad
FSCR.C,
\qquad
FCC.C1.
```

They require pressure-source splitting, strain/cascade coefficient control, and cutoff coefficient control. The source-frontier still records the source-wall root after reconciliation. A positive effective viscous budget does not prove the source-wall estimates.

Thus `BTA.5` is open.

## Failure of `BTA.6`

Endpoint certificates require synchronized `Pack`, `Part`, `Field`, tower bounds, readout covers, and endpoint matrix maps. A scalar budget lower bound supplies none of those synchronization and readout data by itself. Therefore `BTA.6` is open.

## The exact corrected theorem

The correct theorem currently proved is:

```math
\boxed{
\begin{gathered}
\liminf\mathcal V^{eff}\ge b>0
+RSCB.NKF+\Gamma_{pack}\in L^\infty+\mathsf{Scheduler}+\mathsf{SourceInputs}+\mathsf{EndpointCerts}
\cr
\Longrightarrow ACT.KX\Longrightarrow LCI.A\Longrightarrow CFI.A.
\end{gathered}}
\tag{BTA.7}
```

The rigorous proof is exactly the absorption, scheduler, and first-exit bootstrap proved above, followed by the conditional ACT.KX packet.

## Final state

```math
BudgetToACTLedger.A\quad\text{remains open.}
```

The next exact targets are:

```math
BudgetToRetainedAdmission.A,
\quad
BudgetToPackGauge.A,
\quad
BudgetToSchedulerData.A,
\quad
BudgetToSourceInputs.A,
\quad
BudgetToEndpointCertificates.A.
```

The strongest direct target is:

```math
BudgetToSchedulerData.A,
```

because the algebraic absorption part is already proved, and the first place where proof material is missing is the production of `L^1` scheduler majorants and restart seeds from the positive-budget terminal packet itself.
