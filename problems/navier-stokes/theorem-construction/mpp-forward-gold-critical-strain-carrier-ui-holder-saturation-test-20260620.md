# MPP Forward-Gold Critical-Strain Carrier UI Holder Saturation Test

Date: 2026-06-20

## Status

Direct selected critical-strain carrier-uniform-integrability test complete.
The usual critical Holder pairing identifies the right scale, but by itself it
does not produce endpoint uniform integrability of the actual selected positive
carrier.

This is sharper than the earlier selected-strain Carleson obstruction.  Even
after granting uniform critical bounds on the two conjugate factors,
\(L^{5/2}\) strain and \(L^{10/3}\) velocity, the product can concentrate in
the last terminal time layer.  To get the endpoint no-jump theorem, the proof
needs strict exponent slack, source-square/product control, terminal tail
depletion of one factor in the same layer, or a no-waste rigidity mechanism.

## 1. The carrier product

On a normalized selected heat-scale packet, the native positive carrier has the
form

```math
a_m(s)
=
\int_{B_1}
\left[
\left\langle
\Sigma_m^{loc}(s,y)W_m(s,y),W_m(s,y)
\right\rangle
\right]_+
dy.
\tag{CSUI.1}
```

For an upper estimate one may drop the sign and write

```math
a_m(s)
\le
\int_{B_1}
|\Sigma_m^{loc}(s,y)|\,|W_m(s,y)|^2\,dy.
\tag{CSUI.2}
```

Spatial Holder gives

```math
a_m(s)
\le
\|\Sigma_m^{loc}(s)\|_{L_y^{5/2}}
\|W_m(s)\|_{L_y^{10/3}}^2.
\tag{CSUI.3}
```

The exponents are exactly conjugate after squaring the velocity:

```math
{1\over 5/2}+{1\over 5/3}
=
{2\over5}+{3\over5}
=1,
\qquad
\||W_m|^2\|_{L_y^{5/3}}
=
\|W_m\|_{L_y^{10/3}}^2.
\tag{CSUI.4}
```

The endpoint anti-atom would follow from

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{CSUI.5}
```

The question is whether uniform critical bounds on the two factors force
`(CSUI.5)`.

## 2. Critical factor bounds alone do not give endpoint UI

Assume the two natural critical bounds:

```math
\sup_m
\int_{-1}^{0}\int_{B_1}
|\Sigma_m^{loc}|^{5/2}\,dy\,ds
\le C_\Sigma,
\tag{CSUI.6}
```

and

```math
\sup_m
\int_{-1}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
\le C_W.
\tag{CSUI.7}
```

These bounds imply only a uniform \(L_s^1\) bound on the product:

```math
\int_{-1}^{0}a_m(s)\,ds
\le
C_\Sigma^{2/5}C_W^{3/5}.
\tag{CSUI.8}
```

They do not imply endpoint uniform integrability.  The reason is that
`(CSUI.6)` and `(CSUI.7)` sit exactly at conjugate exponents, so both factors
may concentrate on the same shrinking terminal set.

## 3. Holder saturation model

Fix smooth nonnegative spatial profiles \(\sigma,\psi\in C_c^\infty(B_1)\)
with

```math
\int_{B_1}\sigma^{5/2}\,dy=1,
\qquad
\int_{B_1}\psi^{10/3}\,dy=1,
\qquad
\int_{B_1}\sigma\psi^2\,dy=c_0>0.
\tag{CSUI.9}
```

Let \(\tau_m\downarrow0\), and define

```math
\Sigma_m(s,y)
=
\tau_m^{-2/5}\sigma(y)
{\bf 1}_{(-\tau_m,0]}(s),
\tag{CSUI.10}
```

and

```math
W_m(s,y)
=
\tau_m^{-3/10}\psi(y)
{\bf 1}_{(-\tau_m,0]}(s).
\tag{CSUI.11}
```

Then the critical strain bound is fixed:

```math
\int_{-1}^{0}\int_{B_1}
|\Sigma_m|^{5/2}\,dy\,ds
=
\tau_m\cdot\tau_m^{-1}
\int_{B_1}\sigma^{5/2}\,dy
=1.
\tag{CSUI.12}
```

The critical velocity bound is also fixed:

```math
\int_{-1}^{0}\int_{B_1}
|W_m|^{10/3}\,dy\,ds
=
\tau_m\cdot\tau_m^{-1}
\int_{B_1}\psi^{10/3}\,dy
=1.
\tag{CSUI.13}
```

But the selected carrier is a terminal layer:

```math
a_m(s)
=
\int_{B_1}|\Sigma_m|\,|W_m|^2\,dy
=
c_0\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s).
\tag{CSUI.14}
```

Thus

```math
\int_{-1}^{0}a_m(s)\,ds=c_0,
\tag{CSUI.15}
```

while

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=
c_0.
\tag{CSUI.16}
```

