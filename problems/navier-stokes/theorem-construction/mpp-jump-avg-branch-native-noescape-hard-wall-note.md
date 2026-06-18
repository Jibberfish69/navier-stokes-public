# MPP Jump_avg Branch-Native No-Escape Hard Wall Note

## Status

Theorem-facing reduction and obstruction note.

This note does not eliminate `Jump_avg`. It records the bounded self-attempts
already checked and narrows the live mathematical burden to the exact shared
charge problem.

May 1 MCP reattempts are recorded in:

- `mpp-jump-avg-no-field-branch-elimination-audit-note.md`
- `mpp-component-selection-scfbase-to-nuscf-audit-note.md`
- `mpp-scale-normalized-nuscf-carleson-audit-note.md`
- `mpp-eu-replacement-charge-audit-note.md`
- `mpp-active-square-terminal-charge-audit-note.md`
- `mpp-javg-amp-local-energy-conversion-attempt-note.md`
- `mpp-aag-original-data-active-shell-attempt-note.md`
- `mpp-jump-avg-active-window-gain-reduction-note.md`
- `mpp-original-data-to-awg-attempt-note.md`
- `mpp-nonlinear-shell-flux-source-theorem-attempt-note.md`
- `mpp-jump-avg-final-active-window-source-wall-note.md`
- `mpp-nohop-active-window-chain-attempt-note.md`
- `mpp-qbound-to-awg-and-qdrain-wall-note.md`
- `mpp-heat-scale-square-source-terminal-attempt-note.md`
- `mpp-direct-active-window-carleson-attempt-note.md`
- `mpp-signed-lifted-remainder-residual-tail-attempt-note.md`
- `mpp-monotone-source-dominance-no-pulse-attempt-note.md`
- `mpp-awg-supplier-ladder-closure-note.md`

The target remains

```math
Jump_{avg}
\Longrightarrow
\bot
```

without assuming `Field_avg` on the `Jump_avg` branch.

## Forbidden Circular Routes

The following routes are rejected.

```math
Jump_{avg}
\Longrightarrow
Field_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
\bot.
```

This spends the predicate whose failure defines the branch.

```math
Jump_{avg}
\Longrightarrow
AACT.Global.noJump.
```

This spends the finite positive-scale SCF-good cover denied on the branch.

```math
CAVG.J
\Longrightarrow
\neg Jump_{avg}.
```

`CAVG.J` is a typing lemma. It classifies bad material contact or terminal
SCF-good radius collapse as `Jump_avg`; it does not exclude that face.

`AVG.END.A` is also downstream. It removes averaged endpoint faces only after
the averaged class spine has supplied the endpoint package. It is not a
branch-native proof of `Jump_avg => false`.

## Candidate Shared Charge

The strongest installed upper carrier is

```math
\nu_{SCF}
:=
\mu_D+\sum_\chi \mu_{P,\chi},
```

where

```math
\mu_D=|\nabla u|^2\,dx\,dt,
\qquad
\mu_{P,\chi}=|p_\chi^{loc}|^{3/2}\,dx\,dt.
```

On separated or bounded-overlap terminal windows inside the finite transported
atlas,

```math
\sum_k \nu_{SCF}(Q_k)
\le
C_{atlas}\nu_{SCF}([t_0,T_\ast)\times\mathbb T^3)
<\infty.
```

This is a raw finite-measure upper bound. It is installed only for the
dissipation/local-pressure carrier.

## Failed Lower Route

`Jump_avg` gives a terminal sequence of SCF-base threshold failures:

```math
SCF_{base}(Q_{r_k}^{\Phi}(a_k,t_k))>\varepsilon_m,
\qquad r_k\downarrow0,\quad t_k\uparrow T_\ast.
```

The native component split is

```math
SCF_{base}
=
E_u+D_u+P+G_\Phi.
```

Pack stabilization controls the geometric term `G_\Phi`. The charge
`\nu_{SCF}` controls `D_u` and the local-pressure part of `P`.

The escape channel is the velocity-energy / local-amplitude component `E_u`.
Even when the installed `SCF_base` is read in the affine-normalized CKN form

```math
R^{-2}\iint |u-u_R^{aff}|^3
+
R^{-2}\iint |p-p_R^{norm}|^{3/2}
+
R^{-1}\iint |\nabla u|^2,
```

interpolation between the displayed scale-critical terms still leaves a
local-energy or sup-time channel. Poincare closes that channel only with a
zero-mode/affine residual theorem strong enough to control the local energy
component on the same terminal schedule. That theorem is not installed from
`OriginalSmoothData`.

Therefore

```math
SCF_{base}\text{ threshold}
\not\Longrightarrow
\nu_{SCF}\text{ positive lower mass}
```

under the current surfaces.

The bounded direct test is recorded in
`mpp-javg-affine-poincare-component-selection-attempt-note.md`. Its native
estimate is

```math
R^{-2}\iint|u-u_R^{aff}|^3
\le
C(A_R^{aff}D_R)^{3/4},
```

so the velocity part of `SCF_base` creates an affine-amplitude channel
`A_R^{aff}`. This gives the exact replacement target

```math
JAVG.Amp:
\quad
A_R^{aff}\text{ terminal threshold}
\Longrightarrow
D_R+P_R^{loc}\text{ mass on a comparable same-fluid window}.
```

No current surface proves `JAVG.Amp`.

## Failed Enlarged-Charge Route

One could enlarge the charge to include `E_u`:

