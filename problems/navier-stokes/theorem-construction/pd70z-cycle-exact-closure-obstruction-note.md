# `PD.70z` Cycle-Exact Closure Obstruction Note

## Purpose

This note records one bounded self-attempt to close the cycle-exact branch of
the selector-calibration route. The point is to isolate the exact theorem that
still remains open after the loop/cocycle burden has been removed.

The conclusion is narrow:

```text
cycle exactness removes the loop ledger, but it does not by itself supply the
directional observability theorem needed for `PD.70z`.
```

So the archived shift

```text
YM-heat/deformation -> upstream spectral floor;
selector calibration -> direct live splice
```

was structurally correct, but it did not close the exact-potential branch.

## What is already reduced

The synchronized pair-defect packet proves that, after the spectral and
bundle-angle losses are peeled off, the residual pairwise burden is

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le C_{\mathrm{PD70s}}
\mathcal E_J^{obs}(I).
\tag{R.1}
```

See `(PD.70s)` in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md).

On the cycle-exact branch, the same packet also proves

```math
\mathcal E_J^{loop}(I)=0,
\tag{R.2}
```

via `(PD.70x)`-`(PD.70y)`, so the residual theorem collapses to

```math
\mathcal E_J^{dir}(I)
\le C_{\mathrm{PD70z}}
\mathcal E_J^{obs}(I).
\tag{R.3}
```

This is exactly `(PD.70z)` in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md)
and `(ST.6a)` in
[spectral-transversality-in-measure-implies-pd70.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-in-measure-implies-pd70.md).

## Where the self-attempt stops

The exact failure point is not the loop term, and it is no longer the absence
of any concrete directional defect.

In the bridge theorem, the directional loss is encoded by

```math
-C\,M_J(t)\Xi_J(a,b,t),
```

where `\Xi_J` is only specified as

```text
any admissible quadratic pair-direction defect satisfying `\Xi_J \ge c_\Xi \xi_J^2`.
```

See Theorem Candidate B in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md).

The pair-defect packet then factors the remaining theorem through

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}\mathcal E_J^{dir,rec}(I),
\tag{R.4}
```

but `\mathcal E_J^{dir,rec}(I)` is only described as

```text
the route-local reconstruction energy for the pair-direction defect `\Xi_J`,
built from the same pair-defect packet rather than from a new geometric object.
```

See `(PD.70t)` and the sentence directly following it in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md).

Since this note was first written, two concrete realizations of the directional
defect have been isolated on disk:

1. on the simple-top branch,
   `\Xi_J^{ang}=\alpha_J=1-(e_{ab}\cdot n_J)^2`, and the one-sided deficit is
   already reduced formally to the angle or angular-forcing ledgers by
   `(AS.21)`-`(AS.22)` and `(AS.5d)` in
   [tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md);
2. on the normal-covector branch,
   `\Xi_J^{\perp}=|n_J(a)\cdot e_{ab}|^2` is fixed concretely by `(CN.5)`-`(CN.7)`
   in
   [pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md).

So the self-attempt now stops at a narrower wall:

1. cycle exactness kills `\mathcal E_J^{loop}`;
2. the route still needs a concrete reconstruction / observability map from the
   pair-defect packet to one of the fixed ledgers
   `\Xi_J^{ang}` or `\Xi_J^{\perp}`; on the normal-covector subroute the
   localized observability clause has now been sharpened further: the weighted
   overlap subtask `(CN.13h4)` is discharged formally by the transported
   weighted-overlap / active-valence packet `(CN.13h8)`-`(CN.13h14)`, so the
   remaining observability subgap there is no longer an abstract localized
   estimate but the stripwise pair-defect initial/source ledger
   `(CN.13h15)`, equivalently `(PD.51b)` feeding the direct `L^2` estimate
   `(PD.51c)`, on the installed two-point PDE in
   [pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md);
