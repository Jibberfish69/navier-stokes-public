# Aligned Off-Axis Forcing Rate Reduction

## Status

Conditional source reduction.

The aligned residual is

```math
m_{al}(t)=Q_{al}(t)C_{al}(t)n_{top}(t).
```

The off-axis forcing component is the part of the strip integral for

```math
\partial_t(Q_{al}C_{al}n_{top})
```

that is transverse to the aligned top eigenspace after separating entrance and projector-variation / gap terms. Denote its pointwise source density by `F_al^off`, and set

```math
\eta_{al}^{off}:=\int_I F_{al}^{off}(t)dt.
```

Then the desired aligned off-axis rate

```math
\eta_{al}^{off}=o(\theta_J g_{al})
```

in weighted `L^q` follows from

```math
\left\|
\frac{\int_I F_{al}^{off}(t)dt}{\theta_J g_{al}}
\right\|_{L^q(d\nu_J)}\to0.
```

This is the exact source estimate needed for the aligned residual packet.

## Boundary

The installed current-CG residual packet controls the current-CG off-axis source. It does not automatically control the aligned off-axis source unless a comparison theorem links the aligned and current-CG residual dynamics.

## Next frontier

```text
prove aligned variation / gap rate
```