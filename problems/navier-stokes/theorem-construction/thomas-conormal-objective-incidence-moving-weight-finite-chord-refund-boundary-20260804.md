# Thomas's co-normal objective-incidence and moving-weight finite-chord refund boundary

**Date:** 2026-08-04

**Status:** noncanonical exact signed recombination and checked no-gain
boundary inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.

This note continues only `(CNR.20)--(CNR.34)`, `(ISR.20)`, `(ISR.43)`,
and `(SRF.13)--(SRF.28)`.  It asks whether the two unpaid co-normal branches

\[
 |\mathcal R_-|,
 \qquad
 |D_t\chi|
\]

become a datum payment when they are kept signed and rejoined to the complete
finite-chord defect.

The physical object is unchanged.  One smooth finite-energy datum and one
viscosity produce one continuing velocity, pressure, deformation gradient,
and material-label history.  The pulse or spring winding, the imbalanced
stretched vortex, and the perfectly balanced rip-cord remain in Thomas's
order.  A co-normal, a strain eigenline, a material selector, a heat-age
readout, and a radial selector are simultaneous coordinates of that history;
none is a new fluid or a separately owned stock.

There is a new exact result.  Before absolute values, relative-frame motion
and changing-label incidence are one objective material derivative.  The
loss-of-alignment branch even has a fixed **signed** response quantum.  But
when this signed derivative is inserted into the corrected strain-shape
coordinate, the complete finite-chord defect refunds it exactly.  The same
cancellation occurs in the first pressure-explicit binomial row, including the
material/heat commutator forced by the moving weight.  Thus these rows do not
produce a datum endpoint or a turn-down.  They isolate the next falsifiable
representation test: whether the actual six-assignment double-recent current
has a receiver-compatible material finite-chord representation, not another
positive selector charge.

## 1. The two CNR branches are one objective derivative

Retain the adverse-face notation

\[
 \operatorname{spec}S=(-c,b,e),
 \qquad b,e>0,
 \qquad c=b+e,
 \tag{CIF.1}
\]

and let \(e_-\) be the unique contracting unit eigenvector.  Let

\[
 P_-:=e_-\otimes e_-,
 \qquad
 \mathcal R_-:=D_te_--\Omega e_-.
 \tag{CIF.2}
\]

For a tensor \(A\), use the objective material derivative

\[
 \mathring D_tA:=D_tA-[\Omega,A].
 \tag{CIF.3}
\]

The product rule and `(CNR.14)` give the collision-safe identity

\[
 \boxed{
 \mathring D_t(\chi P_-)
 =(D_t\chi)P_-
 +\chi\bigl(\mathcal R_-\otimes e_-
             +e_-\otimes\mathcal R_-\bigr).}
 \tag{CIF.4}
\]

The expanding eigenvalues may collide; `(CIF.4)` uses only their common
orthogonal complement and the simple contracting line.

The endpoint content is clearest in the co-rotating material frame.  Along
each material label let \(O\) solve

\[
 D_tO=\Omega O,
 \qquad O(\tau_0)=I,
 \tag{CIF.5}
\]

and put \(\overline P_-=O^TP_-O\).  Then

\[
 \boxed{
 \partial_t\bigl(\widehat\chi\,\overline P_-\bigr)
 =O^T\left[
 (D_t\chi)P_-
 +\chi(\mathcal R_-\otimes e_-+e_-\otimes\mathcal R_-)
 \right]O.}
 \tag{CIF.6}
\]

Thus the signed membership and relative-frame rows form the derivative of one
bounded selected line projector.  On a smooth episode the two tensor
directions are Frobenius-orthogonal, so

\[
 \left|\mathring D_t(\chi P_-)\right|_F^2
 =|D_t\chi|^2+2\chi^2|\mathcal R_-|^2.
 \tag{CIF.6a}
\]

For a sharp selector the same statement is read as the total variation of
the combined tensor measure with the one-sided traces fixed below.  The
separate absolute-value readings contribute to that variation; their sum is
not itself the signed endpoint, and is not asserted to equal the variation
of the combined measure.

The scalar co-normal law gives a second exact version.  With

