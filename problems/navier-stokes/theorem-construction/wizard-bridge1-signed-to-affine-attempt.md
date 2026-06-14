# WIZARD Bridge I: Signed-To-Affine Attempt

## Purpose

This note pushes the first bridge obligation as far as the current theorem stack
permits:

```math
\text{can the signed lifted-band route be reduced to the same affine quotient readout as the Volterra route?}
```

The outcome is mixed:

1. there is a real operator-level reduction from the gap-kernel route to a
   first-order resolvent in logarithmic scale;
2. that reduction explains exactly why the signed route is one scale derivative
   short of the affine quotient kill surface;
3. no theorem in the present stack upgrades that first-order resolvent to the
   second-order exactness the affine kernel requires.

So this note produces a stronger exact reduction, but also an exact terminal
obstruction.

## 1. Gap-kernel operator in logarithmic scale

The far-corona signed route and the far-gap middle-band route both carry the
continuous gap kernel

```math
\frac{\ell}{r},
\qquad r\ge e^L\ell.
```

Write

```math
s:=\log \ell,
\qquad
\rho:=\log r,
\qquad
J:=[s_0,s_1].
```

Then the far-gap kernel becomes

```math
\frac{\ell}{r}=e^{s-\rho},
\qquad
\rho\ge s+L.
```

Define the shifted Volterra-resolvent operator

```math
(\mathcal K_L f)(s)
:=
\int_{s+L}^{s_1} e^{s-\rho} f(\rho)\,d\rho.
\tag{1}
```

This is the exact one-sided operator naturally attached to the gap-kernel
family.

## 2. Exact first-order resolvent identity

Differentiate `(1)` in `s`:

```math
\partial_s(\mathcal K_L f)(s)
=
\int_{s+L}^{s_1} e^{s-\rho} f(\rho)\,d\rho
- e^{-L}f(s+L).
```

Hence

```math
(\partial_s-1)\mathcal K_L f
=
-e^{-L}f(\cdot+L).
\tag{2}
```

Equivalently,

```math
\boxed{
\mathcal K_L
=
-e^{-L}(\partial_s-1)^{-1}\circ \mathrm{Shift}_L.
}
\tag{3}
```

So the gap-kernel route is not arbitrary transport geometry. It is the
one-sided resolvent of a **first-order** scale operator.

This is the exact place where the signed route and the far-gap flux route meet:
both are naturally first-order in logarithmic scale.

## 3. First-order exactness does not kill affine quotients

The affine quotient route uses the coefficient functional

```math
\mathcal C_\theta[Y]
:=
\int_J \theta(\sigma)\,Y(\sigma)\,d\sigma,
\qquad
\theta''=0.
\tag{4}
```

Because `\theta` is affine, the affine functional annihilates exact **second**
derivatives, not merely first derivatives.

If the signed route provides only

```math
Y=\partial_s\Psi + S^{spill} + E,
\tag{5}
```

then one integration by parts gives

```math
\mathcal C_\theta[Y]
=
-\theta(s_0)\Psi(s_0)
\;+\;
\frac1{|J|}\int_J \Psi(\sigma)\,d\sigma
\;+\;
\mathcal C_\theta[S^{spill}]
\;+\;
\mathcal C_\theta[E].
\tag{6}
```

This is exactly the obstruction recorded in the signed affine audit, but `(2)`
and `(3)` sharpen its interpretation:

```math
\boxed{
\text{the signed/gap-kernel route is naturally first-order because its native operator obeys }(\partial_s-1)\mathcal K_L=I.
}
\tag{7}
```

The affine quotient route is naturally second-order because its readout kills
only exact second derivatives.

So the bridge failure is not just “one more trick missing.” It is an operator
order mismatch.

## 4. Conditional collapse theorem

The correct bridge theorem, if it exists, has to raise the signed route from
first-order to effective second-order exactness.

### Conditional theorem

Assume the signed source admits the refined representation

```math
Y
=
(\partial_s-1)\partial_s G
\;+\;
R,
\tag{8}
```

on the active one-sided scale interval, with boundary conditions strong enough
to kill the endpoint terms produced by integration by parts.

Then

```math
\mathcal C_\theta[Y]
=
\mathcal C_\theta[R].
\tag{9}
```

### Proof

Expand `(8)`:

```math
Y=\partial_s^2 G - \partial_s G + R.
```

Insert this into `(4)`:

```math
\mathcal C_\theta[Y]
=
\int_J \theta\,\partial_s^2 G
\;-\;
\int_J \theta\,\partial_s G
\;+\;
\mathcal C_\theta[R].
\tag{10}
```

Two integrations by parts on the first term and one on the second give only
boundary expressions plus

```math
\int_J \theta'' G.
```

Since `\theta''=0`, every interior contribution from `G` vanishes, and under
the stated boundary conditions only `\mathcal C_\theta[R]` survives.

This proves `(9)`.

## 5. Meaning of the conditional theorem

The conditional theorem says:

```math
\boxed{
\text{the exact bridge from the signed route to the affine quotient route is not first-order signed descent;}
}
```
```math
\boxed{
\text{it is first-order resolvent structure plus one additional scale derivative.}
}
```

That extra derivative may appear in either of two equivalent ways:

1. a genuine second-order exactness theorem as in `(8)`;
2. a potential-average kill theorem that directly kills the surviving average in
   `(6)`.

## 6. Terminal obstruction

No current note on the branch proves either:

- a second-order signed scale exactness theorem, or
- a potential-average kill theorem on the signed potential.

So the precise terminal statement is:

```math
\boxed{
\text{Bridge I reduces to an operator-order mismatch: }
\mathcal K_L \text{ is first-order, while the affine quotient kill is second-order.}
}
```

This is stronger than the earlier slogan “one derivative short,” because it
identifies the exact native operator on the signed/gap-kernel side.

## Current Conclusion

The bridge cannot be closed by first-order signed descent alone.

The sharp current theorem candidate is:

```math
\boxed{
Y=(\partial_s-1)\partial_s G + R
\Longrightarrow
\mathcal C_\theta[Y]=\mathcal C_\theta[R].
}
```

The sharp current terminal obstruction is:

```math
\boxed{
\text{no theorem in the installed stack produces the extra scale derivative or equivalent average-kill needed to realize that implication.}
}
```
