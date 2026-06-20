# MPP Forward-Gold Terminal Dissipation Half-Morrey Rate Direct Test

Date: 2026-06-19

## Status

Direct rate test complete; the rate is not supplied by current inputs.

The heat-scale coefficient throttle reduces to a sharp terminal rate for the
physical dissipation measure.  Ordinary absolute continuity of the dissipation
integral is too weak.  The missing estimate is a one-sided half-Morrey endpoint
bound:

```math
\int_{T-h}^{T}\mathcal D(t)\,dt
\le
C_H\nu^{5/2}h^{1/2}
L_{\rm legal}(h),
\qquad h\downarrow0.
\tag{DHM.1}
```

With \(h=r_j^2/\nu\), `(DHM.1)` is exactly the packet rate

```math
\int_{I_j}\mathcal D(t)\,dt
\le
C_H\nu^2 r_j
L_{\rm legal}(r_j^2/\nu)
\tag{DHM.2}
```

needed in the heat-scale coefficient throttle.  Finite energy dissipation gives
only absolute continuity:

```math
\int_{T-h}^{T}\mathcal D(t)\,dt\to0.
\tag{DHM.3}
```

It does not give the \(h^{1/2}\) rate.

## 1. Why this is the exact coefficient-side rate

The coefficient throttle note gives

```math
\int_{I_j}\|S_{<j}^{loc}(t)\|_\infty\,dt
\le
C_DA_t^{1/2}
2^{j/2}\nu^{-1}
\left(\int_{I_j}\mathcal D(t)\,dt\right)^{1/2}.
\tag{DHM.4}
```

For \(r_j=2^{-j}\), an \(O(1)\) coefficient residence bound follows from

```math
\int_{I_j}\mathcal D(t)\,dt
\le
C_R\nu^2 2^{-j}
=
C_R\nu^2 r_j.
\tag{DHM.5}
```

Since the heat-window length has fixed heat-scale bounds

```math
\alpha_t{r_j^2\over\nu}
\le
|I_j|
\le
A_t{r_j^2\over\nu},
\tag{DHM.6}
```

the right side of `(DHM.5)` is proportional to \(|I_j|^{1/2}\), up to the fixed
viscosity normalization.  Thus the coefficient route is equivalent to a
one-sided endpoint half-Morrey modulus for \(\mathcal D(t)\,dt\).

## 2. Absolute continuity is weaker

Let \(\mu_D\) be the finite dissipation measure

```math
\mu_D(I)=\int_I\mathcal D(t)\,dt.
\tag{DHM.7}
```

Finite energy gives

```math
\mu_D([0,T])<\infty.
\tag{DHM.8}
```

Hence for every \(\varepsilon>0\) there is \(\delta>0\) such that

```math
|I|<\delta
\quad\Longrightarrow\quad
\mu_D(I)<\varepsilon.
\tag{DHM.9}
```

This is terminal smallness with no rate.  The heat-scale coefficient throttle
needs

```math
\mu_D((T-h,T])\le C h^{1/2}.
\tag{DHM.10}
```

The implication

```math
\mu_D(I)\to0
\quad\Longrightarrow\quad
\exists C<\infty\ \forall h<h_0:\ 
\mu_D((T-h,T])\le C h^{1/2}
\tag{DHM.11}
```

is false for finite measures.

## 3. Endpoint countermodel

Set, for \(0<s<e^{-2}\),

```math
g(s)={1\over s\,(\log(1/s))^2}.
\tag{DHM.12}
```

Then

```math
\int_0^{e^{-2}}g(s)\,ds<\infty,
\tag{DHM.13}
```

but

```math
\int_0^h g(s)\,ds
=
{1\over \log(1/h)}
\qquad(0<h<e^{-2}).
\tag{DHM.14}
```

For dyadic heat windows \(h_j=2^{-2j}\),

```math
\int_0^{h_j}g(s)\,ds
=
{1\over 2j\log2},
\tag{DHM.15}
```

while

```math
h_j^{1/2}=2^{-j}.
\tag{DHM.16}
```

Thus

```math
{ \int_0^{h_j}g(s)\,ds \over h_j^{1/2}}
=
{2^j\over 2j\log2}
\to\infty.
\tag{DHM.17}
```

This is the exact rate failure: an \(L^1_t\) dissipation density may have a
finite total integral and still be far too concentrated near the terminal
endpoint to give `(DHM.1)`.

## 4. Dyadic summability also does not give the rate

Even if the terminal tail is decomposed into dyadic heat layers, finite
dissipation gives a summable sequence

```math
B_j
:=
\int_{T-2^{-2j}}^{T-2^{-2(j+1)}}\mathcal D(t)\,dt,
\qquad
\sum_jB_j<\infty.
\tag{DHM.18}
```

The coefficient route would need

```math
B_j\le C_B2^{-j}
\tag{DHM.19}
```

or the corresponding cumulative estimate.  Summability alone does not imply
`(DHM.19)`.  For example,

```math
B_j={1\over j^2}
\tag{DHM.20}
```

is summable, while

```math
{B_j\over2^{-j}}={2^j\over j^2}\to\infty.
\tag{DHM.21}
```

So a dyadic terminal scheduler or absolute continuity partition does not supply
the heat-window rate unless it also installs a quantitative Morrey/Carleson
bound.

## 5. Relation to Lebesgue differentiation

Lebesgue differentiation gives density information at almost every interior
time.  The endpoint \(T\) is precisely the possible singular endpoint in a
finite-time blow-up argument.  The theorem needed here is not an interior
almost-everywhere differentiation statement.  It is a one-sided quantitative
bound at the terminal face:

```math
\sup_{0<h<h_0}
h^{-1/2}\mu_D((T-h,T])
<\infty.
\tag{DHM.22}
```

Current energy/local-energy inputs do not provide `(DHM.22)`.

## 6. Consequence for the coefficient route

If the endpoint half-Morrey estimate `(DHM.1)` were proved for the selected
terminal family, then `(DHM.4)` would give

```math
\int_{I_j}\lambda_j^+(t)\,dt\le C
\tag{DHM.23}
```

and this would support `CoeffBound.A` at the residence level.

To dominate the actual selected positive carrier, one still needs either the
source-weighted product form

```math
\int |w_j|^2\lambda_j^+\,dx
\le
C\,T_j(t)+Legal_j(t),
\tag{DHM.24}
```

or a same-carrier saturation theorem.  Thus `(DHM.1)` is a useful coefficient
supplier, but not by itself the full selected source-square carrier domination.

## Verdict

The coefficient-side absolute-continuity shortcut is exhausted:

```math
\boxed{
\mathcal D\in L^1_t
\not\Longrightarrow
\exists C<\infty\ \forall h<h_0:\
\mu_D((T-h,T])\le C h^{1/2}.
}
\tag{DHM.25}
```

The heat-window coefficient route needs a genuinely stronger input:

```math
\boxed{
\text{TerminalDissipationHalfMorrey.A}
}
\tag{DHM.26}
```

or one of the already isolated critical suppliers:

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A /
SourceSquareReserve.A / StrictRescaledNoWasteLyapunov.A.}
}
\tag{DHM.27}
```

Without that half-Morrey rate or a stronger same-carrier theorem, shrinking the
time window alone does not force the coefficient payment needed to exclude the
terminal heat-scale pulse.
