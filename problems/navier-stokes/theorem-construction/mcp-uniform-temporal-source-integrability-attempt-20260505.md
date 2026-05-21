# UniformTemporalSourceIntegrability.A attempt

## Status

Failed from current inputs. The target reduces to heat-scale square-source control or an equivalent higher-integrability source estimate.

## Target

Prove a uniform estimate

```math
\|F_n^{src,+}\|_{L_s^p((-1,0);\mathcal M_y)}\le C,
\qquad p>1.
```

This would imply temporal non-atomicity of the source-residue limit.

## Attempt

The available compactness gives finite source mass on compact backward cylinders. This is an `L^1_s`-level statement. The desired estimate requires higher temporal integrability.

A direct route is the square-source estimate

```math
\int_{-1}^{0}\left(\int F_n^{src,+}(y,s)dy\right)^2ds\le C.
```

That gives the target with `p=2`.

The boot-square multiplier route gives the same conclusion under compatible higher integrability of the boot multiplier and residual source factor. The current source surfaces record this as conditional: the multiplier and residual factors need an `L^p`, `p>2`, or Holder-compatible pair of bounds. Those inputs remain open on selected terminal packets.

The heat-scale square-source surface gives the sharp obstruction. Active-shell source normalization would imply square-source control, which would imply this target. The source-normalization theorem remains the active source wall.

## Result

`UniformTemporalSourceIntegrability.A` remains open. The next exact target is

```math
HeatScaleSquareSource.A
```

or the equivalent local positive source Carleson estimate.