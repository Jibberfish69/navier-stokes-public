# Shell-Amplitude Gain Active-Interval Result

## Target

The proposed sufficient gain was

```math
E_j(t)\le C_A\nu^{1/2}2^{-j/2}
```

on active intervals, strong enough to control

```math
2^{-j}D_j(t)^2=2^{3j}E_j(t)^2.
```

## Fixed-shell obstruction

For any fixed shell `j`, choose smooth divergence-free initial data with a nonzero component in that shell and amplitude `A`. Then

```math
E_j(0)=A^2E_j(e)
```

for the normalized shell profile `e`. Choosing `A` large violates

```math
E_j(0)\le C_A\nu^{1/2}2^{-j/2}.
```

Thus the fixed-shell amplitude theorem cannot follow from smoothness, divergence-free structure, or shell localization alone.

## Damped scalar obstruction

The shell equation has the scalar form

```math
E_j'(t)+c\nu2^{2j}E_j(t)\le F_j(t).
```

If the source balances damping with

```math
F_j(t)=c\nu2^{2j}A,
```

then the steady state `E_j(t)=A` is compatible with the scalar inequality. Hence damping does not impose the desired amplitude bound without a source-amplitude theorem.

## Valid dynamic threshold

The energy bound gives

```math
E_j(t)=2^{2j}\|\Delta_j u(t)\|_2^2\le 2^{2j}\|u(t)\|_2^2\le C_E2^{2j}.
```

This is much weaker than the desired decay. A useful statement must therefore be a dynamic threshold theorem: shells above a data-dependent smoothness tail may have small `E_j`, while arbitrary fixed shells do not.

On a regular time `t_0<T`, smoothness gives

```math
E_j(t_0)\to0\qquad (j\to\infty).
```

Propagating that smallness to an active interval requires the active-square/source control already under discussion.

## Result

The shell-amplitude gain is not available from current inputs. It is equivalent to a new active-shell amplitude theorem or to the active-square Carleson theorem itself.

## Exact sufficient replacement

The route would close if one proved either

```math
E_j(t)\le C_A\nu^{1/2}2^{-j/2}
```

on active intervals from a noncircular source theorem, or directly

```math
\int_I2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```
