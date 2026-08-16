# Kelvin--Cauchy circulation bridge inside Thomas's one-fluid method

Status: assistant-derived auxiliary routing test inside Thomas Birnie's
one-fluid reversible-intersection method.  The deterministic circulation
identities are derived below.  The stochastic circulation representation and
its pulled-back martingale coefficient are stated inputs from the
Constantin--Iyer framework.  Both use the same fixed-viscosity
velocity-pressure history.  They do not replace the pressure-explicit binomial
tower and do not prove the datum-finite first signed prefix required by
(TIR.37a).

## 1. One carrier and the exact question

Let one smooth divergence-free velocity-pressure history satisfy

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\tag{KCB.1}
\]

on a preterminal interval.  The domain may be \(\mathbb R^3\), with the
decay needed below, or \(\mathbb T^3\).  Let \(X(a,t)\) be its deterministic
material flow and let \(C_t=X(C_0,t)\) be one smooth closed material loop.

The question is not whether circulation supplies another description of the
fluid.  It is whether the Kelvin or Cauchy law supplies a datum-finite charge
that pays the same-history response prefix

\[
A_{s,n}(T_*)=
\sup_{0<t<T_*}\int_0^t\mathfrak R_{s,n}(\tau)\,d\tau
\tag{KCB.2}
\]

or the equivalent high-frequency Dini first moment, including the perfectly
balanced rip-cord branch.  Pressure, transport, viscosity, deformation, and
the surrounding field remain simultaneous parts of (KCB.1).

## 2. Deterministic Kelvin and viscous Cauchy identities

For any smooth vector field \(w\), differentiation along the same material
loop gives

\[
\frac d{dt}\oint_{C_t}w\cdot d\ell
=\oint_{C_t}\bigl(D_tw+(\nabla u)^Tw\bigr)\cdot d\ell.
\tag{KCB.3}
\]

For \(w=u\), the pressure-explicit equation and
\((\nabla u)^Tu=\nabla(|u|^2/2)\) give

\[
\boxed{
\frac d{dt}\Gamma(t)
=\nu\oint_{C_t}\Delta u\cdot d\ell,
\qquad
\Gamma(t):=\oint_{C_t}u\cdot d\ell.}
\tag{KCB.4}
\]

The pressure and kinetic terms have been shown to be exact one-forms on this
closed-loop readout; pressure has not been detached from the history that
determines \(u\), \(C_t\), and their future geometry.

Let

\[
F(a,t):=D_aX(a,t),
\qquad \omega:=\nabla\times u.
\tag{KCB.5}
\]

Then

\[
\partial_tF=(\nabla u)(X,t)F,
\qquad \det F=1,
\tag{KCB.6}
\]

and the vorticity equation gives the exact viscous Cauchy defect

\[
\boxed{
\frac d{dt}\left(F^{-1}\omega(X,t)\right)
=\nu F^{-1}(\Delta\omega)(X,t).}
\tag{KCB.7}
\]

Equations (KCB.4)--(KCB.7) preserve the balanced fork rather than deleting it.
Retained circulation through a contracting material section may coexist with
increasing vorticity because determinant-one deformation expands a reciprocal
direction.  If circulation changes instead, (KCB.4) records a signed viscous
defect, not a positive datum reserve.  The fixed-positive-volume deformation
and escape charges that are actually available are proved separately in
`thomas-balanced-rip-cord-material-charge-and-recruitment-tail-20260803.md`.

## 3. Differentiated loops restore the pressure-explicit binomial sources

Put

\[
J_{N,\alpha}:=\partial_t^N\partial_x^\alpha u,
\qquad
\Pi_{N,\alpha}:=\partial_t^N\partial_x^\alpha p.
\tag{KCB.8}
\]

Thomas's original pressure-explicit recurrence is

\[
J_{N+1,\alpha}
+\sum_{a=0}^N\sum_{\beta\leq\alpha}
\binom Na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{N-a,\alpha-\beta}
+\nabla\Pi_{N,\alpha}
=\nu\Delta J_{N,\alpha}.
\tag{KCB.9}
\]

The \((a,\beta)=(0,0)\) summand is
\((u\cdot\nabla)J_{N,\alpha}\).  Therefore (KCB.3) and (KCB.9) imply, for
\((N,\alpha)\ne(0,0)\),

