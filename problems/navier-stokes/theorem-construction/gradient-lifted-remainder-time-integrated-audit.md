# Gradient Lifted Remainder Time-Integrated Audit

## Purpose

This note records the current status of the time-integrated repair attempt for
the lifted high-side remainder in the upgraded Body `4` packet.

It does **not** prove the lifted remainder lemma. It isolates the exact theorem
statement one would like, the exact candidate route behind that proposal, and
the two reasons that route is not theorem-grade on the current Euclidean
surface.

## Desired Integrated Statement

Let `\mathfrak H_N^{grad,lift}[u](t)` denote the lifted high-side remainder
after the strict low-mode packet and the threshold-local spill collar have both
been removed from the dyadic enstrophy identity.

The desired integrated theorem would be

```math
\int_0^T |\mathfrak H_N^{grad,lift}[u](t)|\,dt
\le
\varepsilon \nu \int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{I}
```

If `(I)` were available, it would be compatible with the upgraded gradient-side
interface because the lifted remainder would then contribute only an
absorbable-plus-summable term.

## Exact Packet Geometry

The lifted remainder is created by the difference

```math
(S_{j-4}-S_{N+M})u,
```

so its shell geometry is not "one shell far above the output". The exact live
support is

```math
N+M<k<j-4,
```

with the output shell remaining at `j`.

Therefore the packet is an intermediate high-side transport remainder: the
transport shell lies above the fixed collar but still below the output shell.
Any theorem-grade proof of `(I)` has to respect that exact support geometry.

## Tempting Candidate Route

A natural candidate bound is

```math
|\mathfrak H_N^{grad,lift}[u](t)|
\le C_{\mathrm{red}}
\|u_{\ge N+M}(t)\|_{L^2_x}\,E_N(t)^{1/2}D_N(t)^{1/2}.
\tag{S}
```

If one could combine `(S)` with the inherited scale barrier

```math
\int_0^T \|u_{\ge N+M}(t)\|_{L^2_x}^2\,dt
\le
C_*2^{-2\delta N},
```

and then absorb the remaining factor into `\int_0^T D_N(t)\,dt`, one would
hope to recover `(I)`.

## First Obstruction: Support Mismatch

The candidate factor `u_{\ge N+M}` suppresses the exact packet geometry.

The actual lifted packet contains the shell sum

```math
\sum_{N+M<k<j-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x},
```

which varies with the output shell `j`. So a proof of `(I)` cannot simply
replace the true coefficient by a generic high tail `u_{\ge N+M}` without
showing how that replacement is justified at the exact support level.

At present, that support-level conversion is not available in the lane.

## Second Obstruction: The Reduced Form `(S)` Is Not Yet Derived

Even before the time integration step, the present shell algebra does not yet
produce `(S)` as a theorem-grade bound.

The currently recorded lifted shell estimate is only the explicit shell bound

```math
2^{2j}|\mathcal C_j^{lift}(t)|
\le C_{\mathrm{lift}}
\Big(\sum_{N+M<k<j-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}\Big)
2^{4j}\|\Delta_j u(t)\|_{L^2_x}^2.
```

So the coefficient still ranges with `j`, and the displayed shell factor is
stronger than the desired reduced form

```math
\|u_{\ge N+M}(t)\|_{L^2_x}\,E_j(t)^{1/2}D_j(t)^{1/2}
=
\|u_{\ge N+M}(t)\|_{L^2_x}\,2^{3j}\|\Delta_j u(t)\|_{L^2_x}^2.
```

At present the lane does not contain a theorem-grade argument collapsing the
first shell expression to the second without reintroducing a supercritical
dyadic factor. So `(S)` is itself still a conjectural reduced form, not a
proved packet estimate.

## Third Obstruction: Circular Use Of `E_N`

Even if one accepts the candidate route `(S)`, the usual integrated-time
estimate becomes

```math
\int_0^T \|u_{\ge N+M}(t)\|_{L^2_x}E_N(t)^{1/2}D_N(t)^{1/2}\,dt.
```

To finish from there, one is naturally led to use either:

1. a bound on `\sup_{0\le t<T}E_N(t)`, or
2. a bound on `\int_0^T E_N(t)D_N(t)\,dt`.

But the upgraded Proposition `6.1` is precisely the mechanism intended to
produce bounded `E_N`. So if the lifted-remainder lemma itself imports a prior
bound on `E_N`, the argument becomes circular:

- Proposition `6.1` needs the lifted-remainder estimate;
- the proposed lifted-remainder estimate uses the conclusion of Proposition
  `6.1`.

