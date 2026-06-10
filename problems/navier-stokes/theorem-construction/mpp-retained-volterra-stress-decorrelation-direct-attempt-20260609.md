# MPP Retained Volterra Stress Decorrelation Direct Attempt

## Status

`RetainedVolterraStressDecorrelation.A` is not proved by the current theorem
stack.

This pass tests whether the scale-memory obstruction can be beaten by exact
scale subtraction, positive-stress decorrelation, direct geometry of `B_r`, or
the lower-prefix active-square theorem `(LPAS)`.

## Target

The accumulated stress primitive is

```math
T_r(x,t)
=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\tau_\ell^{H^1}[u](x,t)\,\frac{d\ell}{\ell}.
```

The direct theorem would have to improve on the sharp positive Volterra bound

```math
\sum_k E_k(t)
\left\|
\sum_{j\ge k+C_1}\tau_j^{H^1}[u](t)
\right\|_{L_x^2}^2
\leadsto
\sum_j
\left(\sum_{k\le j-C_1}E_k(t)\right)
\|\tau_j^{H^1}[u](t)\|_{L_x^2}^2.
```

The exact target is any theorem-grade mechanism that prevents the positive
stress densities from realizing that worst-case lower-prefix accumulation.

## Branch 1: exact scale subtraction

The Volterra formalization note already supplies two exact subtractions.

The ordinary mean subtraction writes

```math
F(s,t)=\bar F(t)+\partial_s S(s,t),
\qquad S(s_0,t)=S(s_1,t)=0.
```

The weighted-harmonic representative writes

```math
F(s,t)=c_F(t)m_w(s,t)+\partial_s S_w(s,t),
```

and gives the exact orthogonal identity

```math
\int_I w\|F\|^2\,ds
=
\int_I w\|\partial_s S_w\|^2\,ds
+
|c_F|^2\,\frac{|I|^2}{\int_I w^{-1}\,ds}.
\tag{Q}
```

This is real structure, but it does not close the theorem.

The quotient term in `(Q)` is exactly the persistent weighted endpoint mode.
The current run already followed that branch through affine quotient, B1
signed-to-affine transfer, positive endpoint mass, `\mu_N` threading, shell-pair
threading, and accumulated-stress Carleson. It remains open.

The exact derivative term

```math
\int_I w\|\partial_s S_w\|^2\,ds
```

has no installed absorption theorem. Integrating by parts moves the burden to
the scale derivative of the active weight `w`; differentiating `w` differentiates
the active frequency cutoff and the low-scale energy. That recreates the same
scale-memory interaction rather than producing a signed dissipation identity.

So exact scale subtraction is a valid decomposition, not a closure theorem.

## Branch 2: positive-stress decorrelation

Plain frequency orthogonality does not decorrelate `\tau_j^{H^1}`. The objects
`\tau_j^{H^1}` are quadratic positive stress densities. They are not signed LP
shells, and their products can have strong low-frequency components.

A coherent packet model shows the obstruction. Take active shells `u_j` with
different carrier frequencies but the same slowly varying spatial envelope.
Then the positive stress densities have the form

```math
\tau_j^{H^1}[u](x,t)\approx b_j(t)\Phi(x,t),
\qquad b_j(t)\ge 0,
```

over the common packet region. In that regime

```math
\left\|\sum_{j\ge k+C_1}\tau_j^{H^1}\right\|_{L_x^2}^2
\approx
\left(\sum_{j\ge k+C_1}b_j\right)^2\|\Phi\|_{L_x^2}^2.
```

This is the sharp scalar Hardy worst case. It is not excluded by Littlewood-
Paley support alone, because squaring shell fields destroys the signed
orthogonality that the velocity shells themselves had.

Therefore a positive-stress decorrelation theorem cannot be a generic Fourier
estimate. It would need an actual Navier-Stokes dynamic anti-coherence
mechanism.

## Branch 3: direct geometry of `B_r`

The coupled square is

```math
B_r(t)
=
\int_{\mathbb R^3}\widetilde\Sigma_r(x,t)T_r(x,t)\,dx.
```

Cauchy-Schwarz sends it to `(FCTS)`. Beating Cauchy requires a sign, angular,
or geometric cancellation theorem for the pairing of `\widetilde\Sigma_r` and
`T_r`.

No such theorem is installed. The far-corona density was built as a one-sided
positive object before squaring, and the current route explicitly records that
there is no cancellation in the `\ell`-integral. A coherent strain/stress packet
can align `\widetilde\Sigma_r` with the common envelope of `T_r`, so direct
geometry is also sharp unless a new dynamic anti-coherence theorem is proved.

## Branch 4: LPAS

The lower-prefix active-square theorem is the exact fallback:

```math
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
```

The installed `lower-prefix-active-square-theorem.md` records the bounded
self-attempt and shows that the current upper-tail square queue does not prove
this object. The orientation is wrong: the installed queue is upper-tail, while
`(LPAS)` is lower-prefix times active-square.

So `(LPAS)` is still open.

## Verdict

`RetainedVolterraStressDecorrelation.A` is reduced, not proved.

The exact scale subtraction exists but leaves an unclosed derivative term and
the already-open weighted quotient branch. Positive-stress decorrelation is not
a generic Littlewood-Paley fact. Direct `B_r` geometry has no installed
cancellation theorem. `(LPAS)` remains the explicit fallback, but it is not
proved by the current Euclidean queue.

The exact next target is:

```math
\textbf{RetainedPositiveStressAntiCoherenceMechanism.A}.
```

It must prove a genuine Navier-Stokes mechanism excluding the coherent positive
stress worst case, for example:

1. coherent co-located positive stress packets across the Volterra range force
   a local dissipation payment at barrier scale;
2. the same coherence forces a source/drain imbalance that lands in a concrete
   Pack/Part/Field face failure;
3. the active strain direction prevents sustained alignment of
   `\widetilde\Sigma_r` with the accumulated stress envelope before Cauchy;
4. or the mechanism proves `(LPAS)` directly.

## Closure impact

The current chain becomes:

```math
\text{RetainedVolterraStressDecorrelation.A}
\Longleftarrow
\text{RetainedPositiveStressAntiCoherenceMechanism.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
