# SS-First Direct-CTS Execution Order Note

## Purpose

This note records the sane execution order for the current lifted-packet closure
route.

The closure problem is not:

```math
\text{prove `(SS)` and prove `LPAS/CTS` in either order.}
```

It is:

```math
\text{close the local same-scale side first,}
\qquad
\text{push direct continuum `(CTS)` second,}
\qquad
\text{treat `(LPAS)` as the exact fallback debt only if the direct route collapses.}
```

## Why this order is the right one

### 1. `(SS)` is local and no longer conceptually tangled

The same-scale side already has exact packet identification:

```math
\mathfrak B_N^{upper}
\quad\text{and}\quad
\Pi_N^{mov\text{-}spill,L}
```

are both reduced to the same finite-family annular order-zero multiplier
problem.

So the unresolved content is no longer a geometry question. It is one missing
same-scale theorem:

```math
\textbf{(SS)}
\qquad
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt + C_{a,*}2^{-2\delta N}.
```

That makes `(SS)` the cleanest next theorem to push.

### 2. Direct `(CTS)` preserves the exact continuum geometry

The far-corona debt lives on the coupled two-scale object

```math
\mathcal A_{\ell,r},
\qquad
\frac{\ell}{r},
```

and the exact continuum sufficient route is

```math
\mathrm{CTS}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\Pi_N^{mid,far,L}.
```

So the direct continuum attack is still the cleanest far-side route, because it
keeps the real geometry visible.

### 3. `(LPAS)` is exact, but it is fallback language

The inherited Euclidean attack on `(CTS)` lands on the dyadic theorem

```math
\textbf{(LPAS)}
\qquad
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
2^{-j}D_j(t)^2\,dt.
```

That is an exact theorem debt, not a fake one. But it is also a fallback
surface created by the collapse of the direct continuum route. So it is not
theorem-primary unless the direct `(CTS)` route fails to
stay in continuum language.

## Exact execution order

The correct route order is:

```math
\text{Step 1: prove `(SS)`;}
\tag{1}
```

```math
\text{Step 2: on the far side, keep the proof on direct `(CTS)` / `\mathcal A_{\ell,r}` language;}
\tag{2}
```

```math
\text{Step 3: if Step 2 collapses, prove `(LPAS)` as the exact dyadic fallback theorem.}
\tag{3}
```

Equivalently,

```math
\boxed{
\text{same-scale first,}
\quad
\text{direct continuum far-corona second,}
\quad
\text{dyadic lower-prefix fallback third.}
}
\tag{4}
```

## Why `(LPAS)` is not attacked first

Attacking `(LPAS)` first bakes in the weakest language too early.

It gives up at once:

1. the coupled two-scale object `\mathcal A_{\ell,r}`;
2. the explicit kernel `\ell/r`;
3. the chance of a direct spacetime cumulative-tail / Carleson proof.

So `(LPAS)` is the right theorem to keep on record, but the wrong theorem to
make theorem-primary while direct `(CTS)` is still mathematically visible.

## Practical routing rule for the lane

The lane interprets the blocker stack as:

1. finish the same-scale theorem `(SS)` first;
2. then try to discharge the far-corona side directly in continuum language;
3. only after a bounded direct-`(CTS)` self-attempt fails does the lane pivot
   theorem-primary work onto `(LPAS)`.

This keeps the route both conservative and honest:

```math
\text{do not skip `(SS)`,}
\qquad
\text{do not collapse to `(LPAS)` prematurely.}
\tag{5}
```
