# No instantaneous critical-balance turn-down law

**Date:** 2026-07-11

**Status:** exact smooth periodic counterfamily. This rules out a state-local
turn-down principle at critical-height balance. It does not bound the critical
height and does not rule out a genuinely temporal history theorem.

## Statement

Fix \(\nu>0\). There are smooth unforced solutions of incompressible
Navier--Stokes on the normalized three-torus whose initial critical heights
tend to infinity and which satisfy

\[
\mathcal H_{1/2}'(0)=0,
\qquad
\mathcal H_{1/2}''(0)>0.
\]

Consequently, equality between the nonlinear critical current and critical
viscous dissipation does not force the height to turn downward. No proof of a
global peak bound can rest on that instantaneous equality alone.

## One exact VPI history

Use the exact invariant class from
`codex-goal-ontology-cycle-027-anisotropic-passive-high-centroid-positive-time-no-go-20260711.md`:

\[
u_{A,N}(t)=U_A(t)+h_N(t),
\qquad
h_N(t,x)=(0,0,e^{-\nu N^2t}\cos Nx),
\]

where

\[
U_A(0)=Av,
\qquad
v=(0,2\cos x,-2\cos y-2\sin(x+y)).
\]

The whole field is divergence-free, its pressure is the forced constant
solution, and the cross-transport rows involving \(h_N\) vanish identically.
The vertical tail still changes the material velocity, the Sobolev tower, and
the viscous response of this one solution.

Write

\[
P_0=P_H(v)=2\sqrt2-2>0,
\qquad
D_0=\|\Lambda^{3/2}v\|_2^2=4+4\sqrt2.
\]

Exact orthogonality and the invariant transport geometry give, for every
\(t\ge0\),

\[
P_H(u_{A,N}(t))=P_H(U_A(t)),
\]

\[
\mathcal H_{1/2}(u_{A,N}(t))
=\mathcal H_{1/2}(U_A(t))
+\frac N4e^{-2\nu N^2t},
\]

and

\[
D(u_{A,N}(t))
=D(U_A(t))
+\frac{N^3}{2}e^{-2\nu N^2t}.
\]

At the initial instant,

\[
\mathcal H_{1/2}'(0)
=P_0A^3-\nu D_0A^2-\frac\nu2N^3.
\]

For each \(N\), the cubic

\[
P_0A^3-\nu D_0A^2-\frac\nu2N^3=0
\]

has a unique positive root \(A_N\). On writing \(A_N=N\beta_N\), its
equation becomes

\[
P_0\beta_N^3-\frac{\nu D_0}{N}\beta_N^2-\frac\nu2=0,
\]

so

\[
\beta_N\longrightarrow
\beta_0=\left(\frac{\nu}{2P_0}\right)^{1/3}.
\]

Thus \(A_N=O(N)\), \(A_N\asymp N\), and

\[
\mathcal H_{1/2}(u_{A_N,N}(0))
=A_N^2\mathcal H_{1/2}(v)+\frac N4
\longrightarrow\infty.
\]

## The upward tangent

For the fixed smooth base field \(v\), differentiation of the cubic current
and quadratic dissipation along the Navier--Stokes tangent gives a constant
\(C_{v,\nu}\) such that

\[
\left|
\frac{d^2}{dt^2}\mathcal H_{1/2}(U_A(t))\bigg|_{t=0}
\right|
\le
C_{v,\nu}(A^4+A^3+A^2).
\]

The estimate is purely algebraic: at \(t=0\), the base tangent is the sum of
an \(A^2\) transport term and a \(\nu A\) heat term; differentiating a cubic
functional gives orders \(A^4\) and \(\nu A^3\), while differentiating
\(-\nu D\) gives orders \(\nu A^3\) and \(\nu^2A^2\).

The tail contributes exactly

\[
\frac{d^2}{dt^2}
\left(\frac N4e^{-2\nu N^2t}\right)\bigg|_{t=0}
=\nu^2N^5.
\]

Since \(A_N=O(N)\), the base contribution is \(O(N^4)\), whereas the
tail contribution is positive and of order \(N^5\). Hence, for all
sufficiently large \(N\),

\[
\mathcal H_{1/2}'(0)=0,
\qquad
\mathcal H_{1/2}''(0)>0.
\]

## Physical meaning

The nonlinear current is carried by the lower-frequency anisotropic part of
the same field. The high-frequency vertical part enters the critical height,
material motion, and viscous dissipation while its exact orientation keeps it
out of the nonlinear current. At balance, that high-frequency viscous drain
falls on the \(N^{-2}\) heat time faster than the lower-frequency part of the
same critical tangent can change.
The complete participant can therefore leave the equality surface toward
increasing critical height.

This is a negative ontology fact about possible smooth histories. It removes
an instantaneous maximum-principle story. It leaves open a theorem controlling
the temporal co-evolution of anisotropic pair compression, expansive pair
geometry, pressure-constrained redistribution, and viscous scale selection
over a nonzero interval.
