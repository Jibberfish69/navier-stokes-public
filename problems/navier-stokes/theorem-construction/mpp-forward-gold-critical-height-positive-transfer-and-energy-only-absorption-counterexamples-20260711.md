# Positive critical transfer and energy-only absorption counterexamples

**Date:** 2026-07-11  
**Program:** Gold, direct critical-height continuation  
**Live target:**

\[
\sup_{0\le t<T}\mathcal H_{1/2}(t)<\infty,
\qquad
\mathcal H_{1/2}(t)=\frac12\|\Lambda^{1/2}u(t)\|_2^2.
\tag{EA.1}
\]

**Mathematical status:** the periodic same-history example and the
\(\mathbb R^3\) fixed-energy family below are exact counterexamples at their
declared scopes. They give a checked route obstruction and candidate negative
ontology facts. They do not prove (EA.1).

## 1. Physical question

For one smooth unforced incompressible fixed-viscosity history, write

\[
\mathcal T(u)
=-left\langle
\mathbb P(u\cdot\nabla u),\Lambda u
\right\rangle,
\qquad
D(u)=\|\Lambda^{3/2}u\|_2^2.
\tag{EA.2}
\]

The global critical-height balance is

\[
\frac{d}{dt}\mathcal H_{1/2}(t)
=\mathcal T(u(t))-\nu D(u(t)).
\tag{EA.3}
\]

Pressure makes no separate direct contribution to this global
constant-coefficient multiplier pairing. It remains the elliptically slaved
response of the whole velocity field and changes the later transport and
strain geometry. The question tested here is narrower: can positive critical
transfer, or an energy-only pointwise absorption of that transfer, be imposed
universally on every same-law history?

## 2. Exact globally smooth history with positive critical production

Use the normalized spatial average on the \(2\pi\)-periodic torus and set

\[
\phi(x,y,z)
=
\bigl(
2\cos y,
2\cos x,
2\cos x+2\sin(x+y)
\bigr).
\tag{EA.4}
\]

This field is divergence-free and independent of \(z\). Its exact homogeneous
Sobolev norms are

\[
\|\phi\|_{\dot H^s}^2=6+2^{s+1},
\tag{EA.5}
\]

so in particular

\[
\|\phi\|_2^2=8,
\qquad
\|\Lambda^{1/2}\phi\|_2^2=6+2\sqrt2,
\tag{EA.6}
\]

\[
\|\nabla\phi\|_2^2=10,
\qquad
\|\Lambda^{3/2}\phi\|_2^2=6+4\sqrt2.
\tag{EA.7}
\]

Direct differentiation gives

\[
(\phi\cdot\nabla)\phi
=
\begin{pmatrix}
-4\cos x\sin y\\
-4\cos y\sin x\\
-4\cos y\sin x+4(\cos y+\cos x)\cos(x+y)
\end{pmatrix},
\tag{EA.8}
\]

while

\[
\Lambda\phi
=
\begin{pmatrix}
2\cos y\\
2\cos x\\
2\cos x+2\sqrt2\sin(x+y)
\end{pmatrix}.
\tag{EA.9}
\]

Orthogonality of the finitely many Fourier modes then yields

\[
\left\langle
(\phi\cdot\nabla)\phi,
\Lambda\phi
\right\rangle
=2-2\sqrt2,
\tag{EA.10}
\]

and therefore

\[
\mathcal T(\phi)=2(\sqrt2-1)>0.
\tag{EA.11}
\]

For initial datum \(u_0=A\phi\), (EA.3) gives

\[
\frac{d}{dt}\mathcal H_{1/2}(0)
=2(\sqrt2-1)A^3
-\nu(6+4\sqrt2)A^2.
\tag{EA.12}
\]

Hence the critical height initially grows exactly when

\[
A>(7+5\sqrt2)\nu.
\tag{EA.13}
\]

This is an exact same-history statement, not an initial-state calculation
detached from the PDE. Write \(a(t)=Ae^{-\nu t}\) and

\[
v(t,x,y)=2a(t)(\cos y,\cos x),
\qquad
p(t,x,y)=4a(t)^2\sin x\sin y.
\tag{EA.14}
\]

The horizontal pair \((v,p)\) solves the two-dimensional Navier--Stokes
equation globally. The vertical component is the global smooth solution of

\[
\partial_tw
+2a(t)(\cos y\,\partial_x+\cos x\,\partial_y)w
=\nu\Delta_{x,y}w,
\tag{EA.15}
\]

with

\[
w(0,x,y)=2A\bigl(\cos x+\sin(x+y)\bigr).
\tag{EA.16}
\]

Thus \(u=(v_1,v_2,w)\) is a globally smooth two-dimensional/three-component
Navier--Stokes history with the initial datum \(A\phi\). Horizontal transport
mixes the vertical component across frequencies while the same pressure
response and ordinary viscosity remain active. Positive critical-height
production is therefore physically permitted even inside a globally regular
history. Its sign alone carries no singularity implication.

## 3. Exact \(\mathbb R^3\) fixed-energy absorption no-go

### 3.1 A positive-transfer Schwartz state exists

