# MPP Forward Gold Source-Time Concentration Cost Temporal Regularity Test

Date: 2026-06-20

## Status

Direct temporal-regularity test complete.  The natural Navier-Stokes
time-derivative compactness currency does not produce the source-time
concentration cost needed for the selected endpoint source carrier.

The test sharpens `SourceTimeConcentrationCost.A`: a successful cost theorem
cannot be obtained from Aubin-Lions / negative-Sobolev time regularity alone.
It must control the selected positive source carrier itself, or introduce a
strict unweighted same-carrier reserve.

## 1. Target

The source-time concentration cost would say that a fixed amount of selected
positive source mass in a normalized terminal interval of length
`\tau_m -> 0` forces a same-ledger cost that diverges or exceeds an installed
finite budget.

For the selected carrier

```math
a_m(s)\ge0,
\qquad -1\le s\le0,
```

the enemy is

```math
a_m(s)\simeq \tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\int_{-1}^{0}a_m(s)\,ds\simeq1.
\tag{1}
```

The hoped-for temporal-regularity route is:

```math
\text{time compactness / } \partial_t u \text{ control}
\Longrightarrow
\text{cost for } \tau_m\downarrow0
\Longrightarrow
\text{endpoint uniform integrability of } a_m.
\tag{2}
```

This note tests exactly that implication.

## 2. Natural pulse model

Let `r_m -> 0` be the selected heat-scale radius and write

```math
s={t-T\over r_m^2},
\qquad
y={x-x_m\over r_m}.
\tag{3}
```

Take a smooth compactly supported divergence-free packet `V(y)` and a smooth
cutoff profile `b_m(s)` supported in `(-2\tau_m,0]`, essentially constant of
size `\tau_m^{-1/3}` on `(-\tau_m,0]`, with transition length comparable to
`\tau_m`.

Set

```math
u_m(t,x)
=
r_m^{-1}b_m(s)V(y).
\tag{4}
```

The cubic pressure/convection/source scale is then

```math
|b_m(s)|^3\simeq \tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\tag{5}
```

so the normalized selected cubic/source carrier has order-one mass and
converges to a terminal atom.

This is a scaling test for proposed estimates, not a claim that (4) is an exact
Navier-Stokes solution.

## 3. Physical energy and dissipation do not price the squeeze

The peak physical local energy scales as

```math
E_m^{phys}
\simeq
r_m\,\tau_m^{-2/3}.
\tag{6}
```

The physical dissipation over the pulse scales as

```math
\int |\nabla u_m|^2\,dxdt
\simeq
r_m\int |b_m(s)|^2\,ds
\simeq
r_m\,\tau_m^{1/3}.
\tag{7}
```

Choose, for instance,

```math
\tau_m=r_m^\alpha,
\qquad
0<\alpha<{3\over2}.
\tag{8}
```

Then the peak energy in (6) stays bounded and even tends to zero if
`\alpha<3/2`, while (7) tends to zero.  Thus physical energy and dissipation do
not create a concentration cost for (1) on such heat-scale terminal packets.

## 4. Negative-Sobolev time derivative is also discounted

The natural Leray compactness scale controls `\partial_t u` only in a negative
spatial norm, such as `L_t^{4/3}H_x^{-1}` locally.  For (4),

```math
\partial_t u_m
=
r_m^{-3}b_m'(s)V(y).
\tag{9}
```

At spatial scale `r_m`,

```math
\|r_m^{-3}b_m'(s)V(\cdot/r_m)\|_{H_x^{-1}}
\simeq
r_m^{-1/2}|b_m'(s)|.
\tag{10}
```

Since the transition size is

```math
|b_m'(s)|\simeq \tau_m^{-4/3}
```

on a normalized interval of length `\tau_m`, the physical
`L_t^{4/3}H_x^{-1}` cost is

```math
\|\partial_t u_m\|_{L_t^{4/3}H_x^{-1}}
\simeq
r_m\,\tau_m^{-7/12}.
\tag{11}
```

With

```math
\tau_m=r_m^\alpha,
\qquad
0<\alpha<{12\over7},
\tag{12}
```

the cost in (11) tends to zero.  Combining (8) and (12), for example
`\alpha=1`, gives a terminal source atom with vanishing physical energy,
vanishing dissipation, and vanishing natural negative-Sobolev time-derivative
cost.

So Aubin-Lions type time compactness does not force endpoint uniform
integrability of the selected source carrier.

## 5. Stronger time regularity would be a new theorem

The preceding calculation does not rule out every possible time-regularity
theorem.  It rules out the installed one.

To price (1), a derivative ledger must see the normalized carrier directly.
Examples of genuinely stronger, non-installed possibilities are:

```math
\sup_m\|a_m\|_{W_s^{\beta,1}}<\infty
\quad\text{for some }\beta>0,
\tag{13}
```

or

```math
\sup_m\int_{-1}^{0}\Phi(a_m(s))\,ds<\infty
\quad\text{for some superlinear }\Phi,
\tag{14}
```

or a source-square / Carleson / strict no-waste estimate on the same selected
carrier.

None of these follows from the standard local energy compactness package.  They
are exactly same-carrier endpoint uniform-integrability suppliers.

## 6. Consequence

`SourceTimeConcentrationCost.A` is not produced by time-compactness language:

```math
\boxed{
u\text{-level Aubin-Lions / negative time-derivative compactness}
\not\Longrightarrow
\text{endpoint UI of the selected positive source carrier}.
}
\tag{15}
```

The reason is scale: the time derivative of the velocity is paid in a weak
spatial norm and inherits the same heat-scale radius discount.  The positive
source carrier is cubic/one-sided/selected after localization and positive-part
extraction, and it can keep order-one normalized endpoint mass while those weak
physical costs go to zero.

## Verdict

The temporal-regularity route does not supply the missing source-time
concentration cost from current inputs.

The remaining non-alias gold supplier is still an unweighted same-carrier
terminal reserve:

```math
SelectedCarrierEndpointUI.A,
```

or one of its stronger equivalent forms:

```math
\text{same-carrier source-square/Carleson,}
\quad
\text{selected critical-strain endpoint UI,}
\quad
\text{strict no-waste Lyapunov,}
\quad
\text{or rigid Zeno no-source residue.}
```

Failure of that endpoint modulus is already consumed at the pass-or-exit level
by the terminal source-curve Part/Field alternative, but this temporal-regularity
test does not install the forward-gold modulus itself.
