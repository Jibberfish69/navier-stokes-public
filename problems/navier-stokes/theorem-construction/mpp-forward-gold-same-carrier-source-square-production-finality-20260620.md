---
theorem_id: forward-gold-same-carrier-source-square-production-finality-20260620
status: direct-finality-test-complete-forward-gold-not-proved
logical_landing_node: same_carrier_source_square_production_wall
edge_effect: "Consolidates the post-minimal-counterexample source-square wall. Same-carrier source-square pays the endpoint modulus and the first-created reserve charge, but current Navier-Stokes inputs do not produce the same-carrier square bound or the selected native-carrier domination. ReserveCreationCharge.A is a consumer after source-square is available, not an independent supplier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-created-reserve-source-square-energy-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-extremal-duality-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-square-budget-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-trilinear-same-carrier-reserve-direct-attempt-20260620.md
downstream_consequence: "The exact noncircular forward-gold producer must be a square-strength theorem on the actual selected positive carrier: same-carrier SourceSquareReserve.A plus carrier domination, active-height/residence control, selected critical-strain or normalized CKN Carleson with terminal-tail depletion, strict no-waste with critical-action size, or square-synchronous signed saturation/no-free Zeno production. Otherwise the retained pulse is CM Pack/Part/Field material only after same-witness admission."
---

# MPP Forward-Gold Same-Carrier Source-Square Production Finality

Date: 2026-06-20

## Status

This note consolidates the source-square branch after the minimal-counterexample
split and the first-created energy test.

The current route has proved two consumer facts:

```math
\boxed{
\text{same-carrier source-square}
+\text{selected-carrier domination}
\Longrightarrow
\text{endpoint terminal strip modulus},
}
\tag{SCF.1}
```

and

```math
\boxed{
\text{same-carrier source-square}
\Longrightarrow
\text{first-created reserve charge after past/boundary/legal separation}.
}
\tag{SCF.2}
```

It has not proved the producer:

```math
\boxed{
\text{Navier--Stokes installed inputs}
\Longrightarrow
\text{same-carrier source-square on the actual selected positive carrier}.
}
\tag{SCF.3}
```

Thus `ReserveCreationCharge.A` is no longer an independent supplier in this
branch.  It is paid by `(SCF.2)` once source-square is available.

## 1. The carrier and the square currency

Let \(I_\lambda\) be a selected terminal heat window with

```math
c_t\lambda^{-2}
\le
|I_\lambda|
\le
C_t\lambda^{-2},
\qquad
0<c_t\le C_t<\infty.
\tag{SCF.4}
```

Let \(F_\lambda(t)\ge0\) be the actual selected positive participation/source
density after legal exits have been separated.  The square-strength target is

```math
S_\lambda(I_\lambda)
:=
\int_{I_\lambda}\lambda F_\lambda(t)^2\,dt
\le
Small_\lambda(I_\lambda)+Legal_\lambda(I_\lambda).
\tag{SCF.5}
```

For the shell-energy branch, with

```math
E(t)=\|w_j(t)\|_2^2,
\qquad
D(t)=\lambda^2E(t),
\tag{SCF.6}
```

the first-created reserve is

```math
R_I
=
\int_I\lambda D(t)^2\,dt.
\tag{SCF.7}
```

The energy multiplier calculation gives

```math
R_I
\le
C_\nu
\int_I\lambda F(t)^2\,dt
+C_\nu B_I^-
+C_\nu L_I^E.
\tag{SCF.8}
```

So the square source is the right currency.  The problem is producing it.

## 2. Exact no-go for first-moment production

For any fixed nonzero smooth \(\varphi\in C_c^\infty(0,1)\), define

```math
F_\lambda(t)
=
\lambda^{1/2}\varphi(\lambda^2t),
\qquad
0\le t\le\lambda^{-2}.
\tag{SCF.9}
```

Then

```math
\int_0^{\lambda^{-2}}F_\lambda(t)\,dt
=
\lambda^{-3/2}\int_0^1\varphi(\sigma)\,d\sigma
\longrightarrow0,
\tag{SCF.10}
```

but

```math
\int_0^{\lambda^{-2}}\lambda F_\lambda(t)^2\,dt
=
\int_0^1\varphi(\sigma)^2\,d\sigma.
\tag{SCF.11}
```

Therefore no argument whose controlled quantity is endpoint energy, source
first moment, dissipation first moment, finite linear donor storage, or finite
linear legal mass can imply `(SCF.5)`.

