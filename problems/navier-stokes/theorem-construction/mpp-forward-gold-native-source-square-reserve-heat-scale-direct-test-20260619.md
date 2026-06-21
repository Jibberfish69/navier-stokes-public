# MPP Forward Gold Native Source-Square Reserve Heat-Scale Direct Test

Date: 2026-06-19

## Status

Direct native source-square test complete.  The source-square / scale-critical
tree-Carleson reserve is exactly the packet-native version of the unweighted
terminal critical-action reserve.  It would close the heat-scale terminal
branch.  Current Navier-Stokes inputs do not prove it.

The failure is not only an arbitrary thin-time pulse.  It remains at heat
scale.  First-moment dissipation tail control is still one half-power too weak
to control the scale-critical square density on heat windows
\(h_j=2^{-2j}\).

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

The exact time-face implication is recorded in
`mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md`.  For a
packet with \(r=2^{-k}\), the normalized density

```math
G(s)=r^{1/2}T_k(T+r^2s),
\qquad
T_k(t)=\sum_{\ell>k+4}D_\ell(t),
```

satisfies

```math
\int_{-1}^{0}G(s)^2\,ds
=
\int_{T-r^2}^{T}2^kT_k(t)^2\,dt.
```

Thus, after the selected positive source carrier is identified with this
square density up to legal residue, Cauchy--Schwarz gives the moving-packet
terminal strip modulus

```math
\int_{-\varepsilon}^{0}a(s)\,ds
\le
C\varepsilon^{1/2}+o_{\rm legal}(\varepsilon).
```

So the reserve is not only a recurrence-counting device.  It is exactly the
square-integrability theorem that forbids the last-instant source atom.

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
scale-critical square reserve remains equal to \(1\).

This is a scale-bookkeeping countermodel to deriving `(NSS.5)` from
`(NSS.4)`.  It is not asserted as a Navier-Stokes solution.

The same model also shows why this is compatible with the participation picture.
The pulse does not need a fixed positive shell energy.  In the dyadic shell
model set

```math
D_{m+5}(t)=\nu\,2^{2m}E_{m+5}(t).
\tag{NSS.13a}
```

For the heat-scale pulse `(NSS.9)`--`(NSS.12)`,

```math
E_{m+5}(t)
=
\nu^{-1}2^{-2m}A_mh_m^{-1}\mathbf 1_{I_m}(t)
=
\nu^{-1}A_m\mathbf 1_{I_m}(t)
\to0
\quad\text{in amplitude.}
\tag{NSS.13b}
```

Its shell-energy residence is even smaller:

```math
\int_{I_m}E_{m+5}(t)\,dt
=
\nu^{-1}A_mh_m
=
\nu^{-1}2^{-7m/2}
\to0.
\tag{NSS.13c}
```

So the remaining terminal enemy is not a hidden fixed mass-energy lump.  It is
a high-frequency rate-density event: the energy amount and first-moment
dissipation both vanish, while the normalized square action stays visible:

```math
\mathcal F_m(I_m)=A_m\to0,
\qquad
\int_{I_m}2^mT_m(t)^2\,dt=1.
\tag{NSS.13d}
```

This is the exact reason a participation/rate-limit law closes fixed-radius
time atoms but does not by itself close shrinking heat-scale atoms.

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

The sum over \(k\) is not a harmless constant multiplicity.  It gives the
logarithmic high-tail moment

```math
\widetilde{\mathcal F}_N(W)
:=
\int_W
\sum_{\ell>N+4}
(\ell-N-4)D_\ell(t)\,dt.
\tag{NSS.16}
```

So the correct conditional estimate is

```math
\mathcal R_N(W)
\le
H_N(W)\,\widetilde{\mathcal F}_N(W).
\tag{NSS.17}
```

Thus there are two distinct sufficient height routes.  The global tail-height
version is stronger:

```math
\sup_N H_N(W_N)\le C_{legal}
\tag{NSS.18}
```

