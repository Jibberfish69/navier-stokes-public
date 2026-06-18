# TemporalNonAtomicSCF.A carrier audit

## Status

Theorem-facing audit for the bypass-local temporal anti-atom target
introduced by the `READ.COVER` first-pulse reduction.

Verdict:

```math
\boxed{
TemporalNonAtomicSCF.A
\text{ does not close from the raw SCF finite-measure carrier.}
}
```

The installed tests isolate possible superlinear time control for the velocity
and pressure pieces.  No installed estimate gives that upgrade for the
dissipation carrier: at the current level it is only `L^1_t`, and it can form a
terminal atom in weak-* rescaled limits.

## Source anchors

| Surface | Role |
|---|---|
| `mpp-read-cover-bypass-first-pulse-reduction-20260505.md` | introduces bypass-local `TemporalNonAtomicSCF.A` |
| `mpp-uniform-temporal-dissipation-integrability-attempt-20260505.md` | tests the superlinear temporal-dissipation route and reduces it back to square reserve |
| `mcp-scfbase-defect-measure-construction.md` | defines the SCF defect carriers |
| `mcp-scfbase-defect-measure-upper-carrier-jump-avg-branch-elimination-b6c6ece70d.md` | finite raw upper carrier for `\nu_{SCF}` |
| `mpp-temporal-nonatomic-source-theorem-test-20260505.md` | proves the conditional `L^p_t =>` no time atom mechanism for source measures |
| `mcp-nu_scf-scale-normalized-carleson-upper-estimate-obstruction-scale-normalized-carleson-upper-estimate-for-nu_scf-95c4eb720a.md` | records the missing scale-normalized `\nu_{SCF}` Carleson upgrade |

## Target

For the extracted SCF-defect carrier,

```math
\nu_n^{SCF}
\stackrel{*}{\rightharpoonup}
\nu_*^{SCF},
```

prove

```math
TemporalNonAtomicSCF.A:
\quad
\nu_*^{SCF}(B_R\times\{0\})=0
\qquad
\forall R<\infty.
```

The standard sufficient theorem is a superlinear temporal marginal bound:

```math
\left\|
\|\nu_n^{SCF}(s,\cdot)\|_{\mathcal M(B_{R+1})}
\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad
p>1.
\tag{TNSCF.1}
```

Then Holder gives

```math
\nu_*^{SCF}(B_R\times[-\epsilon,0])
\le
C_R\epsilon^{1-1/p}
\to0.
```

## Component audit

The analytic SCF carrier used by the installed upper-carrier note is

```math
\nu_{SCF}
=
\mu_D+\sum_\chi\mu_{P,\chi},
```

where

```math
\mu_D=|\nabla u|^2\,dx\,dt,
\qquad
\mu_{P,\chi}=|p_\chi^{loc}|^{3/2}\,dx\,dt.
```

The pressure piece is tied to `u\otimes u`; on finite windows, the energy class
gives the familiar interpolation

```math
u\in L_t^4L_x^3
```

locally, so the pressure time marginal is compatible with an
`L_t^{4/3}`-type bound after cutoff Calderon--Zygmund estimates.

The dissipation time marginal is

```math
d_D(t):=\int_{B_{R+1}}|\nabla u^{(n)}(y,t)|^2dy.
```

The energy inequality gives only

```math
\|d_D\|_{L_t^1((-1,0))}\le C_R.
```

No installed theorem upgrades this to `L_t^p`, `p>1`, uniformly on the selected
terminal rescalings.

## Countermodel at the available level

The available `L^1_t` dissipation control allows terminal atomic weak-* limits:

```math
d_D^{(n)}(s)\,ds
=
c_0\,n\,\mathbf 1_{(-1/n,0]}(s)\,ds
\rightharpoonup
c_0\,\delta_0.
```

This model is compatible with a uniform `L^1_t` bound and positive terminal
SCF defect measure.  It is excluded only by a superlinear time integrability
or by an independent dynamic law preventing first-time dissipation-carrier
creation.

## Exact reduction

The bypass-local anti-atom theorem reduces to:

```math
\boxed{
UniformTemporalDissipationIntegrability_p.A:
\quad
\left\|
\int_{B_{R+1}}|\nabla u^{(n)}(y,s)|^2dy
\right\|_{L_s^p((-1,0))}
\le C_R
\quad(p>1).
}
```

Equivalently, one can prove a dynamic carrier law that prevents a terminal
first pulse of the dissipation/pressure SCF carrier.  At the scale-normalized
route level, that is the same obstruction recorded as:

```math
SquareReserveEvolution.A
```

or the scale-normalized `\nu_{SCF}` Carleson upgrade.

## Consequence for the first-pulse bypass

The temporal branch is not independent of the direct square-reserve branch.
The direct `UniformTemporalDissipationIntegrability_p.A` attempt shows that the
superlinear temporal-dissipation route requires the same scale-normalized
carrier control.  The sharpened target is:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or equivalently scale-normalized }\nu_{SCF}\text{ Carleson control.}
}
```

This theorem implies the needed bypass-local anti-atom / carrier control and
therefore feeds

```math
GoodScaleNonCollapse_{1/2}.A
\Longrightarrow
READ.COVER.
```

Without this carrier theorem, `TemporalNonAtomicSCF.A` remains open.
