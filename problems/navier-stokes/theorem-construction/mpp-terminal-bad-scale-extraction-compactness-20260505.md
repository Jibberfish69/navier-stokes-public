# TerminalBadScaleExtraction.A compactness packet

## Status

Theorem-facing compactness discharge for the `SOURCE.NO-PULSE.A` bypass route
through `GoodScaleNonCollapse_{1/2}.A`.

Verdict:

```math
\boxed{
TerminalBadScaleExtraction.A
\text{ closes under the retained same-fluid suitable-compactness
normalization.}
}
```

It does not close `TerminalDefectPersistence.A` or
`TerminalDefectLiouville.A`.

## Source anchors

| Surface | Role |
|---|---|
| `mpp-source-no-pulse-read-cover-bypass-discharge-20260505.md` | two-threshold `READ.COVER` bypass and target placement |
| `mcp-moving-concentration-compactness-test.md` | moving `D_u/P` concentration compactifies to a terminal SCF defect object |
| `mpp-zeno-source-residue-compactness-extraction-note.md` | parabolic rescaling and ancient local suitable compactness inputs |
| `mcp-affine-pressure-normalization-compatibility-lemma-846fdf37af.md` | pressure-gauge compatibility for `SCF_base` |

## Setup

Let

```math
\mathcal T:=Q^\Phi(I,A_\sharp)
```

be the retained compact same-fluid approach window.  Define the strict
good-scale function

```math
r_{\mathrm{good}}^{1/2}(a,t)
:=
\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2\}.
```

Assume a bad-scale sequence:

```math
(a_n,t_n)\in\mathcal T,
\qquad
r_{\mathrm{good}}^{1/2}(a_n,t_n)\to0.
\tag{TBSE.1}
```

Choose scales `\lambda_n\downarrow0` adapted to the failed strict-good scale,
for instance with

```math
\lambda_n> r_{\mathrm{good}}^{1/2}(a_n,t_n),
\qquad
\lambda_n\to0,
```

so that, by the definition of the supremal good scale,

```math
SCF_{base}(Q_{\lambda_n}^\Phi(a_n,t_n))>\varepsilon_m/2.
\tag{TBSE.1a}
```

and centers

```math
x_n:=\Phi(a_n,t_n).
```

The parabolic rescalings are

```math
u^{(n)}(y,s)
:=
\lambda_n u(x_n+\lambda_n y,t_n+\lambda_n^2s),
```

```math
p^{(n)}(y,s)
:=
\lambda_n^2 p(x_n+\lambda_n y,t_n+\lambda_n^2s),
```

with the pressure normalized by the `SCF_base` gauge after subtracting
time-only functions.

## Compactness hypotheses

For every fixed backward cylinder

```math
Q_R^-:=B_R\times[-R^2,0],
```

assume the retained same-fluid compactness normalization:

```math
\sup_n
\left[
\|u^{(n)}\|_{L^\infty_sL^2_y(Q_R^-)}
+
\|\nabla u^{(n)}\|_{L^2(Q_R^-)}
+
\|p^{(n)}\|_{L^{3/2}(Q_R^-)}
\right]
<\infty.
\tag{TBSE.2}
```

Assume also:

```math
\operatorname{div}u^{(n)}=0,
```

the local energy inequality holds on every compact `Q_R^-`, and the pulled-back
same-fluid charts have a subsequential bounded-distortion limit on every fixed
`Q_R^-`.

## Theorem `TerminalBadScaleExtraction.A`

Under `(TBSE.1)` and `(TBSE.2)`, after passing to a subsequence,

```math
(u^{(n)},p^{(n)},\Phi_n)
\to
(u_*,p_*,\Phi_*)
```

locally on every fixed backward cylinder, where `(u_*,p_*)` is a retained
same-fluid ancient local suitable Navier-Stokes tangent with finite local
energy:

```math
u^{(n)}\to u_*
\quad\text{strongly in }L^2_{loc},
```

```math
\nabla u^{(n)}\rightharpoonup\nabla u_*
\quad\text{weakly in }L^2_{loc},
```

```math
p^{(n)}\rightharpoonup p_*
\quad\text{weakly in }L^{3/2}_{loc}
```

