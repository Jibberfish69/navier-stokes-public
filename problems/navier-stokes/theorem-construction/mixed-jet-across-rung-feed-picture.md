# Mixed-Jet Across-Rung Feed Picture

## Purpose

This note answers the next question after the raw one-rung extraction:

```math
\boxed{
\text{once one rung is understood, how do the mixed terms feed up and down the full tower as the order deepens?}
}
```

The point is to separate what is already exact from what is still only hoped
for.

## One rung is not isolated

For the mixed jets

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\tag{1}
```

the differentiated equation is

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}
+
\nabla\Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha}.
\tag{2}
```

So the rung `(m,\alpha)` is fed by **all** lower derivative splits
`(a,\beta)+(m-a,\alpha-\beta)`.

This is already one exact answer:

```math
\boxed{
\text{the tower is not nearest-neighbor;}
}
```

```math
\boxed{
\text{every higher rung sees the whole lower split library.}
}
\tag{3}
```

## As depth increases, the number of live channels increases

At shallow levels there are only a few mixed channels:

- at time level `n=1`, only `(u_t\cdot\nabla)u` survives;
- at time level `n=2`, both `(u_t\cdot\nabla)u_t` and `(u_{tt}\cdot\nabla)u`
  appear;
- at time level `n=3`, the three channels
  `(u_t,u_{tt})`, `(u_{tt},u_t)`, `(u_{ttt},u)` all appear.

In general, the deeper the rung, the more interior split channels exist.

So what grows with depth is not just size.
It is the **number of interaction routes** feeding the top rung.

## Exact lower-triangular feed

There is a precise asymmetry in the raw tower.

At rung `(m,\alpha)`, every mixed term uses:

- one factor from a lower or equal split `(a,\beta)`,
- one factor from the complementary split `(m-a,\alpha-\beta)`,
- one gradient on the complementary factor.

So lower jets feed upward into all higher rungs as coefficients.

But the reverse is not true:

```math
\boxed{
\text{a deeper rung does not directly force a shallower rung equation.}
}
\tag{4}
```

The raw tower is therefore **lower-triangular in derivative order**:

- low rungs feed many higher ones;
- high rungs do not directly appear back inside lower-rung equations.

## What feeds upward exactly

There are three exact upward feed channels.

### 1. Base-strain feed

Every rung contains the endpoint term

```math
\langle (J_{m,\alpha}\cdot\nabla)u, J_{m,\alpha}\rangle,
\tag{5}
```

so the base strain `\nabla u` talks to every level.

That means the bottom of the tower is present everywhere.

### 2. Interior split feed

Every interior pair

```math
(a,\beta),\qquad (m-a,\alpha-\beta)
\tag{6}
```

feeds the top rung through the symmetric transfer tensor

```math
J_{a,\beta}\otimes J_{m-a,\alpha-\beta}
+
J_{m-a,\alpha-\beta}\otimes J_{a,\beta}
\tag{7}
```

acting on `\nabla J_{m,\alpha}`.

So deeper rungs receive all lower split pairings as coefficient tensors.

### 3. Defect feed

The recursive substitution note makes the upward feed even sharper.

For the pure time tower,

```math
V_{n+1}=L_n-M_n,
\tag{8}
```

and after substitution the unresolved defect at level `3` is

```math
\begin{aligned}
D_3^{(2)}
:={}&
-(u\cdot\nabla)D_2^{(1)}
-
(D_2^{(1)}\cdot\nabla)u \\
&-
2(L_0\cdot\nabla)D_1
-
2(D_1\cdot\nabla)L_0
-
2(D_1\cdot\nabla)D_1.
\end{aligned}
\tag{9}
```

So unresolved lower defects are literally transported upward into higher
defects.

This is the sharpest exact upward-feed statement now on record:

```math
\boxed{
\text{lower unresolved mixed structure does not disappear;}
}
```

```math
\boxed{
\text{it is carried upward and reinserted into deeper defects.}
}
\tag{10}
```

## What feeds downward

There is only one exact downward mechanism presently visible on the classical
tower:

