# MPP Forward-Gold Duhamel Maximal-Regularity Square-Reserve Test

Date: 2026-06-20

## Status

Direct test complete.  Duhamel and heat-semigroup maximal regularity do not
produce the missing first-created square reserve from the currently installed
Navier--Stokes inputs.

The exact distinction is:

```math
\text{strong }L_t^2L_x^2\text{ forcing control}
\Longrightarrow
\text{creation is expensive,}
\tag{DMR.1}
```

but the installed local-energy/mild-source package gives the nonlinear source
only in weaker negative spatial norms or in first-moment ledgers.  Those weaker
norms retain the same heat-scale radius discount that caused the problem.

So this route does not prove

```math
\text{ReserveCreationCharge.A}
\quad\text{or}\quad
\text{UnweightedTerminalCriticalActionReserve.A}.
\tag{DMR.2}
```

It explains precisely which source-norm upgrade would be needed.

## 1. Linear heat-window model

Let \(\lambda_m=2^m\) and let \(\phi_m\) be a divergence-free Littlewood--Paley
packet with

```math
\|\phi_m\|_{L^2}=1,
\qquad
\|\nabla\phi_m\|_{L^2}\simeq \lambda_m.
\tag{DMR.3}
```

On one heat window

```math
I_m=[0,h_m],
\qquad
h_m=\lambda_m^{-2},
\tag{DMR.4}
```

consider an active shell packet

```math
u_m(t)=b_m\chi(t/h_m)\phi_m,
\tag{DMR.5}
```

where \(\chi\) is smooth, supported in \([0,1]\), and order one on a subinterval
of \([0,1]\).  Choose

```math
b_m^2=\lambda_m^{-3/2}.
\tag{DMR.6}
```

The shell dissipation density is

```math
D_m(t)\simeq \lambda_m^2 b_m^2|\chi(t/h_m)|^2.
\tag{DMR.7}
```

Its first moment is small:

```math
\int_{I_m}D_m(t)\,dt
\simeq
\lambda_m^2b_m^2h_m
=
b_m^2
=
\lambda_m^{-3/2}
\to0.
\tag{DMR.8}
```

But the scale-critical square reserve is order one:

```math
\int_{I_m}\lambda_mD_m(t)^2\,dt
\simeq
\lambda_m\lambda_m^4b_m^4h_m
=
\lambda_m^3b_m^4
=
1.
\tag{DMR.9}
```

This is the same first-created square-reserve profile isolated in the heat-flow
sharpness and first-appearance tests.

## 2. What strong maximal regularity would charge

If \(u_m\) is created from zero by the forced heat equation

```math
\partial_t u_m-\nu\Delta u_m=f_m,
\tag{DMR.10}
```

then on the active heat window one has

```math
\|f_m(t)\|_{L^2}
\simeq
\lambda_m^2b_m.
\tag{DMR.11}
```

Hence

```math
\int_{I_m}\|f_m(t)\|_{L^2}^2\,dt
\simeq
\lambda_m^4b_m^2h_m
=
\lambda_m^2b_m^2
=
\lambda_m^{1/2}
\to\infty.
\tag{DMR.12}
```

So an \(L_t^2L_x^2\) source theorem would indeed forbid a free first-created
heat packet.  Equivalently, Hilbert-space maximal regularity at this strength
would see packet creation as expensive.

This is not the installed Navier--Stokes source control.

## 3. The installed source scale is negative-order

For the Leray projected nonlinearity

```math
F=-\mathbb P\nabla\cdot(u\otimes u),
\tag{DMR.13}
```

the natural local-energy source scale is negative order.  Testing one dyadic
packet at frequency \(\lambda_m\), the same forcing has

```math
\|f_m(t)\|_{H^{-1}}
\simeq
\lambda_m^{-1}\|f_m(t)\|_{L^2}
\simeq
\lambda_m b_m.
\tag{DMR.14}
```

Therefore

```math
\int_{I_m}\|f_m(t)\|_{H^{-1}}^2\,dt
\simeq
\lambda_m^2b_m^2h_m
=
b_m^2
=
\lambda_m^{-3/2}
\to0.
\tag{DMR.15}
```

The same packet that has order-one square reserve in `(DMR.9)` has vanishing
negative-order forcing cost in `(DMR.15)`.

This is the exact radius discount in semigroup language.

## 4. What Duhamel really proves

Duhamel gives, on shell \(m\),

```math
u_m(t)
=
e^{\nu(t-s)\Delta}u_m(s)
+
\int_s^t e^{\nu(t-\tau)\Delta}f_m(\tau)\,d\tau.
\tag{DMR.16}
```

This separates inherited heat energy from newly supplied source.  It proves:

```math
\text{no same-window source}
\Longrightarrow
\text{heat decay removes the packet.}
\tag{DMR.17}
```

The first-created reserve branch is precisely the complementary case:

```math
\text{same-window source creates or refills the packet.}
\tag{DMR.18}
```

The semigroup identity itself does not bound that source in the strong norm
needed for `(DMR.12)`.  With only the negative-order or first-moment source
ledger, `(DMR.18)` is compatible with `(DMR.8)` and `(DMR.9)`.

## 5. Consequence for ReserveCreationCharge.A

The direct Duhamel/maximal-regularity route would need a theorem of the form

```math
\int_{I_m}\|F_m(t)\|_{L^2}^2\,dt
\le
\operatorname{Legal}_m+o_m(1),
\tag{DMR.19}
```

or a same-carrier substitute strong enough to dominate the square reserve:

```math
\int_{I_m}\lambda_mD_m(t)^2\,dt
\le
C\int_{I_m}\|F_m(t)\|_{L^2}^2\,dt
+
\operatorname{Legal}_m+o_m(1).
\tag{DMR.20}
```

No current input supplies `(DMR.19)` on the selected nonlinear source.  The
available negative-order estimate has the wrong scaling, as `(DMR.15)` shows.

Thus the route returns to the known same-carrier suppliers:

```math
\text{SourceSquareReserve.A},
\quad
\text{SelectedCriticalStrainCarleson.A},
\quad
\text{NormalizedCKNCarleson.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A},
\quad
\text{NoFreeTerminalZenoDonorChain.A}.
\tag{DMR.21}
```

## Verdict

Heat-semigroup/Duhamel reasoning is not useless; it proves that inherited high
frequency decays and that first-created reserve must be same-window source
refill.  The missing step is a strong same-carrier source norm for that refill.

At installed-input strength, the Duhamel route gives:

```math
\boxed{
\text{first-created reserve}
\Longrightarrow
\text{same-window nonlinear refill,}
}
\tag{DMR.22}
```

but not

```math
\boxed{
\text{same-window nonlinear refill}
\Longrightarrow
\text{unweighted square-reserve payment.}
}
\tag{DMR.23}
```

The latter is exactly the remaining forward-gold supplier problem.
