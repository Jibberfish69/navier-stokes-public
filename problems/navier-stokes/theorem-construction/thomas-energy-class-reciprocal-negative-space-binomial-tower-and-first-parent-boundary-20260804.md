# Thomas's energy-class reciprocal negative-space binomial tower and first-parent boundary

Status: exact auxiliary theorem and checked boundary inside Thomas Birnie's
one-fluid pressure-explicit binomial method. It tests literally the historical
idea that greater temporal depth may be paid by lower spatial Sobolev order.
The test begins with (TIR.4)--(TIR.6), retains pressure and every binomial
parent, and uses only the kinetic-energy row of the one continuing solution.

The result is two-sided. The datum does generate a genuine reciprocal tower,
but only as a tower of negative **time** distributions with negative spatial
values. At the first differentiated nonlinear row, the individual parent
products miss an energy-controlled spacetime multiplication by one half of a
spatial derivative. The complete pressure-explicit binomial recombination is
still lawful: it is the time derivative of the original pressure-complete
source. That recombination makes the joined distribution exist, but does not
upgrade it to a Bochner time row or give a common tower radius. Consequently
this energy-class reciprocal tower does not imply (TIR.37a), while leaving open
a stronger signed cancellation proved from the same one-fluid history.

This note is not direct theorem authority and does not alter any authority
surface.

## 1. The same fluid and the primitive row

Fix the one smooth solution on its classical interval \(I=(0,T)\), and retain
only the datum-uniform energy information

\[
 u\in L_t^\infty L_x^2\cap L_t^2H_x^1,
 \qquad
 M:=\|u\|_{L_t^\infty L_x^2},
 \qquad
 D:=\|\nabla u\|_{L_{t,x}^2},
 \qquad
 D_T:=\|u\|_{L_t^2H_x^1}
 \le (TM^2+D^2)^{1/2}.
 \tag{RNT.1}
\]

The energy identity gives

\[
 M\le\|u_0\|_2,
 \qquad
 D^2\le {\|u_0\|_2^2\over2\nu},
 \qquad
 D_T\le\left(T+{1\over2\nu}\right)^{1/2}\|u_0\|_2.
\]

Put

\[
 \mathcal Q(u,p):=(u\cdot\nabla)u+\nabla p,
 \qquad
 -\Delta p=\partial_i\partial_j(u_i u_j).
 \tag{RNT.2}
\]

Thus, as one pressure-complete distribution,

\[
 \mathcal Q(u,p)=\mathbb P\nabla\!\cdot(u\otimes u),
 \qquad
 u_t+\mathcal Q(u,p)=\nu\Delta u.
 \tag{RNT.3}
\]

The projected expression in (RNT.3) is used only to estimate the original
pressure-explicit pair in (RNT.2). It does not remove pressure from the fluid
history.

## 2. The maximal energy-interpolation envelope for the first temporal row

For \(0<\theta\le1\), the kinetic and enstrophy rows give

\[
 u\in L_t^{2/\theta}H_x^\theta
 \hookrightarrow
 L_t^{2/\theta}L_x^{6/(3-2\theta)},
 \qquad
 \|u\|_{L_t^{2/\theta}L_x^{6/(3-2\theta)}}
 \le C M^{1-\theta}D_T^\theta.
 \tag{RNT.4}
\]

The \(TM^2\) contribution in \(D_T\) is required because the spaces in
(RNT.4) are inhomogeneous. It is datum- and interval-controlled by the energy
identity;
discarding it would make the displayed norm bound false at low frequency.

For \(0<\theta\le3/4\), squaring (RNT.4) and using the boundedness of
the Riesz transforms at the resulting exponent gives

\[
 \begin{aligned}
 u\otimes u,\ p
 &\in L_t^{1/\theta}L_x^{3/(3-2\theta)},\\
 p&\in L_t^{1/\theta}H_x^{-3/2+2\theta},\\
 \mathcal Q(u,p)
 &\in L_t^{1/\theta}H_x^{-5/2+2\theta}.
 \end{aligned}
 \tag{RNT.5}
\]

Indeed, with \(r=3/(3-2\theta)\), dual Sobolev embedding gives

