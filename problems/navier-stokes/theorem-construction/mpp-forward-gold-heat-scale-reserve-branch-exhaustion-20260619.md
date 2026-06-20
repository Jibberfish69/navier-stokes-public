# MPP Forward Gold Heat-Scale Reserve Branch Exhaustion

Date: 2026-06-19

## Status

Branch exhaustion complete at the current proof resolution.  The heat-scale
terminal pulse is no longer a vague terminal anti-atom.  After the shared
participation, active-height, first-appearance, Lyapunov, nonlinear-corrector,
and compact-recurrent tests, the exact remaining fork is:

\[
\text{produce one unweighted terminal critical-action reserve}
\]

or

\[
\text{admit the retained pulse as a CM Pack/Part/Field witness-face exit}.
\]

This note does not claim the Navier-Stokes MPP is solved.  It closes this
specific branch of shortcut searching: the checked routes below either assume,
produce, or fail exactly at the same unweighted reserve.

## 1. Shared participation gives the right object, not the payment

The corrected participation law is the selected packet remaining in the same
Navier-Stokes pressure-viscosity-incompressibility-neighbor relation:

\[
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\]

In heat-scale variables,

\[
s=-\log(T-t),
\qquad
y=\frac{x-x_0}{\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x),
\]

this becomes

\[
\partial_s v
+(v\cdot\nabla_y)v
+\nabla_y q
+\frac12 y\cdot\nabla_y v
+\frac12v
=
\nu\Delta_y v,
\qquad
\nabla_y\cdot v=0.
\]

For a packet cutoff \(\rho_R\), the local energy readout is

\[
\begin{aligned}
\frac{d}{ds}\int \frac12|v|^2\rho_R\,dy
&+
\nu\int |\nabla v|^2\rho_R\,dy
\\
&=
\frac12\int |v|^2v\cdot\nabla\rho_R\,dy
+
\int qv\cdot\nabla\rho_R\,dy
\\
&\quad
+
\frac{\nu}{2}\int |v|^2\Delta\rho_R\,dy
+
\frac14\int |v|^2\rho_R\,dy
+
\frac14\int |v|^2y\cdot\nabla\rho_R\,dy .
\end{aligned}
\]

This identity is the exact shared-interface accounting.  It proves visibility:
a packet cannot be private.  It does not prove coercivity, because the interface
terms are critical and sign-indefinite.

## 2. The radius-time-amplitude calculation is exact

For a normalized heat-scale packet with a fixed profile \(V\)

\[
u_j(t,x)
=
a_jr_j^{-1}
V\!\left(\frac{t-t_j}{r_j^2},\frac{x-x_j}{r_j}\right),
\]

define the fixed profile constants

\[
C_E(V):=\int |V|^2\,dy,
\qquad
C_D(V):=\int |\nabla_yV|^2\,dyds.
\]

Then physical energy and dissipation carry the exact radius weights:

\[
\int |u_j|^2\,dx
=
a_j^2r_jC_E(V),
\qquad
\int_{Q_j}|\nabla_xu_j|^2\,dxdt
=
a_j^2r_jC_D(V).
\]

The critical interface currencies do not carry that radius weight.  With
\(p_j=a_j^2r_j^{-2}P\), set

\[
C_C(V,P):=\int\left(|V|^3+|P|^{3/2}\right)\,dyds,
\qquad
C_5(V):=\int |V|^5\,dyds.
\]

Then

\[
\frac{1}{r_j^2}\int_{Q_j}\left(|u_j|^3+|p_j|^{3/2}\right)\,dxdt
=
a_j^3C_C(V,P),
\]

and

\[
\int_{Q_j}|u_j|^5\,dxdt
=
a_j^5C_5(V).
\]

So physical participation gives at most a weighted budget such as

\[
\sum_j a_j^2r_j<\infty,
\]

while the terminal anti-atom needs an unweighted terminal critical budget such
as

\[
\sum_j a_j^3<\infty,
\qquad
\sum_j\mathcal C(Q_j)<\infty,
\qquad
\text{or}\qquad
\sum_j\mathcal A_j<\infty .
\]

This is the exact mathematical form of the time-face underpayment.  At fixed
positive radius the terminal strip is killed by the ordinary participation
throttle.  At heat scale the radius weight makes the physical payment summable
while the normalized critical bill can stay fixed positive.

