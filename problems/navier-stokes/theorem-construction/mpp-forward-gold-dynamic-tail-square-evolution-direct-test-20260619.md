# MPP Forward-Gold Dynamic Tail-Square Evolution Direct Test

Date: 2026-06-19

## Status

Direct tail-evolution test complete.  The cumulative high-frequency tail does
obey a heat-damped scalar inequality, but the forcing term is exactly the
source/reserve creation wall.  Heat damping controls inherited tail.  It does
not prevent first-time creation of a scale-critical tail square from a
vanishing first-moment source on a heat window.

The attempted supplier is:

```math
\text{tail heat evolution}
\quad\Longrightarrow\quad
\text{SourceSquareReserve.A}.
```

This implication is not proved from current inputs.

## 1. Tail variable

Use the current source-square notation:

```math
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2,
\qquad
T_k(t)=\sum_{\ell>k+4}D_\ell(t),
\tag{DTE.1}
```

and

```math
\mathcal R_N(W)
=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{DTE.2}
```

The hoped-for reserve theorem is

```math
\mathcal R_N(W)
\le
o_N(1)+Loss_{legal}(W)
\tag{DTE.3}
```

on the selected terminal same-fluid heat windows.

## 2. Shell inequality in tail form

For each shell, the localized shell energy balance has the form

```math
{d\over dt}D_\ell(t)
+c\nu2^{2\ell}D_\ell(t)
\le
B_\ell^+(t)+L_\ell(t),
\tag{DTE.4}
```

