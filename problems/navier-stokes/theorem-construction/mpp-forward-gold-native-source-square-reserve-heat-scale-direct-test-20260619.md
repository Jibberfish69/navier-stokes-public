# MPP Forward Gold Native Source-Square Reserve Heat-Scale Direct Test

Date: 2026-06-19

## Status

Direct native source-square test complete.  The source-square / scale-critical
tree-Carleson reserve is exactly the packet-native version of the unweighted
terminal critical-action reserve.  It would close the heat-scale terminal
branch.  Current Navier-Stokes inputs do not prove it.

The failure is not only an arbitrary thin-time pulse.  It remains at heat
scale.  First-moment dissipation tail control is still one half-power too weak
to control the scale-critical square density on windows of length
\(h_j\sim 2^{-2j}\).

## 1. Native square reserve

After the diffuse parent selector has been reduced by the static embedding, the
native source-square reserve is

```math
\mathcal R_N(W)
:=
\int_W
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt,
\tag{NSS.1}
```

where

```math
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2.
\tag{NSS.2}
```

The corresponding first-moment high-frequency tail is

```math
\mathcal F_N(W)
:=
\int_W
\sum_{\ell>N}D_\ell(t)\,dt.
\tag{NSS.3}
```

The installed energy tail gives

```math
\mathcal F_N([0,T_\ast])\to0
\qquad (N\to\infty)
\tag{NSS.4}
```

for smooth preterminal data.  The desired source-square theorem would upgrade
this to a terminal square reserve:

```math
\mathcal R_N(W)
\le
o_N(1)+\operatorname{Loss}_{legal}(W)
\tag{NSS.5}
```

on the selected same-fluid terminal windows left after legal exits.

## 2. Why the reserve would close the heat-scale branch

On a retained source-balanced heat-scale packet, the native positive trilinear
carrier has a lower normalized quantum.  In the source-square variables this
means that for infinitely many selected windows \(W_j\),

```math
\mathcal R_N(W_j)\ge c_0>0.
\tag{NSS.6}
```

If `(NSS.5)` held with terminal-tail depletion, then the infinite chain would
be impossible:

```math
\sum_j\mathcal R_N(W_j)<\infty
\quad\text{and}\quad
\mathcal R_N(W_j)\ge c_0
\quad\text{for infinitely many }j
\tag{NSS.7}
```

are incompatible.

Thus `SourceSquareReserve.A`, `ScaleCriticalTreeCarleson.A`, and the
unweighted terminal critical-action reserve are the same closure demand in
different currencies.

## 3. First moment does not imply the square reserve at heat scale

Take one active frequency tail at level \(m+5\) on a terminal window \(I_m\)
with heat-scale length

```math
|I_m|=h_m=2^{-2m}.
\tag{NSS.8}
```

Set

```math
D_{m+5}(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
\tag{NSS.9}
```

Then the first-moment tail is

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt
=A_m.
\tag{NSS.10}
```

The square reserve at \(k=m\) is

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
=
2^mA_m^2h_m^{-1}.
\tag{NSS.11}
```

Choose

```math
A_m=2^{-3m/2}.
\tag{NSS.12}
```

Using \(h_m=2^{-2m}\), this gives

```math
A_m\to0,
\qquad
2^mA_m^2h_m^{-1}
=
2^m\,2^{-3m}\,2^{2m}
=1.
\tag{NSS.13}
```

So even at heat scale, first-moment tail mass can vanish while the
scale-critical square reserve remains order one.

This is a scale-bookkeeping countermodel to deriving `(NSS.5)` from
`(NSS.4)`.  It is not asserted as a Navier-Stokes solution.

## 4. The missing pointwise height bound

The algebraic reason is simple.  Define the active tail height

```math
H_N(W)
:=
\sup_{t\in W}\sup_{k>N}
2^k
\sum_{\ell>k+4}D_\ell(t).
\tag{NSS.14}
```

Then

```math
\mathcal R_N(W)
\le
H_N(W)
\int_W\sum_{k>N}\sum_{\ell>k+4}D_\ell(t)\,dt.
\tag{NSS.15}
```