So `(CSUI.6)` and `(CSUI.7)` do not imply `(CSUI.5)`.

This model is not being used as a Navier-Stokes solution.  It is a sharp
functional obstruction to the estimate that would turn conjugate critical
factor bounds into endpoint uniform integrability of their product.

## 4. What would make the product uniformly integrable

The endpoint modulus follows if one factor has strict exponent slack.  For
example, if

```math
\sup_m
\|\Sigma_m\|_{L_{s,y}^{5/2+\varepsilon}}
+
\sup_m
\|W_m\|_{L_{s,y}^{10/3}}
<\infty,
\tag{CSUI.17}
```

with enough matching integrability to keep the product in \(L_s^{1+\delta}\),
then the family \(\{a_m\}\) is uniformly integrable in \(s\).

It also follows from a direct source-square/product estimate:

```math
a_m(s)\le C G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2\,ds<\infty,
\tag{CSUI.18}
```

with a legal endpoint modulus for \(\ell_m\).

Or it follows from true terminal tail depletion of one factor on the same
selected layer:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
|\Sigma_m|^{5/2}\,dy\,ds
=0,
\tag{CSUI.19}
```

plus the compatible velocity-side control, or the analogous depletion for
\(|W_m|^{10/3}\).

Finally, a strict rescaled no-waste Lyapunov theorem could give the product
modulus directly:

```math
-{d\over ds}L_m(s)
\ge
c\,a_m(s)-\operatorname{legal}_m(s),
\qquad
L_m(s)\ge -C.
\tag{CSUI.20}
```

## 5. Consequence for the gold route

The selected critical-strain route has two different levels.

First, selected \(L^{5/2}\) strain is the correct scale-critical payment for a
heat-scale feed event.  It charges one normalized unit per retained critical
packet.

Second, the endpoint anti-atom needs uniform integrability of the actual
selected positive carrier \(a_m(s)\).  The conjugate Holder estimate gives only
\(L_s^1\) control of that carrier unless an extra no-concentration mechanism is
added.

Thus the following implication is false as a functional estimate:

```math
\boxed{
\begin{aligned}
&\Sigma_m\text{ bounded in }L^{5/2}_{s,y}
\quad\text{and}\quad
W_m\text{ bounded in }L^{10/3}_{s,y}\\
&\Longrightarrow
\{a_m\}\text{ endpoint-uniformly integrable in }s.
\end{aligned}
}
\tag{CSUI.21}
```

The needed production theorem must prove one of:

```math
\begin{gathered}
\text{same-carrier source-square / product control},\\
\text{strict exponent slack beyond the conjugate critical pair},\\
\text{terminal tail depletion for one factor on the same selected layer},\\
\text{selected critical-strain/velocity non-concentration},\\
\text{strict rescaled no-waste or critical-element rigidity.}
\end{gathered}
\tag{CSUI.22}
```

## Verdict

Selected critical strain remains a real coercive currency, but critical
factor bounds at the conjugate exponents do not by themselves give the
terminal no-jump modulus for the selected positive source curve:

```math
\boxed{
\text{critical-strain scale payment}
\ne
\text{selected-carrier endpoint uniform integrability}.
}
\tag{CSUI.23}
```

The gold route therefore still needs a same-carrier super-\(L^1\) product
mechanism, a source-square/Carleson theorem, or strict no-waste rigidity.
