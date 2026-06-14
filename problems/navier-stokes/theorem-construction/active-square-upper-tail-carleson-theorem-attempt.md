# Active-Square Upper-Tail Carleson Theorem Attempt

## Target

Dualizing the lower prefix in `LPAS_N` gives

```math
LPAS_N
=
\sum_k\int_0^T E_k(t)
\left(\sum_{j\ge \max(N,k+C_1)}2^{-j}D_j(t)^2\right)dt.
```

Define

```math
dM_k(t):=\left(\sum_{j\ge \max(N,k+C_1)}2^{-j}D_j(t)^2\right)dt.
```

The proposed Carleson estimate is

```math
\int_I dM_k(t)
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

## Fixed-collar split

Split the sum into

```math
|j-k|\le C_{\mathrm{collar}}
```

and

```math
j\gg k.
```

On the fixed collar, the estimate requires control of terms of the form

```math
\int_I 2^{-j}D_j(t)^2dt
\le C_{\mathrm{collar}}
\varepsilon\nu2^{2k}|I|+C2^{-2\delta k}.
```

On this fixed collar, this is exactly the same active time-integrability
burden as Carleson control for `D_j^2`, up to the displayed collar constant.

The shell energy inequality supplies an `L^1_t` dissipation control for `D_j`, not an `L^2_t` or Carleson control for `D_j^2`. The near-diagonal absorption already proved controls spatial shell products by the global energy amplitude, but it does not upgrade time integrability from `D_j` to `D_j^2`.

## Scalar pulse obstruction

Let a nonnegative scalar shell dissipation model satisfy

```math
\int_0^T D_j(t)dt\le M.
```

For an interval `I` of length `h`, set

```math
D_j(t)=A\mathbf 1_I(t),
\qquad
Ah=M.
```

Then

```math
\int_I D_j(t)^2dt=A^2h={M^2\over h},
```

which can be arbitrarily large as `h\downarrow0`. Thus `L^1_t` dissipation control cannot imply the desired Carleson bound for `2^{-j}D_j^2`.

This scalar obstruction is compatible with the information used in the shell energy inequality unless one adds a time-square, monotonicity, or flux-regularity theorem.

## True far-tail split

For `j\gg k`, the parabolic gap `2^{2j}-2^{2k}` is real and useful only after the active shell is already controlled by a square-time estimate or a far-corona active-square theorem. The gap gives scale separation, but it does not by itself replace the missing bound

```math
\int_I2^{-j}D_j(t)^2dt<\infty
```

with the required Carleson rate.

Equivalently, the far-corona geometry controls an active-square density once that density is available. It does not derive active-square time control from the linear shell energy inequality alone.

## Result

The active-square upper-tail Carleson theorem is not proved from the current inputs. It is exactly a new theorem requirement:

```math
\int_I
\sum_{j\ge \max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

The failure is not the lower-prefix dualization, which is correct. The failure is the active-square measure estimate for `dM_k`.

## Required next input

One must prove one of:

```math
\text{active-square Carleson control for } dM_k,
```

```math
\text{a time-square dissipation theorem for } 2^{-j}D_j^2,
```

or

```math
\text{a monotone/flux law that forbids short-time active-shell pulses.}
```

Until one is installed, `LPAS` remains open.
