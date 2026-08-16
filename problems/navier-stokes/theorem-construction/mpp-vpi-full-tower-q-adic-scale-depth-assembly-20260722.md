---
theorem_id: vpi-full-tower-q-adic-scale-depth-assembly-20260722
date: 2026-07-22
problem: navier-stokes
route: forward-gold / full VPI derivative tower / signed q-adic scale current
status: proved-exact-scale-depth-lock; uniform-critical-height consequence open
authority_state: theorem-construction; constructive live-lane assembly
completion_truth: >-
  Proves an exact generating law for the entire heat-resolved VPI derivative
  tower. A geometric mixture of all derivative rows at one heat face is
  exactly the first row at a shifted heat face. With shift 2 log q, every
  q-cell stock and completed current is therefore a positive-coefficient
  summable mixture of all derivative depths, and every q-face receiver is the corresponding
  signed adjacent-row descent. The same mixture collapses to one explicit
  heat-band multiplier, so pressure-completed transport, viscosity,
  incompressibility, and every derivative rung remain in one velocity field.
  No event selection or one-sided current is used. The construction fixes the
  exact full-tower current on which the finite-neighbour all-high estimate
  must act. It does not yet prove the datum-finite upper prefix of that signed
  current, the uniform H^{1/2} bound, or global smoothness.
---

# Full-VPI q-adic scale--depth assembly

## 1. One differentiated VPI field

Let \(u\) be one smooth, decaying, divergence-free Navier--Stokes field on
its maximal classical interval, with fixed \(\nu>0\). For every multi-index
\(\alpha\),

\[
 (D_t-\nu\Delta)\partial^\alpha u+\nabla\partial^\alpha p
 =-[\partial^\alpha,u\cdot\nabla]u .
 \tag{FT.1}
\]

The heat-normalized rows and their completed currents are

\[
 \rho_n(\sigma,t)
 =\frac{2^{n-1}}{\Gamma(n)}
   \tau^n\|\Lambda^n e^{\tau\Delta}u(t)\|_2^2,
 \qquad \sigma=\log\tau,\qquad n\ge1,
 \tag{FT.2}
\]

\[
 \partial_t\rho_n+\partial_\sigma J_n=0,\qquad
 \rho_{n+1}=\rho_n-\frac1n\partial_\sigma\rho_n,\qquad
 J_{n+1}=J_n-\frac1n\partial_\sigma J_n .
 \tag{FT.3}
\]

Each row has the same kinetic mass and reconstructs the same critical height:

\[
 \int_{\mathbb R}\rho_n\,d\sigma=E_0(t)\le E_0(0),
 \qquad
 H(t)=c_n\int_{\mathbb R}e^{-\sigma/2}\rho_n\,d\sigma .
 \tag{FT.4}
\]

Thus \(E_0(t)\) is the decreasing zeroth row, not a conserved quantity, and
the higher rows are compatible observations of the same VPI history.

## 2. Exact generating law for every derivative depth

Fix \(0<a\le1\) and put \(z=1-a\). Then the entire tower sums exactly:

\[
 \boxed{
 a\sum_{n=1}^{\infty}z^{n-1}\rho_n(\sigma,t)
 =\rho_1(\sigma+\log a,t),
 \qquad
 a\sum_{n=1}^{\infty}z^{n-1}J_n(\sigma,t)
 =J_1(\sigma+\log a,t).}
 \tag{FT.5}
\]

The identities hold separately for the pressure-completed transport and
viscous pieces of \(J_n\). For the stock, if
\(x=2\tau|\xi|^2\), the \(n\)-th kernel is
\(x^ne^{-x}/(2\Gamma(n))\), and

\[
 a\sum_{n\ge1}z^{n-1}\frac{x^ne^{-x}}{2\Gamma(n)}
 =\frac{ax}{2}e^{-ax}.
 \tag{FT.6}
\]

For the current multiplier

\[
 q_n(y)=1-e^{-2y}\sum_{m=0}^{n-1}\frac{(2y)^m}{m!},
 \tag{FT.7}
\]

one has

