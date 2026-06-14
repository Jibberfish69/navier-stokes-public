# Parabolic-Order Recursion Note

## Purpose

This note records the sharper structural reading of the derivative tower:

```math
\boxed{
\text{the Navier--Stokes regularity problem is not a same-order estimate problem;}
}
```

```math
\boxed{
\text{it is an infinite cross-order recursion problem.}
}
```

The live point is:

- the `(n+1)` time level is balanced against the viscous image of the `n`
  level,
- the nonlinear term couples many lower and mixed levels,
- so the real question is whether the whole ordered tower closes under an
  infinite recursive inequality.

## Why the naive time-only order is misleading

The time-differentiated hierarchy has the form

```math
\partial_t^{\,n+1}u
+
\sum_{k=0}^{n}\binom{n}{k}
\big((\partial_t^k u)\cdot\nabla\big)\partial_t^{\,n-k}u
+
\nabla \partial_t^n p
=
\nu\Delta(\partial_t^n u).
\tag{1}
```

This already shows the key feature:

- the left side contains the next time level `n+1`,
- the right side contains the viscous Laplacian of the previous time level
  `n`,
- the nonlinear term mixes all intermediate levels `0,\dots,n`.

So the equation is not closing level-by-level.
It is a cross-order staircase.

## The correct order bookkeeping

The natural order law for the classical equation is **parabolic order**:

```math
\operatorname{ord}(\partial_t)=2,
\qquad
\operatorname{ord}(\partial_{x_j})=1.
\tag{2}
```

This is forced by the equality

```math
\partial_t u = \nu\Delta u,
\tag{3}
```

because one time derivative matches two spatial derivatives.

So for a mixed derivative

```math
D^{m,\alpha}u:=\partial_t^m\partial_x^\alpha u,
\qquad
\alpha\in \mathbb N^3,
```

the relevant order is

```math
N:=2m+|\alpha|.
\tag{4}
```

This is the order that should index the infinite tower.

## Mixed differentiated equation at parabolic order N

Apply `D^{m,\alpha}` to NS.
Then

```math
\partial_t D^{m,\alpha}u
+
(u\cdot\nabla)D^{m,\alpha}u
+
\nabla D^{m,\alpha}p
-
\nu\Delta D^{m,\alpha}u
=
-\!\!\!\sum_{\substack{(m_1,\alpha_1)+(m_2,\alpha_2)=(m,\alpha)\\
(m_1,\alpha_1)\neq(0,0)}}
c_{m,\alpha}^{m_1,\alpha_1}
\big(D^{m_1,\alpha_1}u\cdot\nabla\big)D^{m_2,\alpha_2}u.
\tag{5}
```

The right-hand side is the exact Leibniz expansion of the differentiated
transport term.

Now every nonlinear summand has total parabolic order

```math
\big(2m_1+|\alpha_1|\big)
+
\big(2m_2+|\alpha_2|+1\big)
=
N+1.
\tag{6}
```

So each differentiated equation says:

```math
\boxed{
\text{parabolic order }N+2
\text{ is driven by quadratic splits of total order }N+1.
}
```

That is the exact cross-order structure.

## Pressure at the matched parabolic order law

Pressure is not independent.
It satisfies

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{7}
```

Applying `D^{m,\alpha}` gives

```math
-\Delta D^{m,\alpha}p
=
\partial_i\partial_j
\sum_{(m_1,\alpha_1)+(m_2,\alpha_2)=(m,\alpha)}
c_{m,\alpha}^{m_1,\alpha_1}
\big(D^{m_1,\alpha_1}u_i\big)\big(D^{m_2,\alpha_2}u_j\big).
\tag{8}
```

Again the total parabolic order on the right is exactly `N+2`, matching the
left.

So the pressure constraint preserves the matched parabolic-order bookkeeping.

## Infinite ordered energy tower

Define the parabolic-order energy level

```math
\mathcal E_N(t)
:=
\sum_{2m+|\alpha|=N}
\|D^{m,\alpha}u(t)\|_{L_x^2}^2.
\tag{9}
```

Define the corresponding dissipative level

```math
\mathcal D_N(t)
:=
\sum_{2m+|\alpha|=N}
\|\nabla D^{m,\alpha}u(t)\|_{L_x^2}^2.
\tag{10}
```

Then the differentiated energy identity has the form

```math
\frac12\frac{d}{dt}\mathcal E_N
+
\nu\,\mathcal D_N
\le
\mathcal N_N
+
\mathcal P_N,
\tag{11}
```

where:

- `\mathcal N_N` is the quadratic nonlinear contribution from the transport
  splits in `(5)`,
- `\mathcal P_N` is the pressure contribution, which is of the same quadratic
  order after elliptic recovery.

The crucial fact is that `\mathcal N_N` is not same-order.
It is built from ordered products:

```math
\mathcal N_N
:=
\sum_{a+b=N+1}
\text{Bil}\big(\mathcal E_a,\mathcal E_b\big).
\tag{12}
```

So the regularity problem becomes:

```math
\boxed{
\text{does the infinite sequence }(\mathcal E_N)_{N\ge 0}
\text{ satisfy a closing recursive inequality?}
}
```

## What “closure” really means here

The naive finite-level dream would be:

```math
\mathcal E_N \text{ controls } \mathcal E_{N+1}.
```

That is not the actual structure.

The real structure is:

1. viscosity tries to push order `N` downward through dissipation at order
   `N+1` spatially,
2. transport couples order `N+1` to all lower splits summing to `N+1`,
3. pressure redistributes those same splits nonlocally,
4. so the tower only closes if there is a genuine cross-order cancellation or
   domination pattern across the whole infinite recursion.

That is why the argument requires the infinite pattern.

## The live mathematical question

The real question is not:

```math
\text{can one derivative level be bounded in isolation?}
```

It is:

```math
\boxed{
\text{is there a monotone / contractive / telescoping law on the full parabolic-order tower?}
}
```

Equivalently:

```math
\boxed{
\text{can the mixed derivative tower be organized so that the cross-order nonlinear feed is absorbed by the cross-order viscous smoothing?}
}
```

That is the correct brute-force reading of the classical NS smoothness burden.

The pure time-order version of this argument, including the exact `L^2`
cancellation of pressure and base transport and the resulting binomial
cross-order balance, is recorded in
[time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md).
