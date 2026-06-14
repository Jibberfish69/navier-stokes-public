# Budget Descendants Expanded Proof Audit

## Status

Failed unconditional proof for all five descendants of `BudgetToACTLedger.A`.

The common issue is type mismatch. The hypothesis

```math
\liminf_m \mathcal V_m^{eff}\ge b>0
```

is a scalar lower bound. The five target conclusions require upper bounds, compactness, finite covers, regularity, source estimates, and endpoint synchronization.

## Target 1. `BudgetToRetainedAdmission.A`

### Claimed implication

```math
\liminf_m \mathcal V_m^{eff}>0
\Longrightarrow RSCB.NKF.
\tag{BTRA.1}
```

`RSCB.NKF` requires retained center balls and bounds of the form

```math
\sum_{q\le m+2}\|U_q\|_{L_t^\infty C_x^2(B(c_j(t),2r_j))}
+
\|p\|_{L_t^1 C_x^{m+1,\alpha}(B(c_j(t),2r_j))}<\infty.
\tag{BTRA.2}
```

### Rigorous obstruction

A scalar viscous budget cannot imply `(BTRA.2)`. On the torus, take a smooth divergence-free high-frequency field

```math
u_n(x)=A_n\sin(n x_1)e_2.
```

Choose `A_n` so that the enstrophy-scale viscous budget is fixed:

```math
\nu\|\nabla u_n\|_{L^2}^2=b.
```

Since there are fixed constants `0<c_\nabla\le C_\nabla<\infty` with

```math
c_\nabla A_n^2n^2
\le
\|\nabla u_n\|_{L^2}^2
\le
C_\nabla A_n^2n^2,
```

one may choose

```math
A_n=c_\nabla^{-1/2}b^{1/2}\nu^{-1/2}n^{-1}.
```

Then for every `k\ge2`,

```math
\|u_n\|_{C^k}
\ge
c_k A_n n^k
=
c_kc_\nabla^{-1/2}b^{1/2}\nu^{-1/2}n^{k-1}\to\infty.
```

Thus a fixed positive viscous budget is compatible with arbitrarily large retained smooth norms. Therefore `(BTRA.1)` lacks a valid estimate.

### Verdict

```math
BudgetToRetainedAdmission.A\quad\text{fails as a scalar-budget theorem.}
```

A valid version must add an upper high-regularity packet norm or prove one from the PDE.

## Target 2. `BudgetToPackGauge.A`

### Claimed implication

```math
\liminf_m \mathcal V_m^{eff}>0
\Longrightarrow \Gamma_{pack,Q}\in L^\infty.
\tag{BTPG.1}
```

The pack gauge obeys

```math
\frac{d}{dt}|D_a\Phi|\le \|
abla u(\cdot,t)\|_{L^\infty(\Phi(A,t))}|D_a\Phi|,
```

so

```math
\Gamma_{pack}(t)
\le
\Gamma_{pack}(0)
\exp\left(\int_0^t\|
abla u(\tau)\|_{L^\infty(\Phi(A,\tau))}\,d\tau\right).
\tag{BTPG.2}
```

### Rigorous obstruction

A lower budget bound supplies no upper bound for the stretching integral in `(BTPG.2)`. Locally, the incompressible linear field

```math
u_\lambda(x)=(\lambda x_1,-\lambda x_2,0)
```

has `\nabla\cdot u_\lambda=0` and deformation matrix

```math
D_a\Phi(t)=\operatorname{diag}(e^{\lambda t},e^{-\lambda t},1).
```

Hence

```math
\det D_a\Phi(t)=1,
\qquad
\Gamma_{pack}(t)\ge e^{\lambda t}.
```

The parameter `\lambda` can be arbitrarily large. A separate localized high-frequency component can keep a prescribed positive budget `b`; the pack gauge still grows like `e^{\lambda t}`. Therefore scalar budget positivity cannot imply bounded pack gauge.

### Verdict

```math
BudgetToPackGauge.A\quad\text{fails as a scalar-budget theorem.}
```

A valid theorem must control the positive strain integral or an equivalent pack-side stretching ledger.

## Target 3. `BudgetToSchedulerData.A`