\[
 L^r\hookrightarrow H^{-a},
 \qquad
 a=3\left({1\over r}-{1\over2}\right)
 ={3\over2}-2\theta,
 \tag{RNT.6}
\]

and the divergence or pressure gradient loses one derivative. The viscous
term belongs to the same target: for \(0<\theta\le1/2\), interpolate (RNT.1)
and use finite time to put
\(\Delta u\in L_t^{1/\theta}H_x^{\theta-2}\hookrightarrow
L_t^{1/\theta}H_x^{-5/2+2\theta}\); for
\(1/2\le\theta\le3/4\), use
\(\Delta u\in L_t^2H_x^{-1}\).

Therefore the primitive pressure-explicit equation proves the simultaneous
intersection

\[
 \boxed{
 u_t\in
 \bigcap_{0<\theta\le3/4}
 L_t^{1/\theta}H_x^{-5/2+2\theta}.}
 \tag{RNT.7}
\]

The two most useful faces are

\[
 \boxed{
 u_t\in L_t^{4/3}H_x^{-1}
 \cap L_t^2H_x^{-3/2}.}
 \tag{RNT.8}
\]

Finite-time inclusion extends the first face to every \(1\le p\le4/3\).
Writing the full envelope with \(p=1/\theta\),

\[
 r(p):=
 \begin{cases}
 -1,&1\le p\le4/3,\\[2mm]
 -5/2+2/p,&4/3\le p<\infty,
 \end{cases}
 \qquad
 u_t\in\bigcap_{1\le p<\infty}L_t^pH_x^{r(p)}.
 \tag{RNT.9}
\]

At the limiting energy face, \(u\otimes u\in L_t^\infty L_x^1\), so Fourier
duality gives, for every \(\varepsilon>0\),

\[
 p\in L_t^\infty H_x^{-3/2-\varepsilon},
 \qquad
 u_t,\mathcal Q(u,p)\in
 L_t^\infty H_x^{-5/2-\varepsilon}.
 \tag{RNT.10}
\]

Equations (RNT.7)--(RNT.10) are intersections of compatible estimates for the
same first temporal row. No arithmetic all-order norm has been introduced.

## 3. What survives at every binomial depth

Let \(V_N=\partial_t^Nu\) and \(P_N=\partial_t^Np\), exactly as in (TIR.6).
Since \(u_t\in L_t^pH_x^{r(p)}\), distributional differentiation gives, for
every \(N\ge1\) and \(1<p<\infty\),

\[
 \boxed{
 V_N\in W_t^{1-N,p}(I;H_x^{r(p)}).}
 \tag{RNT.11}
\]

In particular,

\[
 \boxed{
 V_N\in
 W_t^{1-N,4/3}H_x^{-1}
 \cap W_t^{1-N,2}H_x^{-3/2}.}
 \tag{RNT.12}
\]

Pressure remains explicit. From (RNT.5),

\[
 P_N\in
 W_t^{-N,4/3}L_x^2
 \cap W_t^{-N,2}H_x^{-1/2}.
 \tag{RNT.13}
\]

On every compact subinterval of the classical history, ordinary Leibniz
differentiation gives the complete parent row

\[
 \begin{aligned}
 \mathcal Q_N
 &:={}
 \sum_{a=0}^{N}\binom Na
 (V_a\cdot\nabla)V_{N-a}+\nabla P_N\\
 &=\partial_t^N\mathcal Q(u,p).
 \end{aligned}
 \tag{RNT.14}
\]

The second line gives the unique energy-class extension of the **joined**
pressure-complete row:

\[
 \boxed{
 \mathcal Q_N\in
 W_t^{-N,4/3}H_x^{-1}
 \cap W_t^{-N,2}H_x^{-3/2}.}
 \tag{RNT.15}
\]

Thus every binomial coefficient and every parent is retained. What changes
is the strength of the statement: for \(N\ge1\), (RNT.11)--(RNT.15) are
negative-time distributional rows, not the positive temporal Sobolev rows in
the endpoint-spanning intersection.

## 4. The exact first termwise multiplication deficit

The first new parent pair occurs when (TIR.6) is differentiated once:

\[
 (V_1\cdot\nabla)u+(u\cdot\nabla)V_1+\nabla P_1.
 \tag{RNT.16}
\]

