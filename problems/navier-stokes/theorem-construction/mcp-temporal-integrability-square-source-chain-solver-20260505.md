# Temporal integrability / square-source chain solver `TIS.A`

## Target list

1. `UniformTemporalSourceIntegrability.A`.
2. `HeatScaleSquareSource.A`.
3. `ActiveShellSourceNormalize.A`.
4. `LocalPositiveSourceCarleson.A`.
5. `BackwardSourceLowerDensity.A`.
6. `TemporalNonAtomicSource.A` assembly.
7. no-inflow Zeno assembly.

## Solved implication chain

The following implication chain is proved by the square-source, Holder, and
weak-limit argument below:

```math
HeatScaleSquareSource.A
\Longrightarrow
UniformTemporalSourceIntegrability.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
TerminalSourceBackwardPropagation.A.
```

Indeed, a square-source estimate gives

```math
\int_{-1}^{0}\left(\int F_n^{src,+}(y,s)dy\right)^2ds\le C,
```

hence `L_s^2(\mathcal M_y)` control. Holder gives, for each time interval `I`,

```math
\mu_n^{src}(\mathbb R^3\times I)\le C|I|^{1/2}.
```

Passing to weak limits gives the same bound for `\mu_*^{src}`, so the limiting source measure has no time atoms. Positive terminal-cylinder mass must then occur in `s<0`; inner regularity gives a fixed earlier slab with positive mass. This is `TerminalSourceBackwardPropagation.A`.

Combining with first-pulse no-incoming support gives the no-inflow Zeno contradiction.

## Direct target tests

### `UniformTemporalSourceIntegrability.A`

Current compactness gives finite source mass, an `L^1_s` level estimate. Finite mass allows terminal time concentration. Therefore temporal integrability with `p>1` does not follow directly.

### `HeatScaleSquareSource.A`

This target supplies the missing `p=2` temporal control once proved. The direct
route needs active-shell source normalization on selected terminal windows.

### `ActiveShellSourceNormalize.A`

The shell flux is trilinear. A fixed-shell amplitude scaling test has

```math
F_j=A^3F_j^{(1)},
\qquad |F_j|^2=A^6|F_j^{(1)}|^2.
```

Original smooth data and preterminal smoothness give data-dependent bounds, while the active terminal estimate needs a scale-normalized bound along moving high-frequency windows. Current ledgers do not supply that normalization.

### `LocalPositiveSourceCarleson.A`

Cauchy/Young estimates give active-square envelopes. These are exactly the quantities controlled by `ScaleCriticalTreeCarleson.A`. Global signed cancellations occur before localization, weights, terminal selection, and positive-part extraction. Pressure/cutoff estimates route legal losses and leave legal interior positive source production.

## Result

The implication route is clear, but its first unproved analytic input is still the same primitive source-control theorem:

```math
ActiveShellSourceNormalize.A
```

or equivalently

```math
HeatScaleSquareSource.A
```

or

```math
LocalPositiveSourceCarleson.A.
```

Without one of these, `UniformTemporalSourceIntegrability.A`, `TemporalNonAtomicSource.A`, `TerminalSourceBackwardPropagation.A`, and the no-inflow Zeno assembly remain blocked.

## Next primitive target

A successful next step must prove a genuinely new nonlinear source-control mechanism on selected terminal active windows, such as signed weighted lifted-remainder cancellation before positive-part extraction, monotone shell-flux dominance, or direct active-square Carleson control.
