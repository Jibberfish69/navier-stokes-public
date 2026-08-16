---
theorem_id: poisson-kelvin-half-step-extension-route-audit-20260723
date: 2026-07-23
problem: navier-stokes
route: forward-gold / full VPI derivative tower / Poisson half-step extension / stochastic Kelvin
status: proved-exact-half-step-covariance-strain-bridge-and-scoped-static-and-martingale-maximal-route-obstructions; uniform-critical-height open
authority_state: theorem-construction; exact route audit, not Gold closure
completion_truth: >-
  Proves that the Poisson harmonic extension is one exact full-field coordinate
  for every half-step Sobolev row: lower rows are depth moments, intermediate
  rows are total extension mass, and higher rows are boundary jets. It also
  derives the exact scale-depth conservation law, the triangular
  time-derivative/spatial-row identity, and the positive Poisson covariance
  tensor whose contraction with the trace-free strain is exactly the signed
  critical production. This supplies a concrete full-field bridge between the
  Sobolev tower, material-pair VPI geometry, strain orientation, and viscosity.
  The scalar profile is only a Laplace transform of the radial quadratic
  spectrum; the installed phase/reconvergence countertests defeat its
  instantaneous/static use, even after the tested finite leading Stokes/Gram
  augmentation.
  Harmonic stress conservation reconstructs the same indefinite cubic current.
  Poisson subordination and the physical-time Constantin-Iyer stochastic flow
  are distinct Brownian constructions; Doob/BDG controls fixed-loop
  circulation but not the critically weighted incidence of the distorted loop
  family. No datum-finite signed prefix, uniform H^{1/2} bound, or Gold closure
  is proved.
---

# Poisson--Kelvin half-step extension route audit

## 1. Custody and normalization

Let \(u\) be one smooth, decaying, divergence-free Navier--Stokes field on its
maximal classical interval, with fixed viscosity \(\nu>0\). Put

\[
 \Lambda=(-\Delta)^{1/2},\qquad
 B(u,u)=\mathbb P((u\cdot\nabla)u),
 \qquad
 \partial_tu+B+\nu\Lambda^2u=0,
 \tag{PK.1}
\]

\[
 E_s(t):=\frac12\|\Lambda^su(t)\|_2^2,
 \qquad
 H(t):=E_{1/2}(t).
 \tag{PK.2}
\]

Thus the alternative convention
\(\mathcal H(t)=\|u(t)\|_{\dot H^{1/2}}^2\) is
\(\mathcal H=2H\). The standard differentiated balance is

\[
 \boxed{E_s'+2\nu E_{s+1}=P_s,\qquad
 P_s:=-\langle\Lambda^su,\Lambda^sB\rangle.}
 \tag{PK.3}
\]

Every object below is a reading of this same deterministic velocity-pressure
history.

## 2. The whole half-step Sobolev tower is one harmonic profile

Define the Poisson extension

\[
 U(x,y,t):=e^{-y\Lambda}u(x,t),\qquad y>0.
 \tag{PK.4}
\]

It obeys

\[
 (\partial_y^2+\Delta_x)U=0,\qquad
 U|_{y=0}=u,\qquad
 -\partial_yU|_{y=0}=\Lambda u,\qquad
 \nabla_x\cdot U=0.
 \tag{PK.5}
\]

For every admissible \(s\), set

\[
 q_s(y,t):=
 \frac12\int_{\mathbb R^3}
 \left(
 |\partial_y\Lambda^sU|^2+
 |\nabla_x\Lambda^sU|^2
 \right)\,dx
 =
 \|\Lambda^{s+1}e^{-y\Lambda}u(t)\|_2^2.
 \tag{PK.6}
\]

The normal and tangential squares in (PK.6) are equal after spatial
integration. This is the literal Pythagorean part of the construction: the
four-dimensional Dirichlet square is the sum of the orthogonal normal and
tangential gradient components.

For every integer \(k,m\ge0\), direct Fourier integration gives

\[
 \boxed{
 \int_0^\infty y^kq_s(y,t)\,dy
 =
 \frac{k!}{2^k}E_{\,s+(1-k)/2}(t),
 }
 \tag{PK.7}
\]

\[
 \boxed{
 (-\partial_y)^m q_s(0,t)
 =
 2^{m+1}E_{\,s+1+m/2}(t).
 }
 \tag{PK.8}
\]

In particular, with \(q=q_0\),