on terminal windows of uniformly bounded physical time length.  Since
`(AWH.4)` gives \(T_k(t)\le H_N(W)2^{-k}\), it yields

```math
\mathcal R_N(W)
\le
C|W|H_N(W)^2 2^{-N}
\to0.
\tag{NSS.18a}
```

No separate logarithmic tail hypothesis is needed for this global-height
interpretation of `ActiveWindowHeight.A`.  The logarithmic high-tail moment is
needed only for weaker selected-edge or packet-local height controls, where the
unused cumulative tail is still summed through
\(\widetilde{\mathcal F}_N(W)\).

Current inputs prove neither the global pointwise height bound nor the weaker
selected-height plus log-tail package in the terminal window setting.  In the
heat-scale model above,

```math
H_N(I_m)
\ge
2^mA_mh_m^{-1}
=
2^m\,2^{-3m/2}\,2^{2m}
=
2^{3m/2},
\tag{NSS.19}
```

so the missing theorem is exactly a height/amplitude throttle.

## 5. Why participation does not supply the height throttle

The participation law keeps the selected packet inside the same coupled
Navier-Stokes relation:

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{NSS.20}
```

At frequency \(2^m\), viscous drain has rate \(2^{2m}\).  On the heat window
\(h_m=2^{-2m}\), this permits a fixed positive normalized response from a
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
\tag{NSS.21}
```

with

```math
\sum_W\operatorname{Charge}_N(W)
\le
C\mathcal F_N([0,T_\ast])+o_N(1).
\tag{NSS.22}
```

Differentiating \(\mathcal R_N\) does not prove `(NSS.21)`.  It produces the
term

```math
2\sum_{k>N}2^kT_k(t)
\sum_{\ell>k+4}\operatorname{source}_\ell(t),
\tag{NSS.23}
```

which is the same positive native trilinear source after localization and
selection.  Young's inequality puts \(\mathcal R_N\) back on the right-hand
side without the contraction factor \(1-\delta\).

Thus the dynamic route reduces to the same missing theorem:

```math
\boxed{
\text{ReserveCreationCharge.A}
}
\tag{NSS.24}
```

or equivalently global active height `(NSS.18)`, selected-height plus the
log-tail throttle `(NSS.17)`, an inverse
donor-adjoint trace, or a retained Field-window evidence-gain/amplitude theorem.

The heat-scale first-appearance test in
`mpp-forward-gold-reserve-creation-heat-scale-first-appearance-test-20260619.md`
shows that this missing creation charge cannot be the inherited first-moment
tail in disguise.  On a natural heat window \(h_m=2^{-2m}\), the pulse

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
A_m=2^{-3m/2},
```

has

```math
\int_{I_m}D_{m+5}(t)\,dt=A_m\to0,
```

but

```math
\int_{I_m}2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
=1.
```

So `ReserveCreationCharge.A` must charge active height, a true
source-square/critical-action reserve, a donor lower-frame trace, or a
no-waste/source-residence mechanism.  It is not obtained by relabeling the
first-moment dissipation tail.

## 7. Exact reduced supplier

The direct source-square test therefore leaves:

```math
\boxed{
\text{SourceSquareReserve.A}
\Longleftrightarrow_{\rm route}
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{NSS.25}
```

but current inputs prove only

```math
\boxed{
\text{first-moment tail control}
\quad
\mathcal F_N([0,T_\ast])\to0.
}
\tag{NSS.26}
```

The exact missing bridge is

```math
\boxed{
\mathcal F_N\text{ first moment}
\quad\Longrightarrow\quad
\mathcal R_N\text{ square reserve}
}
\tag{NSS.27}
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
\tag{NSS.28}
```

New forward-gold progress must prove `ReserveCreationCharge.A`,
`ActiveWindowHeight.A`, `DonorReserveAdjointTrace.A`, source-residence /
reverse-Holder, or compact no-waste rigidity.  Otherwise the retained
source-square failure is a visible terminal pulse to be consumed by the
CM Part/Field route, not a closed forward-positive smoothness proof.