3. on the normal-covector subroute, the weighted `L^4` closure `(CN.13)` now
   has a finite-measure square-root upgrade `(CN.13n)`, so the remaining gap is
   only an explicit upgrade from that sublinear estimate to the full linear
   `PD.70z` budget, now localized to the stronger quadratic calibration
   `(CN.13j)`, the support-smallness route `(CN.13q)`, or the two-sided
   weight-control route `(CN.13ab)`-`(CN.13ad)`; moreover the support-smallness
   branch itself is now reduced to shadow-window support localization plus a
   quantitative pair- or active-graph occupancy estimate by
   `(CN.13t0)`-`(CN.13t7)`, with the occupancy budget produced by the exact
   shadow-time ledger `(ST.12c)`.

So the current stack no longer fails at the choice of `\Xi_J`; it fails at the
observability theorem from `W_J` to a concrete directional ledger.

This failure is not just a missing proof attempt. The selector bridge note now
records a formal theorem-schema no-go proposition:

```text
signless pair-defect control alone cannot determine the one-sided directional
deficit, even on the cycle-exact branch.
```

The point is that exactness removes the loop ambiguity, but not the expanding
direction ambiguity. So the remaining datum is genuinely new: a polarity or
alignment theorem.

## Honest theorem boundary

The cycle-exact branch is therefore honest in the following form:

```text
closed:
- spectral-floor and bundle-angle losses are peeled off;
- loop/circulation loss vanishes on the exact-potential branch;
- `SG.4B` extraction from a selector-defect budget is formal.

still open:
- the directional observability theorem `PD.70z`;
- equivalently, selector-adapted observability for one of the concrete ledgers
  `\Xi_J^{ang}` or `\Xi_J^{\perp}`, and on the normal-covector subroute the
  exact localized observability input has now been narrowed to the stripwise
  pair-defect initial/source ledger `(CN.13h15)`, equivalently `(PD.51b)`
  feeding `(PD.51c)`, once the transported weighted-overlap packet
  `(CN.13h8)`-`(CN.13h14)` is installed, while the final remaining upgrade is
  from the square-root estimate `(CN.13n)` to the full quadratic `PD.70z`
  ledger `\mathcal E_J^{dir,\perp}` with linear dependence on
  `\mathcal E_J^{obs}`, via `(CN.13j)`, `(CN.13q)`, or `(CN.13ab)`-`(CN.13ad)`;
  on the support-smallness branch this is now reduced further to
  shadow-window support localization and a quantitative occupancy bound by
  `(CN.13t0)`-`(CN.13t7)` with exact occupancy ledger `(ST.12c)`.

conditional and formal:
- once a measurable polarity map / expanding-direction readout is supplied, the
  downstream discharge to `PD.70`, `PD.70aa`, and `SG.4B` is already bookkeeping.
```

This is the exact reason the archived theorem chain aligns with the sharper
lane notes but does not itself count as closure.

## Surviving direct route

The surviving direct splice is still

```text
pair-defect PDE
-> selector-adapted directional observable
-> one-sided defect budget
-> SG.4B.
```

What remains open on the cycle-exact branch is only the first arrow in that
chain, but that arrow is still real mathematics, not bookkeeping.

The cleanest cocycle-side continuation of that first arrow is now isolated in
[pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md):
the scalar exact potential is treated as sufficient to kill the loop term, and
the measurable normal covector is discharged by the rank-two
bundle. So the remaining cocycle burden is reduced further to:

1. selector-normal calibration;
2. pair-averaged parabolic domination of the corresponding normal moment
   observable;
3. one explicit self-improvement slot upgrading the resulting weighted `L^4`
   normal-defect closure to the quadratic `PD.70z` ledger, that is, an
   `L^4\to L^2` upgrade, for example through the strengthened quadratic
   calibration `(CN.13j)`, the support-smallness criterion `(CN.13q)`, or the
   two-sided weight-control criterion `(CN.13ab)`-`(CN.13ad)`, including the
   time-support specialization `(CN.13x)` under finite pair mass. The weighted
   `L^4` closure alone does not imply those support bounds; the normal-covector
   note now records this explicitly, isolates the exact support-smallness splice
   through shadow occupancy in `(CN.13t0)`-`(CN.13t7)`, and also gives the
   correct aggregated-time-profile version `(CN.13zaa)`-`(CN.13zad)`.
