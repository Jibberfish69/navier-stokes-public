# Repeated-core nonreuse storage direct test

Status: repeated-core branch reduced to root positive-variation bound; unconditional proof still open.

## 1. Branch tested

Assume a terminal high-ratio affine/material-time burst family reuses one material ancestry core. Thus the retained bursts do not escape into disjoint shrinking cores; they repeatedly load the same transported material history.

The target is a same-material storage whose drop pays each retained unit of selected pressure-Hodge / critical-strain action.

## 2. Candidate storage

Along a material line with deformation gradient `F=D_aX`, a transported direction `q`, and spatial direction

```math
e={Fq\over |Fq|},
```

one has the exact logarithmic identity

```math
{d\over dt}\log |Fq|=e\cdot S e+\operatorname{Err}_{frame}.
```

The complete-frame pressure-Hodge conversion turns a positive affine burst into compression or frame/collar motion in one of the paying directions. Therefore a repeated-core burst can only recur by spending positive variation of one of

```math
\log \sigma_i(D_aX),
\qquad
\text{pressure-Hodge projective frame},
\qquad
\text{collar-normal / annular turnstile record}.
```

This yields the conditional estimate

```math
\sum_{Q_k\subset \mathcal A(a)} A(Q_k)
\le
C\,\mathcal V_{core}(a)+R_{legal}(a),
```

where `V_core` is the positive Cauchy-Green / frame / collar-turnstile variation on the reused material core.

## 3. Why this does not close the branch

The same calculation gives a correct nonreuse currency, but the root bound is not installed:

```math
\int \mathcal V_{core}(a)\,da\le C(u_0)+R_{legal}
```

is exactly a selected material-time positive-variation theorem. Raw energy, enstrophy, fixed-annulus service, and fixed-collar service do not control it. The critical half-tail has finite raw mass while the first-ratio action diverges, so no raw ledger can be substituted for `V_core`.

Thus the repeated-core branch is reduced to a precise missing theorem:

```math
\boxed{\text{RepeatedCorePositiveVariationRootBound.A}}
```

Statement:

For one original smooth Navier-Stokes material history, the total positive Cauchy-Green / pressure-Hodge-frame / collar-turnstile variation on reused high-ratio ancestry cores is bounded by original data and legal ledgers.

## 4. Result

The repeated-core branch has a valid conditional storage but no noncircular root bound from installed estimates. The remaining no-Zeno proof must either prove `RepeatedCorePositiveVariationRootBound.A` or close the shrinking-core escape branch by a capacity/packing lower bound.