\[
 \mu=n\cdot e_-,
 \qquad
 \gamma=-n\cdot Sn,
 \tag{CIF.7}
\]

equation `(CNR.15)` is

\[
 D_t\mu=(c-\gamma)\mu+n\cdot\mathcal R_-.
 \tag{CIF.8}
\]

Since `(CNR.9)` gives \(c-\gamma\ge0\), a first loss from
\(\mu(\tau_0)=1\) to \(\mu(\tau_*)=\sqrt3/2\) forces the signed quantum

\[
 \boxed{
 -\int_{\tau_0}^{\tau_*}n\cdot\mathcal R_-\,d\tau
 =1-\frac{\sqrt3}{2}
 +\int_{\tau_0}^{\tau_*}(c-\gamma)\mu\,d\tau
 \ge1-\frac{\sqrt3}{2}.}
 \tag{CIF.9}
\]

This precedes the absolute-value bound `(CNR.17)`.  The response component
which actually turns the co-normal away from the contracting line already has
the required sign.

For any \(\Phi\in C^1([-1,1])\), define the material incidence-alignment
weight

\[
 W:=\chi\,\Phi(\mu).
 \tag{CIF.10}
\]

Equations `(CNR.20)` and `(CIF.8)` give, classically inside each active
episode,

\[
 \boxed{
 D_tW
 =\Phi(\mu)D_t\chi
 +\chi\Phi'(\mu)
 \bigl[(c-\gamma)\mu+n\cdot\mathcal R_-\bigr].}
 \tag{CIF.11}
\]

There is an entry-reset qualification.  The co-normal probe in `(CNR.26)` is
reinitialized only when a new material episode begins.  For a sharp episode,
define \(W\) to be zero off the episode and use the interior traces
\(\mu(\tau_0+)=1\) and \(\mu(\tau_1-)=\mu_e\).  To assemble `(CIF.11)` over
all episodes, either use \(\Phi(1)=0\), which removes the **entry** atom, or
retain the entry atom \(\Phi(1)\delta_{\tau_0}\) together with the exit trace
inside the BV product \(\Phi(\mu)D_t\chi\).  Even when \(\Phi(1)=0\), exit and
record-end reset atoms remain and must be retained.

The sharp measure statement below is therefore conditional on local finite
BV variation, the specified one-sided traces, and the integrability of those
measures in the material labels.  Smooth episode approximations converge as
finite measures only when their variations are uniformly locally bounded;
without that hypothesis one retains only a distributional derivative and no
finite variation is inferred.  A reset variation which is infinite is not
declared finite by the identity.

The choice \(\Phi(\mu)=1-\mu\), which vanishes when a probe is initialized at
entry, gives

\[
 \boxed{
 D_t\bigl(\chi(1-\mu)\bigr)
 =(1-\mu)D_t\chi
 -\chi(c-\gamma)\mu
 -\chi n\cdot\mathcal R_-.}
 \tag{CIF.12}
\]

For a complete sharp episode which is not cut by a record endpoint, the
entry atom in \((1-\mu)D_t\chi\) is zero and the exit atom is exactly
\(-(1-\mu_e)\delta_{\tau_1}\).  If its interior trace satisfies
\(\sqrt3/2\le\mu_e\le1\) when the episode exits before losing the alignment
threshold, `(CIF.12)` gives

\[
 \boxed{
 -\int_J n\cdot\mathcal R_-\,d\tau
 =1-\mu_e+\int_J(c-\gamma)\mu\,d\tau\ge0.}
 \tag{CIF.13}
\]

An exit with \(\mu_e=1\) and no accumulated relative response has zero weight
in `(CIF.13)`.  Counting that episode positively requires total variation of
\(\chi\); the signed objective endpoint cannot manufacture that count.

## 2. The corrected finite-chord defect refunds every such weight

Write the strain polynomial without choosing eigenvalue coordinates:

\[
 \mathfrak q(v):=-\frac16\operatorname{tr}(S_v^3),
 \qquad
 \mathscr Q(v):=\int\mathfrak q(v)\,dx.
 \tag{CIF.14}
\]

At the physical field \(u(t)\), define

