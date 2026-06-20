# MPP Forward-Gold Same-Layer Factor Tail Depletion Direct Test

Date: 2026-06-20

## Status

Direct same-layer factor-tail depletion test complete.

The depletion clause named after the critical-strain Holder test is a genuine
supplier, but it is not supplied by the current critical factor bounds.  It is
exactly an endpoint non-concentration theorem for at least one factor on the
same selected terminal layer.

## 1. The factor-depletion supplier

On a normalized selected heat-scale packet, write the positive carrier as

```math
a_m(s)
=
\int_{B_1}
\left[
\left\langle
\Sigma_m^{loc}(s,y)W_m(s,y),W_m(s,y)
\right\rangle
\right]_+
dy .
\tag{SLFT.1}
```

The upper estimate is

```math
a_m(s)
\le
\int_{B_1}
|\Sigma_m^{loc}(s,y)|\,|W_m(s,y)|^2\,dy .
\tag{SLFT.2}
```

Spatial Holder gives, on a terminal strip \((-\theta,0]\),

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
\left(
\int_{-\theta}^{0}\int_{B_1}
|\Sigma_m^{loc}|^{5/2}\,dy\,ds
\right)^{2/5}
\left(
\int_{-\theta}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
\right)^{3/5}.
\tag{SLFT.3}
```

Thus the endpoint no-jump modulus follows if either factor has terminal-tail
depletion on the same selected layer, while the other factor remains uniformly
bounded in its critical exponent.  One strain-side version is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
|\Sigma_m^{loc}|^{5/2}\,dy\,ds
=0 .
\tag{SLFT.4}
```

The velocity-side version is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
=0 .
\tag{SLFT.5}
```

Either `(SLFT.4)` or `(SLFT.5)` is enough.  The question is whether current
inputs force one of them.

## 2. Critical mass bounds do not force factor-tail depletion

Fix smooth nonnegative profiles \(\sigma,\psi\in C_c^\infty(B_1)\) with

```math
\int_{B_1}\sigma^{5/2}\,dy=1,
\qquad
\int_{B_1}\psi^{10/3}\,dy=1,
\qquad
\int_{B_1}\sigma\psi^2\,dy=c_0>0 .
\tag{SLFT.6}
```

For \(\tau_m\downarrow0\), set

```math
\Sigma_m(s,y)
=
\tau_m^{-2/5}\sigma(y){\bf 1}_{(-\tau_m,0]}(s),
\tag{SLFT.7}
```

and

```math
W_m(s,y)
=
\tau_m^{-3/10}\psi(y){\bf 1}_{(-\tau_m,0]}(s).
\tag{SLFT.8}
```

The critical factor masses are fixed:

```math
\int_{-1}^{0}\int_{B_1}
|\Sigma_m|^{5/2}\,dy\,ds
=1,
\qquad
\int_{-1}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
=1 .
\tag{SLFT.9}
```

But for every fixed \(\theta>0\), once \(\tau_m<\theta\),

```math
\int_{-\theta}^{0}\int_{B_1}
|\Sigma_m|^{5/2}\,dy\,ds
=1,
\qquad
\int_{-\theta}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
=1 .
\tag{SLFT.10}
```

Therefore

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
|\Sigma_m|^{5/2}\,dy\,ds
=1,
\tag{SLFT.11}
```

and

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
=1 .
\tag{SLFT.12}
```

The same example gives the selected carrier atom:

```math
a_m(s)
=
c_0\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\int_{-1}^{0}a_m(s)\,ds=c_0 .
\tag{SLFT.13}
```

Thus finite critical mass of the two factors does not force depletion of either
factor on the terminal layer.

## 3. Why the current Navier-Stokes inputs do not add the missing depletion

The local energy inequality supplies finite measure control and dissipation
visibility.  Finite measure control admits endpoint atoms.

Pressure gives spatial Calderon-Zygmund control at each time.  It does not give
time-tail uniform integrability for the selected positive strain or velocity
factor after packet selection and positive-part extraction.

Viscosity gives heat smoothing after a positive heat-time interval.  A terminal
source inserted in the last selected heat-scale subinterval has no later
interval before the terminal face in which smoothing can create `(SLFT.4)` or
`(SLFT.5)`.

Same-fluid participation keeps the strain, velocity packet, pressure, and
viscous terms in one equation-level balance.  It gives the correct carrier
`(SLFT.1)`.  It does not force one factor to carry less terminal mass than the
other on the same shrinking heat window.

This direct test is functional, not a claim that `(SLFT.7)`--`(SLFT.8)` solve
Navier-Stokes.  It proves that the proposed estimate cannot be obtained from
critical factor bounds, local energy measure control, pressure ellipticity,
viscous smoothing, or same-fluid participation alone.

## 4. Exact consequence for the route

Same-layer factor-tail depletion is an exact sufficient supplier:

```math
\text{SameLayerStrainTailDepletion.A}
+
\sup_m\|W_m\|_{L^{10/3}_{s,y}}<\infty
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
\tag{SLFT.14}
```

The velocity-side analogue is identical:

```math
\text{SameLayerVelocityTailDepletion.A}
+
\sup_m\|\Sigma_m\|_{L^{5/2}_{s,y}}<\infty
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
\tag{SLFT.15}
```

The missing implication is the production direction:

```math
\text{current critical/local-energy/pressure/viscosity inputs}
\not\Longrightarrow
\text{SameLayerStrainTailDepletion.A or SameLayerVelocityTailDepletion.A}.
\tag{SLFT.16}
```

So same-layer factor depletion is not an independent closure from current
inputs.  It reduces to one of the same remaining suppliers:

```math
\begin{gathered}
\text{selected factor endpoint non-concentration},\\
\text{source-square/product reserve on the same selected carrier},\\
\text{strict exponent slack},\\
\text{strict rescaled no-waste},\\
\text{critical-element or rigid-Zeno no-source theorem}.
\end{gathered}
\tag{SLFT.17}
```

## Verdict

The factor-tail route is correct as a consumer and false as a free producer.

```math
\boxed{
\text{finite critical factor mass}
\not\Longrightarrow
\text{same-layer terminal factor depletion}.
}
\tag{SLFT.18}
```

Forward-gold closure still needs an unweighted same-selected-family reserve,
strict endpoint non-concentration, strict no-waste, or rigid-Zeno source
evacuation.
