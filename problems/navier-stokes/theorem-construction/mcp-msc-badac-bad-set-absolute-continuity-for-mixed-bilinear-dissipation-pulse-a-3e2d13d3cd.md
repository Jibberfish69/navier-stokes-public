# MSC.BadAC bad-set absolute continuity for mixed bilinear dissipation

## Target

Prove

```math
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)+\eta\int_0^{T_*}\mathfrak B_N^\sigma(t)\,dt,
```

where

```math
Bad_N(\eta)=\{t:\sup_{j>N}\gamma_j(t)>\eta\},
\qquad
\gamma_j(t)=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
```

## Good coefficient part

On the complement of `Bad_N(eta)`,

```math
\sum_{N<j\le\ell}\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
\le
\eta\mathfrak B_N^\sigma(t),
```

so choosing `eta` below the absorption threshold handles the good set. Thus the route reduces exactly to the bad-set measure domination target.

## Energy scheduler attempt

The installed scheduler gives

```math
\int_0^{T_*}\sum_{j>N}\gamma_j(t)\,dt=o_N(1).
```

Chebyshev gives small Lebesgue measure for `Bad_N(eta)`. This does not control the target measure

```math
\mathfrak B_N^\sigma(t)dt.
```

The abstract heat-scale model in the energy-measure countermodel places `gamma_{N+1}=1` on an interval of length `delta_N -> 0` and places `mathfrak B_N^sigma=delta_N^{-1}` on that same interval. The scheduler integral tends to zero, while

```math
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)dt=1.
```

Hence the scheduler input alone cannot imply `MSC.BadAC`.

## Self-damping attempt

The mixed identity contains a growth coefficient of size

```math
\gamma_j(t)(2^{2\ell}+2^{2j})
```

on the mixed shell mass. The scheduler controls only `int gamma_j(t)dt`; it lacks the frequency-weighted control needed for Gronwall. This is the same obstruction as `MSC.BadAC` in another form.

## Result

The good-coefficient part is closed. The bad-set domination theorem remains open.

Any proof must add one of:

```math
\text{signed lifted commutator cancellation before absolute values},
```

```math
\text{pressure-strain / positive-source depletion on active windows},
```

```math
\text{ancient critical-pulse exclusion},
```

or

```math
\text{direct mixed-measure domination tying }\mathfrak B_N^\sigma dt\text{ to bad-set geometry.}
```

## Verdict

`MSC.BadAC` is not discharged by the current energy scheduler, bad-time cover, or finite-energy arguments. It returns to the same source-control primitive:

```math
OriginalSmoothData\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```