# SOURCE.NO-PULSE.A bypass: READ.COVER discharge packet

## Status

Theorem-facing discharge note for the proposed direct `READ.COVER` bypass of
`SOURCE.NO-PULSE.A`.

Verdict:

```math
\boxed{
\text{The topology and readout rows close after a two-threshold good-scale input.}
}
```

The remaining hard theorem is not the finite-cover extraction itself.  It is
the terminal no-collapse statement:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\inf_{\mathcal T} r_{\mathrm{good}}^{1/2}>0,
}
```

or equivalently the contradiction package

```math
TerminalBadScaleExtraction.A
+
TerminalDefectPersistence.A
+
TerminalDefectLiouville.A.
```

Here `\mathcal T:=Q^\Phi(I,A_\sharp)` is the retained compact same-fluid
approach window.

## Source anchors

Installed row and cover surfaces used here:

| Surface | Role |
|---|---|
| `mcp-strict-margin-scf-stability-constants-lemma-read-cover-4a599c3936.md` | strict-margin SCF stability from `\varepsilon_m/2` to `\varepsilon_m` |
| `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md` | positive-scale terminal cover extraction once a good-scale lower bound is available |
| `mcp-field-row-readout-to-field-n-r-q-20260504.md` | `Field_avg+READ.COVER+ATD_m^\varepsilon=>Field_{N,r,Q}` |
| `mcp-dtc-read-full-endpoint-depth-to-towerbound.md` | `DTC.A_avg+READ.COVER+ATD_m^\varepsilon=>\mathfrak A_{N+1,Q}\in L^\infty` |
| `mcp-pack-from-finite-physical-cover-20260504.md` | `READ.COVER+ATD_m^\varepsilon=>Pack_Q` |
| `mcp-part-terminal-closedness-field-tower-theorem-20260504.md` | terminal `Part_{N,Q}` from Field, tower, and preterminal Part |
| `mcp-final-cm-conjunction-member-row-20260504.md` | `Pack+Part+Field=>CM=>Member` |
| `mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md` | all-depth CM membership gives `Smooth(Q)` |
| `mpp-terminal-bad-scale-extraction-compactness-20260505.md` | `TerminalBadScaleExtraction.A` under retained suitable-compactness normalization |
| `mpp-terminal-defect-persistence-measure-split-20260505.md` | measure-valued defect persistence under interior tightness |
| `mpp-interior-scf-tightness-buffer-20260505.md` | buffered cutoff discharge of `InteriorSCFTightness.A` |
| `mpp-terminal-defect-liouville-external-audit-20260505.md` | external Liouville audit and rigid-class replacement target |
| `mpp-read-cover-bypass-first-pulse-reduction-20260505.md` | first-pulse reduction to the source-wall square-reserve primitive |
| `mpp-uniform-temporal-dissipation-integrability-attempt-20260505.md` | temporal-integrability attempt, reducing back to square reserve |

## 1. Two-threshold good-scale definition

For `0<\theta<1`, define

```math
r_{\mathrm{good}}^\theta(a,t)
:=
\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le \theta\varepsilon_m\}.
```

The original single-threshold definition is

```math
r_{\mathrm{good}}(a,t)=r_{\mathrm{good}}^1(a,t).
```

The finite-cover route must use the strict threshold
`\theta=1/2` upstream:

```math
r_{\mathrm{good}}^{1/2}
\quad\text{produces}\quad
\varepsilon_m\text{-good readout cylinders}.
```

This threshold split is necessary.  A positive lower bound for
`r_{\mathrm{good}}^1` alone does not by itself supply the strict margin
needed to perturb centers and extract an open cover.  The lawful bypass
therefore targets

```math
GoodScaleNonCollapse_{1/2}.A:
\quad
\inf_{(a,t)\in\mathcal T}r_{\mathrm{good}}^{1/2}(a,t)>0.
```

## 2. Strict-margin stability

The installed strict-margin lemma gives:

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2
\Longrightarrow
\exists\theta_0\in(0,1),\exists\delta>0,
```

such that for every nearby material center `(a',t')`,

```math
SCF_{base}(Q_{\theta_0 r}^\Phi(a',t'))\le\varepsilon_m.
```

Thus the set of half-threshold good centers is open after shrinking radii.

## 3. `GoodScaleOpenCover.A`

Assume every point in `\mathcal T` has a half-threshold good scale:

```math
\forall(a,t)\in\mathcal T,\qquad
r_{\mathrm{good}}^{1/2}(a,t)>0.
```

Then the half-threshold cylinders and strict-margin stability generate an
open cover of `\mathcal T` by `\varepsilon_m`-good same-fluid cylinders.

### Proof