\[
 \mathscr Q_W(t):=\int W(x,t)\mathfrak q(u)(x,t)\,dx.
 \tag{CIF.15}
\]

The material weight \(W\) is independent of the radial selector coordinate
\(\rho\).

Do not multiply only the infinitesimal first jet in the original chord kernel
by \(W\).  A spatially and materially moving weight would then omit its
weighted-Betchov collar.  Instead restore the complement algebraically inside
the already complete defect:

\[
 \boxed{
 \mathcal D_{\rho,n}^{W,\rm rr}
 :=\mathcal D_{\rho,n}^{\rm rr}
 +c_\rho(\mathscr Q-\mathscr Q_W).}
 \tag{CIF.16}
\]

Using `(SRF.13)` gives the exact weighted refund

\[
 \boxed{
 J_n^{\rm rr}
 =c_\rho\mathscr Q_W
 +\mathcal D_{\rho,n}^{W,\rm rr},
 \qquad
 \partial_\rho\mathcal D_{\rho,n}^{W,\rm rr}
 =-c_1\mathscr Q_W.}
 \tag{CIF.17}
\]

This contains `(ISR.43)` when \(W\) approaches the positive-face selector and
contains `(SRF.13)` when \(W=1\).  It also contains the degenerate coordinate
\(W=0\), for which the entire current is written in the defect.  Therefore no
property of \(\mathscr Q_W\) alone is selector-invariant.

The physical-time derivative of the weighted strain coordinate keeps both CNR
responses signed.  Incompressibility gives

\[
 \boxed{
 \begin{aligned}
 \frac d{dt}\mathscr Q_W
 =\int\bigl[{}
 &W D_t\mathfrak q
 +\mathfrak q\,\Phi(\mu)D_t\chi\\
 &+\mathfrak q\,\chi\Phi'(\mu)
 ((c-\gamma)\mu+n\cdot\mathcal R_-)
 \bigr]dx,
 \end{aligned}}
 \tag{CIF.18}
\]

where \(D_t\mathfrak q\) is the pressure-explicit row `(ISR.20)`.  From
`(CIF.17)`, and with `(CIF.18)` understood as a Radon-measure identity only
under the finite-BV and trace hypotheses above (and otherwise only after
testing as a distribution),

\[
 \boxed{
 \frac d{dt}\mathcal D_{\rho,n}^{W,\rm rr}
 =\frac d{dt}J_n^{\rm rr}
 -c_\rho\frac d{dt}\mathscr Q_W.}
 \tag{CIF.19}
\]

Thus every membership, relative-frame, pressure-Hessian, vorticity, and
viscous term displayed in `(CIF.18)` occurs with the opposite coefficient in
the complete defect derivative.  Equivalently,

\[
 \boxed{
 \partial_t\partial_\rho
 \mathcal D_{\rho,n}^{W,\rm rr}
 =-c_1\frac d{dt}\mathscr Q_W
 =\partial_\rho\partial_t
 \mathcal D_{\rho,n}^{W,\rm rr}.}
 \tag{CIF.20}
\]

The radius/material-time two-coordinate form has zero curvature.  Integrating
around a closed \((t,\rho)\) loop cannot leave a positive incidence or frame
reserve.

## 3. The moving-weight first binomial has an exact collar cancellation

The heat readout must not transport a second co-normal.  At physical time
\(t\), freeze the actual weight \(W(t,\cdot)\) across heat age and set

\[
 w_s=e^{-\nu sA}u(t),
 \qquad
 H_s=e^{-\nu sA}Q_{\rm NS}(u(t)).
 \tag{CIF.21}
\]

The calculation is first made for a smooth episode regularization with
\(\Phi(1)=0\).  For a sharp selector it passes to a Radon-measure identity
only when the piecewise-defined \(W\) has locally finite spacetime BV,
the traces fixed above, and

\[
 \int_0^\infty\!\!\int_{I\times\mathbb R^3}
 |\mathfrak q(w_s(t))(x)|\,d|\partial_tW|(t,x)\,ds<\infty
 \tag{CIF.21a}
\]

on the preterminal record under consideration.  Then
\(\partial_tW\) contains every exit and record-end trace, and for a general
\(\Phi\) it also contains the entry-reset measure specified after
`(CIF.11)`.  In that case the notation \(\mathfrak C_W(t)dt\) below means the
signed measure