This is the precise half-power gap:

```math
L_t^1\ \text{visibility on heat windows}
\not\Longrightarrow
L_t^2\ \text{source-square control}.
\tag{SCF.12}
```

## 3. Native trilinear normal form

The native selected source is not an abstract scalar.  It is the positive
trilinear carrier

```math
\Phi_j^+(t)
=
\int
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+dx.
\tag{SCF.13}
```

The direct normal-form test chooses a heat-scale packet with \(r=2^{-j}\), low
strain at the heat-clock rate,

```math
S^{model}
=
\nu r^{-2}\sigma\!\left({x-x_j\over r}\right)
\operatorname{diag}(2,-1,-1),
\tag{SCF.14}
```

and a high packet aligned with the expanding \(e_1\)-direction.  Normalizing so
that

```math
D_j(t)=r^{-1/2}
\qquad (t\in(T-r^2,T]),
\tag{SCF.15}
```

gives

```math
\Phi_j^+(t)
=
C_{\sigma,\psi}r^{-1/2},
\qquad
C_{\sigma,\psi}:=
2\left(\int_{B_1}\sigma(y)\psi(y)^2\,dy\right)
\left(\int_{B_1}\psi(y)^2\,dy\right)^{-1}
>0.
\tag{SCF.15a}
```

Therefore the first moment is exactly

```math
\int_{T-r^2}^{T}\Phi_j^+(t)\,dt
=
C_{\sigma,\psi}r^{3/2}
\to0,
\tag{SCF.16}
```

while

```math
\int_{T-r^2}^{T}r^{-1}\Phi_j^+(t)^2\,dt
=
C_{\sigma,\psi}^2.
\tag{SCF.17}
```

The trace-free condition is respected by `(SCF.14)`.  The negative signed
directions exist, but positive-part selection keeps the expanding direction.
Thus incompressibility and signed cancellation do not by themselves give
same-carrier square payment.

## 4. Critical currencies are visibility, not production

The same normal form has energy-level strain cost

```math
\int_{Q_r}|S^{model}|^2\,dxdt
=
C_{\sigma,2}\nu^2 r,
\qquad
C_{\sigma,2}:=
6\int_{B_1}\sigma(y)^2\,dy,
\tag{SCF.18}
```

and critical strain cost

```math
\int_{Q_r}|S^{model}|^{5/2}\,dxdt
=
C_{\sigma,5/2}\nu^{5/2},
\qquad
C_{\sigma,5/2}:=
6^{5/4}\int_{B_1}\sigma(y)^{5/2}\,dy.
\tag{SCF.19}
```

The CKN/critical-strain currencies are therefore the right unweighted
currencies.  Ordinary energy and local energy do not supply their terminal-tail
summability.  CKN epsilon regularity gives visibility of a retained critical
packet; it does not give

```math
\sum_{P\in\mathcal F_N}\mathcal C(Q(P))\to0
\tag{SCF.20}
```

over a terminal Zeno family.

## 5. Exact remaining producer alternatives

The source-square branch is now exhausted down to the following noncircular
producer alternatives:

```math
\boxed{
\text{same-carrier SourceSquareReserve.A plus SelectedSourceSquareCarrierDomination.A,}
}
\tag{SCF.21}
```

```math
\boxed{
\text{ActiveWindowHeight.A or source-residence/reverse Holder strong enough to imply `(SCF.5)`,}
}
\tag{SCF.22}
```

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A or normalized CKN Carleson with terminal-tail depletion,}
}
\tag{SCF.23}
```

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A whose functional carries critical-action size,}
}
\tag{SCF.24}
```

or

```math
\boxed{
\text{square-synchronous signed saturation / no-free Zeno production.}
}
\tag{SCF.25}
```

Each item is square-strength.  Linear participation, finite \(L^1_t\) source
mass, finite donor telescoping, BV/Helly endpoint curves, Weierstrass
approximation of individual curves, pressure ellipticity, critical Holder
without terminal-tail tightness, and CKN visibility alone do not produce
`(SCF.5)`.

## Verdict

At the current input strength, the forward-gold branch has no smaller
source-square shortcut.

```math
\boxed{
\text{same-carrier source-square is a paid consumer route, not an installed producer.}
}
\tag{SCF.26}
```

The exact live producer is square-strength control on the actual selected
positive carrier.  Without that producer, the retained heat-scale pulse can only
be used as CM Pack/Part/Field material after same-witness admission; it is not a
forward-positive smoothness proof.