\[
 a\sum_{n\ge1}z^{n-1}q_n(y)=1-e^{-2ay}=q_1(ay).
 \tag{FT.8}
\]

Equation (FT.5) is the scale--depth lock: derivative depth does not create
another fluid, current, or reserve. Geometric averaging in depth is exactly
translation in the heat-scale coordinate of the same field.

## 3. A q-cell is the whole derivative tower at one face

Fix \(q>1\), and set

\[
 L=2\log q,\qquad a=q^{-2},\qquad z=1-q^{-2},
 \qquad s_j(r)=r-jL,\quad 0\le r<L .
 \tag{FT.9}
\]

Since \(\log a=-L\), (FT.5) gives the exact face shift

\[
 \boxed{
 q^{-2}\sum_{n\ge1}(1-q^{-2})^{n-1}
 (\rho_n,J_n)(s_j,t)
 =(\rho_1,J_1)(s_{j+1},t).}
 \tag{FT.10}
\]

For a general face \(\sigma\), define the depth-assembled cell stock and
current

\[
 M_q(\sigma,t):=\int_{\sigma-L}^{\sigma}\rho_1(\eta,t)\,d\eta,
 \qquad
 K_q(\sigma,t):=\int_{\sigma-L}^{\sigma}J_1(\eta,t)\,d\eta .
 \tag{FT.10a}
\]

Let \(I_j=[s_{j+1},s_j]\), \(M_{q,j}=M_q(s_j,t)\), and
\(K_{q,j}=K_q(s_j,t)\). Integrating the continuous version of (FT.5) over
the shift from \(0\) to \(L\) gives

\[
 \boxed{
 \begin{aligned}
 M_{q,j}(t;r)
 &=\int_{I_j}\rho_1(\sigma,t)\,d\sigma
 =\sum_{n\ge1}\frac{z^n}{n}\rho_n(s_j,t),\\
 K_{q,j}(t;r)
 &=\int_{I_j}J_1(\sigma,t)\,d\sigma
 =\sum_{n\ge1}\frac{z^n}{n}J_n(s_j,t).
 \end{aligned}}
 \tag{FT.11}
\]

The coefficients are positive and have finite total

\[
 \sum_{n\ge1}\frac{z^n}{n}
 =-\log(1-z)=L.
 \tag{FT.12}
\]

Consequently \(M_{q,j}/L\) is literally a convex average of every derivative
row at one common heat face. This is the full derivative tower inside one
q-cell, not a list of independently estimated Sobolev norms.

## 4. Exact signed adjacent-row descent

The receiver of that q-cell has three identical forms:

\[
 \boxed{
 \begin{aligned}
 \partial_tM_{q,j}
 &=J_1(s_{j+1})-J_1(s_j)\\
 &=\sum_{n\ge1}z^n\bigl(J_{n+1}-J_n\bigr)(s_j)\\
 &=-\sum_{n\ge1}\frac{z^n}{n}
   \partial_\sigma J_n(s_j)
 =-\partial_\sigma K_q(s_j,t).
 \end{aligned}}
 \tag{FT.13}
\]

Every common q-face and every adjacent derivative face occurs with both
orientations before the signed receiver is read. No event count, new source,
or separately acting viscosity has been introduced.

The derivative-depth mixture also collapses to one explicit q-band
multiplier. Put

\[
 r_n(y):=yq_n'(y)
 =\frac{2^n}{\Gamma(n)}y^ne^{-2y}.
 \tag{FT.14}
\]

Then

\[
 \boxed{
 R_q(y):=\sum_{n\ge1}\frac{z^n}{n}r_n(y)
 =e^{-2q^{-2}y}-e^{-2y}\ge0.}
 \tag{FT.15}
\]

Writing \(B(u,u)=\mathbb P(u\cdot\nabla u)\), (FT.13) becomes the exact
one-field q-cell law

\[
 \boxed{
 \partial_tM_{q,j}
 =-\operatorname{Re}\langle
   R_q(\tau_j\Lambda^2)^{1/2}\Lambda^{-1}B(u,u),
   R_q(\tau_j\Lambda^2)^{1/2}\Lambda u\rangle
 -\nu\|R_q(\tau_j\Lambda^2)^{1/2}\Lambda u\|_2^2,}
 \tag{FT.16}
\]

