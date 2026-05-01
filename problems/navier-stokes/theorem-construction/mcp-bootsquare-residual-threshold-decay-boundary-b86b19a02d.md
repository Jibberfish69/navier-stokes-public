# BootSquare Residual Threshold Decay Boundary

## Status

Failed as an unconditional source proof.

Let the BootSquare bad set be

```math
B_J=\{z_J>a_J\},
```

where `z_J` is the actual BootSquare residual threshold variable and `a_J>0` is the selected threshold.

The source theorem needed for unweighted bad-set collapse is

```math
\mu_J(B_J)=\mu_J(\{z_J>a_J\})\to0.
```

Equivalently, one needs

```math
z_J/a_J\to0
```

in `mu_J`-measure.

## Sufficient analytic estimates

For any `q>0`, if

```math
\|z_J\|_{L^q(d\mu_J)}^q=o(a_J^q),
```

then Markov gives

```math
\mu_J(B_J)
\le a_J^{-q}\int z_J^q d\mu_J\to0.
```

A stronger pointwise route is:

```math
z_J\le c_J,
\qquad c_J/a_J\to0,
```

which makes `B_J` empty for large `J`.

## Source boundary

The actual analytic estimate still required is:

```text
prove Lq decay or pointwise decay of the BootSquare residual z_J
at the selected threshold scale a_J.
```