\[
 \int_I\psi(t)\,d\mathfrak C_W(t)
 :=\int_0^\infty\!\int_{I\times\mathbb R^3}
 \psi(t)\mathfrak q(w_s(t))(x)\,d(\partial_tW)(t,x)\,ds
 \tag{CIF.21b}
\]

for every compactly supported time test function \(\psi\).

If these BV and integrability hypotheses fail, \(\partial_tW\) and
\(\mathfrak C_W\) are retained only as distributions after testing; they are
not called finite measures or datum payments.  For smooth regularizations,
the fixed-preterminal heat bounds justify the heat-age commutations below.
A sharp passage additionally requires uniform integrability in `(CIF.21a)`;
heat smoothing alone does not supply variation control for \(W\).

For a test field \(v\), define

\[
 \mathscr Q_W(v;t):=\int W(t,x)\mathfrak q(v)(x)\,dx
 \tag{CIF.22}
\]

and

\[
 \begin{aligned}
 \mathscr A_W(t)
 &:=\int_0^\infty\mathscr Q_W(w_s;t)\,ds,\\
 \mathfrak R_W(t)
 &:=\int_0^\infty
 D_v\mathscr Q_W(w_s;t)[H_s],ds,\\
 \mathfrak C_W(t)
 &:=\int_0^\infty\!\int
 (\partial_tW)\mathfrak q(w_s)\,dx\,ds.
 \end{aligned}
 \tag{CIF.23}
\]

For smooth \(W\), the last line is an ordinary function.  Under `(CIF.21a)`
it denotes the density/measure convention `(CIF.21b)`.  The term is forced
because the co-normal incidence weight moves in physical time, and it contains
the exact CNR rows through

\[
 \boxed{
 \partial_tW
 =\Phi D_t\chi
 +\chi\Phi'\bigl[(c-\gamma)\mu+n\cdot\mathcal R_-\bigr]
 -u\cdot\nabla W.}
 \tag{CIF.24}
\]

The final advection term cannot be deleted: heat smoothing and material
pullback do not commute.

The heat endpoint needed for `(CIF.25)` obeys

\[
 \lim_{s\to\infty}\mathscr Q_W(w_s;t)=0.
 \tag{CIF.24a}
\]

on the smooth preterminal class (on a periodic cell, the heat limit is a
constant velocity and both strain/current polynomials vanish).  Differentiate
`(CIF.23)`, use \(\partial_tw_s=H_s+\partial_sw_s\), and integrate in heat
age.  This gives the moving-weight first-binomial row, classically for smooth
\(W\) and distributionally under the sharp hypotheses above,

\[
 \boxed{
 \mathscr Q_W(u;t)
 =-\mathscr A_W'(t)
 +\mathfrak R_W(t)
 +\mathfrak C_W(t).}
 \tag{CIF.25}
\]

Now define the refund-complete full-field defect functional

\[
 \mathcal E_{\rho,W}(v;t)
 :=\mathcal P(v)-c_\rho\mathscr Q_W(v;t).
 \tag{CIF.26}
\]

Its heat endpoint also vanishes:

\[
 \lim_{s\to\infty}\mathcal E_{\rho,W}(w_s;t)=0.
 \tag{CIF.26a}
\]

At \(v=u(t)\), this is exactly

\[
 \mathcal E_{\rho,W}(u;t)
 =\mathcal E_\rho(u)+c_\rho(\mathscr Q-\mathscr Q_W),
 \tag{CIF.27}
\]

so it retains the original finite chords and restores every omitted weighted
collar.  Put

\[
 \begin{aligned}
 \mathcal F_{\rho,W}(t)
 &:=\int_0^\infty\mathcal E_{\rho,W}(w_s;t)\,ds,\\
 \mathfrak R_{\rho,W}(t)
 &:=\int_0^\infty
 D_v\mathcal E_{\rho,W}(w_s;t)[H_s],ds.
 \end{aligned}
 \tag{CIF.28}
\]

Its exact moving-weight normal form is

