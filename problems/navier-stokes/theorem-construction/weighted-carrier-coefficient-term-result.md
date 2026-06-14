# Weighted Carrier Coefficient Term Result

## Target

The target was either

```math
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt<\infty
```

or the pointwise absorbable form

```math
\widetilde\Lambda_N^\sharp(t)E_N(t)
\le \varepsilon\nu D_N(t)+C_\varepsilon R_N(t).
```

Here

```math
\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp,
```

with

```math
\Lambda_N(t)=\|\nabla S_{N-4}u(t)\|_\infty
```

and

```math
\Theta_N^\sharp(t)=2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_2^2.
```

## Split

The weighted carrier term is

```math
\widetilde\Lambda_N^\sharp E_N
=\Lambda_NE_N+\Theta_N^\sharp E_N.
```

The existing weighted-carrier surface legitimately keeps this coefficient-bearing object in the gradient leakage inequality. This by itself supplies a carrier surface, rather than an integral estimate for the carrier term.

## Absorption requirements

Since

```math
E_N(t)\le 2^{-2N}D_N(t),
```

one has

```math
\Lambda_NE_N\le 2^{-2N}\Lambda_ND_N.
```

Thus this term is absorbed by `\varepsilon\nu D_N` only if

```math
\Lambda_N\le \varepsilon\nu2^{2N}.
```

This is exactly the low-mode strain suppression theorem already isolated.

Similarly,

```math
\Theta_N^\sharp E_N\le 2^{-2N}\Theta_N^\sharp D_N,
```

so this term is absorbed only if

```math
\Theta_N^\sharp\le \varepsilon\nu2^{2N}.
```

This is a threshold-collar amplitude theorem. It is the collar analogue of low-mode strain suppression.

## Integral obstruction

The baseline energy layer gives

```math
\int_0^T E_N(t)dt<\infty
```

and finite `L^1_t` control of the collar components at fixed threshold. Product control does not follow from those facts.

For the low-mode piece, a scalar model with

```math
y(t)=(T-t)^{-2/3}
```

has

```math
\int_0^T y(t)dt<\infty
```

while

```math
\int_0^T y(t)^{3/2}dt=\infty.
```

This realizes the low-mode product size in the model
`\Lambda_N(t):=y(t)^{1/2}` and `E_N(t):=y(t)`:

```math
\Lambda_N(t)E_N(t)=y(t)^{1/2}y(t)=y(t)^{3/2}.
```

For the collar piece, two nonnegative functions can each lie in `L^1_t` while their product fails to lie in `L^1_t`; for example

```math
a(t)=b(t)=(T-t)^{-1/2}.
```

Then `a,b in L^1_t`, while `ab=(T-t)^{-1}` is not integrable.

Therefore the weighted carrier integral is not supplied by the energy layer alone.

## Result

The weighted carrier theorem reduces to two amplitude/coefficient estimates:

```math
\Lambda_N\le c\nu2^{2N}
```

and

```math
\Theta_N^\sharp\le c\nu2^{2N},
```

or to a new weighted-product theorem giving direct time-integrability of

```math
\Lambda_NE_N+\Theta_N^\sharp E_N.
```

The current weighted carrier surface is a correct coefficient interface, but it is not a closed weighted theorem.

## Next obstruction

The exact next weighted-shell obstruction is the product control

```math
\int_0^T\Lambda_N(t)E_N(t)dt
\quad\text{and}\quad
\int_0^T\Theta_N^\sharp(t)E_N(t)dt.
```

A successful route must prove one of those products directly, or prove the two viscous-scale coefficient bounds above.