where \(\tau_j=e^{s_j(r)}\). This is one pressure-completed transport,
viscosity, incompressibility, and derivative-tower tangent. Its Hilbert
completion is also exact:

\[
 \boxed{
 \begin{aligned}
 \partial_tM_{q,j}
 &+\nu\left\|
 R_q^{1/2}\Lambda u
 +\frac1{2\nu}R_q^{1/2}\Lambda^{-1}B(u,u)
 \right\|_2^2\\
 &=\frac1{4\nu}
 \|R_q^{1/2}\Lambda^{-1}B(u,u)\|_2^2 .
 \end{aligned}}
 \tag{FT.17}
\]

Equation (FT.16), rather than either square in isolation, is the primary
signed VPI current. The q-sum is formed before any magnitude estimate, so
donor--receiver antisymmetry and the homochiral kernel remain available.

## 5. The global critical readout

Define the intrinsically valued q-complex

\[
 A_q(r,t):=\sum_{j\in\mathbb Z}q^jM_{q,j}(t;r).
 \tag{FT.18}
\]

For every compact classical interval, the two true scale exteriors vanish,
and (FT.13) gives

\[
 \boxed{
 A_q'(r,t)=-(1-q^{-1})
 \sum_{j\in\mathbb Z}q^jJ_1(s_j(r),t).}
 \tag{FT.19}
\]

Translation averaging reconstructs the same critical height:

\[
 \boxed{
 \int_0^Le^{-r/2}A_q(r,t)\,dr
 =\frac{2(1-q^{-1})}{c_1}H(t),}
 \tag{FT.20}
\]

and hence

\[
 \boxed{
 H'(t)=-\frac{c_1}{2}
 \int_0^Le^{-r/2}
 \sum_jq^jJ_1(s_j(r),t)\,dr.}
 \tag{FT.21}
\]

The VPI and viscous pieces of (FT.21) are exactly \(P_H\) and the critical
viscous row in

\[
 H'+\nu\|\Lambda^{3/2}u\|_2^2=P_H,
 \qquad
 P_H=2\mathfrak J_{\rm sing}.
 \tag{FT.22}
\]

Thus the derivative tower, the heat tower, the q-adic cells, the material-pair
critical height, and the singleton-helicity current are one global normal
form of the same velocity--pressure history.

## 6. Constructive smoothness estimate

Sections 171--175 of the moving-band construction already localize every
nonabsorbable ultraviolet contribution to the finite-neighbour all-high part
of the same signed current. Equations (FT.10)--(FT.21) now put that current
inside the full derivative tower without selecting records or replacing it
by a scalar source.

The datum estimate to prove is

\[
 \boxed{
 \sup_{0<T<T_*}
 \int_0^T\mathfrak J_{\rm sing}(t)\,dt
 \le C(u_0,\nu).}
 \tag{FT.23}
\]

It must be proved on the joined finite-neighbour all-high term in (FT.16)
after the q-sum and helical sum retain their signs. Once (FT.23) holds,
(FT.22) gives directly

\[
 \boxed{
 \sup_{0<T<T_*}H(T)
 \le H(0)+2C(u_0,\nu),}
 \tag{FT.24}
\]

and the standard endpoint \(L_t^\infty L_x^3\) continuation theorem extends
the same solution past any finite \(T_*\).

The exact new reduction supplied here is the scale--depth lock
(FT.5)--(FT.17): the live finite-neighbour q-current is now an adjacent-row
current of the full VPI derivative tower, not an isolated scalar face. The
remaining work is the datum bound (FT.23) for that signed full-tower current.

## Repository dependencies

- mpp-vpi-moving-band-throughput-lifetime-law-20260718.md, especially
  TL.693--TL.710, TL.728--TL.731, and Sections 171--175;
- mpp-vpi-q-envelope-chord-envelope-equivalence-and-terminal-ancestry-20260722.md;
- mpp-vpi-all-high-signed-current-efficiency-and-unparking-regate-20260722.md;
- mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md,
  especially SH.5, SH.14, and SH.262--SH.267.