\[
 \boxed{
 \mathcal E_{\rho,W}(u;t)
 =-\mathcal F_{\rho,W}'(t)
 +\mathfrak R_{\rho,W}(t)
 -c_\rho\mathfrak C_W(t).}
 \tag{CIF.29}
\]

Adding \(c_\rho\) times `(CIF.25)` to `(CIF.29)` cancels the complete
membership/relative-frame/material-heat collar:

\[
 \boxed{
 \begin{aligned}
 \mathcal P(u)
 ={}&-\frac d{dt}
 \bigl(c_\rho\mathscr A_W+\mathcal F_{\rho,W}\bigr)\\
 &+c_\rho\mathfrak R_W+\mathfrak R_{\rho,W},\\
 c_\rho\mathscr A_W+\mathcal F_{\rho,W}
 ={}&\int_0^\infty\mathcal P(w_s)\,ds,\\
 c_\rho\mathfrak R_W+\mathfrak R_{\rho,W}
 ={}&\int_0^\infty D\mathcal P(w_s)[H_s],ds.
 \end{aligned}}
 \tag{CIF.30}
\]

The result is the original selector-free first pressure-explicit binomial row.
No extra endpoint remains.

The radius derivative checks the same cancellation directly.  Since

\[
 \partial_\rho\mathcal F_{\rho,W}=-c_1\mathscr A_W,
 \qquad
 \partial_\rho\mathfrak R_{\rho,W}=-c_1\mathfrak R_W,
 \tag{CIF.31}
\]

equations `(CIF.25)` and `(CIF.29)` give

\[
 \boxed{
 \begin{aligned}
 \partial_\rho
 \bigl(-\mathcal F_{\rho,W}'
 +\mathfrak R_{\rho,W}-c_\rho\mathfrak C_W\bigr)
 &=c_1\mathscr A_W'-c_1\mathfrak R_W-c_1\mathfrak C_W\\
 &=-c_1\mathscr Q_W(u;t).
 \end{aligned}}
 \tag{CIF.32}
\]

This is `(SRF.28)` with the actual material membership and co-normal response
retained.  Their collar is not a lower binomial endpoint; it is refunded at the
same coefficient.

## 4. Actual material pairs give the parallel signed cancellation

There is a parallel cancellation for actual material-pair selection.  It does
not identify the weighted strain coordinate \(\mathscr Q_W\) with a selected
pair current, and it does not yet represent \(J_n^{\rm rr}\); that missing
bridge is the representation test in Section 6.  Let \(e_{ab}\),
\(j_{ab}\), \(V_{ab}\), and \(A_{ab}\) be the actual same-label pair storage,
current, relative velocity, and pressure--viscous relative acceleration from
`(JEM.1)--(JEM.15)`, and write

\[
 \sigma_{ab}:=\frac{V_{ab}\cdot A_{ab}}{|V_{ab}|^2}.
 \tag{CIF.33}
\]

For \(0\le W\le1\), use the symmetric endpoint selector

\[
 \Gamma_{ab}:=\frac{W(X(a,t),t)+W(X(b,t),t)}2.
 \tag{CIF.34}
\]

For example, the entry-atom-free CNR choice
\(W=\chi(1-\mu)/2\) lies in this range.  If a different bounded \(\Phi\) is
used, the pair-selection statement requires an explicitly chosen affine
normalization into \([0,1]\); its added offset and every entry, exit, and reset
atom must remain in \(D_tW\).  A rescaling does not erase those terms.

For smooth \(W\), the exact selected-pair identity `(BPT.20)` becomes

\[
 \boxed{
 \begin{aligned}
 \int_I\!\iint\Gamma_{ab}j_{ab}
 ={}&\left[\iint\Gamma_{ab}e_{ab}\right]_{\partial I}
 -\int_I\!\iint e_{ab}D_t\Gamma_{ab}\\
 &-2\int_I\!\iint\Gamma_{ab}e_{ab}\sigma_{ab},
 \end{aligned}}
 \tag{CIF.35}
\]

where

\[
 D_t\Gamma_{ab}
 ={1\over2}\bigl[(D_tW)(X(a,t),t)+(D_tW)(X(b,t),t)\bigr]
 \tag{CIF.36}
\]