## 3. Active height and first appearance are the same wall

With

\[
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\]

the source-square reserve is

\[
\mathcal R_N(W)
=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\]

A global active-height bound

\[
H_N(W):=
\sup_{t\in W}\sup_{k>N}2^kT_k(t)
\le C
\]

would close the reserve, since

\[
\mathcal R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt.
\]

But the checked heat-scale first-appearance model defeats every first-moment
version.  Let

\[
h_m=2^{-2m},
\qquad
I_m=(T-h_m,T],
\]

and set

\[
D_{m+5}(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad
A_m=2^{-3m/2}.
\]

Then

\[
\int_{I_m}D_{m+5}(t)\,dt
=
A_m
\to0,
\]

while

\[
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1.
\]

The active height blows up:

\[
H_m(I_m)
\ge
2^mA_mh_m^{-1}
=
2^{3m/2}.
\]

Thus first creation is not a smaller theorem.  It is active height or
source-square/no-waste in dynamic language.

## 4. Quadratic and packet-local nonlinear Lyapunov shortcuts are exhausted

For a pressure-corrected localized quadratic functional

\[
L_A(s)=\frac12\langle v,A_sv\rangle,
\]

the derivative contains

\[
-\frac{d}{ds}L_A(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-
\text{unsigned critical commutator}
+
\text{dilation/operator terms}.
\]

The pressure term can be projected away, but the localized convection and
projection/cutoff commutators remain:

\[
|\text{commutator}|
\le
C_A
\int_{\operatorname{collar}(A_s)}
\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right)\,dy.
\]

So quadratic pressure correction gives visibility of the critical interface,
not a strict drop.

Adding an instantaneous cubic packet-local correction also fails as a smaller
supplier.  The collar flux is odd under \(v\mapsto -v\).  An uncapped cubic
correction that cancels it is unbounded below along one sign branch.  A capped
correction stays bounded below but loses uniform cubic cancellation.  Higher
order local corrections introduce stronger uninstalled norms.  These shortcuts
return to the same unweighted critical reserve.

## 5. Compact recurrence gives a package, not rigidity

Failure of late smallness produces infinitely many unit log-time slabs with

\[
\int_{J_k}\mathcal A_R(s)\,ds\ge c_\eta>0.
\]

Bounded recurrence and local compactness can extract a nonzero local-suitable
limit package after shifting \(s\):

\[
(v_k,q_k,\mu_k)\rightharpoonup (V,Q,\mu).
\]

That package is not automatically a contradiction.  It can still have:

\[
\mu\ne0,
\]

profile switching, gauge drift, nonunique tangents, or time-dependent recurrent
motion.  Ordinary physical energy is exponentially discounted in \(s\):

\[
\int\nu|\nabla_xu|^2\,dxdt
=
\int e^{-s/2}\nu|\nabla_yv|^2\,dy\,ds,
\]

so LaSalle from physical energy does not control the unweighted action
\(\int\mathcal A_R(s)\,ds\).

Compact recurrence becomes rigid only after one of the same missing inputs:

\[
\text{StrictRescaledNoWasteLyapunov.A},
\]

or

\[
\text{CompactOrbitProduction.A}
+
\text{NoWasteLocalEnergyFlux.A}
+
\text{RenormalizedZenoStationarity.A}.
\]

## 6. Exact branch closeout

The heat-scale forward-gold branch is now closed to alias shortcuts:

\[
\boxed{
\text{shared participation}
\;\Longrightarrow\;
\text{visible critical interface}
}
\]

but not

\[
\boxed{
\text{visible critical interface}
\;\Longrightarrow\;
\text{unweighted terminal reserve}.
}
\]

The remaining non-alias forward supplier is:

\[
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\]

Equivalent concrete forms are:

\[
\text{SourceSquareReserve.A},
\qquad
\text{SelectedCriticalStrainCarleson.A},
\qquad
\text{NormalizedCKNCarleson.A},
\]

\[
\text{ProjectedLocalizedFluxCommutatorCoercivity.A},
\qquad
\text{StrictRescaledNoWasteLyapunov.A},
\qquad
\text{compact no-waste recurrent-profile rigidity}.
\]

Absent one of those, the heat-scale pulse is not killed by the gold route.  It
must be admitted as a retained terminal pulse and consumed by the CM
Pack/Part/Field witness-face machinery.