Fix `(a,t)\in\mathcal T`.  Choose `r>0` such that

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2.
```

By strict-margin stability there are `\rho>0` and a neighborhood `U(a,t)` in
the material topology such that

```math
\forall(a',t')\in U(a,t),\qquad
SCF_{base}(Q_\rho^\Phi(a',t'))\le\varepsilon_m.
```

The neighborhoods `U(a,t)` cover `\mathcal T`.  This proves the open-cover
form needed for finite extraction.

## 4. `GoodScaleNonCollapse_{1/2}.A => READ.COVER`

Assume

```math
\inf_{(a,t)\in\mathcal T}r_{\mathrm{good}}^{1/2}(a,t)\ge r_*>0.
```

Then `READ.COVER` holds.

### Proof

For every `(a,t)\in\mathcal T`, choose `s(a,t)>r_*/2` with

```math
SCF_{base}(Q_{s(a,t)}^\Phi(a,t))\le\varepsilon_m/2.
```

Apply strict-margin stability to get a material neighborhood `U(a,t)` and a
readout radius `\rho(a,t)\ge c_*s(a,t)` after a fixed admissible shrink.  The
bounded-distortion same-fluid chart constants give

```math
\rho(a,t)\ge c_*r_*/2>0,
```

and

```math
SCF_{base}(Q_{\rho(a,t)}^\Phi(a',t'))\le\varepsilon_m
\quad\text{for all }(a',t')\in U(a,t).
```

Compactness of `\mathcal T` gives a finite subcover

```math
\mathcal T\subset\bigcup_{j=1}^J U(a_j,t_j).
```

The corresponding cylinders

```math
Q_{\rho_j}^\Phi(a_j,t_j),
\qquad
\rho_j\ge c_*r_*/2,
```

are finite, same-fluid, uniformly positive-scale, and `\varepsilon_m`-good.
This is `READ.COVER`.

## 5. `NoBadMaterialSet_{1/2}.A => READ.COVER`

Let

```math
\mathcal B_{\varepsilon_m/2}^\Phi
:=
\{(a,t)\in\mathcal T:\forall r>0,\
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m/2\}.
```

If

```math
\mathcal B_{\varepsilon_m/2}^\Phi=\varnothing,
```

then

```math
READ.COVER.
```

### Proof

Emptiness of `\mathcal B_{\varepsilon_m/2}^\Phi` gives a positive
half-threshold good scale at every point.  By `GoodScaleOpenCover.A`, the
associated strict-margin neighborhoods cover `\mathcal T`.  Compactness gives
a finite subcover.  The finitely many stable radii are positive and the
corresponding cylinders are `\varepsilon_m`-good.  Hence they are exactly a
finite positive-scale readout cover.

This conclusion is deliberately weaker than

```math
\inf_{\mathcal T}r_{\mathrm{good}}^{1/2}>0.
```

Half-threshold bad-set emptiness plus half-to-full stability gives a full
threshold readout cover, not a uniform half-threshold lower scale.  To prove
`GoodScaleNonCollapse_{1/2}.A` through a bad-set theorem, the bad set must be
empty at a stricter threshold, for example `\varepsilon_m/4`, together with a
threshold-flexible stability lemma from `\varepsilon_m/4` to
`\varepsilon_m/2`.

## 6. Row closure after `READ.COVER`

Once `READ.COVER` is available, the row closure is installed and noncircular:

```math
READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Pack_Q,
```

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field_{N,r,Q},
```

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
\mathfrak A_{N+1,Q}\in L^\infty,
```

and

```math
Field_{N,r,Q}
+
\mathfrak A_{N+1,Q}\in L^\infty
+
Part_{N,Q}\text{ preterminal}
\Longrightarrow
Part_{N,Q}.
```

Therefore

```math
Pack_Q+Part_{N,Q}+Field_{N,r,Q}
\Longrightarrow
CM_{N,r,Q}
\Longrightarrow
Member(Q).
```

The installed CM witness-to-member direction gives `Member(Q)`.  The separate
membership-to-smoothness row may then be invoked where the route has promoted
that final membership consequence:

```math
[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}]
\Longrightarrow
Smooth(Q).
```

Thus the downstream chain

```math
READ.COVER
\Longrightarrow
CM
\Longrightarrow
Smooth
```

is closed at theorem-construction level, conditional on the already installed
averaged rows and the local `ATD_m^\varepsilon` packet on the same cover.

## 7. Terminal contradiction reduction

The only remaining proof burden for the bypass is:

```math
OriginalSmoothData
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
```

A contradiction proof has the exact form below.

### `TerminalBadScaleExtraction.A`

Assume there is a bad-scale sequence

```math
(a_n,t_n)\in\mathcal T,
\qquad
r_{\mathrm{good}}^{1/2}(a_n,t_n)\to0.
```

If the rescaled same-fluid cylinders have the uniform local suitable-energy
and pressure bounds required by the compactness theorem, then after parabolic
rescaling and extraction

```math
(u_n,p_n,\Phi_n)\to(u_*,p_*,\Phi_*)
```

locally in the suitable weak topology, and the limit is a retained same-fluid
terminal tangent with finite local energy.

This is a compactness theorem, not a Liouville theorem.  It closes once the
route supplies the uniform local-energy and pressure normalization on the
bad-scale sequence.

### `TerminalDefectPersistence.A`

The extraction must preserve a nonzero terminal SCF defect:

```math
r_{\mathrm{good}}^{1/2}(a_n,t_n)\to0
\Longrightarrow
\text{the tangent carries a nonzero terminal }SCF\text{ defect}.
```

This requires a quantitative no-loss statement for the scale-critical defect.
Weak convergence alone is insufficient unless the defect density is lower
semicontinuous in the retained normalization and no mass escapes through the
same-fluid chart boundary.

### `TerminalDefectLiouville.A`

The hard rigidity theorem is:

```math
\text{retained same-fluid terminal tangent}
+
\text{finite local energy}
+
\text{nonzero terminal }SCF\text{ defect}
\Longrightarrow
\bot.
```

No installed row theorem proves this.  In the current source-wall grammar it is
the same class of burden as the reopened source-wall primitives:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## 8. Exact replacement theorem

The valid route replacement is:

```math
\boxed{
GoodScaleNonCollapse_{1/2}.A
\Longrightarrow
READ.COVER
\Longrightarrow
CM
\Longrightarrow
Smooth.
}
```

Consequently, `SOURCE.NO-PULSE.A` is unnecessary for this route only after
`GoodScaleNonCollapse_{1/2}.A` is proved independently.

The closed and open targets are:

| Target | Status |
|---|---|
| `GoodScaleFunction.Def` | closed after replacing by two-threshold `r_{\mathrm{good}}^\theta` |
| `SCF.StrictMarginStability.A` | installed conditional local stability theorem |
| `GoodScaleOpenCover.A` | closed |
| `GoodScaleNonCollapse_{1/2}.A=>READ.COVER` | closed |
| `READ.COVER.FiniteExtraction.A` | closed by compactness |
| `ATD.LocalOnReadCover.A` | conditional on local `ATD_m^\varepsilon` being invoked on the shrunken readout cover |
| `Field.ReadoutFromCover.A` | installed |
| `DTC.TowerReadoutFromCover.A` | installed |
| `Pack.FromFinitePhysicalCover.A` | installed |
| `Part.TerminalClosedness.A` | installed |
| `CM.Conjunction.A` | installed |
| CM witness-to-member direction `CM=>Member` | installed |
| `NoBadMaterialSet_{1/2}.A=>READ.COVER` | closed once the half-threshold bad set is empty |
| `NoBadMaterialSet_{1/2}.A` | open from `OriginalSmoothData` |
| `NoBadMaterialSet_{1/4}.A=>GoodScaleNonCollapse_{1/2}.A` | open unless threshold-flexible strict stability is installed |
| `GoodScaleNonCollapse_{1/2}.A` | open from `OriginalSmoothData` |
| `TerminalBadScaleExtraction.A` | installed under retained bad-scale compactness normalization `(TBSE.2)` |
| retained compactness normalization `(TBSE.2)` | open supplier if not already produced by the selected terminal branch |
| `TerminalDefectPersistence.measure.A` | installed under buffered SCF carrier upper envelope |
| `InteriorSCFTightness.A` | installed by buffered cutoff on `Q_2^-` |
| `MeasureDefectRealization.A` | optional open bridge if Liouville is stated only for function-level SCF |
| `TerminalDefectLiouville.A` | open; first-pulse reduction sharpens it to `SquareReserveEvolution.A` or equivalent scale-normalized `\nu_{SCF}` Carleson control |
| `FirstCrossingCarrier.A` | installed as dyadic first-window selection; carries no analytic bound |
| `TemporalNonAtomicSCF.A` | not an independent terminal target; carrier audit plus direct attempt reduces it back to square reserve / scale-normalized `\nu_{SCF}` Carleson control |

## Terminal next target

The next theorem work does not target finite extraction again.  It targets the
post-extraction terminal primitive:

```math
\boxed{
FirstCrossingCarrier.A
+
SquareReserveEvolution.A
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
}
```

If the Liouville theorem is only available for function-level SCF, insert the
extra realization bridge:

```math
MeasureDefectRealization.A:
\quad
\nu_*\ne0
\Longrightarrow
SCF_{base}(u_*,p_*)\text{ is nonzero on a retained subcylinder}.
```