contains exactly `(CIF.11)`.  The complementary selector \(1-\Gamma_{ab}\)
has the opposite \(D_t\Gamma_{ab}\) term.  Recombining selected and
complementary pairs cancels membership and relative-frame incidence and
returns

\[
 \boxed{
 \int_I\!\iint j_{ab}
 =[H]_{\partial I}
 +\nu\int_I\|\Lambda^{3/2}u\|_2^2dt.}
 \tag{CIF.37}
\]

Here

\[
 H(t):=\iint e_{ab}(t)\,da\,db
 =\frac12\|\Lambda^{1/2}u(t)\|_2^2.
 \tag{CIF.37a}
\]

For a sharp \(W\), `(CIF.35)--(CIF.37)` require the same one-sided BV traces
as above, integrability of \(e_{ab}\,D_t\Gamma_{ab}\), and the diagonal
truncation/pass-to-the-limit convention of `(JEM.15)--(JEM.16)`.  Without
those hypotheses the formulas remain distributional and no finite selected
variation is claimed.

This is the same open critical stock/action interface, not a datum-level pair
endpoint.  Taking \(|D_tW|\) or \(|\mathcal R_-|\) before restoring the
complement counts selection variation which `(CIF.37)` cancels signed.

## 5. Two exact local calibrations and one global finite-energy audit

The failure of endpoint coercivity is structural, not a missing application
of Cauchy--Schwarz.

Let

\[
 D=\operatorname{diag}(-2,\tfrac12,\tfrac32)
 \tag{CIF.38}
\]

and, for \(k>0\), let \(O_k(t)\) rotate the first two coordinate axes at
angular velocity \(k\).  Set

