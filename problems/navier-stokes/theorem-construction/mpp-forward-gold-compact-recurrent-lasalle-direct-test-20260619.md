# MPP Forward Gold Compact Recurrent LaSalle Direct Test

Date: 2026-06-19

## Status

Direct LaSalle/omega-limit test complete.  Precompact recurrent rescaled
profiles are not killed by the physical Navier-Stokes energy monotonicity.  The
physical energy drop becomes exponentially discounted in terminal log time, so
it does not control the unweighted action quanta produced by the recurrent
heat-scale branch.

This rules out the shortcut

\[
\text{compact recurrent orbit}
\quad+\quad
\text{ordinary energy monotonicity}
\quad\Rightarrow\quad
\text{stationarity}.
\]

The genuine missing input is still a strict rescaled no-waste Lyapunov theorem
or an equivalent unweighted terminal critical-action reserve.

## 1. What LaSalle would need

The recurrent heat-scale branch produces disjoint unit log-time slabs \(J_k\)
with

\[
\int_{J_k}\mathcal A_R(s)\,ds\ge c_\eta>0.
\]

A LaSalle-style kill would require a bounded-below functional \(L(s)\) such
that

\[
-\frac{d}{ds}L(s)
\ge
c\,\mathcal A_R(s)-\mathcal R_{\rm legal}(s),
\]

with

\[
\int_{s_0}^{\infty}\mathcal R_{\rm legal}(s)\,ds<\infty.
\]

Then infinitely many recurrent slabs would force infinite total drop, which is
impossible if \(L\) is bounded below.

## 2. Physical energy in terminal variables

Let

\[
s=-\log(T-t),\qquad
y=\frac{x-x_*}{\sqrt{T-t}},\qquad
v(s,y)=\sqrt{T-t}\,u(t,x).
\]

On a fixed rescaled ball \(B_R\), the corresponding physical ball has radius

\[
r(s)=e^{-s/2}R.
\]

The local physical kinetic energy scales as

\[
\int_{B_{r(s)}}\frac12|u(t,x)|^2\,dx
=
e^{-s/2}
\int_{B_R}\frac12|v(s,y)|^2\,dy.
\]

Thus an order-one rescaled packet energy has physical energy of size

\[
e^{-s/2}.
\]

The physical energy ledger is therefore discounted in \(s\).

## 3. Physical dissipation is also discounted

The gradient scaling is

\[
\nabla_xu(t,x)=e^s\nabla_yv(s,y),
\qquad
dx=e^{-3s/2}dy,
\qquad
dt=e^{-s}ds.
\]

Therefore

\[
\int \nu|\nabla_xu|^2\,dx\,dt
=
\int e^{-s/2}\nu|\nabla_yv|^2\,dy\,ds.
\]

So the physical dissipation bound gives

\[
\int_{s_0}^{\infty}e^{-s/2}D_R(s)\,ds<\infty,
\]

not

\[
\int_{s_0}^{\infty}D_R(s)\,ds<\infty.
\]

The recurrent branch needs an unweighted contradiction.  The physical energy
ledger supplies only a discounted one.

## 4. Compact recurrence remains compatible with discounted energy

Take a schematic recurrent profile with

\[
M_R(s)\sim 1,\qquad
D_R(s)\sim 1,\qquad
\mathcal A_R(s)\sim 1
\]

on infinitely many unit \(s\)-slabs.  Then

\[
\sum_k\int_{J_k}\mathcal A_R(s)\,ds=\infty.
\]

But the corresponding discounted physical budget may still be finite:

\[
\int_{s_0}^{\infty}e^{-s/2}\mathcal A_R(s)\,ds<\infty
\]

for a uniformly recurrent bounded profile.

Thus ordinary physical energy decay and finite physical dissipation do not
contradict a recurrent terminal heat-scale packet.  The packet is expensive in
unweighted rescaled time, but cheap in physical energy because the spatial scale
is vanishing.

## 5. Why compactness does not add the missing weight

Precompactness modulo scale, center, rotation, and frame choices can remove
profile switching and drift, but it does not change the energy identity.  It
can make the omega-limit set meaningful, but LaSalle still requires a
monotone functional whose dissipation is the unweighted quantity.

The available monotone physical energy controls

\[
\int e^{-s/2}D_R(s)\,ds.
\]

The recurrence contradiction requires control of

\[
\int D_R(s)\,ds
\quad\text{or}\quad
\int\mathcal A_R(s)\,ds.
\]

Compactness does not convert the first integral into the second.  That
conversion is exactly the missing no-waste / unweighted-reserve theorem.

## 6. Result

The compact recurrent branch cannot be closed by ordinary LaSalle reasoning
from physical energy monotonicity.

The valid implication is conditional:

\[
\text{compact recurrent orbit}
\,+\,
\text{strict rescaled no-waste Lyapunov}
\quad\Rightarrow\quad
\text{stationarity / rigidity contradiction}.
\]

The current inputs supply compactness only after subsequence extraction and
physical discounted energy monotonicity.  They do not supply the strict
rescaled Lyapunov drop.

So this branch returns to the same non-alias suppliers:

\[
\text{StrictRescaledNoWasteLyapunov.A},
\]

\[
\text{UnweightedActionFinite.A / NormalizedCKNCarleson.A},
\]

\[
\text{SourceSquareReserve.A / SelectedCriticalStrainCarleson.A},
\]

or a stationarity theorem that proves the unweighted drop directly rather than
importing ordinary physical energy monotonicity.