\[
 \boxed{
 E_0=2\int_0^\infty yq(y)\,dy,\qquad
 H=\int_0^\infty q(y)\,dy,\qquad
 E_1=\frac12q(0).
 }
 \tag{PK.9}
\]

The upper tower is the boundary jet

\[
 q(0)=2E_1,\quad
 -q_y(0)=4E_{3/2},\quad
 q_{yy}(0)=8E_2,\quad
 -q_{yyy}(0)=16E_{5/2},\ldots .
 \tag{PK.10}
\]

The exact half-step triangle for every \(s\) is therefore

\[
 \boxed{
 E_s
 =2\int_0^\infty yq_s\,dy
 \quad\longrightarrow\quad
 E_{s+1/2}
 =\int_0^\infty q_s\,dy
 \quad\longrightarrow\quad
 E_{s+1}
 =\frac12q_s(0).
 }
 \tag{PK.11}
\]

It is a moment/mass/boundary triangle, not an equality of three independent
energies. Its interpolation consequence is

\[
 \boxed{E_{s+1/2}^2\le E_sE_{s+1}.}
 \tag{PK.12}
\]

For \(s=0\), this is \(H^2\le E_0E_1\). Hence an unconditional
\(\sup_tE_1(t)\) estimate would immediately bound \(H\), but orthogonality of
Fourier bands alone supplies no such estimate.

The profile \(q_s\) is completely monotone in \(y\). If \(E_0\) remains
bounded while \(H\to\infty\), then

\[
 \frac{\int_0^\infty yq\,dy}{\int_0^\infty q\,dy}
 =\frac{E_0}{2H}\longrightarrow0,
 \tag{PK.13}
\]

and, for every fixed \(\delta>0\),

\[
 \int_\delta^\infty q(y,t)\,dy
 \le\frac{E_0(t)}{2\delta}.
 \tag{PK.14}
\]

Thus unbounded critical height is exactly concentration of the one extension
energy profile against the boundary \(y=0\).

## 3. One scale-depth equation and the triangular time tower

Write

\[
 B_y:=e^{-y\Lambda}B,\qquad
 f_s(y,t):=
 \langle\Lambda^sU,\Lambda^sB_y\rangle,
 \tag{PK.15}
\]

\[
 \mathcal P_s(y,t):=
 -2\langle
 \Lambda^{s+1}U,\Lambda^{s+1}B_y
 \rangle.
 \tag{PK.16}
\]

The extension obeys

\[
 \partial_tU+B_y+\nu\partial_y^2U=0.
 \tag{PK.17}
\]

This is not a local four-dimensional Navier--Stokes equation:
\(B_y\ne\mathbb P(U\cdot\nabla U)\) in general. Nevertheless, its quadratic
depth law is exact:

\[
 \boxed{
 \partial_tq_s+\frac{\nu}{2}\partial_y^2q_s=\mathcal P_s,
 \qquad
 \int_0^\infty\mathcal P_s\,dy=P_{s+1/2}.
 }
 \tag{PK.18}
\]

Since

\[
 \partial_y^2f_s
 =
 4\langle\Lambda^{s+1}U,\Lambda^{s+1}B_y\rangle,
 \tag{PK.19}
\]

(PK.18) has the conservative form

\[
 \boxed{
 \partial_tq_s+
 \frac12\partial_y^2(f_s+\nu q_s)=0.
 }
 \tag{PK.20}
\]

With

\[
 J_s^P:=\frac12\partial_y(f_s+\nu q_s),
 \tag{PK.21}
\]

this is \(\partial_tq_s+\partial_yJ_s^P=0\), and

\[
 J_s^P(0,t)
 =
 P_{s+1/2}(t)
 -\nu\|\Lambda^{s+3/2}u(t)\|_2^2
 =
 E_{s+1/2}'(t).
 \tag{PK.22}
\]

Integrating (PK.18) therefore returns exactly

\[
 E_{s+1/2}'+2\nu E_{s+3/2}=P_{s+1/2}.
 \tag{PK.23}
\]

For the critical row,

\[
 \boxed{
 H'+\nu\|\Lambda^{3/2}u\|_2^2=P_H.
 }
 \tag{PK.24}
\]

Repeated time differentiation of (PK.3) gives the complete triangular
identity, with no omitted lower terms:

\[
 \boxed{
 H^{(n)}
 =
 (-2\nu)^nE_{n+1/2}
 +
 \sum_{j=0}^{n-1}
 (-2\nu)^j
 \partial_t^{\,n-1-j}P_{j+1/2},
 \qquad n\ge1.
 }
 \tag{PK.25}
\]