\[
 S_k(t)=O_k(t)DO_k(t)^T,
 \qquad
 u_k(x,t)=S_k(t)x,
 \qquad
 p_k(x,t)=-\frac12x\cdot(S_k'+S_k^2)x.
 \tag{CIF.39}
\]

Then, for every \(\nu>0\),

\[
 \nabla\cdot u_k=0,
 \qquad
 \Delta u_k=0,
 \qquad
 (u_k)_t+(u_k\cdot\nabla)u_k+\nabla p_k=0.
 \tag{CIF.40}
\]

This is an exact affine Navier--Stokes calibration.  Its adverse eigenvalues,
\(\mathfrak q=3/4\), and \(|S_k|^2=13/2\) are independent of \(k\), while

\[
 e_-(t)=O_k(t)e_1,
 \qquad
 \Omega=0,
 \qquad
 |\mathcal R_-|=k.
 \tag{CIF.41}
\]

Over any interval on which the line projector completes \(m\) projective
periods, each corresponding to angle \(\pi\), \(P_-(T)=P_-(0)\) but

\[
 \int_0^T|\mathcal R_-|dt=\pi m.
 \tag{CIF.42}
\]

The pressure Hessian carries the increasing frame rate.  Thus the primitive
gradient law, adverse sign, and \(L_t^2\) strain row do not turn total
relative-frame variation into a signed endpoint.

There is an equally exact changing-label calibration.  Keep the eigenframe
fixed and put

\[
 S_k(t)=\alpha_k(t)D,
 \qquad
 \alpha_k(t)=1+\varepsilon\sin(kt),
 \qquad 0<\varepsilon<1,
 \tag{CIF.43}
\]

with \(u_k,p_k\) defined as in `(CIF.39)`.  The same calculation proves
`(CIF.40)`.  On intervals containing an integer number of periods, the time
average of the strain magnitude is independent of \(k\), while a smooth
selector of \(c-2=2\varepsilon\sin(kt)\), whose transition lies strictly
inside \((-2\varepsilon,2\varepsilon)\), has two full variations per period.
Its signed endpoint is zero after an integer number of periods, but
\(\int|D_t\chi|dt\) grows linearly with the number of periods.  The increasing
variation again resides in the pressure-explicit time response.

These affine fields have infinite global kinetic energy.  They are exact local
VPI/gradient-law calibrations, not MPP counterhistories.  Their precise role is
to show that the local CNR rows and energy-level strain action alone cannot
supply the missing total-variation bound.

On the normalized periodic cell, the decaying ABC histories
`(ISR.39)--(ISR.41)` provide the lawful global finite-energy audit for the
finite-chord refund.  Their complete critical current vanishes while their
positive adverse-face action grows linearly with frequency at fixed kinetic
energy and fixed **time-integrated** enstrophy clock.  This is a periodic-cell
audit, not an \(\mathbb R^3\) finite-energy counterhistory.  The complete
finite chords, favorable face, interface, and pressure response cancel that
positive reading exactly.  Hence the missing global ingredient cannot be a
separate positive charge assigned to either CNR branch.

## 6. Next in-method representation test and exact verdict

The new signed result is

\[
 \boxed{
 \begin{gathered}
 \text{changing-label incidence}
 +\text{relative contracting-line tensor response}
 =\mathring D_t(\chi P_-),\\
 c_\rho\dfrac d{dt}\mathscr Q_W
 +\dfrac d{dt}\mathcal D_{\rho,n}^{W,\rm rr}
 =\dfrac d{dt}J_n^{\rm rr},\\
 \text{first binomial strain response}
 +\text{moving-weight defect response}
 =\text{the original selector-free first binomial}.
 \end{gathered}}
 \tag{CIF.44}
\]

So the CNR alternatives do not create a datum stock when they are kept inside
Thomas's signed refund.  A fixed signed test sees only a pointwise bounded
objective-projector endpoint, not a datum bound for its label integral.  An
adaptive test which follows the sign of
\(D_t\chi\) or \(\mathcal R_-\) recreates the unpaid total variation through
its own derivative.  The corrected defect then refunds that derivative.

The next calculation must act on the **actual canonical receiver**, not on a
full-field selector proxy.  A falsifiable next test is whether there exists a
measurable scalar pair selector \(\Gamma_n^{\rm rr}\) generated by the same
complete six-assignment double-recent mask with

\[
 0\leq\Gamma_n^{\rm rr}\leq1,
 \qquad
 \Gamma_n^{\rm rr}(a,b,t)=\Gamma_n^{\rm rr}(b,a,t),
 \tag{CIF.44a}
\]

with locally finite material-time BV and enough integrability for the pair
identity, and satisfying the missing representation premise

\[
 \boxed{
 \begin{aligned}
 J_n^{\rm rr}(t)
 ={}&\iint\Gamma_n^{\rm rr}j_{ab}\,da\,db\\
 ={}&\frac d{dt}\iint\Gamma_n^{\rm rr}e_{ab}\,da\,db
 -\iint e_{ab}D_t\Gamma_n^{\rm rr}\,da\,db\\
 &-2\iint\Gamma_n^{\rm rr}e_{ab}\sigma_{ab}\,da\,db,
 \end{aligned}}
 \tag{CIF.45}
\]

so that its complement reconstructs the **aggregate** pressure-complete
remainder

\[
 \iint(1-\Gamma_n^{\rm rr})j_{ab}\,da\,db
 =J_n^{\rm old}+J_n^{\rm ic}+J_n^{\rm lo}
  +\mathcal P_{1/2}^{\rm ext}+\mathcal P_{1/2}^{\rm bd}
 \tag{CIF.45a}
\]

from `(DRF.33)--(DRF.35)`.  Term-for-term ownership would require a further
proved partition of the complement and does not follow from one scalar
selector.

No \(\Gamma_n^{\rm rr}\) satisfying `(CIF.44a)--(CIF.45a)` is constructed in
this note, and no minimality theorem says that a scalar pair selector must
exist.  If the six slotwise projections cannot be represented that way, an
exact nonlocal multilinear material kernel of the arity required by those
projections must first be derived.  Neither its arity nor such a kernel is
proved here, so no positive pair ownership may be inferred.

Thus `(CIF.45)` is an explicit representation target, not an established
identity between the CNR geometry and the double-recent record.  Only after
that premise, or an exact multilinear replacement, is established can the
signed quantum `(CIF.9)` be tested against the actual pressure-complete
receiver rather than against a refunded coordinate.  No datum-finite bound
for `(TIR.37a)` is proved here, and no MPP closure is claimed.
