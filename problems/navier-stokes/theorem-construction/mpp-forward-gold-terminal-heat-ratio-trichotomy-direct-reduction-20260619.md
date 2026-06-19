# MPP Forward-Gold Terminal Heat-Ratio Trichotomy Direct Reduction

Date: 2026-06-19

## Status

Direct reduction of the terminal time-window calculus after the participation
throttle and heat-scale critical-feed tests.

The point is to remove a false ambiguity.  A terminal source pulse is not an
arbitrary "short time" object.  Once the packet radius \(r\) and remaining time
\(\tau=T-t\) are compared, only one ratio is genuinely live:

```math
\Theta:={\nu\tau\over r^2}.
\tag{HTR.1}
```

The three regimes are:

```math
\Theta\downarrow0
\quad\text{subheat window,}
\tag{HTR.2}
```

```math
0<c_\Theta\le\Theta\le C_\Theta<\infty
\quad\text{heat-scale window,}
\tag{HTR.3}
```

and

```math
\Theta\uparrow\infty
\quad\text{many-heat-times window.}
\tag{HTR.4}
```

The subheat regime cannot carry order-one normalized feed.  The many-heat-times
regime either exposes an earlier selected source/residence cost or can be
truncated to the last heat-scale slab.  The unresolved forward-gold case is
therefore the heat-scale endpoint packet.

## 1. Packet balance and the ratio

On a selected packet of radius \(r\), the normalized energy balance has the
form

```math
{d\over dt}E(t)
+c{\nu\over r^2}E(t)
\le
\lambda^+(t)E(t)+Legal(t),
\tag{HTR.5}
```

where

```math
\lambda^+(t)
=
\left[e(t,x)\cdot S_{<}^{loc}(t,x)e(t,x)\right]_+
\tag{HTR.6}
```

is the selected trilinear feed coefficient seen by the packet direction.

The largest scale-compatible feed coefficient is bounded by

```math
\lambda^+(t)\le C_\lambda{\nu\over r^2}
\tag{HTR.7}
```

after stronger critical currencies are removed from the discussion.  Integrating
over a terminal window of length \(\tau\) gives

```math
\int_{T-\tau}^{T}\lambda^+(t)\,dt
\le
C_\lambda
{\nu\tau\over r^2}
=
C_\lambda\Theta.
\tag{HTR.8}
```

So the heat ratio \(\Theta\) is the right clock for the terminal feed question.

## 2. Subheat windows are harmless

If

```math
\Theta_m={\nu\tau_m\over r_m^2}\to0,
\tag{HTR.9}
```

then `(HTR.8)` gives

```math
\int_{T-\tau_m}^{T}\lambda_m^+(t)\,dt\to0.
\tag{HTR.10}
```

The normalized packet cannot receive order-one feed in that window, apart from
legal exits already charged elsewhere.

This is the exact version of "earlier cannot be immediate because there is a
speed limit."  A window shorter than the heat clock has too little time to feed
the packet at the scale-compatible maximum rate.

## 3. Heat-scale windows are the live case

If

```math
0<c\le
\Theta_m={\nu\tau_m\over r_m^2}
\le C<\infty,
\tag{HTR.11}
```

then an order-one normalized feed is compatible with the packet balance exactly
when the selected coefficient also has a matching lower bound on a comparable
subwindow.  Under

```math
\lambda_m^+(t)\ge c_\lambda{\nu\over r_m^2}
\quad\text{on a set }G_m\subset[T-\tau_m,T]
\quad\text{with}\quad
|G_m|\ge c_t{r_m^2\over\nu},
\tag{HTR.12}
```

one gets

```math
\int_{T-\tau_m}^{T}\lambda_m^+(t)\,dt
\ge
c_\lambda c_t.
\tag{HTR.13}
```

This is exactly the already isolated critical feed event:

