# MPP Forward-Gold Shell-Density Debt-Curve Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The shell-density / under-paying-shell picture is a real
and useful ontology for the terminal time-face obstruction, but it does not
produce an independent forward-gold closure from the currently installed
inputs.

The correct output is sharper:

```math
\text{shell-density debt curves}
\Longrightarrow
\text{terminal endpoint uniformity problem}.
\tag{SDC.1}
```

The route returns to the same missing supplier:

```math
\text{SelectedCarrierEndpointUI.A}
```

or any equivalent source-residence / source-square / selected critical-strain /
normalized CKN Carleson / strict no-waste Lyapunov theorem on the selected
positive carrier.

## 1. Static shell bookkeeping

Let \(\mu_t\) be the route-native nonnegative density being tested.  Depending
on the branch this may be local kinetic energy, selected positive source mass,
or a normalized critical carrier.  Define

```math
M(r,t)=\mu_t(B_r(x_0)),
\tag{SDC.2}
```

with ball average

```math
\rho_{\mathrm{ball}}(r,t)
=
{M(r,t)\over |B_r|}
=
{3M(r,t)\over4\pi r^3},
\tag{SDC.3}
```

and shell average, where the radial derivative exists,

```math
\rho_{\mathrm{shell}}(r,t)
=
{1\over4\pi r^2}\partial_r M(r,t).
\tag{SDC.4}
```

This is the clean version of the under-paying-shell ledger.

If every shell stayed below the average density of a fixed outer ball
\(B_R\), then integration would force the smaller ball to stay below that same
fixed average:

```math
\rho_{\mathrm{shell}}(s,t)\le \rho_{\mathrm{ball}}(R,t)
\quad(0<s<R)
\Longrightarrow
M(r,t)\le {4\pi\over3}r^3\rho_{\mathrm{ball}}(R,t).
\tag{SDC.5}
```

So a critical concentration must eventually overpay relative to the fixed outer
average.

That part of the intuition is correct.

## 2. The live heat-scale profile does not overpay the current inner average

The surviving heat-scale enemy has the physical energy scaling

```math
M(r,t)\simeq C r.
\tag{SDC.6}
```

Then

```math
\rho_{\mathrm{ball}}(r,t)
\simeq
{3C\over4\pi r^2},
\qquad
\rho_{\mathrm{shell}}(r,t)
\simeq
{C\over4\pi r^2}.
\tag{SDC.7}
```

Thus

```math
\rho_{\mathrm{shell}}(r,t)
\simeq
{1\over3}\rho_{\mathrm{ball}}(r,t).
\tag{SDC.8}
```

So the proposed inequality

```math
\rho_{\mathrm{shell}}>
\rho_{\mathrm{interior}}
```

is not forced by critical heat-scale concentration.  The shell may remain below
the current inner ball average at every scale while both averages diverge.

The distinction is important:

```math
\rho_{\mathrm{shell}}
>
\text{fixed outer average}
```

is forced by concentration but is too weak to contradict the heat-scale branch.

```math
\rho_{\mathrm{shell}}
>
\text{current inner average}
```

would be strong enough to create a radial overpayment point, but it is false
for the basic live profile \(M(r)\simeq r\).

## 3. The real curve is terminal cumulative source residence

The time-face version should be written as a family of cumulative curves.
After parabolic normalization, define

```math
A_m(\theta)
=
\mu_m^{src,+}\bigl(B_1\times[-\theta,0]\bigr),
\qquad
0\le \theta\le1.
\tag{SDC.9}
```

The desired no-atom statement is not pointwise continuity for each \(m\).  It is
endpoint uniformity:

```math
\lim_{\theta\downarrow0}\limsup_{m\to\infty}A_m(\theta)=0.
\tag{SDC.10}
```

The terminal pulse model is

```math
g_m(s)=
{a\over\tau_m}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{SDC.11}
```

For this model,

```math
A_m(\theta)
=
a\min\left(1,{\theta\over\tau_m}\right).
\tag{SDC.12}
```

Every individual curve is absolutely continuous, and every individual curve
goes to zero at \(\theta=0\).  The family still has a terminal jump in the
limit because the rise slides into a vanishing interval:

```math
\lim_{\theta\downarrow0}\limsup_{m\to\infty}A_m(\theta)=a.
\tag{SDC.13}
```

This is the exact mathematical form of the last-instant source atom.

## 4. Why Weierstrass-style curve approximation does not close it

A Weierstrass approximation theorem can approximate each continuous curve on a
fixed compact interval.  It does not give a uniform endpoint modulus for the
whole family.

The pulse curves in `(SDC.12)` are already continuous.  They can be uniformly
approximated by polynomials one at a time.  The obstruction is that the slopes
near the endpoint grow like

```math
\|A_m'\|_\infty\simeq {a\over\tau_m}\to\infty.
\tag{SDC.14}
```

Thus ordinary compactness of individual curves is not the needed theorem.
Helly-type bounded-variation compactness also does not close the route: it
allows a limiting BV curve with a jump at \(\theta=0\).

The missing compactness theorem must be an endpoint-uniformity theorem.  A
usable form would be:

```math
A_m(\theta)-A_m(0)
\le
\omega(\theta)+\mathrm{legal}_m,
\qquad
\omega(\theta)\downarrow0,
\qquad
\mathrm{legal}_m\to0.
\tag{SDC.15}
```

This is exactly the anti-atom/source-residence burden.

## 5. Relation to participation

The shell-density debt picture is a readout of the shared-fluid participation
law, not a replacement for it.  The same-fluid law is still the coupled
pressure-viscosity-incompressibility-neighbor balance.  The debt curve is what
one sees after pushing that coupled law onto a shrinking radial or terminal
time window.

The useful theorem statement is:

```math
\text{persistent under-paying shells up to }(r,t)=(0,T^\ast)
\Longrightarrow
\text{failure of endpoint uniformity for }A_m.
\tag{SDC.16}
```

That is a correct diagnosis, but it is not yet a contradiction.

To make it a contradiction one needs a genuine uniform modulus such as
`(SDC.15)` from one of the already identified currencies:

```math
\text{source-square reserve},
\quad
\text{selected critical-strain Carleson reserve},
\quad
\text{normalized CKN terminal Carleson reserve},
\quad
\text{strict rescaled no-waste Lyapunov drop}.
\tag{SDC.17}
```

## Verdict

The shell-density / under-paying-shell route preserves the physical picture
better than a bare \(L^1_t\) anti-atom statement.  Its exact mathematical
content is endpoint uniformity for the terminal cumulative source curves.

It does not independently close the forward-gold branch, because the live
heat-scale profile \(M(r)\simeq r\) can keep the current shell average below
the current inner average while still producing divergent density, and the
time-face pulse can move every curve crossing into a vanishing terminal
interval.

So the route is useful, but its noncircular closure is the same theorem already
isolated:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{SDC.18}
```

or an equivalent selected-carrier endpoint-uniformity/no-waste theorem.
