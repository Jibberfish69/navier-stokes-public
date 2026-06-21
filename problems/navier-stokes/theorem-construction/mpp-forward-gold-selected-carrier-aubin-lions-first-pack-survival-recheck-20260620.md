# MPP Forward-Gold Selected-Carrier Aubin--Lions First-Pack Survival Recheck

Date: 2026-06-20

## Status

Direct compactness recheck complete.  `SelectedCarrierAubinLionsFirstPackSurvival.A` is not produced by current inputs.

Aubin--Lions compactness is an `u`-level theorem.  It can compactify velocity in a subcritical or weak physical topology after energy, dissipation, and negative-spatial-norm time-derivative bounds are installed.  The first-Pack survival problem needs endpoint uniformity of the selected positive carrier after localization, projection, weighting/lifting, packet selection, and positive-part extraction.  Current inputs do not contain a continuity theorem from the Aubin--Lions topology to that selected carrier.

Thus the compactness route is a consumer of the missing terminal modulus, not a producer of it.

## 1. What first-Pack survival would need

Let the selected normalized positive carrier be

```math
\mu_m(ds)=a_m(s)\,ds,
\qquad
s\in[-1,0],
\qquad
a_m\ge0.
\tag{ALP.1}
```

The endpoint anti-atom / terminal strip modulus is

```math
\lim_{\theta\downarrow0}\limsup_m
\mu_m((-\theta,0])=0.
\tag{ALP.2}
```

A compactness-based first-Pack survival theorem would have to prove

```math
\text{Aubin--Lions compactness of }u_m
\Longrightarrow
\text{the endpoint modulus }(\text{ALP.2})\text{ for }\mu_m.
\tag{ALP.3}
```

Once `(ALP.2)` is known, the terminal selected mass cannot hide entirely in a zero-thickness final time layer.  That gives the preterminal time participation needed by the first-Pack survival branch.  So `(ALP.3)` is the actual compactness burden.

## 2. What Aubin--Lions actually controls

In its usable form, Aubin--Lions starts with Banach spaces

```math
X\Subset B\hookrightarrow Y,
\tag{ALP.4}
```

and bounds of the form

```math
\sup_m\|u_m\|_{L^p(-1,0;X)}<\infty,
\qquad
\sup_m\|\partial_su_m\|_{L^q(-1,0;Y)}<\infty.
\tag{ALP.5}
```

It returns compactness of `u_m` in a `B`-valued time space.  This is a velocity compactness statement.  It has no built-in conclusion about the selected scalar carrier `a_m`, because `a_m` is not a fixed continuous linear observation of `u_m`.  It is produced only after the Navier--Stokes packet operations and positive selection have been applied.

Therefore `(ALP.3)` requires an additional bridge:

```math
u_m\to u\text{ in the Aubin--Lions topology}
\quad\Longrightarrow\quad
\mu_m((-\theta,0])\text{ has a uniform endpoint modulus.}
\tag{ALP.6}
```

No installed note supplies `(ALP.6)`.

## 3. The endpoint curve compactness permits the enemy

Finite selected mass gives

```math
\sup_m\mu_m([-1,0])<\infty.
\tag{ALP.7}
```

This gives Helly compactness for the cumulative curves

```math
A_m(\theta)=\mu_m((-\theta,0]),
\qquad
0\le\theta\le1.
\tag{ALP.8}
```

It does not give `(ALP.2)`.  The exact terminal pulse

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{ALP.9}
```

satisfies

```math
\mu_m([-1,0])=1,
\qquad
A_m(\theta)=\min(1,\theta/\tau_m).
\tag{ALP.10}
```

For every fixed `theta>0`, all sufficiently large `m` satisfy `tau_m<theta`, hence

```math
\limsup_m A_m(\theta)=1,
\qquad
\lim_{\theta\downarrow0}\limsup_m A_m(\theta)=1.
\tag{ALP.11}
```

So the endpoint pulse has compact cumulative curves but fails the terminal modulus.  Compactness alone sees a limiting monotone curve with a jump at the endpoint.

## 4. Strong subcritical compactness still misses the cubic carrier

Take a nonzero smooth compactly supported divergence-free vector field `V` and choose a smooth nonnegative `chi` supported in `(-1,0]` with

```math
\int_{-1}^{0}|\chi(\sigma)|^3\,d\sigma=1.
\tag{ALP.12}
```

Set

```math
b_m(s)=\tau_m^{-1/3}\chi(s/\tau_m),
\qquad
v_m(s,y)=b_m(s)V(y).
\tag{ALP.13}
```

Then the selected cubic time factor has fixed mass:

```math
\int_{-1}^{0}|b_m(s)|^3\,ds
=
\int_{-1}^{0}|\chi(\sigma)|^3\,d\sigma
=1.
\tag{ALP.14}
```

At the same time, the subcritical `L_s^2L_y^2` size vanishes:

```math
\int_{-1}^{0}|b_m(s)|^2\,ds
=
\tau_m^{1/3}\int_{-1}^{0}|\chi(\sigma)|^2\,d\sigma
\longrightarrow0.
\tag{ALP.15}
```

Thus `v_m` converges strongly to zero in `L_s^2L_y^2`, while the cubic time carrier in `(ALP.14)` remains fixed.  Any compactness theorem that lands below the critical cubic topology can lose exactly the object the selected carrier records.

Strong compactness in a topology that forces the cubic carrier to vanish would be a different theorem.  It would already contain a critical action, source-square, CKN, or selected-carrier reserve.  That is the missing gold input, not a consequence of ordinary Aubin--Lions compactness.

## 5. Relation to the installed temporal-regularity test

The existing note

```text
problems/navier-stokes/theorem-construction/mpp-forward-gold-source-time-concentration-cost-temporal-regularity-test-20260620.md
```

checks the heat-scale physical version.  For a packet

```math
u_m(t,x)=r_m^{-1}b_m(s)V(y),
\qquad
s={t-T\over r_m^2},
\qquad
y={x-x_m\over r_m},
\tag{ALP.16}
```

with terminal interval length `tau_m`, the normalized cubic carrier remains fixed while the physical energy, dissipation, and natural `L_t^{4/3}H_x^{-1}` time-derivative currency can vanish by taking `tau_m=r_m`.

That earlier calculation blocks the natural Navier--Stokes compactness route.  The present note records the Pack-survival consequence: the same compactness cannot supply preterminal selected time thickness.

## 6. Verdict

`SelectedCarrierAubinLionsFirstPackSurvival.A` fails as a new forward-gold supplier from current inputs.

The exact obstruction is:

```math
\boxed{
\text{Aubin--Lions compactifies }u_m\text{ in a weak/subcritical topology,}
\quad
\text{while the selected positive carrier is endpoint, cubic, and one-sided.}
}
\tag{ALP.17}
```

A successful compactness route must add one of the missing same-carrier endpoint controls:

```math
\begin{gathered}
\text{SelectedCarrierEndpointUI.A},\\
\text{PositiveSourceTraceAC.A / TerminalSourceReverseHolder.A},\\
\text{SourceSquareReserve.A / ScaleCriticalTreeCarleson.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{or rigid Zeno no-source-residue production.}
\end{gathered}
\tag{ALP.18}
```

Without one of these, compactness remains visibility support only.  It does not prove forward-gold first-Pack survival.  The retained endpoint pulse is still consumed only by the same-witness CM Part/Field branch after CM admission, not by this compactness theorem itself.