```math
\alpha_t{r_m^2\over\nu}\le \tau_m\le A_t{r_m^2\over\nu},
\qquad
\alpha_\lambda{\nu\over r_m^2}
\le
\lambda_m^+
\le
A_\lambda{\nu\over r_m^2}.
\tag{HTR.13a}
```

All forward-gold coercivity must therefore act on this regime by one of the
critical currencies:

```math
L^{5/2}_{t,x}\text{ strain},
\qquad
L^5_{t,x}\text{ velocity/CKN},
\qquad
\text{source-square/Carleson},
\qquad
\text{no-waste local-energy flux}.
\tag{HTR.14}
```

## 4. Many-heat-times windows reduce to residence or the last heat slab

If

```math
\Theta_m={\nu\tau_m\over r_m^2}\to\infty,
\tag{HTR.15}
```

then the terminal window contains

```math
\lfloor c\,\Theta_m\rfloor
\le
N_m
\le
\lceil C\,\Theta_m\rceil
\tag{HTR.16}
```

disjoint heat-scale subwindows.

There are only two possibilities.

First, the selected source/feed is present on many of those heat subwindows.
Then the branch pays a residence, source-square, or Carleson cost:

```math
\sum_{\ell=1}^{N_m}
\int_{I_{m,\ell}}\lambda_m^+(t)\,dt
\ge c_\lambda c_t N_m
\tag{HTR.17}
```

unless the feed is sparse.  This is the source-residence/source-square route.

Second, the selected source/feed is sparse and occurs only near the terminal
end.  Then the earlier part of the long window is irrelevant to the terminal
atom, and the active branch can be truncated to the last heat-scale slab

```math
[T-c r_m^2/\nu,T].
\tag{HTR.18}
```

After this truncation, the branch is back in `(HTR.11)`.

Thus a many-heat-times terminal window is not a new endpoint object.  It either
has visible residence through many heat clocks or reduces to the final
heat-scale packet.

## 5. Consequence for the "maximum transfer curve"

For a fixed radius \(R_0\), the maximum terminal transfer curve is linear:

```math
\int_{T-\tau}^{T}\lambda^+(t)\,dt
\lesssim
{\nu\over R_0^2}\tau.
\tag{HTR.19}
```

For a moving heat-scale packet satisfying
\(c_h\nu(T-t)\le r(t)^2\le C_h\nu(T-t)\), the instantaneous
scale-compatible rate is

```math
{c_\lambda\over C_h}{1\over T-t}
\le
\lambda^+(t)
\le
{C_\lambda\over c_h}{1\over T-t}.
\tag{HTR.20}
```

This does not mean a fixed packet transfers infinite energy.  The physical
energy in each critical packet is only \(O(r)\).  It means the normalized
critical feed can remain order one on each dyadic heat-scale terminal layer.

The calculus therefore does not need a generic monotonicity theorem over all
terminal windows.  It needs a coercive theorem for the final heat-scale layers.

## Reduction

After legal exits and fixed-radius ancestry are removed, every terminal source
pulse falls into one of the following:

```math
\boxed{
\Theta\downarrow0
\Longrightarrow
\text{no order-one normalized terminal feed}.
}
\tag{HTR.21}
```

```math
\boxed{
\Theta\uparrow\infty
\Longrightarrow
\text{source residence/source-square cost}
\quad\text{or}\quad
\text{reduction to the last heat-scale slab}.
}
\tag{HTR.22}
```

```math
\boxed{
0<c_\Theta\le\Theta\le C_\Theta<\infty
\Longrightarrow
\text{the genuine heat-scale critical packet remains.}
}
\tag{HTR.23}
```

So the sharpened forward-gold target is not "rule out all short terminal
windows."  It is:

```math
\boxed{
\text{rule out or pay the final heat-scale source-balanced packet.}
}
\tag{HTR.24}
```

The existing critical-strain, CKN, high-tower, source-square, and no-waste
branches are exactly the candidate coercive currencies for `(HTR.24)`.