where \(B_\ell^+\) is the positive nonlinear/source contribution in the same
units as \(D_\ell'\), and \(L_\ell\) denotes legal pressure, cutoff,
commutator, and selected leakage terms.

Summing over \(\ell>k+4\) gives

```math
{d\over dt}T_k(t)
+c\nu2^{2k}T_k(t)
\le
B_{>k}^+(t)+L_{>k}(t),
\tag{DTE.5}
```

where

```math
B_{>k}^+(t):=\sum_{\ell>k+4}B_\ell^+(t),
\qquad
L_{>k}(t):=\sum_{\ell>k+4}L_\ell(t).
\tag{DTE.6}
```

The heat damping in `(DTE.5)` is real.  It is the strongest direct advantage of
evolving the tail instead of only using the first-moment ledger.

## 3. Squaring the tail reintroduces the source wall

Multiplying `(DTE.5)` by \(2^kT_k(t)\) gives

```math
{1\over2}{d\over dt}\left(2^kT_k(t)^2\right)
+c\nu2^{3k}T_k(t)^2
\le
2^kT_k(t)B_{>k}^+(t)
+2^kT_k(t)L_{>k}(t).
\tag{DTE.7}
```

The left side contains the desired square density \(2^kT_k^2\), with the
extra heat factor \(\nu2^{2k}\).  On a heat window of length
\(\simeq(\nu2^{2k})^{-1}\), this heat factor is exactly scale-matched to the
window length.

The obstruction is the first forcing term:

```math
2^kT_k(t)B_{>k}^+(t).
\tag{DTE.8}
```

This is not controlled by the first moment \(\int T_k\).  Young's inequality
only gives

```math
2^kT_kB_{>k}^+
\le
{\theta}\nu2^{3k}T_k^2
+C_\theta\nu^{-1}2^{-k}\left(B_{>k}^+\right)^2.
\tag{DTE.9}
```

The first term can be absorbed.  The second term is a square/source reserve for
the forcing.  Current inputs do not control

```math
\int_W\sum_{k>N}2^{-k}\left(B_{>k}^+(t)\right)^2dt.
\tag{DTE.10}
```

by the first-moment dissipation tail.  Thus the tail evolution has not proved
`SourceSquareReserve.A`; it has moved the same square-reserve demand from
\(T_k\) to the positive source forcing \(B_{>k}^+\).

## 4. Mild form gives the same obstruction

The scalar mild form of `(DTE.5)` is

```math
T_k(t)
\le
e^{-c\nu2^{2k}(t-s)}T_k(s)
+
\int_s^t
e^{-c\nu2^{2k}(t-\tau)}
\bigl(B_{>k}^+(\tau)+L_{>k}(\tau)\bigr)\,d\tau.
\tag{DTE.11}
```

The inherited part is damped on the heat clock.  The created part is a
convolution over the same heat clock.  Squaring `(DTE.11)` gives

```math
\int_I2^kT_k(t)^2dt
\lesssim
{2^k\over\nu2^{2k}}T_k(s)^2
+
2^k
\int_I
\left(
\int_s^t e^{-c\nu2^{2k}(t-\tau)}B_{>k}^+(\tau)d\tau
\right)^2dt
+Legal.
\tag{DTE.12}
```

The convolution maps \(L^2_t\) source forcing to \(L^2_t\) tail with heat-scale
constants.  It does not map a merely finite \(L^1_t\) source forcing to the
needed square reserve uniformly on terminal heat windows.

So the mild form proves:

```math
\text{inherited tail decays,}
\tag{DTE.13}
```

and leaves:

```math
\text{new tail creation needs source-forcing square control.}
\tag{DTE.14}
```

That is exactly `ReserveCreationCharge.A`.

## 5. Heat-scale scalar model

The failure occurs even in the heat-damped scalar model.  Let

```math
h_m:=2^{-2m},
\qquad
a_m:=\nu2^{2m},
\qquad
a_mh_m\simeq\nu,
\tag{DTE.15}
```

and set

```math
T_m(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad
I_m=(T-h_m,T],
\qquad
A_m=2^{-3m/2}.
\tag{DTE.16}
```

Then

```math
\int_{I_m}T_m(t)\,dt=A_m\to0,
\tag{DTE.17}
```

while

```math
\int_{I_m}2^mT_m(t)^2dt
=
2^mA_m^2h_m^{-1}
=1.
\tag{DTE.18}
```

To satisfy the scalar heat equation

```math
T_m'(t)+a_mT_m(t)=B_m(t)
\tag{DTE.19}
```

one needs forcing with first moment of order \(A_m+a_mA_mh_m\), hence still
of order \(A_m\) on a heat window.  That tends to zero.  The forcing rate is
large, but only for heat time, and the first moment remains small.

Thus heat damping plus first-moment source control does not imply the square
tail reserve.  The missing input is the square or reverse-Holder control of
the forcing itself.

## 6. Navier-Stokes reading

In the Navier-Stokes packet, \(B_{>k}^+\) is not a free external force.  It is
the same coupled native source produced by pressure, convection, viscosity,
and neighboring scales.  That participation fact gives visibility:

```math
B_{>k}^+
\text{ is part of the same local energy/source ledger.}
\tag{DTE.20}
```

It does not give the stronger inequality

```math
\int_W\sum_{k>N}2^{-k}\left(B_{>k}^+\right)^2dt
\le
o_N(1)+Loss_{legal}(W).
\tag{DTE.21}
```

That stronger inequality is just a source-square / no-waste / reverse-Holder
theorem for the forcing channel.  It is not a consequence of `(DTE.5)`.

## Verdict

Dynamic tail evolution is useful but not decisive.

```math
\boxed{
\text{heat damping kills inherited tail; it does not kill first-time
heat-scale tail creation from an }L^1_t\text{ source pulse.}
}
\tag{DTE.22}
```

The exact remaining supplier is:

```math
\boxed{
\text{SourceSquareReserve.A for }T_k
\quad\text{or}\quad
\text{source-forcing square/reverse-Holder control for }B_{>k}^+
\quad\text{or}\quad
\text{no-waste rigidity.}
}
\tag{DTE.23}
```

So the dynamic tail route does not solve the gold branch.  It sharpens
`ReserveCreationCharge.A`: first-time creation is possible unless the positive
source forcing has a square, reverse-Holder, or no-waste charge on the same
terminal heat windows.