Test every possible use of the energy-interpolation envelope before assigning
meaning to its two products separately. Choose
\(V_1\in L_t^pH_x^{r(p)}\) from (RNT.9), and choose

\[
 u\in L_t^{2/\theta}H_x^\theta,
 \qquad 0\le\theta\le1.
 \tag{RNT.17}
\]

Time integrability of a termwise product requires

\[
 {1\over p}+{\theta\over2}\le1,
 \qquad\text{hence}\qquad
 \theta\le2-{2\over p}.
 \tag{RNT.18}
\]

If \(p\ge4/3\), then (RNT.9) and (RNT.18) give

\[
 r(p)+\theta
 \le
 \left(-{5\over2}+{2\over p}\right)
 +\left(2-{2\over p}\right)
 =-{1\over2}.
 \tag{RNT.19}
\]

If \(1\le p\le4/3\), then

\[
 r(p)+\theta\le-1+{1\over2}=-{1\over2}.
 \tag{RNT.20}
\]

The standard generic negative-positive Sobolev product requires the
regularities to sum positively before taking the additional divergence. The
best time-integrable allocation in the displayed energy-Sobolev envelope has
sum exactly \(-1/2\), by (RNT.19), while (RNT.20) is no better. Thus this
termwise multiplication route misses even the pre-divergence product by one
half of a derivative. This is a boundary for the displayed generic product
estimate, not a denial of a stronger joined same-history cancellation. At
almost every fixed time one can make the different, endpoint allocation
\(u(t)\in H^1\), \(V_1(t)\in H^{-1}\) and define only a test-function-level
spatial distribution by

\[
 \langle V_1\otimes u,\varphi\rangle
 :=\langle V_1,u\varphi\rangle_{H^{-1},H^1},
 \qquad
 |\langle V_1\otimes u,\varphi\rangle|
 \le C_\varphi\|V_1\|_{H^{-1}}\|u\|_{H^1}.
 \tag{RNT.21}
\]

For every \(\sigma>5/2\), the embedding
\(H^\sigma\hookrightarrow W^{1,\infty}\) therefore gives the very weak but
energy-controlled spatial estimate

\[
 \|V_1\otimes u\|_{H^{-\sigma}}
 \le C_\sigma\|V_1\|_{H^{-1}}\|u\|_{H^1}.
 \tag{RNT.21a}
\]

Taking the divergence puts either transport parent in \(H^{-\sigma-1}\) and
does not improve the time coefficient.

This product agrees with the ordinary one on every compact preterminal
classical subinterval, but it is not a continuous
\(H^{-1}\times H^1\) multiplication into the natural Sobolev product target.
The obstruction here is temporal: its only energy-controlled coefficient has
reciprocal exponent

\[
 {1\over2}+{3\over4}={5\over4}>1,
 \qquad
 \|u\|_{H^1}\|V_1\|_{H^{-1}}\in L_t^{4/5}
 \quad\hbox{at best},
 \tag{RNT.21b}
\]

not \(L_t^1\). Thus the energy norms do not provide a finite whole-interval
\(L_t^1H_x^{-\sigma}\) parent estimate, for any target obtained from this
duality bound, or another Banach Bochner row termwise. The classical parent
nevertheless exists locally on \(I\) because the same solution is classical
before \(T\). This is the first unclosed multiplication in the literal
reciprocal construction. Later rows contain two or more negative-order
temporal parents and do not repair it termwise.

The binomial and pressure completion does repair **existence of the sum**:

\[
 (V_1\cdot\nabla)u+(u\cdot\nabla)V_1+\nabla P_1
 =\partial_t\mathcal Q(u,p)
 \quad\text{in }\mathcal D'(I\times\mathbb M^3),
 \tag{RNT.22}
\]

where \(\mathbb M^3\) is \(\mathbb R^3\) or \(\mathbb T^3\). But its proven
class is \(W_t^{-1,4/3}H_x^{-1}\cap W_t^{-1,2}H_x^{-3/2}\).
Spatial loss cannot turn a negative time derivative into an \(L_t^1\) or
positive-time Sobolev row. The exact cancellation therefore makes (TIR.6)
lawful at all depths as a joined distribution; it does not establish the
intersection needed by (TIR.16).

## 5. Exact heat-to-rest calibration of the reciprocal price