```math
\boxed{
\text{viscosity.}
}
\tag{11}
```

At every rung, each mixed term gives one top-rung gradient to the viscous slot:

```math
|I_{a,\beta}^{m,\alpha}|
\le
\varepsilon \nu \|\nabla J_{m,\alpha}\|_{L^2}^2
+
C_{\varepsilon,\nu}
\|J_{a,\beta}\|_{L^\infty}^2
\|J_{m-a,\alpha-\beta}\|_{L^2}^2.
\tag{12}
```

So the downward feed is:

- the top rung donates one derivative to dissipation,
- the lower/split factors remain as coefficients.

There is **not yet** any proved nonlinear downward telescoping across different
rungs.

## Same-rung pair symmetrization does not become across-rung cancellation

Within one rung, complementary split pairs reorganize as

```math
I_{a,\beta}^{m,\alpha}
+
I_{m-a,\alpha-\beta}^{m,\alpha}
=
-\int
\big(
J_{a,\beta}\otimes J_{m-a,\alpha-\beta}
+
J_{m-a,\alpha-\beta}\otimes J_{a,\beta}
\big):\nabla J_{m,\alpha}.
\tag{13}
```

That is a real structural gain.

But at present there is no theorem showing that when one sums over different
rungs `(m,\alpha)`, these symmetric tensors telescope away.

So the honest statement is:

```math
\boxed{
\text{the known pre-weight gain is same-rung symmetrization, not proved cross-rung annihilation.}
}
\tag{14}
```

## Parabolic-order view of the across-rung feed

Group jets by parabolic order

```math
N=2m+|\alpha|.
\tag{15}
```

For this bookkeeping note, define `\mathcal B_{a,b,N}(t)` as the sum of the
absolute values of the exact feed terms in (13) whose two input parabolic
orders are `a` and `b` and whose output order is `N`. The recorded family
energy inequality is

```math
\frac12\frac{d}{dt}\mathcal E_N
+
\nu \mathcal D_N
\le
\sum_{a+b=N+1}\mathcal B_{a,b,N}(t).
\tag{16}
```

This gives the rest of the picture:

1. order `N` is dissipated through `\mathcal D_N`;
2. order `N` is fed by **all** lower split orders summing to `N+1`;
3. as `N` grows, the number of split channels grows;
4. low orders remain present in every high order through endpoint and interior
   coefficients;
5. there is not yet a proved cross-order telescoping law across `N`.

So the tower behaves like an infinite lower-triangular feed network with one
downward damping channel.

## Global meaning

The exact “deeper into the tower” picture is therefore:

```math
\boxed{
\text{low rungs feed upward everywhere;}
}
```

```math
\boxed{
\text{deep rungs do not directly cancel lower equations, but they do reappear in still higher ones;}
}
```

```math
\boxed{
\text{the only presently exact downward mechanism is viscous extraction of one top-rung gradient.}
}
\tag{17}
```

So what remains unknown is not whether there is interaction across rungs.
There is interaction everywhere.
What remains unknown is:

```math
\boxed{
\text{whether the coefficient remainder created by that upward feed admits a true cross-rung cancellation, telescoping law, or globally summable closure.}
}
\tag{18}
```

## Why the weighted route was introduced later

The weighted/factorial route was not supposed to replace this picture.

It was introduced only after the following exact raw structure was already
visible:

1. pressure cancels;
2. base transport cancels;
3. viscosity extracts one derivative from every surviving mixed term;
4. complementary same-rung pairs symmetrize;
5. lower defects feed upward into higher defects.

The weighted route was then an attempt to package the remaining coefficient
remainder across the whole infinite feed network.

## Limitation

This note does **not** prove a cross-rung telescoping identity.

It proves only the exact qualitative geometry of the tower:

```math
\boxed{
\text{the deeper one goes, the more interaction routes appear;}
}
```

```math
\boxed{
\text{upward feed is ubiquitous, downward damping is viscous, and a global cancellation law is still missing.}
}
\tag{19}
```
