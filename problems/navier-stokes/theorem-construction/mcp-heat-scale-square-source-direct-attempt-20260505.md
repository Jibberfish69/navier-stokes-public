# HeatScaleSquareSource.A direct attempt

## Status

Failed from current inputs. The estimate is equivalent to active-shell source normalization on selected terminal windows.

## Target

For terminal active shell windows `I` at frequency `j`, prove a heat-scale square-source estimate of the form

```math
\int_I |F_j(t)|^2dt
\le c\varepsilon\nu^3 2^{3j}|I|+C\nu^2 2^j2^{-2\delta j}.
```

After parabolic normalization, this estimate gives `L_s^2` temporal source
control and therefore `UniformTemporalSourceIntegrability.A`.

## Direct route

If active-shell source normalization holds pointwise,

```math
|F_j(t)|^2
\le c\varepsilon\nu^3 2^{3j}+C\nu^2 2^j2^{-2\delta j}|I|^{-1},
```

then the target follows by integrating over `I`.

## Obstruction

The source `F_j` is trilinear in Littlewood-Paley pieces. For a fixed smooth
finite-mode shell test field `phi` with `F_j(phi) != 0`, the family `u_A=A phi`
gives

```math
F_j[u_A]=A^3F_j[\phi],
\qquad |F_j[u_A]|^2=A^6|F_j[\phi]|^2.
```

Original smooth data controls the solution through data-dependent energy and preterminal smoothness. The selected terminal active shells require a scale-normalized bound uniform along moving high-frequency windows. The current ledgers lack that normalization.

Cauchy/Young estimates bound the source by active-square envelopes. Those envelopes are exactly the quantities controlled by `ScaleCriticalTreeCarleson.A` / `LocalPositiveSourceCarleson.A`, the active source wall.

## Result

`HeatScaleSquareSource.A` remains open. The next exact target is

```math
ActiveShellSourceNormalize.A
```

or equivalently

```math
LocalPositiveSourceCarleson.A.
```