### Claimed implication

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
L,F\in L^1
\quad\text{and}\quad
X(t_a)\le\eta.
\tag{BTSD.1}
```

### Rigorous scheduler lemma under real inputs

If `L,F\in L^1(I)`, `F\ge0`, and a restart seed satisfies `X(t_a)\le\eta`, then a finite partition of `I` exists with

```math
\left(\eta+
\int_{I_r}Fight)
\exp\left(\int_{I_r}Light)
\le2\eta.
\tag{BTSD.2}
```

This follows directly from absolute continuity of the integral.

If on each cell

```math
dX+bN\le LX+C_X X^{1/2}N+F,
\qquad
C_X(4\eta)^{1/2}\le b/2,
```

then the first-exit argument gives

```math
X\in L^\infty,
\qquad
N\in L^1.
\tag{BTSD.3}
```

### Obstruction to `(BTSD.1)`

The implication `(BTSD.1)` asks a lower scalar budget to produce upper integrability data. A scalar lower bound gives no estimate of the majorants `L,F`, and it gives no restart smallness.

A scalar model suffices. Fix `b>0` and set

```math
\mathcal V^{eff}_n=b,
\qquad
L_n(t)=n,
\qquad
F_n(t)=n\mathbf 1_{[0,1/n^2]}(t).
```

Then

```math
\liminf_n\mathcal V^{eff}_n=b>0,
```

while the scheduler data have no uniform production mechanism from the budget. The budget value is independent of the size and distribution of `L_n,F_n`.

### Verdict

```math
BudgetToSchedulerData.A\quad\text{fails as a scalar-budget theorem.}
```

The proved part is the conditional scheduler lemma from `L^1` majorants and restart seeds. The missing theorem is production of those majorants from PDE structure.

## Target 4. `BudgetToSourceInputs.A`

### Claimed implication

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1.
\tag{BTSI.1}
```

These source inputs are upper source-control estimates. The live source-wall forms include Carleson, square-source, active-window, pressure/cascade, and cutoff estimates.

### Rigorous obstruction

Positive lower budget cannot imply a source upper estimate. A scalar pulse model shows the mismatch. Let

```math
D_n(t)=n\mathbf 1_{[0,1/n]}(t).
```

Then

```math
\int D_n(t)\,dt=1,
```

so first-moment budget remains fixed, while

```math
\int D_n(t)^2\,dt=n\to\infty.
```

Any source-wall target containing square-source, active-window Carleson, or scale-critical reserve structure requires an upper bound of the second type. A positive lower first-moment budget supplies the opposite kind of information.

### Verdict

```math
BudgetToSourceInputs.A\quad\text{fails as a scalar-budget theorem.}
```

A valid theorem must prove an active-window Carleson/square-source upper bound, pressure-vortex depletion, or source-residue drain mechanism.

## Target 5. `BudgetToEndpointCertificates.A`

### Claimed implication

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
END.Pack+END.Field+END.Exh+END.Cross+DTC\text{-to-TowerBound}.
\tag{BTEC.1}
```

Endpoint certificates require synchronized witness data:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
Field_{N,r,Q},
\qquad
\mathfrak A_{N,Q}\in L^\infty,
```

plus accepted endpoint maps.

### Rigorous obstruction

The high-frequency example from Target 1 has fixed positive viscous budget and unbounded higher derivatives. For each `N`, choosing `k>N+2` gives fixed budget with arbitrarily large finite-depth tower quantities. Hence the budget fails to imply the tower bound needed by `DTC-to-TowerBound`.

The pack-gauge example from Target 2 gives fixed positive budget with arbitrarily large deformation distortion. Hence the budget fails to imply `END.Pack`.

The scalar pulse model from Target 4 gives fixed budget with unbounded source square reserve. Hence the budget fails to imply `END.Field` on the source-pulse branch.

Therefore scalar budget positivity cannot supply endpoint certificates.

### Verdict

```math
BudgetToEndpointCertificates.A\quad\text{fails as a scalar-budget theorem.}
```

A valid theorem must supply synchronized Pack/Part/Field witness preservation plus tower readout.

## Consolidated theorem-state

The only rigorous positive result across the five targets is conditional:

```math
\boxed{
\begin{gathered}
\liminf\mathcal V^{eff}\ge b>0
+RSCB.NKF
+\Gamma_{pack}\in L^\infty
+L,F\in L^1
+X(t_a)\le\eta\cr
+FPCR.C+FSCR.C+FCC.C1
+END.Pack+END.Field+END.Exh+END.Cross+DTC\text{-to-TowerBound}
\Longrightarrow ACT.KX\Longrightarrow LCI.A\Longrightarrow CFI.A.
\end{gathered}}
\tag{ALL.1}
```

Each individual attempt to derive one of those data packages from positive scalar budget alone fails by the explicit models above.

## Exact next target

The next theorem must change type. Scalar lower budget is exhausted. The live successor should be an upper-control theorem:

```math
PositiveBudgetUpperControl.A:
\quad
\liminf\mathcal V^{eff}>0
+\text{NS terminal same-ledger structure}
\Longrightarrow
L,F\in L^1
+\Gamma_{pack}\in L^\infty
+\text{source upper control}
+\text{tower readout.}
```

The sharpest component is still

```math
SourceUpperControl.A,
```

because the pulse model shows that first-moment budget can coexist with unbounded square-source reserve. Closing that gap would feed scheduler data, endpoint Field, and the source side simultaneously.
