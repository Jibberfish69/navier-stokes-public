# Five-Family Binomial Pipeline Note

## Purpose

This note reruns the Navier--Stokes energy calculation through the displayed
mixed-jet identities below, this time on the full derivative-family system
instead of on the base equation alone.

The point is:

```math
\boxed{
\text{once the five derivative families are written in one mixed-jet language,}
}
```

```math
\boxed{
\text{the whole pipeline produces one exact binomial recursion and one exact energy identity.}
}
```

So the outcome is not a new kind of obstruction. It is a sharper statement of
the old one:

```math
\boxed{
\text{the only live forcing after cancellation is the off-diagonal Leibniz spread over derivative splits.}
}
```

## Start from classical incompressible NS

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu \Delta u,
\qquad
\nabla\cdot u = 0.
\tag{1}
```

Pressure satisfies the Poisson constraint

```math
-\Delta p = \partial_i\partial_j(u_i u_j).
\tag{2}
```

## The five derivative families

To match the lane's earlier split, read the differentiated system through these
five families:

1. pure-time velocity family;
2. pure-space velocity family;
3. mixed time-space velocity family;
4. pure-time pressure family;
5. mixed time-space pressure family.

The clean way to hold all five at once is to define the mixed jets

```math
J_{m,\alpha} := \partial_t^m \partial_x^\alpha u,
\qquad
\Pi_{m,\alpha} := \partial_t^m \partial_x^\alpha p,
\tag{3}
```

where `m\ge 0` and `\alpha\in\mathbb N^3`.

Then the earlier separate families are just slices:

```math
V_n = J_{n,0},
\qquad
U_\alpha = J_{0,\alpha},
\qquad
P_n = \Pi_{n,0},
\qquad
Q_\alpha = \Pi_{0,\alpha}.
\tag{4}
```

So the five-family system is really one coupled mixed-jet system with special
cases.

## Master differentiated velocity equation

Apply `\partial_t^m\partial_x^\alpha` to `(1)`. The exact Leibniz expansion is

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\ \sum_{\beta\le \alpha}
\binom{m}{a}\binom{\alpha}{\beta}\,
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha}.
\tag{5}
```

This is the single equation that contains the time, space, and mixed velocity
families.

### Pure-time slice

If `\alpha=0`, `(5)` becomes

```math
V_{m+1}
+
\sum_{a=0}^{m}\binom{m}{a}\,(V_a\cdot\nabla)V_{m-a}
+
\nabla P_m
=
\nu\Delta V_m.
\tag{6}
```

This is the time-tower binomial law already recorded in
[time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md).

### Pure-space slice

If `m=0`, `(5)` becomes

```math
\partial_t U_\alpha
+
\sum_{\beta\le \alpha}
\binom{\alpha}{\beta}\,
\big(U_\beta\cdot\nabla\big)U_{\alpha-\beta}
+
\nabla Q_\alpha
=
\nu\Delta U_\alpha.
\tag{7}
```

So the pure-space family obeys the same exact binomial spread, now over spatial
Leibniz splits.

## Master differentiated pressure equation

Apply `\partial_t^m\partial_x^\alpha` to `(2)`:

```math
-\Delta \Pi_{m,\alpha}
=
\partial_i\partial_j
\sum_{a=0}^{m}\ \sum_{\beta\le \alpha}
\binom{m}{a}\binom{\alpha}{\beta}\,
\big(J_{a,\beta}\big)_i
\big(J_{m-a,\alpha-\beta}\big)_j.
\tag{8}
```

This contains both the pure-time pressure family and the mixed time-space
pressure family.

### Pure-time pressure slice

If `\alpha=0`,

```math
-\Delta P_m
=
\partial_i\partial_j
\sum_{a=0}^{m}\binom{m}{a}\,(V_a)_i(V_{m-a})_j.
\tag{9}
```

### Pure-space pressure slice

If `m=0`,

```math
-\Delta Q_\alpha
=
\partial_i\partial_j
\sum_{\beta\le \alpha}
\binom{\alpha}{\beta}\,(U_\beta)_i(U_{\alpha-\beta})_j.
\tag{10}
```

## Incompressibility family

Differentiating `\nabla\cdot u=0` gives