```math
\nu_{SCF}^{+}
=
E_u\text{-carrier}+\mu_D+\sum_\chi\mu_{P,\chi}.
```

This proves only lower-side set inclusion: an `E_u`-carried threshold packet is
represented in the enlarged packet functional.  The `E_u` packet is a
scale-critical time-slice or cylinder-size readout, not an installed additive
finite Radon measure with bounded-overlap summability. Global energy controls
the total time-slice size, but it does not give

```math
\sum_k r_k^{-\alpha}E_u(Q_k)\le C(E_0,\mathcal S)
```

for the same separated terminal moving windows selected by the lower side. The
local energy inequality supplies balances, but not the required recurrence,
decay, or conversion theorem.

Thus the enlarged-charge route lacks a matching upper estimate.

## Failed Raw-Upper Route

The installed raw upper bound controls

```math
\sum_k \nu_{SCF}(Q_k).
```

The `Jump_avg` lower side, if component selection were proved, would be
scale-normalized:

```math
\sum_k \operatorname{Norm}_{SCF}(Q_k)
\ge
c_{\mathrm{norm}}\sum_k c_m.
```

Raw finite mass does not imply the corresponding scale-normalized Carleson
bound. Shrinking terminal windows can have finite raw mass while the weighted
or normalized sum diverges. The missing theorem is a genuine
scale-normalized upper estimate, not a restatement of finite energy.

## Exact Remaining Theorem

The branch-native no-escape route will close if the following same-carrier pair
is proved.

### `JAVG.1` Component Selection / Lower Production

```math
Jump_{avg}
\Longrightarrow
\text{separated terminal windows }Q_k
\text{ with }
\operatorname{Norm}_{SCF}^{\nu}(Q_k)\ge c_m>0.
```

The lower density must use the same carrier that appears in the upper theorem.

### `JAVG.2` Scale-Normalized Upper Control

```math
\sum_k
\operatorname{Norm}_{SCF}^{\nu}(Q_k)
\le
C(E_0,\text{source},\text{atlas})
```

for the same separated or bounded-overlap terminal windows.

The conditional upper-side bridge is installed in
`mpp-javg2-active-shell-gain-to-carleson-note.md`:

```math
AAG.A\Longrightarrow JAVG.2.
```

The unsolved part is not this bridge. It is the active-shell amplitude gain
itself:

```math
OriginalSmoothData\Longrightarrow AAG.A,
```

or an equivalent heat-scale square-source / direct active-square theorem.

Equivalently, one may replace `JAVG.1` and `JAVG.2` by either of the following
single-carrier repairs:

```math
E_u\text{ terminal threshold}
\Longrightarrow
D_u/P\text{ terminal mass}
```

on the same terminal schedule, or

```math
\sum_k E_u(Q_k)\le C(E_0)
```

for the same terminal schedule, with the enlarged charge then used on both
sides.

The active-window reduction note proves that these are not genuinely separate
frontiers. The lower amplitude channel and the upper active-square channel are
two faces of the same estimate:

```math
AWG.A:
\quad
\text{terminal active-window gain / heat-scale square-source control}.
```

In theorem-facing form,

```math
AWG.A
\Longrightarrow
JAVG.1+JAVG.2
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

Thus the live target may be written equivalently as

```math
\boxed{
OriginalSmoothData\Longrightarrow AWG.A.
}
```

The direct original-data attempt is recorded in
`mpp-original-data-to-awg-attempt-note.md`. It fails at the no-hopping /
square-source wall:

```math
NOHOP.A
\quad\text{or equivalently}\quad
\text{heat-scale square-source / active-window Carleson control}.
```

## Verdict

`Jump_avg` remains open, but the hard wall is now exact:

```math
\boxed{
\text{prove active-window gain / no-hopping,}
}
```

or install an equivalent same-carrier theorem that supplies both lower
production and scale-normalized upper control.

No current note may promote `Jump_avg` elimination without one of these
theorems.

The May 1 continuation collapses these alternatives to the single active-window
source-normalization target:

```math
OriginalSmoothData\Longrightarrow AWG.A.
```

Under `AWG.A`,

```math
AWG.A\Longrightarrow JAVG.1+JAVG.2\Longrightarrow(Jump_{avg}\Rightarrow\bot).
```

The currently missing source theorem is exactly a heat-scale square-source,
direct active-square / active-window Carleson, signed weighted
lifted-remainder-plus-residual-tail, or monotone/source-dominance theorem
forbidding source-balanced active pulses.

The monotone-functional route gives an equivalent stronger supplier path:

```math
QDrain.A\Longrightarrow QBound.A\Longrightarrow AWG.A
\Longrightarrow(Jump_{avg}\Rightarrow\bot).
```

Here `QDrain.A` is the missing one-sided enstrophy drain controlling the
vortex-stretching cubic in the `Q(t)` identity. It is not currently installed.

The mixed-shell identity gives one further equivalent presentation. The
continuation note
`mpp-mixed-shell-spill-coefficient-scheduler-attempt-note.md` proves

```math
QBound.A\Longrightarrow MSC.Spill.Close,
```

but the attempt to replace pointwise spill-coefficient smallness by
energy-dissipation scheduling fails unless one proves

```math
MSC.Spill.NoPulse:
\quad
\text{mixed bilinear dissipation does not concentrate on large spill pulses}.
```

Thus the mixed-shell branch also closes back to the same active source
no-pulse atom, rather than eliminating `Jump_avg` unconditionally.
