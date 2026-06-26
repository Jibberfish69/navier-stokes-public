# GlobalSameMaterialTerminalTailStorageEquivalence.A

Status: failed as an independent proof input.  Global same-material terminal-tail storage is equivalent to the finite-total service-coordinate theorem unless an external finite terminal reserve is supplied.

## 0. Target

A global terminal-tail storage would prove the full material clock if it satisfied

```math
d\mathfrak L_N+c\Theta_N(t)dt\le dR_N(t),
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty.
```

Then integrating would give

```math
\int_0^{T^*}\Theta_N(t)dt<\infty.
```

## 1. Exact terminal-tail primitive

The only canonical global same-material tail primitive for the service coordinate is

```math
\mathfrak L_N^{tail}(t):=\int_t^{T^*}\Theta_N(s)ds.
```

It satisfies exactly

```math
d\mathfrak L_N^{tail}+\Theta_N(t)dt=0,
```

and it is bounded below by zero.

## 2. Circularity

The entrance value is

```math
\mathfrak L_N^{tail}(0)=\int_0^{T^*}\Theta_N(s)ds.
```

Thus the storage is finite at entrance if and only if the theorem to be proved is already true:

```math
\mathfrak L_N^{tail}(0)<\infty
\Longleftrightarrow
\int_0^{T^*}\Theta_N(s)ds<\infty.
```

A terminal-tail primitive therefore does not produce the finite-total estimate.  It repackages it.

## 3. Other possible global storages

Any other signed global storage that pays \(\Theta_Ndt\) must differ from the canonical tail by a finite-variation correction:

```math
\mathfrak L_N(t)=\int_t^{T^*}\Theta_N(s)ds+K_N(t),
```

with

```math
dK_N\le dR_N.
```

If \(K_N\) and \(R_N\) are finite, then finiteness of \(\mathfrak L_N(0)\) still implies and is implied by finiteness of the tail integral up to finite corrections.  Therefore the proof burden has not moved; it is still a finite total action theorem for \(\Theta_N\).

## 4. Consequence

A global terminal-tail storage is useful only if there is an external terminal reserve or compactness theorem that proves \(\mathfrak L_N(0)<\infty\) without assuming \(\Theta_N\in L^1\).  No such reserve is currently installed.

## Verdict

`GlobalSameMaterialTerminalTailStorage.A` is not an independent discharge of the Gold clock.  It is equivalent to

```math
\boxed{\text{FiniteTotalThetaNServiceCoordinate.A}.}
```

The next and final live theorem is therefore exactly the finite-total estimate

```math
\int_0^{T^*}\Theta_N(t)dt<\infty.
```