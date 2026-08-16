# Thomas's one-fluid record-microscope ancestry reduction

Status: proved strict reduction inside Thomas Birnie's one-fluid reversible
intersection method. This note does not replace the pressure-explicit tower and
does not claim the odd completed-response prefix bound.

## 1. One same-history record sequence

Put

\[
R(t):=\|\Lambda^{1/2}u(t)\|_2^2,
\qquad D(t):=\|\Lambda^{3/2}u(t)\|_2^2,
\qquad K(t):=\|u(t)\|_2^2.
\tag{RAM.1}
\]

Fourier Hölder and the kinetic-energy identity give

\[
R(t)\leq K(t)^{2/3}D(t)^{1/3},
\qquad K(t)\leq K_0:=\|u_0\|_2^2,
\tag{RAM.2}
\]

and hence

\[
\boxed{R(t)^3\leq K(t)^2D(t)\leq\|u_0\|_2^4D(t).}
\tag{RAM.3}
\]

Assume, for the reduction, that first record times satisfy
\(R(t_n)=R_n\to\infty\). Local smooth existence makes \(t_n\geq t_0>0\) for
all sufficiently large \(n\). Write \(D_n=D(t_n)\) and set

\[
\ell_n:=\sqrt{R_n/D_n}.
\tag{RAM.4}
\]

Choose arbitrary spatial centers (c_n\in\mathbb R^3). The exact
fixed-viscosity scaling

\[
w_n(y,\sigma)=\ell_nu(c_n+\ell_ny,t_n+\ell_n^2\sigma),
\qquad
q_n(y,\sigma)=\ell_n^2p(c_n+\ell_ny,t_n+\ell_n^2\sigma)
\tag{RAM.5}
\]

preserves the original Navier--Stokes equation, pressure, incompressibility,
and material ancestry, while

\[
R(w_n(0))=D(w_n(0))=R_n.
\tag{RAM.6}
\]

Thus exact Navier--Stokes symmetry alone cannot make the critical record
bounded.

## 2. Bounded record microscope

Normalize the whole transformed history rather than its terms separately:

\[
v_n(y,\tau)
=\frac1{\sqrt{D_n}}
u\!\left(c_n+\sqrt{\frac{R_n}{D_n}}y,
t_n+\frac{\sqrt{R_n}}{D_n}\tau\right),
\qquad
\pi_n(y,\tau)=\frac1{D_n}
p\!\left(c_n+\sqrt{\frac{R_n}{D_n}}y,
t_n+\frac{\sqrt{R_n}}{D_n}\tau\right).
\tag{RAM.7}
\]

Then

\[
\partial_\tau v_n+(v_n\cdot\nabla)v_n+\nabla\pi_n
=\varepsilon_n\Delta v_n,
\qquad \varepsilon_n:=\nu/\sqrt{R_n}\longrightarrow0,
\tag{RAM.8}
\]

and

\[
R(v_n(0))=D(v_n(0))=1,
\qquad R(v_n(\tau))\leq1\quad(-L_n\leq\tau\leq0),
\tag{RAM.9}
\]

where

\[
L_n:=\frac{t_nD_n}{\sqrt{R_n}},
\qquad
\varepsilon_nL_n=\frac{\nu t_nD_n}{R_n}
\geq\frac{\nu t_nR_n^2}{\|u_0\|_2^4}\longrightarrow\infty.
\tag{RAM.10}
\]

Equation (RAM.8) is a diagnostic consequence of the one fixed-\(\nu\) history,
not a license to replace that history by an Euler proof program.

## 3. Backward spectral-gap collapse

Let

\[
K_n(\tau):=\|v_n(\tau)\|_2^2,
\qquad Z_n(\tau):=\|\nabla v_n(\tau)\|_2^2.
\tag{RAM.11}
\]

At the original initial time,

\[
K_n(-L_n)=\frac{\sqrt{D_n}}{R_n^{3/2}}K_0.
\tag{RAM.12}
\]

Put

\[
x_n:=\frac{K_0^2D_n}{R_n^3}\geq1.
\tag{RAM.13}
\]

Then \(K_n(-L_n)=\sqrt{x_n}\), while interpolation at the record gives
\(K_n(0)\geq1\). The normalized kinetic-energy identity is

\[
K_n'=-2\varepsilon_nZ_n.
\tag{RAM.14}
\]

After division by \(K_n\) and integration through the same backward history,

\[
\log\frac{K_n(-L_n)}{K_n(0)}
=2\varepsilon_n\int_{-L_n}^{0}\frac{Z_n}{K_n}\,d\tau.
\tag{RAM.15}
\]

Consequently,

