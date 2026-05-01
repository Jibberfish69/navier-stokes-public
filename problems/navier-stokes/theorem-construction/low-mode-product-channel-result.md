# Low-Mode Product Channel Result

## Target

The target was

```math
\int_0^T\Lambda_N(t)E_N(t)dt<\infty,
```

where

```math
\Lambda_N(t)=\|\nabla S_{N-4}u(t)\|_{L^\infty},
```

and

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_ju(t)\|_2^2.
```

## Low-mode time estimate

By Bernstein on the fixed low-frequency block,

```math
\Lambda_N(t)
\le C_N\|\nabla u(t)\|_2.
```

Therefore the energy inequality gives

```math
\int_0^T\Lambda_N(t)^2dt
\le C_N^2\int_0^T\|\nabla u(t)\|_2^2dt<\infty.
```

Thus

```math
\Lambda_N\in L^2_t
```

for each fixed threshold `N`.

## Product obstruction

The tail energy satisfies only

```math
E_N\in L^1_t
```

from the same energy layer. The product of an `L^2_t` function and an `L^1_t` function need not be integrable.

A scalar model shows this sharply. Let

```math
a(t)=(T-t)^{-1/3},
\qquad
b(t)=(T-t)^{-2/3}.
```

Then

```math
a\in L^2(0,T),
\qquad
b\in L^1(0,T),
```

while

```math
ab=(T-t)^{-1}\notin L^1(0,T).
```

So the available time estimate for `\Lambda_N` does not close the product channel.

## Sufficient conditions

The product closes if one proves any of:

```math
\Lambda_N\in L^\infty_t,
```

```math
E_N\in L^2_t,
```

or the pointwise viscous-scale coefficient bound

```math
\Lambda_N\le c\nu2^{2N}.
```

The last condition is exactly the low-mode strain suppression theorem already isolated.

## Result

Product channel A does not close from the fixed low-mode coefficient time estimate plus baseline energy. It reduces to `E_N^2` integrability, `\Lambda_N` endpoint boundedness, or low-mode strain suppression.