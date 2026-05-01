# BootSquare Unweighted Bad-Set Collapse Criterion

## Status

Conditional theorem.

Let the BootSquare bad set be thresholded as

```math
B_J:=\{z_J>a_J\},
```

where `z_J>=0` is the BootSquare residual threshold variable and `a_J>0` is the selected threshold.

For any `q>0`, Markov's inequality gives

```math
\mu_J(B_J)
=
\mu_J(\{z_J>a_J\})
\le
 a_J^{-q}\int z_J^q d\mu_J.
```

Therefore, if

```math
\|z_J\|_{L^q(d\mu_J)}^q=o(a_J^q),
```

then

```math
\mu_J(B_J)\to0.
```

Equivalently, it is enough to prove

```math
z_J/a_J\to0
```

in `mu_J`-measure.

## Source estimate retained

```text
BootSquare residual decay at the selected threshold scale:
||z_J||_Lq(mu_J)^q = o(a_J^q),
or z_J/a_J -> 0 in mu_J-measure.
```