After summing the geometric multiplicity in \(k\), this becomes a valid
conditional estimate

```math
\mathcal R_N(W)
\le
C\,H_N(W)\,\mathcal F_N(W).
\tag{NSS.16}
```

Thus a uniform active-height theorem

```math
H_N(W)\le C_{legal}
\tag{NSS.17}
```

would convert first-moment tail control into the square reserve.

Current inputs do not prove `(NSS.17)`.  In the heat-scale model above,

```math
H_N(I_m)
\ge
2^mA_mh_m^{-1}
=
2^m\,2^{-3m/2}\,2^{2m}
=
2^{3m/2},
\tag{NSS.18}
```

so the missing theorem is exactly a height/amplitude throttle.

## 5. Why participation does not supply the height throttle

The participation law keeps the selected packet inside the same coupled
Navier-Stokes relation:

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{NSS.19}
```

At frequency \(2^m\), viscous drain has rate \(2^{2m}\).  On a heat-scale
window \(h_m\sim2^{-2m}\), this permits an order-one normalized response from a
source of comparable heat-scale rate.  It gives the correct timing, but not a
pointwise amplitude cap for \(H_N(W)\).

So participation rules out private packet energy.  It does not, by itself,
turn the first-moment tail `(NSS.4)` into the square-density estimate
`(NSS.5)`.

## 6. Dynamic first-creation form

The noncircular dynamic theorem would be:

```math
\boxed{
\left[
\mathcal R_N(W)
-(1-\delta)\mathcal R_N(\operatorname{Past}(W))
-\operatorname{Loss}_{legal}(W)
\right]_+
\le
\operatorname{Charge}_N(W)+o_N(1)
}
\tag{NSS.20}
```

with

```math
\sum_W\operatorname{Charge}_N(W)
\le
C\mathcal F_N([0,T_\ast])+o_N(1).
\tag{NSS.21}
```

Differentiating \(\mathcal R_N\) does not prove `(NSS.20)`.  It produces the
term

```math
2\sum_{k>N}2^kT_k(t)
\sum_{\ell>k+4}\operatorname{source}_\ell(t),
\tag{NSS.22}
```

which is the same positive native trilinear source after localization and
selection.  Young's inequality puts \(\mathcal R_N\) back on the right-hand
side without the contraction factor \(1-\delta\).

Thus the dynamic route reduces to the same missing theorem:

```math
\boxed{
\text{ReserveCreationCharge.A}
}
\tag{NSS.23}
```

or equivalently the height throttle `(NSS.17)`, an inverse donor-adjoint trace,
or a retained Pack-gain/amplitude theorem.

## 7. Exact reduced supplier

The direct source-square test therefore leaves:

```math
\boxed{
\text{SourceSquareReserve.A}
\Longleftrightarrow_{\rm route}
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{NSS.24}
```

but current inputs prove only

```math
\boxed{
\text{first-moment tail control}
\quad
\mathcal F_N([0,T_\ast])\to0.
}
\tag{NSS.25}
```

The exact missing bridge is

```math
\boxed{
\mathcal F_N\text{ first moment}
\quad\Longrightarrow\quad
\mathcal R_N\text{ square reserve}
}
\tag{NSS.26}
```

on selected same-fluid terminal heat windows.  Algebraically, this is false
without an active-height, reverse-Holder, source-residence, or no-waste
rigidity input.

## Verdict

The native source-square route is the right packet-native coercive language,
but it is not proved from the present Navier-Stokes balances.

The heat-scale obstruction is exact:

```math
\boxed{
\mathcal F_N(W)\to0
\text{ does not force }
\mathcal R_N(W)\to0
\text{ on terminal heat windows.}
}
\tag{NSS.27}
```

New forward-gold progress must prove `ReserveCreationCharge.A`,
`ActiveWindowHeight.A`, `DonorReserveAdjointTrace.A`, source-residence /
reverse-Holder, or compact no-waste rigidity.  Otherwise the retained
source-square failure is a visible terminal pulse to be consumed by the
CM Pack/Part/Field route, not a closed forward-positive smoothness proof.