after pressure gauge normalization.  The limit satisfies the local energy
inequality and the Navier-Stokes equations in the suitable weak sense on
`\mathbb R^3\times(-\infty,0]` locally in the retained chart.

## Proof

The compactness proof is the following diagonal local-suitable extraction.

For a fixed `R`, `(TBSE.2)` gives uniform local energy, dissipation, and
pressure bounds on `Q_R^-`.  The local equation gives the corresponding
negative-Sobolev time-derivative control on compact subcylinders, for example

```math
\partial_su^{(n)}
\text{ is bounded in }
L^{4/3}((-R^2,0);H^{-1}(B_R)).
```

Aubin-Lions therefore gives strong local `L^2` convergence of `u^{(n)}` after
subsequence.
Weak compactness gives subsequential limits of `\nabla u^{(n)}` in `L^2` and
`p^{(n)}` in `L^{3/2}` after subtracting time functions.

The strong `L^2_{loc}` convergence is enough to pass the quadratic term
`u^{(n)}\otimes u^{(n)}` to the limit in distributions.  The pressure gauge is
compatible with the `SCF_base` normalization, so the pressure limit is the
local pressure associated to the limiting velocity up to the allowed time
function.  Lower semicontinuity passes the local energy inequality to the
limit.  The bounded-distortion same-fluid charts converge after subsequence on
compact sets, so the retained same-fluid label structure survives in the
limit.

Diagonalizing over `R=1,2,\dots` gives the ancient local suitable tangent on
all finite backward cylinders.

This proves `TerminalBadScaleExtraction.A`.

## What extraction does not prove

The bad-scale hypothesis `(TBSE.1)` alone does not force `(TBSE.2)`.  The route
must still supply the compactness normalization from the original data,
energy, pressure, and retained same-fluid geometry ledgers.

Also, extraction alone does not preserve a positive SCF defect.  That is the
separate no-loss theorem:

```math
TerminalDefectPersistence.A.
```

The moving-concentration note supplies compactness of defect carriers, but the
`READ.COVER` bypass still needs a route-local lower bound that survives the
bad-scale normalization:

```math
\mathfrak D_{SCF,*}(Q_1^-)>0.
```

Finally, even a retained ancient suitable tangent with nonzero defect does not
contradict known installed rows by itself.  The contradiction requires:

```math
TerminalDefectLiouville.measure.A.
```

## Formal contradiction assembly

Assume the post-extraction persistence/rigidity inputs:

```math
TerminalBadScaleExtraction.A,
\qquad
InteriorSCFTightness.A,
\qquad
TerminalDefectLiouville.measure.A.
```

If `GoodScaleNonCollapse_{1/2}.A` failed, there would be a sequence satisfying
`(TBSE.1)` and scales satisfying `(TBSE.1a)`.  The compactness theorem extracts
a retained ancient local suitable tangent.  Interior SCF tightness gives a
nonzero terminal SCF defect measure through
`TerminalDefectPersistence.measure.A`.  Terminal defect Liouville forbids such
a tangent-defect pair.  Contradiction.

Therefore

```math
\boxed{
TerminalBadScaleExtraction.A
+
InteriorSCFTightness.A
+
TerminalDefectLiouville.measure.A
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
}
```

Combined with the bypass discharge note, this yields:

```math
GoodScaleNonCollapse_{1/2}.A
\Longrightarrow
READ.COVER
\Longrightarrow
CM
\Longrightarrow
Smooth.
```

## Remaining live targets

The exact surviving theorem targets after this extraction discharge are:

| Target | Status |
|---|---|
| retained bad-scale compactness normalization `(TBSE.2)` from `OriginalSmoothData` | open supplier if not already provided by the selected terminal branch |
| `TerminalDefectPersistence.measure.A` | reduced in `mpp-terminal-defect-persistence-measure-split-20260505.md` and discharged with buffered tightness |
| `InteriorSCFTightness.A` | installed by `mpp-interior-scf-tightness-buffer-20260505.md` |
| `MeasureDefectRealization.A` | optional open bridge from defect measure to function-level SCF |
| `TerminalDefectLiouville.A` | open; first-pulse/SCF-carrier reduction sharpens it to `SquareReserveEvolution.A` or equivalent scale-normalized `\nu_{SCF}` Carleson control |