Let

\[
k=(1,0,0),
\qquad
\ell=(0,1,0),
\qquad
m=k+\ell,
\tag{EA.17}
\]

and use the Fourier coefficients

\[
c_\ell=e_1,
\qquad
c_k=e_2+e_3,
\qquad
c_m=-ie_3,
\tag{EA.18}
\]

together with their conjugates. They are respectively orthogonal to
\(\ell,k,m\), and they produce the periodic field (EA.4).

Choose disjoint sufficiently narrow smooth Fourier bumps about
\(\pm k,\pm\ell,\pm m\), impose conjugate symmetry, and apply the exact Leray
projector \(\mathbb P_\xi\) on each bump. The inverse Fourier transform is a
real divergence-free Schwartz field \(\psi_\varepsilon\). Nonresonant triples
have disjoint support for small bump width \(\varepsilon\), while each resonant
triple converges to the corresponding coefficient in (EA.10). Consequently,

\[
\mathcal T(\psi_\varepsilon)
=c_{\mathcal F}K\varepsilon^6\,2(\sqrt2-1)
+O(\varepsilon^7),
\qquad
c_{\mathcal F}>0,
\quad
K>0.
\tag{EA.19}
\]

For all sufficiently small \(\varepsilon\), this gives a real divergence-free
Schwartz field \(\psi\) on \(\mathbb R^3\) with

\[
\mathcal T(\psi)>0.
\tag{EA.20}
\]

The Fourier-packet construction is essential to this scope: a bare physical
cutoff of the periodic field would break incompressibility, and projecting such
a cutoff would require separate control at zero frequency.

### 3.2 Fixed energy cannot absorb the positive transfer pointwise

For \(a,\lambda>0\), define

\[
u_{a,\lambda}(x)=a\lambda\psi(\lambda x).
\tag{EA.21}
\]

With

\[
z(u)=\|\Lambda u\|_2,
\qquad
d(u)=\|\Lambda^{3/2}u\|_2,
\tag{EA.22}
\]

the exact scalings are

\[
\|u_{a,\lambda}\|_2
=a\lambda^{-1/2}\|\psi\|_2,
\qquad
z(u_{a,\lambda})
=a\lambda^{1/2}z(\psi),
\tag{EA.23}
\]

\[
d(u_{a,\lambda})
=a\lambda d(\psi),
\qquad
\mathcal T(u_{a,\lambda})
=a^3\lambda^2\mathcal T(\psi).
\tag{EA.24}
\]

Fix any energy norm \(E>0\) and choose

\[
a_\lambda
=\frac{E}{\|\psi\|_2}\lambda^{1/2}.
\tag{EA.25}
\]

Then \(\|u_{a_\lambda,\lambda}\|_2=E\), whereas the transfer, critical
dissipation, and lower-order enstrophy scale respectively as

\[
\mathcal T(u_{a_\lambda,\lambda})\sim\lambda^{7/2},
\qquad
d(u_{a_\lambda,\lambda})^2\sim\lambda^3,
\qquad
z(u_{a_\lambda,\lambda})^2\sim\lambda^2.
\tag{EA.26}
\]

Suppose that, for fixed \(\nu>0\), fixed finite \(\theta\ge0\), and every
\(E>0\), there were a finite \(C(E)\) such that every smooth divergence-free
state with \(\|u\|_2=E\) obeyed

\[
[\mathcal T(u)]_+
\le
\theta\nu d(u)^2+C(E)z(u)^2.
\tag{EA.27}
\]

Substitution of (EA.21) and division by \(a_\lambda^2\lambda^2\) would give

\[
a_\lambda\mathcal T(\psi)
\le
\theta\nu d(\psi)^2
+C(E)\lambda^{-1}z(\psi)^2.
\tag{EA.28}
\]

The left side tends to infinity and the right side stays bounded, contradicting
(EA.20). Therefore (EA.27) is false for every such \(\theta\) and \(C(E)\).

Each \(u_{a_\lambda,\lambda}\) is smooth divergence-free initial data for a
local exact fixed-viscosity Navier--Stokes history. The result is a class-level
counterexample across distinct data, not a reduced model and not a terminal
sequence extracted from one history.

## 4. Scope boundary and exact effect

The counterexample refutes universal pointwise absorption whose coefficient
depends only on the kinetic-energy norm. It does not refute an estimate whose
constant depends on the full datum, the critical norm, spectral geometry, or
same-trajectory history. It also does not refute an integrated inequality with
additional endpoint, storage, or cancellation terms.

- **Physical verdict:** positive critical production is permitted in a globally
  smooth same-field history.
- **Scoped mathematical status:** counterexample to universal sign exclusion
  and to universal \(L^2\)-only pointwise absorption of critical production.
- **Ontology effect:** candidate refinement of F6.3 by the exact 2D3C history,
  and candidate negative refinement of F3.2 by the fixed-energy scaling family.
  Neither has premise weight before independent validation and promotion.
- **Gold effect:** checked route obstruction only. Energy, viscosity, and the
  sign of instantaneous critical transfer do not close SHR.7; the global bound
  remains open.

