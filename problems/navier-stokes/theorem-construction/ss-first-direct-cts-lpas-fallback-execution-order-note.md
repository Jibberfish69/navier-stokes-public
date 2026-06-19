# SS-First, Direct-CTS, LPAS-Fallback Execution Order Note

## Purpose

This note records the exact execution order now supported by the classical
lifted-packet route.

The point is not merely to say that `(SS)` and `LPAS/CTS` are both open. The
point is to fix the attack order:

```math
\text{first close `(SS)`,}
\qquad
\text{then push direct `(CTS)` on } \mathcal A_{\ell,r},
\qquad
\text{and use `(LPAS)` only as fallback debt.}
\tag{1}
```

That order is narrower and more honest than the older blended phrasing
“`CTS/LPAS`.”

## Current packet closure shape

The exact lifted-packet closure criterion is already:

```math
\mathfrak H_N^{grad,lift}
\Longrightarrow
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L},
\tag{2}
```

with

```math
\text{(SS)}
\Longrightarrow
\text{(UB)}+\text{(MS)},
\qquad
\text{(LPAS)}
\Longrightarrow
\text{(CTS)}
\Longrightarrow
\text{(FC)}.
\tag{3}
```

So the coefficient-free packet does **not** bottleneck symmetrically.  On the
weighted-carrier route, the moving-spill side is already controlled by
`mpp-forward-gold-moving-spill-weighted-carrier-resolution-20260619.md`, which
leaves the far-corona route as the active middle-band theorem debt.

## Why `(SS)` came first on the coefficient-free route

The same-scale side is already local and fully packet-identified.

What is known:

1. `\mathfrak B_N^{upper}` is a finite-width frozen collar packet;
2. `\Pi_N^{mov\text{-}spill,L}` is a finite family of fixed-offset same-scale
   edge packets;
3. both reduce to one finite-family annular order-zero multiplier-stability
   theorem `(SS)`.

So the same-scale side is blocked only at the theorem step, not at the geometry
step.

That made it the right first target before the weighted-carrier replacement:

```math
\text{local packet geometry settled}
\Longrightarrow
\text{finish the local theorem before reopening the large-gap theorem.}
\tag{4}
```

If `(SS)` lands, then two of the three lifted-packet pieces disappear at once.

## Exact Step A: close `(SS)`

The conservative same-scale execution order is:

1. write `\mathfrak B_N^{upper}` in exact frozen same-scale normal form;
2. formulate one coefficient-free divergence-free annular order-zero edge theorem;
3. prove it uniformly over the bounded multiplier family;
4. recover `(UB)` and `(MS)` by finite summation.

So Step A is:

```math
\text{frozen normal form}
\Longrightarrow
\text{coefficient-free same-scale edge estimate}
\Longrightarrow
\text{finite-family `(SS)`}.
\tag{5}
```

## Why direct `(CTS)` comes second

Once the same-scale side is closed, the only genuine large-gap survivor is the
far-corona packet

```math
\Pi_N^{mid,far,L}(t)
\le
C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell}.
\tag{6}
```

The exact continuum debt is therefore `(CTS)`, not `(LPAS)`:

```math
\textbf{(CTS)}
\qquad
\int_0^T\int_{\ell_{top}}^{\ell_{bot}}
\left(
\int_{c_1\ell}^{\ell_{hi}}
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\frac{dr}{r}
\right)
\|\tau_\ell^{H^1}[u](t)\|_{L_x^2}^2\,
\frac{d\ell}{\ell}\,dt
\le
C_{CTS}
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{CTS}
```

So the second target is:

```math
\text{keep } \mathcal A_{\ell,r} \text{ and the kernel } \ell/r \text{ visible long enough to try to prove `(CTS)` directly.}
\tag{7}
```

The reason is structural:

1. `(CTS)` is the true continuum theorem debt;
2. collapsing too early to a dyadic one-scale shadow loses the exact two-scale
   geometry;
3. the far-corona note already forbids premature one-scale collapse.

## Exact Step B: direct continuum `(CTS)` attempt

The conservative direct-continuum program is:

1. keep the coupled density `\mathcal A_{\ell,r}` explicit;
2. search for a non-circular two-scale Carleson/tent-space estimate on that
   object;
3. preserve the full barrier exponent `2^{-2\delta N}`;
4. only collapse to dyadic language if the continuum argument genuinely forces
   it.

So Step B is:

```math
\mathcal A_{\ell,r}
\Longrightarrow
\text{direct two-scale cumulative-tail theorem `(CTS)`},
\tag{8}
```

not

```math
\mathcal A_{\ell,r}
\Longrightarrow
\text{unproved dyadic overestimate.}
\tag{9}
```

## Why `(LPAS)` is fallback, not co-primary target

The inherited Euclidean route does reduce `(CTS)` to

```math
\textbf{(LPAS)}
\qquad
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
\tag{LPAS}
```

but only after a dyadic reduction that changes the language of the problem.

And `(LPAS)` is already known to be structurally blocked from the current
installed Euclidean queue:

1. wrong orientation for upper-tail theorems;
2. crude prefix collapse needs stronger control than we have;
3. weighted factorization still leaves the uncontrolled lower-prefix times
   active-square product.

So `(LPAS)` is treated as:

```math
\text{the exact fallback theorem debt if direct `(CTS)` still collapses to dyadic language.}
\tag{10}
```

Not as the first large-gap target.

## Exact Step C: fallback dyadic route only if needed

If Step B fails to stay in continuum language, then the correct fallback is:

1. accept `(LPAS)` as the exact debt;
2. attack it with a genuinely new lower-prefix Hardy/Volterra theorem;
3. do **not** try to force it into the installed upper-tail queue.

So Step C is:

```math
\text{direct `(CTS)` collapses}
\Longrightarrow
\text{promote `(LPAS)` as exact dyadic fallback debt}
\Longrightarrow
\text{prove a new lower-prefix theorem.}
\tag{11}
```

## Recommended execution order for the lane

The mathematically sane route order is therefore:

```math
\boxed{
\text{Step B: attempt direct `(CTS)` on } \mathcal A_{\ell,r} \text{ second.}
}
\tag{12}
```

```math
\boxed{
\text{Step C: use `(LPAS)` only as fallback debt if Step B still collapses to dyadic form.}
}
\tag{13}
```

## Honest boundary

This note does **not** prove `(CTS)` or `(LPAS)`.  The coefficient-free `(SS)`
theorem remains open as a stronger standalone theorem, but the moving-spill
side has been absorbed on the weighted-carrier route.

What it fixes is the order in which those open debts are worked.

The route is no longer:

```math
\text{“some mixture of same-scale and CTS/LPAS work.”}
```

On the active weighted-carrier route it is:

```math
\text{direct continuum CTS first, dyadic LPAS fallback second.}
\tag{14}
```
