# MPP Heat-Scale Square-Source Terminal Attempt Note

## Status

Theorem-facing supplier attempt for `AWG.A`.

This note attacks the heat-scale square-source form of the active-window source
normalization theorem:

```math
OriginalSmoothData
\Longrightarrow
\int_I |F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}
```

on terminal active shells. The theorem is not discharged.

## Conditional Part That Works

If active-shell source normalization is assumed pointwise on a heat-scale
interval,

```math
|F_j(t)|^2
\le
c\varepsilon\nu^3 2^{3j}
+C\nu^2 2^j2^{-2\delta j}|I|^{-1},
```

then integration gives the heat-scale square-source estimate immediately. The
scalar response lemma then yields the single-shell active-square estimate:

```math
\int_I2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2j}|I|
+C2^{-2\delta j}.
```

Thus

```math
\text{source normalization}
\Longrightarrow
\text{heat-scale square-source}
\Longrightarrow
AWG.A.
```

## Unconditional Attempt

The nonlinear shell flux `F_j` is trilinear in the Littlewood-Paley components
of `u`. A universal estimate from `OriginalSmoothData` alone would have to rule
out source-balanced active pulses at terminal active shells.

The fixed-shell amplitude test blocks this. Scaling a smooth finite-mode
divergence-free profile by amplitude `A` makes `F_j` scale cubically and
`|F_j|^2` scale like `A^6`. Smoothness and finite energy give data-dependent
raw bounds, not the active heat-scale normalization needed on moving terminal
shells.

## Verdict

The heat-scale square-source estimate is closed only conditionally:

```math
\boxed{
\text{active-shell source normalization}
\Longrightarrow
\text{heat-scale square-source}
\Longrightarrow
AWG.A.
}
```

The unconditional source-normalization theorem remains the live atom.
