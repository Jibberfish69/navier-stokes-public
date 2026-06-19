# MPP Forward-Gold Finite-Time Energy-Decay Throttle Direct Test

Date: 2026-06-19

## Status

Direct test of the physical intuition that global energy decay or finite
viscous dissipation should throttle the terminal heat-scale packet before it can
form.

It does not close the forward-gold branch.  The reason is simple: a critical
heat-scale packet carries vanishing physical energy and vanishing physical
dissipation cost as \(r\downarrow0\), while its normalized critical profile
stays bounded below in the selected normalized quantities.

So finite-time energy accounting can coexist with an infinite terminal
heat-scale stack.

## 1. Total energy can go to zero locally while density blows up

Let \(M_2(r)=\int_{B_r}|u|^2dx\).  The exact heat-scale energy normalization
needed for the endpoint test is

```math
c_E r\le M_2(r)\le C_E r
\qquad(0<c_E\le C_E<\infty),
\tag{EDT.1}
```

with viscosity normalized to \(\nu=1\).  This condition is a statement about the
total energy in the ball, not a pointwise profile assumption.

```math
M_2(r)\to0
\quad\text{as}\quad
r\downarrow0.
\tag{EDT.2}
```

But the average kinetic-energy density in the ball obeys

```math
c_d\,r^{-2}
\le
{M_2(r)\over |B_r|}
\le
C_d\,r^{-2},
\tag{EDT.3}
```

so the average density diverges as \(r\downarrow0\).

This is the basic geometric fact behind the apparent paradox.  A shrinking ball
can contain vanishing total energy while its average density and pointwise
scale blow up.

So "zero volume has zero total mass" does not imply "the limiting pointwise
density is zero."  It only says the measure has no atom at the point.

## 2. Energy inequality is a first-moment budget

The global energy inequality gives

```math
E(t)
+\nu\int_0^t\|\nabla u(s)\|_2^2\,ds
\le
E(0).
\tag{EDT.5}
```

This is a physical energy/dissipation budget.  On one critical heat-scale
packet,

```math
\int_{Q_r}|\nabla u|^2\,dxdt
\sim
r^{-4}\,r^3\,r^2
=
r.
\tag{EDT.6}
```

With viscosity restored,

```math
\nu\int_{Q_r}|\nabla u|^2\,dxdt
\sim
\nu^2 r.
\tag{EDT.7}
```

This tends to zero.  A dyadic terminal stack has finite total energy cost:

```math
\sum_j \nu^2 r_j
<\infty
\quad
(r_j=2^{-j}).
\tag{EDT.8}
```

Even the tail cost can be made arbitrarily small:

```math
\sum_{j\ge N}\nu^2 r_j
\to0.
\tag{EDT.9}
```

This is compatible with absolute continuity of the energy/dissipation integral
on terminal time strips.

## 3. The finite-time clock does not force exhaustion

The statement that viscosity eventually drains energy as \(t\to\infty\) is not
a finite-time terminal throttle.  A hypothetical finite blowup time \(T_\ast\)
does not require the global energy reservoir to have vanished by \(T_\ast\).

What matters near \(T_\ast\) is the cost of the terminal stack.  The heat-scale
stack can fit into an arbitrarily short terminal interval because

```math
\sum_{j\ge N}{r_j^2\over\nu}
\to0,
\tag{EDT.10}
```

and it can also have arbitrarily small physical energy/dissipation tail by
`(EDT.9)`.

Therefore the "sooner versus later" optimization does not force a contradiction
from the global energy law.  Earlier is not immediate because subheat windows
cannot feed.  Later is not blocked at finite \(T_\ast\) because the physical
cost of the shrinking heat-scale packets also tends to zero.

## 4. What remains order one

The quantities that remain order one are the normalized critical quantities:

```math
{1\over r^2}
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)
\sim1,
\tag{EDT.11}
```

```math
\int_{Q_r}|S|^{5/2}\,dxdt
\sim1,
\tag{EDT.12}
```

and the normalized trilinear feed

```math
{1\over M_2(r)}
\int_{Q_r}
\left[
\langle S_{<}^{loc}w,w\rangle
\right]_+
dxdt
\sim1.
\tag{EDT.13}
```

These are the currencies that can count the heat-scale stack.  The ordinary
energy budget cannot.

## Verdict

Finite global energy and finite viscous dissipation do not rule out the final
heat-scale source-balanced packet.

They prove only a first-moment statement:

```math
\sum_j r_j<\infty.
\tag{EDT.14}
```

The forward-gold route needs a scale-normalized statement:

```math
\sum_j1<\infty
\quad\text{or terminal-tail decay of the normalized charges.}
\tag{EDT.15}
```

That missing upgrade is exactly the same source-square / selected critical
strain / normalized CKN Carleson reserve identified by the previous tests.
