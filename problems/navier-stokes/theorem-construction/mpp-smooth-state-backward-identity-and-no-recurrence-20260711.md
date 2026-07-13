---
theorem_id: smooth-state-backward-identity-and-no-recurrence-20260711
status: proof-installed-at-smooth-finite-energy-scope
problem: navier-stokes
edge_effect: >-
  Proves that the finite-time smooth Navier--Stokes evolution is injective on
  the periodic or decaying finite-energy surface. Viscosity makes backward
  recovery unstable and breaks time-reversal symmetry without allowing two
  smooth histories to merge into one exact velocity state.
---

# Smooth state identity, backward uniqueness, and exact nonrecurrence

## Physical statement

Fix one surface, one positive viscosity, and the unforced incompressible law.
At smooth finite-energy scope, one full velocity state has at most one smooth
ancestry on a common prior interval. Dissipation contracts differences and
makes their backward recovery unstable; it does not delete a nonzero
difference exactly at a finite time.

This is a statement about the full state. Scalar readouts can coincide along
different states and at different times.

## Theorem

Let \(\Omega=\mathbb R^3\) with sufficient decay or
\(\Omega=\mathbb T^3\) with periodic boundary conditions. Let \(u_1,u_2\)
be two unforced divergence-free solutions with the same \(\nu>0\) on
\([t_0,T]\). It is enough to assume

\[
u_i\in C([t_0,T];H^m_\sigma)
\cap C^1([t_0,T];H^{m-2}_\sigma),
\qquad m>\frac52,
\]

with the declared whole-space decay. If

\[
u_1(T)=u_2(T),
\]

then

\[
u_1(t)=u_2(t)
\qquad\text{for every }t\in[t_0,T].
\]

Their pressure gradients also coincide. Gauge-fixed pressures coincide.

## Proof

Let

\[
w=u_1-u_2,
\qquad
L=-\mathbb P\Delta,
\]

where \(\mathbb P\) is the Leray projector. The projected difference law is

\[
\partial_tw+\nu Lw+B(t)w=0,
\]

with

\[
B(t)w
=\mathbb P\bigl[(u_1\cdot\nabla)w+(w\cdot\nabla)u_2\bigr].
\]

On the smooth interval,

\[
\|B(t)w\|_2^2
\le
2\|u_1(t)\|_\infty^2\|\nabla w\|_2^2
+2\|\nabla u_2(t)\|_\infty^2\|w\|_2^2.
\tag{SBI.1}
\]

Suppose \(w(s)\ne0\) at some \(s<T\). Until the first possible later zero,
set

\[
E=\|w\|_2^2,
\qquad
D=\langle Lw,w\rangle=\|\nabla w\|_2^2,
\qquad
Q=\frac DE.
\tag{SBI.2}
\]

Differentiating \(Q\) and using
\(\|(L-Q)w\|_2^2=\|Lw\|_2^2-Q^2E\) gives the exact identity

\[
Q'
=-\frac{2\nu}{E}\|(L-Q)w\|_2^2
-\frac2E\langle(L-Q)w,Bw\rangle.
\tag{SBI.3}
\]

Young's inequality and `(SBI.1)` imply

\[
Q'
\le
\frac{\|u_1\|_\infty^2}{\nu}Q
+\frac{\|\nabla u_2\|_\infty^2}{\nu}.
\tag{SBI.4}
\]

Thus \(Q\) remains bounded above on the finite interval before a zero.

The divergence-free transport term cancels in the \(L^2\) pairing, so

\[
E'
=-2\nu D
-2\langle(w\cdot\nabla)u_2,w\rangle.
\tag{SBI.5}
\]

Consequently,

\[
\frac d{dt}\log E
\ge
-2\nu Q-2\|\nabla u_2\|_\infty.
\tag{SBI.6}
\]

The right side is integrable up to every finite time. Hence \(E\), once
positive, remains bounded away from zero before that time. It cannot have a
first zero. The terminal condition \(w(T)=0\) therefore forces \(w\equiv0\)
on the entire common interval.

Pressure recovery from the common velocity gives equality of pressure
gradients, and the common gauge fixes the remaining spatial constant.

## Exact recurrence boundary

If one smooth unforced history satisfies \(u(t_1)=u(t_2)\) for
\(t_1<t_2\), the energy identity gives

\[
2\nu\int_{t_1}^{t_2}\|S(t)\|_2^2\,dt=0.
\]

Thus \(S=0\) throughout that interval. On decaying \(\mathbb R^3\), the
state is zero. On \(\mathbb T^3\), it is the conserved spatially constant
mean flow. Exact recurrence is therefore equilibrium recurrence.

## Scope boundaries

- Backward uniqueness is uniqueness on the range of the smooth evolution. It
  does not say that every proposed terminal field has a smooth ancestry.
- The inverse is unstable. Linearized around zero, a frequency \(k\) is
  multiplied backward by \(e^{\nu|k|^2\Delta t}\).
- Physical time reversal changes the sign of viscosity; it is not the inverse
  Navier--Stokes evolution at the same \(\nu>0\).
- Weak nonunique histories and smooth infinite-energy solutions with
  uncontrolled spatial growth lie outside the theorem and can violate the
  conclusion.
- Once a reference time and \(X(a,t_0)=a\) are fixed, equality of the velocity
  histories gives equality of their material maps. Independent relabelings are
  a coordinate gauge, not a second physical history.

## Ontological consequence

The full smooth Eulerian configuration carries unique finite-time ancestry
without carrying a delayed pressure memory. Material history is derived from
that unique velocity history. Irreversibility is the direction and instability
of the evolution, not finite-time many-to-one collapse of smooth states.