\[
\begin{aligned}
\frac1{L_n}\int_{-L_n}^{0}\frac{Z_n}{K_n}\,d\tau
&\leq\frac{R_n}{2\nu t_nD_n}\,\frac12\log x_n\\
&=\frac{K_0^2}{4\nu t_nR_n^2}
\frac{\log x_n}{x_n}\longrightarrow0.
\end{aligned}
\tag{RAM.16}
\]

Thus, for every fixed \(\kappa>0\),

\[
\frac{|
\{\tau\in[-L_n,0]:Z_n(\tau)/K_n(\tau)\geq\kappa^2\}|}{L_n}
\longrightarrow0.
\tag{RAM.17}
\]

A new terminal record therefore cannot descend from an ancient history whose
global kinetic mean frequency stays bounded below at a fixed unit scale for a
positive fraction of normalized time. Backward through its own history, its
kinetic ancestry spends asymptotically almost all normalized time at vanishing
global energy-mean frequency. Converting that spectral conclusion into spatial
tightness, material labels, or a geometric collar requires the localization
bridge stated below; (RAM.17) alone does not make that conversion.

## 4. The balanced rip-cord fork

The result does not assume that balance breaks. The following is the exact
physical fork to which (RAM.17) points; its material interpretation remains
conditional on the stated localization bridge.

1. If a localization theorem identifies one fixed set of material labels as
   the persistent balanced core, and that core keeps a fixed kinetic-energy
   fraction at unit normalized scale for a fixed
   fraction of backward time, (RAM.17) contradicts that persistence. To
   survive, its fraction must vanish or its surrounding collar must escape the
   compact profile. Once a localization bridge identifies the thinning
   material core, incompressible material volume forces compensating
   lengthening or transverse escape. The remote collar must remain in the
   proof and be charged.

2. If the endpoint core is recruited from changing material labels, its
   velocity, orientation, and phase coherence must be created by the same
   field's pressure-explicit nonlinear source. Recruitment is not an outside
   supplier. The required theorem is a pressure-complete no-refill bound on
   that actual source residue.

The persistent branch still requires a localization bridge from the global
spectral statement to the proposed material vortex geometry. The recruited
branch still requires the same-field source-residue estimate. These are the
two exact faces of the balanced case; wobble, asymmetry, and external supply
are not premises.

## 5. Relation to the odd response

For the completed response \(\mathfrak R_{1/2,q}\) from the canonical spine,
formed for \(v_n\) with its actual viscosity \(\varepsilon_n\),

\[
\mathfrak R_{1/2,q}[v_n](\tau)
=\frac{\theta_n^q}{R_n}
\mathfrak R_{1/2,q}[u](t_n+\theta_n\tau),
\qquad \theta_n:=\frac{\sqrt{R_n}}{D_n}.
\tag{RAM.18}
\]

Therefore

\[
\int_{\tau_a}^{\tau_b}\mathfrak R_{1/2,q}[v_n]\,d\tau
=\frac{\theta_n^{q-1}}{R_n}
\int_{t_n+\theta_n\tau_a}^{t_n+\theta_n\tau_b}
\mathfrak R_{1/2,q}[u]\,dt.
\tag{RAM.19}
\]

For \(q=1\), the last doubling into a first record retains nonzero normalized
pressure-complete work. More precisely, if \(s_n<t_n\) is the first time
\(R(s_n)=R_n/2\) and
\(\tau_{n,-}:=(s_n-t_n)/\theta_n\), then

\[
\int_{\tau_{n,-}}^0
[\mathfrak R_{1/2,1}[v_n]]_+\,d\tau\geq\frac14.
\tag{RAM.20}
\]

For higher odd \(q\), \(\theta_n^{q-1}\) has no fixed nonzero limit, so one
microscope does not retain the entire odd tower automatically.

The proved reduction is (RAM.17) and the fork in Section 4. It does not yet
prove

\[
\sup_{t<T_*}\int_0^t\mathfrak R_{s,q}(\tau)\,d\tau<\infty.
\tag{RAM.21}
\]

Closing (RAM.21) through this reduction requires pressure-current and mixed-jet
tightness, passage of the nonlocal pressure tail, retention of material
ancestry and the signed current measure, and exclusion of the nonzero coherent
ratio-one residue representing the perfectly balanced case.

The two faces of this statement are developed without changing the proof
object in
`thomas-balanced-rip-cord-material-charge-and-recruitment-tail-20260803.md`.
That note proves the fixed-positive-volume material deformation/escape charge
and the datum-finite pressure-complete source mass, while leaving the exact
record-localization and source/receiver coincidence tail explicit. The
frequency form of the same coincidence tail is developed in
`thomas-one-fluid-high-pass-prefix-first-moment-reduction-20260803.md`.