The first rows are

\[
 \begin{aligned}
 H'&=P_{1/2}-2\nu E_{3/2},\\
 H''&=P_{1/2}'-2\nu P_{3/2}
       +(2\nu)^2E_{5/2},\\
 H'''&=P_{1/2}''-2\nu P_{3/2}'
       +(2\nu)^2P_{5/2}
       -(2\nu)^3E_{7/2}.
 \end{aligned}
 \tag{PK.26}
\]

The highest spatial row in \(H^{(n)}\) is the boundary jet

\[
 E_{n+1/2}
 =
 2^{-2n}(-\partial_y)^{2n-1}q(0).
 \tag{PK.27}
\]

This is the exact connection between singular time derivatives of the
critical height and the spatial Sobolev tower. One time derivative advances a
whole Sobolev step because physical viscosity is \(\nu\Lambda^2\); the
Poisson boundary jet exposes the intervening half-steps. The identity is
triangular because every advance also creates all lower signed
nonlinear-current derivatives.

## 4. The full tensor bridge retains the missing orientation

The Poisson semigroup is Markov. Define its subscale covariance

\[
 \mathcal R_y
 :=
 e^{-y\Lambda}(u\otimes u)-U\otimes U.
 \tag{PK.28}
\]

For every \(a\in\mathbb R^3\),

\[
 a^{\mathsf T}\mathcal R_ya
 =
 e^{-y\Lambda}(a\cdot u)^2
 -
 \left(e^{-y\Lambda}(a\cdot u)\right)^2
 \ge0,
 \tag{PK.29}
\]

so \(\mathcal R_y\succeq0\). The exact extended equation is

\[
 \boxed{
 \partial_tU+
 \mathbb P(U\cdot\nabla U)
 +\mathbb P\nabla\cdot\mathcal R_y
 +\nu\partial_y^2U=0.
 }
 \tag{PK.30}
\]

Define the fractional carré-du-champ tensor

\[
 \mathcal K_\Lambda(v)
 :=
 \Lambda v\otimes v+v\otimes\Lambda v-\Lambda(v\otimes v).
 \tag{PK.31}
\]

It has the positive increment representation

\[
 a^{\mathsf T}\mathcal K_\Lambda(v)(x)a
 =
 c_3\int_{\mathbb R^3}
 \frac{|a\cdot(v(x)-v(z))|^2}{|x-z|^4}\,dz
 \ge0.
 \tag{PK.32}
\]

The scale covariance itself satisfies

\[
 \boxed{
 (\partial_y+\Lambda)\mathcal R_y
 =\mathcal K_\Lambda(U(y)),
 \qquad
 \mathcal R_0=0,
 \qquad
 \partial_y\mathcal R_y|_{y=0}=\mathcal K_\Lambda(u).
 }
 \tag{PK.33}
\]

Let

\[
 S_U:=\frac12(\nabla_xU+\nabla_xU^{\mathsf T}),
 \qquad \operatorname{tr}S_U=0.
 \tag{PK.34}
\]

Self-advection cancels in its own \(L^2\) pairing, and (PK.30) gives

\[
 \boxed{
 f_0(y,t)
 =
 -\int_{\mathbb R^3}\mathcal R_y:S_U\,dx.
 }
 \tag{PK.35}
\]

Since \(f_0'(0)=2P_H\), differentiation at the boundary yields the exact
full-field current bridge

\[
 \boxed{
 P_H(t)
 =
 -\frac12\int_{\mathbb R^3}
 \mathcal K_\Lambda(u):S(u)\,dx.
 }
 \tag{PK.36}
\]

Moreover,

\[
 \int_{\mathbb R^3}\operatorname{tr}\mathcal K_\Lambda(u)\,dx
 =
 2\langle u,\Lambda u\rangle
 =
 4H.
 \tag{PK.37}
\]

Thus \(\mathcal K_\Lambda(u)\) is a positive, critically weighted
velocity-increment covariance whose integrated trace is \(4H\), so its
normalized trace is the critical-height density.
Positive \(P_H\) is precisely its alignment with compressive directions of
the same field's trace-free strain. This is not a separate nonlinear
mechanism: it is the VPI pair geometry and the Sobolev current in one tensor
coordinate.

Equations (PK.20), (PK.33), and (PK.35) give the promised one-field
scale/participation/geometry balance:

\[
 \boxed{
 \partial_tq+
 \frac12\partial_y^2
 \left(
 \nu q-
 \int_{\mathbb R^3}\mathcal R_y:S_U\,dx
 \right)=0,
 \qquad
 (\partial_y+\Lambda)\mathcal R_y
 =\mathcal K_\Lambda(U)\succeq0.
 }
 \tag{PK.38}
\]

The harmonic stress tensor gives the same conclusion. Put

\[
 T_{\alpha\beta}
 =
 \partial_\alpha U\cdot\partial_\beta U
 -\frac12\delta_{\alpha\beta}|\nabla_{x,y}U|^2,
 \qquad
 \partial_\alpha T_{\alpha\beta}=0.
 \tag{PK.39}
\]

Using the solution-dependent multiplier
\((U_1,U_2,U_3,0)\), not a fixed geometric multiplier, gives

\[
 \boxed{
 P_H
 =
 \int_{\mathbb R^3}u_iT_{yi}(x,0)\,dx
 =
 -\int_{\mathbb R^4_+}
 T_{\alpha i}\partial_\alpha U_i\,dx\,dy
 =
 -\int_{\mathbb R^4_+}
 \sum_{\alpha=1}^4
 (\partial_\alpha U)^{\mathsf T}
 S_U(\partial_\alpha U)\,dx\,dy.
 }
 \tag{PK.40}
\]

The positive harmonic Gram tensor is again contracted with trace-free strain.
There is no sign. Under \(u\mapsto-u\), \(q\), \(\mathcal R\),
\(\mathcal K_\Lambda\), and \(T\) are unchanged, while \(S\) and \(P_H\)
change sign. Therefore no scalar function of \(q\), no boundary-jet inventory,
and no fixed even quadratic stress stock can orient the critical current.

## 5. The two Brownian constructions are not one free estimate

The Poisson semigroup is subordinate to the heat semigroup:

\[
 \boxed{
 e^{-y\Lambda}
 =
 \frac{y}{2\sqrt\pi}
 \int_0^\infty
 a^{-3/2}e^{-y^2/(4a)}e^{-a\Lambda^2}\,da.
 }
 \tag{PK.41}
\]

This Brownian hitting-time variable randomizes a heat scale at one fixed
physical time. At the multiplier and quadratic-form level, applying the same
subordination formula to \(e^{-2y\Lambda}\) makes each \(q_s(y)\) a positive
heat-semigroup mixture of the already installed heat tower. This statement
does not come from squaring the mixture for \(U\). The parameter \(y\) is not
material time.

The Constantin--Iyer construction is different. Its stochastic flow runs
through physical time with drift given by the same deterministic velocity
field and noise \(\sqrt{2\nu}\,dW\). Write
\(A^W_{s,T}:=(X^W_{s,T})^{-1}\). For a terminal loop \(C\),

\[
 \Gamma_T(C)
 =
 \mathbb E_W\,\Gamma_s(A^W_{s,T}C).
 \tag{PK.42}
\]

For fixed \(T,C\), define

\[
 M_\tau^{T,C}
 :=
 \Gamma_{T-\tau}(A^W_{T-\tau,T}C),
 \qquad 0\le\tau\le T.
 \tag{PK.42a}
\]

This is a martingale in the reverse-time parameter \(\tau\) and the
corresponding backward filtration. Rezakhanlou's Theorem 1.1 gives the
two-form martingale and bracket; Stokes' theorem converts its surface formula
to the loop form below. With standard Brownian motion in
\(dX=u\,dt+\sqrt{2\nu}\,dW\), that quadratic variation is

\[
 [M^{T,C}]_{T-s}
 =
 2\nu\sum_{k=1}^3
 \int_s^T
 \left|
 \oint_{A^W_{r,T}C}
 \partial_ku(r)\cdot d\ell
 \right|^2dr.
 \tag{PK.43}
\]

If the factor \(\sqrt{2\nu}\) is absorbed into the driving vector fields, the
explicit \(2\nu\) is correspondingly absent from the displayed bracket.

For the critical circle measure

\[
 d\mu(C)=r^{-4}\,dx\,dn\,dr,
 \qquad
 \mathcal H(T)
 =
 c_\circ\int|\Gamma_T(C)|^2\,d\mu(C),
 \tag{PK.44}
\]

two independent copies give exactly

\[
 \boxed{
 \mathcal H(T)
 =
 c_\circ\mathbb E_{W,W'}
 \int
 \Gamma_s(A^W_{s,T}C)
 \Gamma_s(A^{W'}_{s,T}C)\,d\mu(C).
 }
 \tag{PK.45}
\]

Independence makes (PK.45) a square of expectations, not stochastic
covariance. Any reconvergence interpretation must therefore concern overlap
and orientation of the averaged pulled-back loop currents under the common
terminal-circle measure; (PK.45) alone does not prove a causal reconvergence
event.

The diagonal second moment is

\[
 D_{s,T}:=
 c_\circ\mathbb E_W
 \int|\Gamma_s(A^W_{s,T}C)|^2\,d\mu(C).
 \tag{PK.46}
\]

Define

\[
 \mathcal V_{s,T}
 :=
 c_\circ\mathbb E_W
 \int[M^{T,C}]_{T-s}\,d\mu(C).
 \tag{PK.46a}
\]

The square-integrable martingale isometry and Fubini give

\[
 \boxed{
 D_{s,T}=\mathcal H(T)+\mathcal V_{s,T},
 \qquad
 \mathcal V_{s,T}\ge0.
 }
 \tag{PK.47}
\]

Jensen only gives \(\mathcal H(T)\le D_{s,T}\). Doob/BDG controls the
backward maximal circulation in terms of \(D_{s,T}\) and/or
\(\mathcal V_{s,T}\), but supplies no datum bound on either and does not
control the signed difference in (PK.47). Moreover, \(D_{0,T}\) is not
\(\mathcal H(0)\). A volume-preserving stochastic inverse flow generally
sends circles to noncircular smooth embedded loops; it does not preserve the
circle family or its critical incidence measure.

This failure is already visible for a deterministic volume-preserving linear
strain. If

\[
 A_\lambda=\operatorname{diag}(\lambda,\lambda^{-1},1),
 \qquad \det A_\lambda=1,
 \tag{PK.48}
\]

then circulation pulls back as a one-form:

\[
 A_\lambda^*(u\cdot dx)
 =
 \left((DA_\lambda)^{\mathsf T}(u\circ A_\lambda)\right)\cdot dx.
 \tag{PK.49}
\]

The all-circle norm reads the solenoidal part:

\[
 c_\circ\int|\Gamma_u(A_\lambda C)|^2\,d\mu(C)
 =
 \left\|
 \mathbb P\left[
 (DA_\lambda)^{\mathsf T}(u\circ A_\lambda)
 \right]
 \right\|_{\dot H^{1/2}}^2.
 \tag{PK.50}
\]

For a \(\lambda\)-dependent divergence-free Schwartz packet supported within
an \(O(\lambda^{-2})\) Fourier neighbourhood of \(e_3\) and polarized within
\(O(\lambda^{-2})\) of \(e_1\), the Leray projection changes only an
asymptotically negligible angular error, and the ratio in (PK.50) to
\(\|u\|_{\dot H^{1/2}}^2\) is asymptotic to \(\lambda^2\).

Thus \(\det DA=1\) gives no critical pullback bound. Bounding the condition
number of \(DA\) through
\(\exp\int\|\nabla u\|_\infty dt\) invokes essentially the continuation
control being sought.

No commuting joint Poisson--Kelvin representation has been established.
Already at the Eulerian level, applying the Poisson semigroup to the
quadratic transport produces the exact commutator

\[
 e^{-y\Lambda}(u\cdot\nabla u)
 -(U\cdot\nabla)U
 =
 \nabla\cdot\mathcal R_y,
 \tag{PK.51}
\]

which restores the positive covariance and its signed strain contraction in
(PK.35). Thus the evident composition attempt returns the complete nonlinear
current rather than deleting it.

## 6. Route classification against the installed countertests

| Proposed carrier | Exact result | Classification |
|---|---|---|
| Scalar \(q_s(y,t)\), all moments and boundary jets | It is the Laplace transform of the complete radial quadratic Fourier spectrum. | Exact tower coordinate, but phase-blind. |
| Radial rows plus leading source/Gram information | The profiles in (SH.201)--(SH.210) match every radial row and leading Stokes/Gram data while later lawful feedback changes sign. | Checked local sign obstruction; not a PDE counterhistory. |
| Harmonic stress tensor alone | Fixed Rellich/Morawetz multipliers have genuine quadratic signs, but the multiplier producing \(P_H\) is \(U\) itself and gives (PK.40). | Reconstructs the same indefinite cubic current. |
| Weak one-face Carleson control | One bounded critical unit may remain at every scale. | Insufficient; the Dini first moment remains open. |
| Poisson source square | \(\int_0^\infty\|e^{-y\Lambda}B\|_2^2dy=\frac12\|B\|_{\dot H^{-1/2}}^2\). | Coordinate form of a stronger sufficient open source-square route, not an equivalent rewriting of (FT.23). |
| Kelvin martingale plus Jensen/BDG | Controls fixed-loop amplitude, but produces \(D_{s,T}\) on distorted loops. | Stronger unsigned route with an unpaid loop-distortion/bracket action. |
| Signed two-copy Kelvin correlation | Retains the subtraction \(\mathcal V_{s,T}\) and equals \(\mathcal H(T)\). | Exact target identity, not a smaller theorem. |
| Nonlinear actual-range tensor storage | May use \(\mathcal R_y\), \(\mathcal K_\Lambda\), full parent allocation, and loop distortion before clipping. | Not refuted, but no bounded-below datum-paid storage has been constructed. |

The same-spectrum obstruction is recorded in
`mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md`,
(SH.201)--(SH.210). The Dini boundary and the surviving nonlinear
actual-range storage target are (SH.132), (SH.249)--(SH.250), and
(SH.259)--(SH.260) there. The already installed global critical balance and
signed-prefix target are (FT.22)--(FT.23) in
`mpp-vpi-full-tower-q-adic-scale-depth-assembly-20260722.md`.

## 7. The four-body/enstrophy intersection

The half-step triangle makes the issue exact:

\[
 H^2\le E_0E_1.
 \tag{PK.52}
\]

Therefore a datum-finite unconditional \(\sup_tE_1(t)\) bound from the
four-body synthesizer would already close the critical-height problem. The
current four-body authority does not contain that theorem. Its old Body II
used the \(L^2+H^1\) packet, while the modern Body II explicitly asks for a
stronger pressure-corrected participation functional. The balance-circuit
audit states that enstrophy gives a signed first-moment balance, not the
needed square reserve, and that the four transfer arrows remain unproved.

In the present coordinate, the possible four-body connection is concrete:

\[
 \boxed{
 \underbrace{q}_{\text{scale/tower stock}}
 \quad\leftrightarrow\quad
 \underbrace{\mathcal R_y,\mathcal K_\Lambda}_{\text{positive pair covariance}}
 \quad\leftrightarrow\quad
 \underbrace{S_U}_{\text{deformation orientation}}
 \quad\leftrightarrow\quad
 \underbrace{\nu\partial_y^2q}_{\text{viscous drain}}.
 }
 \tag{PK.53}
\]

Equation (PK.38) is an exact coupled balance circuit for those four readings.
What is absent is a bounded-below storage or cumulative orientation law that
prevents the covariance from repeatedly realigning with compressive strain.
Calling (PK.53) a four-body closure before that law is proved would merely
rename the reconvergence problem.

## 8. Exact landing

The Poisson construction proves a useful theorem:

\[
 \boxed{
 \text{the entire half-step Sobolev tower is one positive harmonic profile,
 and its signed critical production is the compression alignment of one
 positive fractional covariance tensor.}
 }
 \tag{PK.54}
\]

It also proves the exact obstruction:

\[
 \boxed{
 \text{static scalar radial data and finite leading augmentation do not
 determine the current sign; fixed quadratic stress signs and free
 fixed-loop martingale bounds supply no proved datum-finite control.}
 }
 \tag{PK.55}
\]

The live sufficient Gold theorem remains

\[
 \boxed{
 \sup_{0<T<T_*}
 \int_0^T\mathfrak J_{\rm sing}(t)\,dt
 \le C(u_0,\nu),
 \qquad
 \mathfrak J_{\rm sing}
 =\frac12P_H
 =-\frac14\int\mathcal K_\Lambda(u):S(u)\,dx.
 }
 \tag{PK.56}
\]

Equation (PK.56) is an exact tensor realization of (FT.23), not a strict
reduction of it. A genuine advance from this route would have to construct,
from the causal actual range of the same field, a datum-paid storage whose
derivative absorbs the signed covariance--strain alignment and the stochastic
loop-distortion bracket while remaining uniformly bounded below. No such
storage or datum-finite bound is proved here. The Millennium Prize Problem is
not closed.

## Primary external references

- Peter Constantin and Gautam Iyer, *A Stochastic Lagrangian Representation
  of the 3-Dimensional Incompressible Navier--Stokes Equations*:
  https://web.math.princeton.edu/~const/detsnsnew.pdf
- Fraydoun Rezakhanlou, *Stochastically Symplectic Maps and Their
  Applications to Navier--Stokes Equation*:
  https://arxiv.org/abs/1310.8353