\[
\boxed{
\begin{aligned}
\frac d{dt}\oint_{C_t}J_{N,\alpha}\cdot d\ell
={}&\nu\oint_{C_t}\Delta J_{N,\alpha}\cdot d\ell
+\oint_{C_t}J_{N,\alpha}\times\omega\cdot d\ell\\
&-\!\!\sum_{\substack{0\leq a\leq N,\ \beta\leq\alpha\\
(a,\beta)\notin\{(0,0),(N,\alpha)\}}}
\binom Na\binom\alpha\beta
\oint_{C_t}
(J_{a,\beta}\cdot\nabla)J_{N-a,\alpha-\beta}\cdot d\ell.
\end{aligned}}
\tag{KCB.10}
\]

Indeed, the \((N,\alpha)\) summand in (KCB.9) combines with the line-motion
term through

\[
(\nabla u)^TJ_{N,\alpha}-(J_{N,\alpha}\cdot\nabla)u
=J_{N,\alpha}\times\omega.
\tag{KCB.11}
\]

The pressure gradient again integrates to zero around the closed loop, but
every non-endpoint parent in the pressure-explicit recurrence remains in
(KCB.10).  Kelvin cancellation is therefore special to the base velocity
one-form.  Applying circulation to higher temporal or spatial rows does not
create a conserved all-orders tower; it restores the same binomial nonlinear
parents whose signed correlation must be controlled in (TIR.37a).

For the scaling statements only, restrict now to \(\mathbb R^3\), or rescale
the torus together with its period.  The fixed torus does not possess the
arbitrary spatial dilation used below.

The fixed-viscosity Navier--Stokes dilation

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\qquad
C_\lambda(t)=\lambda^{-1}C(\lambda^2t),
\tag{KCB.12}
\]

gives

\[
\oint_{C_\lambda}J_{N,\alpha}[u_\lambda]\cdot d\ell
=\lambda^{2N+|\alpha|}
\oint_CJ_{N,\alpha}[u]\cdot d\ell.
\tag{KCB.13}
\]

Only base circulation is scale-critical.  Higher jet circulations carry the
same supercritical powers as the differentiated tower rather than one common
finite circulation stock.

## 4. Stochastic Kelvin input and its quadratic variation

As an external stochastic-calculus input, the Constantin--Iyer representation
uses the same deterministic velocity field in the stochastic flow

\[
dX_{s,r}(a)=u(X_{s,r}(a),r)\,dr+\sqrt{2\nu}\,dW_r,
\qquad X_{s,s}(a)=a,
\tag{KCB.14}
\]

and its inverse \(A_{s,t}=X_{s,t}^{-1}\).  For every deterministic closed
loop \(C\) at time \(t\),

\[
\boxed{
\oint_Cu(x,t)\cdot dx
=\mathbb E\oint_{A_{s,t}(C)}u(a,s)\cdot da.}
\tag{KCB.15}
\]

The inverse-flow and conditional-Markov conclusion of that theorem gives,
with

\[
C_r^\omega:=A_{r,t}^\omega(C),
\qquad
M_r^\omega:=\oint_{C_r^\omega}u(x,r)\cdot dx,
\tag{KCB.16}
\]

\(M_r\) is a reverse martingale.  The corresponding pulled-back one-form
calculation, with the reverse filtration and backward It\^o convention fixed,
gives the martingale coefficient

\[
\sqrt{2\nu}
\sum_{j=1}^3
\left(\oint_{C_r^\omega}\partial_ju(x,r)\cdot dx\right)dW_r^j.
\tag{KCB.17}
\]

Consequently, whenever this martingale is square-integrable,

\[
\boxed{
\begin{aligned}
\mathbb E|M_s|^2
-\left|\oint_Cu(x,t)\cdot dx\right|^2
={}&2\nu\,\mathbb E\int_s^t
\sum_{j=1}^3
\left|\oint_{C_r^\omega}\partial_ju(x,r)\cdot dx\right|^2dr.
\end{aligned}}
\tag{KCB.18}
\]

This is a genuine positive circulation-variance identity.  It is the
canonical automatic positive \(L^2\) charge furnished by stochastic Kelvin
for one loop genealogy.

The noise in (KCB.14) is spatially common.  Hence

\[
d\bigl(X_{s,r}(a)-X_{s,r}(b)\bigr)
=\bigl(u(X_{s,r}(a),r)-u(X_{s,r}(b),r)\bigr)dr,
\tag{KCB.19}
\]

