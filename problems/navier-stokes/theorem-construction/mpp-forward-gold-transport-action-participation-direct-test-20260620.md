# MPP Forward Gold Transport-Action Participation Direct Test

Date: 2026-06-20

## Status

Direct optimal-transport / action-cost test complete.  The transport-action
language gives a precise version of the speed-limit intuition, but it does not
upgrade finite physical participation into the unweighted terminal heat-scale
reserve.

The useful conclusion is:

\[
\text{positive radius gives a real travel-time throttle;}
\]

\[
\text{shrinking heat-scale packets keep the transport cost radius-discounted.}
\]

So this is not an independent forward-gold supplier.  It is another exact route
back to the same unweighted reserve wall.

## 1. What the transport-action route would need

The natural analogy is the Benamou--Brenier action for a transported
nonnegative density:

\[
\partial_t\mu+\nabla\cdot(\mu v)=0,
\qquad
\int \int |v|^2\,d\mu\,dt.
\]

If a mass \(m\) moves a distance \(r\) in time \(\tau\), then the action cost
has the lower-bound shape

\[
m\,{r^2\over \tau}.
\]

At fixed positive \(r\), pushing an order-one terminal packet into a vanishing
time window costs too much.  This is exactly the fixed-radius participation
throttle.

The forward-gold hope would be that the same action lower bound remains
unweighted on shrinking heat-scale packets and forces the terminal pulse to
pay one order-one quantum per scale.

## 2. Why energy is not a conserved transport density

The local energy density

\[
e={1\over2}|u|^2
\]

does not satisfy a pure continuity equation.  It satisfies the local energy
balance

\[
\partial_t e+\nu|\nabla u|^2+\nabla\cdot\mathcal F\le0,
\]

with flux

\[
\mathcal F
=
\left({1\over2}|u|^2+p\right)u
-\nu\nabla {1\over2}|u|^2 .
\]

The flux is not simply \(e v\) for a single transport velocity \(v\).  It
contains pressure work and viscous energy flux, and the balance has
dissipation.  Thus the energy ledger is a source-sink-flux balance, not a
conserved mass transport problem.

This does not make the analogy useless.  It says any transport-action theorem
must be proved for the actual Navier--Stokes local energy flux, with pressure,
viscosity, and selected positive source included.  It cannot be imported as a
pure Wasserstein cost.

## 3. The heat-scale cost is still discounted

For a fixed nonzero normalized profile \(V\), let a terminal packet have radius
\(r\), heat time \(\tau=r^2\), and velocity

\[
u_r(x)=r^{-1}V(x/r).
\]

Its physical kinetic energy is

\[
E_r=C_E(V)r,
\qquad
C_E(V)={1\over2}\int |V(y)|^2\,dy.
\]

Moving that physical energy a distance \(r\) over time \(r^2\) gives the
transport-action scale

\[
E_r\,{r^2\over r^2}
=
C_E(V)r.
\]

So one normalized heat-scale packet pays only order \(r\) in the physical
transport-action currency.

Along a Zeno chain \(r_j=2^{-j}\), one can have

\[
\sum_j r_j<\infty,
\]

while the normalized action has one order-one packet per scale:

\[
\sum_j 1=\infty.
\]

This is the same radius discount as the material stress-work and dissipation
ledgers.

## 4. Why incompressible volume transport does not fix it

Incompressibility transports volume.  It does not transport kinetic energy as
a passive conserved density.

A material volume element can keep its volume while its velocity amplitude is
changed by strain, pressure, and viscous exchange.  The local packet energy can
be refilled by the native trilinear source

\[
\left[\langle S_{<j}^{loc}w_j,w_j\rangle\right]_+
\]

on the same heat clock on which viscosity drains it.  That refill is already
recorded by the participation identity.  The missing theorem is a strict
one-sided gap or an unweighted same-carrier reserve, not a geometric transport
distance lower bound.

## 5. Exact relation to the participation law

The transport-action view supports the participation law in the fixed-radius
case:

\[
r\ge r_0>0
\quad\Longrightarrow\quad
\text{physical action and normalized action are comparable.}
\]

It does not close the shrinking case:

\[
r_j\downarrow0
\quad\Longrightarrow\quad
\text{physical action has a factor }r_j
\text{ that normalized action does not have.}
\]

Thus the transport-action route proves the same split already seen in the
three-clock participation test:

\[
\text{fixed-radius terminal pulse is paid;}
\]

\[
\text{heat-scale Zeno pulse needs an unweighted theorem.}
\]

## Verdict

`TransportActionParticipation.A` is not an independent installed supplier.

It reduces to:

\[
\text{UnweightedTerminalCriticalActionReserve.A}
\]

or one of its equivalent concrete forms:

\[
\text{SourceSquareReserve.A, SelectedCriticalStrainCarleson.A,}
\]

\[
\text{NormalizedCKNCarleson.A, StrictRescaledNoWasteLyapunov.A,}
\]

\[
\text{or selected polar saturation plus no-free terminal Zeno donor chain.}
\]

The speed-limit intuition is correct at positive radius.  At heat scale, the
speed limit and the shrinking distance cancel, and the physical transported
energy mass carries the remaining radius discount.
