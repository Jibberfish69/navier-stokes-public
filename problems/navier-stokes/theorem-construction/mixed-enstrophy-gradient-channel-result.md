# Mixed Enstrophy-Gradient Channel Result

## Target

The target was

```math
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2dt<\infty.
```

## Direct sufficient condition

Cauchy-Schwarz gives

```math
\int_0^T\|\omega\|_2\|\nabla\omega\|_2dt
\le
\left(\int_0^T\|\omega\|_2^2dt\right)^{1/2}
\left(\int_0^T\|\nabla\omega\|_2^2dt\right)^{1/2}.
```

Thus the channel closes if

```math
\omega\in L^2_tL^2_x,
\qquad
\nabla\omega\in L^2_tL^2_x.
```

The first is supplied by the baseline energy layer. The second is the enstrophy dissipation layer and is equivalent to a higher regularity continuation input.

A stronger standard route is

```math
\sup_{t<T}\|\omega(t)\|_2<\infty,
\qquad
\int_0^T\|\nabla\omega(t)\|_2^2dt<\infty.
```

This is the classical enstrophy barrier.

## Scalar obstruction

Set

```math
y(t)=\|\omega(t)\|_2^2,
\qquad
z(t)=\|\nabla\omega(t)\|_2^2.
```

The enstrophy-scale inequality is

```math
y'(t)+\nu z(t)\le C y(t)^3.
```

The profile

```math
y(t)=(T-t)^{-1/2},
\qquad
z(t)=(T-t)^{-3/2}
```

has finite `\int y`, satisfies the exact scalar identity
`y'(t)=\frac12 y(t)^3`, and gives

```math
\int_0^T\sqrt{y(t)z(t)}dt=\infty.
```

The scalar enstrophy inequality and baseline energy layer do not close MEG.

## Level-set obstruction

From `y\in L^1_t` alone,

```math
|\{t:y(t)>\lambda\}|\le \lambda^{-1}\int_0^T y(t)dt.
```

This weak distribution bound cannot control either `\int y^2` or `\int\sqrt{yz}`. The same borderline profile realizes the failure.

## Result

The mixed enstrophy-gradient channel is equivalent, for this route, to an enstrophy barrier or another critical continuation estimate. It does not follow from the baseline energy layer.