and

\[
\partial_rD_aX_{s,r}
=(\nabla u)(X_{s,r},r)D_aX_{s,r},
\qquad \det D_aX_{s,r}=1.
\tag{KCB.20}
\]

The corresponding stochastic Cauchy formula is

\[
\omega(x,t)=\mathbb E\left[
D_aX_{s,t}\bigl(A_{s,t}(x)\bigr)
\,\omega\bigl(A_{s,t}(x),s\bigr)
\right].
\tag{KCB.20a}
\]

There is no Brownian term in the relative separation or deformation-gradient
equation.  The stochastic paths represent the viscosity already present in
(KCB.1); they are not an outside supplier and do not independently smooth the
shape of a loop inside one realization.

## 5. Why the martingale endpoint is not yet a datum charge

At \(s=0\), (KCB.18) ends at an integral of \(u_0\), but the random loop
\(A_{0,t}^\omega(C)\) depends on the complete intervening velocity history.
For example,

\[
\begin{aligned}
\left|\oint_{A_{0,t}^\omega(C)}u_0\cdot da\right|^2
&\leq \|u_0\|_\infty^2
L(A_{0,t}^\omega(C))^2\\
&\leq \|u_0\|_\infty^2L(C)^2
\exp\!\left(2\int_0^t\|\nabla u(r)\|_\infty\,dr\right).
\end{aligned}
\tag{KCB.21}
\]

The same issue appears through Stokes and the stochastic Cauchy formula: an
initial-vorticity estimate requires the area distortion of the inverse random
surface, hence products of singular values of \(D A_{0,t}\).  Determinant one
does not bound those products from above.

Therefore the apparently initial-data second moment in (KCB.18) becomes
uniformly datum-finite by this direct estimate only after the Lipschitz
deformation action is bounded.  That action is already a consequence of the
endpoint-spanning intersection and cannot be imported into its construction.

For one square-integrable martingale, quadratic variation is additive on
disjoint time intervals.  If one persistent loop genealogy owned all record
increments, then

\[
\sum_k\mathbb E\bigl([M]_{b_k}-[M]_{a_k}\bigr)
\leq \mathbb E|M_0|^2-|M_t|^2
\tag{KCB.22}
\]

for disjoint intervals \([a_k,b_k]\).  Recruited cores, however, select
changing loops.  Kelvin supplies no orthogonality or bounded multiplicity
between the separate initial random-loop functionals

\[
u_0\longmapsto
\oint_{A_{0,t_k}^{\omega}(C_k)}u_0\cdot da.
\tag{KCB.23}
\]

Proving that their increments belong to one bounded genealogy, or to a
bounded-overlap family, is exactly a loop-incidence and no-recount theorem.

## 6. Critical scaling gives no Dini decay

Under (KCB.12), base circulation is invariant.  Moreover,

\[
\oint_{C_\lambda}\partial_ju_\lambda\cdot d\ell
=\lambda\oint_C\partial_ju\cdot d\ell,
\tag{KCB.24}
\]

while \(dt\) scales by \(\lambda^{-2}\).  Thus the complete quadratic
variation in (KCB.18) is invariant.  The first critical response action is
also invariant:

\[
\int\mathfrak R_{1/2,1}[u_\lambda](t)\,dt
=\int\mathfrak R_{1/2,1}[u](t)\,dt.
\tag{KCB.25}
\]

By contrast, kinetic energy scales as

\[
\|u_\lambda(0)\|_2^2
=\lambda^{-1}\|u(0)\|_2^2.
\tag{KCB.26}
\]

Therefore Kelvin variance has the correct critical size for one event but no
decay as the event moves to a finer scale.  A per-loop or per-scale Kelvin
bound can at most give a critical Carleson-sized unit.  Turning those units
into the Dini first moment required by the layer-cake prefix still requires a
same-history bounded-overlap or genealogy theorem.

## 7. Fixed-viscosity high-Reynolds countertest

The missing coercivity can be isolated by an exact family of smooth
Navier--Stokes solutions.  This is a countertest for a proposed uniform
Kelvin-charge inequality, not a sequence of stages asserted to occur in one
solution.

On \(\mathbb T^3=(\mathbb R/2\pi\mathbb Z)^3\), let