```math
\nabla\cdot J_{m,\alpha}=0
\qquad
\text{for all }(m,\alpha).
\tag{11}
```

This is the family-wide cancellation carrier.

## Run the same energy pipeline on the full system

Take the `L_x^2` inner product of `(5)` with `J_{m,\alpha}`. The proof spends
the following four displayed identities: the time derivative identity, pressure
orthogonality from `(11)`, base-transport cancellation from
`\nabla\cdot u=0`, and integration by parts for viscosity.

### 1. Time derivative gives jet energy

```math
\langle \partial_t J_{m,\alpha}, J_{m,\alpha}\rangle
=
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L_x^2}^2.
\tag{12}
```

### 2. Pressure drops out

By `(11)`,

```math
\langle \nabla \Pi_{m,\alpha}, J_{m,\alpha}\rangle = 0.
\tag{13}
```

### 3. The base transport term drops out

The term with `(a,\beta)=(0,0)` is

```math
\langle (u\cdot\nabla)J_{m,\alpha}, J_{m,\alpha}\rangle = 0,
\tag{14}
```

again because `\nabla\cdot u=0`.

### 4. Viscosity gives dissipation

```math
\langle \nu\Delta J_{m,\alpha}, J_{m,\alpha}\rangle
=
-\nu\|\nabla J_{m,\alpha}\|_{L_x^2}^2.
\tag{15}
```

So the exact mixed-jet energy identity is

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L_x^2}^2
+
\nu\|\nabla J_{m,\alpha}\|_{L_x^2}^2
=
-\!\!\!\!\!\!\!\!\!
\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\neq(0,0)}}
\binom{m}{a}\binom{\alpha}{\beta}\,
\left\langle
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta},
J_{m,\alpha}
\right\rangle.
\tag{16}
```

This is the full five-family version of the displayed energy calculation.

## What the pipeline gives you

Equation `(16)` says exactly:

1. the differentiated pressure family is not the live source in the raw energy
   law;
2. the base transport term still cancels exactly;
3. viscosity is still the only direct dissipative contribution;
4. the entire live burden is the off-diagonal Leibniz spread over all nontrivial
   derivative splits.

So when the full five-family system is pushed through the same pipeline, the
output is not a new qualitative term. The output is the exact binomial
convolution law for the live burden.

## Parabolic-order packaging

Now group the jets by parabolic order

```math
N := 2m + |\alpha|.
\tag{17}
```

Define

```math
\mathcal E_N(t)
:=
\sum_{2m+|\alpha|=N}\|J_{m,\alpha}(t)\|_{L_x^2}^2,
\qquad
\mathcal D_N(t)
:=
\sum_{2m+|\alpha|=N}\|\nabla J_{m,\alpha}(t)\|_{L_x^2}^2.
\tag{18}
```

Summing `(16)` over all jets of parabolic order `N` gives the family-level
energy law

```math
\frac12\frac{d}{dt}\mathcal E_N
+
\nu\mathcal D_N
=
-\!\!\!\!\!\!\!
\sum_{\substack{2m+|\alpha|=N\\(a,\beta)\neq(0,0),\ \beta\le\alpha,\ a\le m}}
\binom{m}{a}\binom{\alpha}{\beta}\,
\left\langle
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta},
J_{m,\alpha}
\right\rangle.
\tag{19}
```

Every summand on the right has total parabolic input order

```math
\big(2a+|\beta|\big)
+
\big(2(m-a)+|\alpha-\beta|+1\big)
=
N+1.
\tag{20}
```

So the family-wide statement is:

```math
\boxed{
\text{parabolic order }N+2\text{ is balanced against dissipation at order }N+2
\text{ and quadratic derivative splits of total order }N+1.
}
\tag{21}
```

## What you get from the full system

Running the full five-family derivative system through the displayed energy
identities gives one clean answer:

```math
\boxed{
\text{the live regularity burden is not pressure and not base transport;}
}
```

```math
\boxed{
\text{it is the full off-diagonal binomial spread over time-space derivative splits.}
}
```

Equivalently:

```math
\boxed{
\text{all five derivative families collapse to one quadratic convolution law on the mixed jet tower.}
}
\tag{22}
```

So if there is a successful theorem on this route, it has to control that
family-wide binomial convolution, not one isolated derivative ladder.