No noncircular replacement for that step is currently recorded in the lane.

## Honest Verdict

The current Euclidean theorem surface does **not** yet support the desired
integrated lifted-remainder statement `(I)`.

The failure is exact and threefold:

1. the support geometry is still the intermediate shell range `N+M<k<j-4`,
   not a generic far-high packet;
2. the displayed reduced form `(S)` is not yet derived from the exact shell
   algebra;
3. the most natural integrated proof becomes circular if it uses already
   bounded `E_N`.

So the lifted remainder remains open at both levels:

- pointwise packet control,
- integrated theorem-interface control.

## What A New Proof Would Need

A new theorem-grade proof of `(I)` would need at least one genuinely new input:

1. a noncircular spacetime estimate that controls the `N+M<k<j-4` shell sum
   directly against the inherited tail barrier and `\int_0^T D_N`;
2. a new pointwise or mixed spacetime tail theorem stronger than the current
   inherited `L_t^2L_x^2` barrier;
3. a different packet reorganization that changes the support geometry before
   estimating.

Until one of those appears, the integrated lifted-remainder lemma is not part
of the discharged theorem packet.

## Why The New `L_t^1` / `L_t^2` Closure Attempt Still Fails

One further repair attempt starts from the same conjectural reduced form `(S)`
and tries to combine

```math
\int_0^T |\mathfrak H_N^{grad,lift}[u](t)|\,dt
\le C_{\mathrm{red}}
\Big(\int_0^T \|u_{\ge N+M}(t)\|_{L^2_x}^2\,dt\Big)^{1/2}
\Big(\int_0^T E_N(t)D_N(t)\,dt\Big)^{1/2}
```

with the inherited scale barrier and then avoid extracting `\sup_t E_N`.

That route still does **not** land on the present Euclidean surface.

### Failure 1: The Reduced Form Is Still Unproved

This attempt still begins from `(S)`, so it inherits the earlier unresolved
support-level reduction problem. The shell algebra in the lane has not yet
proved

```math
|\mathfrak H_N^{grad,lift}[u](t)|
\le C_{\mathrm{red}}
\|u_{\ge N+M}(t)\|_{L^2_x}\,E_N(t)^{1/2}D_N(t)^{1/2}.
```

So the argument is conditional on a step that is not currently discharged.

### Failure 2: `D_N \in L_t^1` Does Not Give `D_N \in L_t^2`

The attempt then tries to control `\int_0^T E_ND_N` by replacing it with an
expression involving `\int_0^T(E_N^2+D_N^2)`. On the present surface, this
does not close:

- the lane only has `D_N \in L_t^1`, not `D_N \in L_t^2`;
- so `\int_0^T D_N(t)^2\,dt` is not available from the current theorem
  package;
- likewise, shellwise use of the integrated scale barrier gives

  ```math
  \int_0^T 2^{4j}\|\Delta_j u(t)\|_{L^2_x}^2\,dt
  \le C_{\mathrm{bar}}
  2^{(4-2\delta)j},
  ```

  which grows with `j` and does not itself produce a summable gain.

So the proposed `L_t^1` / `L_t^2` closure does not yield a bounded
`\int_0^T E_ND_N`.

### Failure 3: Any Bound Through `\sup_t E_N` Is Circular

If one instead controls

```math
\int_0^T E_N(t)D_N(t)\,dt
\le
\sup_{0\le t<T}E_N(t)\int_0^T D_N(t)\,dt,
```

then the argument reopens the same circularity already recorded above:
Proposition `6.1` needs the lifted-remainder estimate, so the lifted-remainder
estimate cannot import a prior bound on `\sup_t E_N`.

### Failure 4: The Exponent Does Not Improve By "Squaring Constants"

Even if one only reached

```math
\int_0^T |\mathfrak H_N^{grad,lift}[u](t)|\,dt
\le C_{\mathrm{fail}}
2^{-\delta N},
```

that does **not** upgrade to `2^{-2\delta N}` by renormalizing constants.
Changing constants never improves the dyadic exponent. So the final barrier
shape required by the route is not recovered from that weaker decay rate.

## Updated Honest Verdict

The current integrated lifted-remainder route fails for four exact reasons:

1. the true shell geometry is `N+M<k<j-4`, not a generic far-high packet;
2. the reduced form `(S)` is not yet derived from the shell algebra;
3. the proposed time-integrated closure requires unavailable `L_t^2` control or
   else becomes circular through `\sup_t E_N`;
4. the route does not recover the needed `2^{-2\delta N}` barrier exponent.