\[
v_0(x)=\sum_{k\in\{\pm k_1,\pm k_2,\pm k_3\}}a_ke^{ik\cdot x},
\qquad a_{-k}=\overline{a_k},
\tag{KCB.27}
\]

where

\[
\begin{array}{c|c}
k_1=(1,0,0) & a_{k_1}=(0,\,1-2i,\,-1+i)\\
k_2=(0,1,0) & a_{k_2}=(2i,\,0,\,1-3i)\\
k_3=(-1,-1,0) &
a_{k_3}=(2-\tfrac i2,\,-2+\tfrac i2,\,-2-2i).
\end{array}
\tag{KCB.28}
\]

Each \(k_j\cdot a_{k_j}=0\), so \(v_0\) is real and divergence-free.  A
direct six-mode convolution, using
\(\widehat{(v\cdot\nabla)v}(q)
=i\sum_{k+p=q}(a_k\cdot p)a_p\), gives contributions \(56\) from the four
unit-frequency outputs and \(-56\sqrt2\) from the two
\(\sqrt2\)-frequency outputs.  Hence

\[
\boxed{
\mathcal P_{1/2}(v_0)
:=-\langle(v_0\cdot\nabla)v_0,\Lambda v_0\rangle
=(2\pi)^3\,56(\sqrt2-1)>0.}
\tag{KCB.29}
\]

The simultaneous pressure term pairs to zero here because \(\Lambda v_0\) is
divergence-free; the pressure is still the one determined by this same field.
An ancillary \(\mathbb R^3\) version may be obtained by taking smooth
divergence-free Fourier wave packets supported in sufficiently small
neighborhoods of the six modes in (KCB.27), impose the same reality and
polarization conditions, and use continuity of the displayed cubic form as
the packets concentrate on the triad.  That packet construction is not carried
out in this note and is not needed for the exact fixed-torus countertest.

Let \(v^\varepsilon\) solve

\[
\partial_\tau v^\varepsilon
+(v^\varepsilon\cdot\nabla)v^\varepsilon+\nabla q^\varepsilon
=\varepsilon\Delta v^\varepsilon,
\qquad v^\varepsilon(0)=v_0,
\tag{KCB.30}
\]

for \(0<\varepsilon\leq1\).  Using the standard viscosity-uniform local
Euler/Navier--Stokes estimates as an input gives numbers \(\delta>0\) and
\(M<\infty\), independent of \(\varepsilon\), such that

\[
\mathcal P_{1/2}(v^\varepsilon(\tau))
\geq\frac12\mathcal P_{1/2}(v_0),
\qquad
\|\nabla v^\varepsilon(\tau)\|_\infty\leq M
\quad(0\leq\tau\leq\delta).
\tag{KCB.31}
\]

Let \(\mu\) be any finite measure on terminal \(C^1\) loops with

\[
L_2^2:=\int L(C)^2\,d\mu(C)<\infty,
\tag{KCB.32}
\]

uniformly in \(\varepsilon\).  The inverse stochastic flow obeys
\(L(C_\tau^\omega)\leq e^{M\delta}L(C)\).  Its integrated Kelvin quadratic
variation therefore satisfies the explicit bound

\[
\boxed{
\begin{aligned}
Q_\mu^\varepsilon
&:=2\varepsilon\int\!\mathbb E\int_0^\delta
\sum_{j=1}^3
\left|\oint_{C_\tau^\omega}
\partial_jv^\varepsilon\cdot d\ell\right|^2d\tau\,d\mu(C)\\
&\leq
6\varepsilon\delta M^2e^{2M\delta}L_2^2.
\end{aligned}}
\tag{KCB.33}
\]

At the same time,

\[
\boxed{
\int_0^\delta
[\mathfrak R_{1/2,1}[v^\varepsilon](\tau)]_+\,d\tau
\geq\frac{\delta}{2}\mathcal P_{1/2}(v_0)>0.}
\tag{KCB.34}
\]

Thus no loop family with uniformly bounded \(L_2^2\) can give an
\(\varepsilon\)-uniform coercive estimate of the first response action by
Kelvin quadratic variation.

The same countertest can be written at one fixed physical viscosity.  Choose
\(A>0\) so that \(\varepsilon=\nu/A\leq1\), and set

\[
u^A(x,t):=A v^{\nu/A}(x,At),
\qquad
p^A(x,t):=A^2q^{\nu/A}(x,At).
\tag{KCB.35}
\]