The easiest branch of the same equation already shows why a depth-dependent
negative space is not a smoothness intersection. On \(\mathbb T^3\), for any
integer \(K\ge1\), put

\[
 u_K(t,x)=A e^{-\nu K^2t}\sin(Kx_2)e_1,
 \qquad p_K=0.
 \tag{RNT.23}
\]

This is one exact divergence-free Navier--Stokes history:
\((u_K\cdot\nabla)u_K=0\), and it simply diffuses to rest. Its kinetic energy
and total enstrophy payment are independent of \(K\):

\[
 \|u_K\|_{L_t^\infty L_x^2}\simeq A,
 \qquad
 \nu\int_0^\infty\|\nabla u_K\|_2^2dt\simeq A^2.
 \tag{RNT.24}
\]

For \(1\le p<\infty\), however,

\[
 \begin{aligned}
 \|\partial_t^Nu_K\|_{L_t^p(0,\infty;H_x^{-s})}
 &=C_{\mathbb T^3}A\nu^NK^{2N}(1+K^2)^{-s/2}
 (p\nu K^2)^{-1/p}\\
 &\simeq
 A\nu^{N-1/p}K^{\,2N-s-2/p}.
 \end{aligned}
 \tag{RNT.25}
\]

Thus an estimate using only the energy stock and payment can be uniform in
this exact family only if

\[
 \boxed{s\ge2N-{2\over p}.}
 \tag{RNT.26}
\]

For \(p=\infty\), the necessary condition is \(s\ge2N\). Even with zero
nonlinear current and zero pressure response, greater temporal depth consumes
linearly greater negative spatial order. There is no fixed finite \(s\) in
which all temporal rows are energy-uniform.

This is a calibration of the energy implication, not a singular-history
counterexample. Each datum \(u_K(0)\) is smooth, and
\(\mathcal P_{1/2}\equiv0\), so (TIR.37a) holds trivially on this family.
Because (RNT.23) is periodic, it directly rules out a domain-independent
energy-only fixed-space estimate; it is not, by itself, an obstruction to an
\(\mathbb R^3\)-specific signed same-history cancellation.

## 6. Why the reciprocal tower does not yet turn down the critical current

The factorial generating expression

\[
 \sum_{N\ge0}{z^N\over N!}V_N
 \tag{RNT.27}
\]

requires a common target space and a positive radius estimate. The energy
conclusion (RNT.11) instead places the \(N\)-th row in
\(W_t^{1-N,p}\), a strictly weaker temporal space as \(N\) grows. Finite
prefixes are compatible distributions, but there is no fixed finite negative
time order containing all rows with a factorial growth bound. The shear
calibration (RNT.25) likewise rules out a common fixed spatial target for a
domain-independent energy-only estimate.

The critical current asks for a positive half-order receiver:

\[
 \mathcal P_{1/2}
 =-\langle\Lambda^{1/2}u,
          \Lambda^{1/2}\mathcal Q(u,p)\rangle.
 \tag{RNT.28}
\]

The negative rows (RNT.7)--(RNT.15) do not make this pairing continuous and do
not bound its signed prefix. Equivalently, replacing
\(\mathcal Q=\nu\Delta u-u_t\) in (RNT.28) asks for the derivative of the
critical stock and the \(H^{3/2}\) viscous row that (TIR.37a) is supposed to
produce. That would reverse the proof.

The maximal rigorous conclusion established by this literal
energy-interpolation reciprocal construction is therefore

\[
 \boxed{
 \begin{gathered}
 \text{first temporal row in the intersection (RNT.7)--(RNT.10)},\\
 \text{all deeper rows as joined negative-time distributions (RNT.11)--(RNT.15)},\\
 \text{no termwise parent closure or common tower radius from energy alone.}
 \end{gathered}}
 \tag{RNT.29}
\]

A genuine in-method advance beyond (RNT.29) must use the signed, complete
pressure-explicit parent history to upgrade the joined object before taking
absolute values: either an \(L_t^1\) first-prefix bound at the critical
receiver, or a common-radius estimate strong enough to recover that bound.
The negative-space reciprocal nesting alone is not that upgrade and does not
prove or disprove the stronger one-fluid turn-down theorem.
