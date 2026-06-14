# MPP Retained Accumulated Stress L2 Carleson Direct Attempt

## Status

`RetainedAccumulatedStressL2Carleson.A` is not proved by the current theorem
stack.

This pass attacks the exact two-scale stress theorem exposed by the failed
endpoint-mass shell-pair threading route. The goal is to decide whether the
accumulated stress field `T_r` can be controlled directly, without returning to
the already open endpoint theorem `(EP)` or declaring the old lower-prefix
active-square burden solved.

## Target

The direct `L_x^2` far-corona sufficient theorem is

```math
\int_0^T\int_0^\infty
r^{-2}\|Q_r u(t)\|_{L_x^2}^2
\|T_r(t)\|_{L_x^2}^2
\frac{dr}{r}\,dt
\le C_{\mathrm{FCTS}}
\nu\int_0^T D_N(t)\,dt+C_*2^{-2\delta N},
\tag{FCTS}
```

where

```math
T_r(x,t)
:=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\,
\tau_\ell^{H^1}[u](x,t)\,\frac{d\ell}{\ell}.
```

The scale derivative identity is exact:

```math
r\partial_r T_r(x,t)
=
\chi_{mid}(\log(r/c_1))\,\tau_{r/c_1}^{H^1}[u](x,t).
\tag{D}
```

So the live question is whether this Volterra structure gives more than the
crude cumulative-tail / lower-prefix square estimate.

## Dyadic Volterra form

Dyadically, the theorem has the form

```math
\int_0^T
\sum_k E_k(t)
\left\|
\sum_{j\ge k+C_1}\tau_j^{H^1}[u](t)
\right\|_{L_x^2}^2
dt
\le C_{\mathrm{V}}
\nu\int_0^T D_N(t)\,dt+C_*2^{-2\delta N},
\tag{V}
```

with

```math
E_k(t)=2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2.
```

The inherited Cauchy-Schwarz collapse gives

```math
\left\|
\sum_{j\ge k+C_1}\tau_j
\right\|_{L_x^2}^2
\le C_{\mathrm{ov}}
\sum_{j\ge k+C_1}\|\tau_j\|_{L_x^2}^2
```

up to the fixed logarithmic overlap, and then `(V)` becomes the cumulative-tail
stress theorem `(CTS)` / lower-prefix active-square theorem `(LPAS)`.

That is the old route. This attempt tests whether the exact Volterra structure
beats that collapse.

## Sharp Hardy test

The weighted Volterra inequality is sharp for coherent positive stress.

Take a fixed nonnegative `L_x^2` profile `\phi` and model

```math
\tau_j(t,x)=b_j(t)\phi(x),
\qquad b_j(t)\ge 0.
```

Then the left side of `(V)` reduces to the scalar weighted Hardy form

```math
\int_0^T
\sum_k E_k(t)
\left(\sum_{j\ge k+C_1}b_j(t)\right)^2
dt.
\tag{H}
```

For arbitrary nonnegative coefficients, the sharp one-scale reduction of `(H)`
has the lower-prefix weight

```math
\sum_{k\le j-C_1}E_k(t)
```

in front of `b_j(t)^2`. This is exactly the `(CTS)` / `(LPAS)` weight. Hence a
direct theorem that controls `(V)` without either a lower-prefix active-square
estimate or a structural non-coherence theorem cannot hold at the level of the
current positive stress language.

This is not a bookkeeping failure. It is the sharpness of the Volterra operator
on coherent positive inputs.

## Scale-derivative integration test

The identity `(D)` suggests integration by parts in `s=\log r`. Write

```math
F(s,t)=T_{e^s}(t),
\qquad
a(s,t)=e^{-2s}\|Q_{e^s}u(t)\|_{L_x^2}^2.
```

Then `(FCTS)` is

```math
\int_0^T\int a(s,t)\|F(s,t)\|_{L_x^2}^2\,ds\,dt.
```

Differentiating gives

```math
\partial_s\|F(s,t)\|_{L_x^2}^2
=
2\langle F(s,t),\tau_{e^s/c_1}^{H^1}[u](t)\rangle.
```

An integration-by-parts proof would need the derivative of the active weight
`a(s,t)` to have a sign or an absorbable form. The current Euclidean packet
does not provide that. Differentiating `a` differentiates the frequency
projector and the active shell energy, producing the same scale-memory
interaction again, with no monotone dissipation sign in the scale variable.

So `(D)` records the correct Volterra structure, but by itself it does not
produce an energy identity that pays for `(FCTS)`.

## Orthogonality and decorrelation test

The only way to beat the sharp Hardy collapse is to prove that the actual
stress densities `\tau_j^{H^1}[u]` cannot behave like coherent positive copies
of one profile.

Ordinary Littlewood-Paley orthogonality does not give this. Each `\tau_j` is a
quadratic positive stress density, not a signed shell field. Products of
frequency-localized velocity shells contain low-frequency components, and
positive stress packets at different active scales can concentrate on the same
spatial region. There is no installed theorem forcing the `\tau_j` to be
orthogonal or decorrelated in `L_x^2`.

The existing cross-scale decorrelation direction is relevant, but it is not yet
a theorem on this positive Volterra stress object. It currently remains a route
candidate, not a proof of `(FCTS)`.

## Direct `B_r` square test

The exact far-corona square is

```math
B_r(t)=\int_{\mathbb R^3}\widetilde\Sigma_r(x,t)T_r(x,t)\,dx.
```

Cauchy-Schwarz sends this to `(FCTS)`. To do better, one would need direct
cancellation or geometry in the pairing of `\widetilde\Sigma_r` with `T_r`.
The far-corona density used in the current route is nonnegative before this
pairing is squared, and no angular, sign, or stress-direction cancellation
theorem is installed for the coupled object `B_r`.

Thus the direct `B_r` theorem remains equivalent to a new one-sided
square/Carleson theorem on the coupled density. It is not supplied by the
current scale-memory formalization alone.

## Verdict

`RetainedAccumulatedStressL2Carleson.A` is reduced, not proved.

The direct accumulated-stress theorem collapses to the already known
`CTS`/`LPAS` burden unless one adds a genuinely new theorem saying that the
positive stress densities in the Volterra primitive are not worst-case coherent
for the active weight. The exact scale derivative of `T_r` is useful structure,
but the active weight has no installed scale-monotone sign. The direct `B_r`
square route also needs a new coupled Carleson theorem.

The exact next target is:

```math
\textbf{RetainedVolterraStressDecorrelation.A}.
```

It must prove at least one of the following:

1. a scale-coboundary subtraction for `T_r` whose derivative and boundary terms
   are absorbable without reusing `(FCTS)` or `(EP)`;
2. an `L_x^2` decorrelation / orthogonality theorem for the positive stress
   densities `\tau_j^{H^1}[u]` in the weighted Volterra primitive;
3. a direct coupled square theorem for `B_r` that uses geometry of
   `\widetilde\Sigma_r` against `T_r` before the route collapses to Cauchy;
4. a proof of the lower-prefix active-square theorem `(LPAS)` itself.

## Closure impact

The current chain becomes:

```math
\text{RetainedAccumulatedStressL2Carleson.A}
\Longleftarrow
\text{RetainedVolterraStressDecorrelation.A}.
```

This does not close `(FCTS)`, `(EP)`, positive affine endpoint mass, the
retained affine quotient route, LPAS/CTS, `(L-Flux)`, retained tail input,
Part-row compactness, or PDF finality.