Then \((u^A,p^A)\) solves (KCB.1) with the same fixed \(\nu\), and on
\([0,\delta/A]\),

\[
\int_0^{\delta/A}
[\mathfrak R_{1/2,1}[u^A](t)]_+\,dt
\geq\frac{A^2\delta}{2}\mathcal P_{1/2}(v_0),
\tag{KCB.36}
\]

whereas

\[
Q_\mu[u^A]
\leq6\nu A\delta M^2e^{2M\delta}L_2^2.
\tag{KCB.37}
\]

The response-to-Kelvin-charge ratio is therefore at least of order
\(A/\nu\).  In the bounded record microscope, this is the same degeneration
as

\[
\varepsilon_n=\frac\nu{\sqrt{R_n}}\longrightarrow0.
\tag{KCB.38}
\]

On any bounded-duration normalized window with bounded loop geometry, the
stochastic charge is \(O(\varepsilon_n)\).  The retained first-record response
in (RAM.20) is order one on its actual last-record interval.  Any proposed
Kelvin comparison that survives the record limit must therefore force the
combined duration--multiplicity--quadratic-geometry factor in (KCB.33) to grow
at the reciprocal \(1/\varepsilon_n\) scale.  If all other factors remain
bounded and loop length alone pays, its required growth is
\(\varepsilon_n^{-1/2}\).  Proving that growth is paid rather than recounted is
the collar/incidence/Dini theorem, not a consequence of the stochastic
representation.

## 8. Exact routing verdict for the balanced fork

The Kelvin--Cauchy laws give the following checked routing result.

1. **Persistent labels.**  One material loop or tube may be followed without
   changing the carrier.  Retained circulation exposes vorticity concentration
   and reciprocal deformation; changed circulation exposes the signed viscous
   defect.  A contradiction follows only after a record-to-fixed-positive-
   volume localization such as (BRC.23), where the datum-finite material
   charges (BRC.11)--(BRC.18) apply.

2. **Recruited labels.**  Stochastic Kelvin represents the viscosity of the
   same deterministic field and gives the positive variance (KCB.18).  Its
   initial random loop depends on the intervening deformation, and changing
   endpoint loops create changing martingales.  Source/receiver coincidence
   is therefore transformed into a bounded-genealogy and no-recount problem;
   it is not paid by expectation alone.

3. **All higher rows.**  The exact differentiated-loop law (KCB.10) restores
   the full binomial parent interactions.  Kelvin cancellation at the base
   cannot be iterated into the datum-side first-prefix theorem (TIR.37a), and
   hence into the coordinatewise all-orders intersection, without estimating
   those joined signed sources.

Accordingly, the checked result is narrower than an obstruction to every
Kelvin--Cauchy functional.  It proves that base Kelvin cancellation does not
propagate to differentiated rows and that stochastic Kelvin quadratic
variation cannot control the first response uniformly when terminal-loop
\(L^2\)-geometry is uniformly bounded.  A surviving datum-dependent Kelvin
argument would still have to prove its geometry, genealogy, incidence, and
no-recount bounds.  This routes the auxiliary test back to Thomas's exact live
bridge:

\[
\boxed{
\begin{gathered}
\text{fixed-label record localization}
\quad\text{or}\quad
\text{recruited-loop/source incidence}\\
+\text{bounded genealogy/no-recount}
+\text{Dini first-moment control}.
\end{gathered}}
\tag{KCB.39}
\]

No Euler replacement, external supplier, symmetry breaking, or selected
continuation criterion has been introduced.  The endpoint-spanning
intersection, its automatic \(E_{n+1/2}\in L_t^1\) consequence, and restart
remain downstream of the still-unproved datum-to-response theorem.

## Primary representation source

The stochastic circulation identity used in (KCB.15), together with the
inverse-flow and conditional-Markov step, is the
Constantin--Iyer stochastic Kelvin theorem: Peter Constantin and Gautam Iyer,
*A stochastic Lagrangian representation of the three-dimensional
incompressible Navier--Stokes equations*, Communications on Pure and Applied
Mathematics 61 (2008), 330--345, doi:10.1002/cpa.20192.
The pulled-back one-form coefficient (KCB.17) is also used as a stated
stochastic-calculus input; (KCB.18) is its It\^o-isometry consequence.
