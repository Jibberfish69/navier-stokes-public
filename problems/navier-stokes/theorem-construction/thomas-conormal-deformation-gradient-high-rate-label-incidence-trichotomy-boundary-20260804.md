# Thomas's episodewise co-normal-probe and high-rate label-incidence trichotomy

**Date:** 2026-08-04

**Status:** noncanonical exact boundary inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method.

This note starts only from the adverse one-contraction/two-expansion geometry
and high-rate label-incidence localization `(ISR.29)--(ISR.43)`, the signed
double-recent/finite-chord join `(DRF.35)--(DRF.44a)`, and the primitive
pressure-explicit Navier--Stokes law.  It supplies the episodewise
infinitesimal co-normal-probe bridge that `(ISR.33)` deliberately left open.

For one high-rate material-label episode, initialize a new infinitesimal
material co-normal probe on the unique contracting strain line.  A priority
stopping rule then assigns that episode to one of three exhaustive cases:

1. the co-normal remains aligned and the local normal height of the same
   infinitesimal material volume element contracts by a quantified factor;
2. alignment is lost, which forces a fixed amount of the exact relative
   eigenframe/co-normal rotation action carrying vorticity, the whole-field
   pressure Hessian, and viscosity; or
3. the episode ends before the prescribed contraction action, and its entry
   or re-entry is counted by the exact material membership variation of the
   high-rate adverse set.

Repeated first-branch episodes on a fixed positive-volume cohort are
datum-paid by `(ISR.32)--(ISR.33)` and the multiplicity estimate below.  This
does not construct a coherent material level-surface or vortex-thickness
field.  The other two branches are exact pressure-explicit
readings but have no datum-finite bound.  They also remain joined to the
selector-covariant finite-chord refund `(ISR.43)`.  The result is therefore a
same-critical trichotomy, not a turn-down theorem, not `(TIR.37a)`, and not
MPP closure.

The physical object and order do not change: one continuing fixed-viscosity
fluid, the pulse or spring winding, the imbalanced stretched vortex, the
perfectly balanced rip-cord, and only then the primitive pressure-explicit
binomial/VPI rows and their simultaneous intersected readings.  No material
label, pressure response, or finite chord is replaced by an independently
prescribed model source.

## 1. The same material history supplies the co-normal

Let \(X(a,t)\) be the material flow of the one velocity field and put

\[
 F(a,t):=\nabla_aX(a,t),
 \qquad M:=\nabla u=S+\Omega.
 \tag{CNR.1}
\]

The flow and incompressibility give

\[
 \boxed{
 D_tF=MF,
 \qquad \det F=1.}
 \tag{CNR.2}
\]

For an initial material covector \(N_0(a)\ne0\), define its transported
co-normal by

\[
 N(a,t):=F(a,t)^{-T}N_0(a),
 \qquad n:=\frac{N}{|N|}.
 \tag{CNR.3}
\]

Direct differentiation, with no geometric model assumption, gives

\[
 \boxed{
 D_tN=-M^TN,
 \qquad
 D_tn=-(I-n\otimes n)M^Tn,
 \qquad
 D_t\log|N|=-n\cdot Sn.}
 \tag{CNR.4}
\]

Because the determinant of \(F\) is one, \(N\) is also the material area
co-normal obtained by applying the cofactor of \(F\) to \(N_0\).  For the
infinitesimal material volume element whose initial tangent face is
\(\ker N_0\), let \(h\) denote its local normal height.  Then

\[
 \boxed{
 \frac{h(t)}{h(s)}=\frac{|N(s)|}{|N(t)|},
 \qquad
 D_t\log h=n\cdot Sn.}
 \tag{CNR.5}
\]

Every nonzero covector gives this exact local infinitesimal area/height probe.
It gives a coherent family of material level surfaces only when the initial
covector field is an exact gradient, or at least is Frobenius-integrable up to
an integrating factor.  Nothing below assumes that the contracting
eigenline field has this property.  Thus a scalar negative eigenvalue becomes
local material thinning along an episodewise probe only after the transported
co-normal is shown to follow that eigenline; it does not by itself define a
vortex-core thickness field over a positive-volume cohort.

## 2. Exact alignment and relative-frame laws on the adverse face

On the adverse face where the signed density is positive, `(ISR.29)` gives

\[
 \operatorname{spec}S=(-c,b,e),
 \qquad b>0,\quad e>0,\quad c=b+e.
 \tag{CNR.6}
\]

The contracting eigenvalue \(-c\) is simple even when the two expanding
eigenvalues collide.  On each active episode choose a continuous orientation
of its unit eigenvector \(e_-\), fixed by the entry orientation, and initially
orient the co-normal probe so
that

\[
 \mu:=n\cdot e_-\ge0,
 \qquad
 n=\mu e_-+n_2e_2+n_3e_3,
 \tag{CNR.7}
\]

and define the co-normal growth rate

\[
 \gamma:=-n\cdot Sn=D_t\log|N|.
 \tag{CNR.8}
\]

Then

\[
 \boxed{
 \begin{aligned}
 \gamma&=c\mu^2-bn_2^2-en_3^2,\\
 c-\gamma&=(c+b)n_2^2+(c+e)n_3^2,\\
 c(1-\mu^2)&\le c-\gamma\le2c(1-\mu^2).
 \end{aligned}}
 \tag{CNR.9}
\]

In particular,

\[
 \boxed{
 \mu^2\ge\frac34
 \quad\Longrightarrow\quad
 \gamma\ge\frac c2.}
 \tag{CNR.10}
\]

This is the exact conversion of accumulated scalar contraction into loss of
the probe's local material normal height while alignment persists.

The frame itself is not fixed.  The primitive pressure-explicit gradient law
is

\[
 D_tM=-M^2-H+\nu\Delta M,
 \qquad
 D_tS=-S^2-\Omega^2-H+\nu\Delta S,
 \qquad H=\nabla^2p.
 \tag{CNR.11}
\]

Let \(P_-\) denote orthogonal projection transverse to \(e_-\).  On that
plane, \(S+cI\) has eigenvalues \(c+b\) and \(c+e\), both at least \(c\).
Therefore the reduced
inverse is intrinsic and the contracting-line motion has the collision-safe
form

\[
 \boxed{
 D_te_-
 =-(S+cI)_{e_-^\perp}^{-1}P_-(D_tS)e_-.}
 \tag{CNR.12}
\]

If \(e_2,e_3\) are any eigenvectors when the expanding eigenvalues are
distinct, `(CNR.12)` reads

\[
 \boxed{
 \langle D_te_-,e_j\rangle
 =\frac{
 \nu\langle\Delta S e_-,e_j\rangle
 -\frac14(\omega\cdot e_-)(\omega\cdot e_j)
 -\langle H^\circ e_-,e_j\rangle}
 {-c-\lambda_j},
 \quad j=2,3.}
 \tag{CNR.13}
\]

No full simple-spectrum hypothesis is needed: `(CNR.12)` remains the
definition at \(b=e\).  Define the relative frame/co-normal response

\[
 \boxed{
 \mathcal R_-:=D_te_--\Omega e_-.}
 \tag{CNR.14}
\]

The subtraction is forced by `(CNR.4)`: the antisymmetric part \(\Omega\) rotates the material
co-normal while `(CNR.12)` rotates the contracting strain line.  Combining
the two laws gives

\[
 \boxed{
 D_t\mu=(c-\gamma)\mu+n\cdot\mathcal R_-.}
 \tag{CNR.15}
\]

The response in `(CNR.14)` is transverse to \(e_-\).  While \(\mu>0\), let
\(\vartheta=\arccos\mu\in[0,\pi/2)\).  Then

\[
 \boxed{
 D_t\vartheta
 =-(c-\gamma)\cot\vartheta
 -\frac{n\cdot\mathcal R_-}{\sin\vartheta}
 \le |\mathcal R_-|.}
 \tag{CNR.16}
\]

At \(\vartheta=0\), interpret the inequality by its upper-Dini derivative,
or equivalently by starting at a positive angle and taking the continuity
limit.  Hence, if \(t\) is the first time the alignment threshold is reached,
the exact action quantum is

\[
 \boxed{
 \vartheta(s)=0,\quad
 \mu\ge\frac{\sqrt3}{2}\ \hbox{on }[s,t],\quad
 \mu(t)=\frac{\sqrt3}{2}
 \quad\Longrightarrow\quad
 \int_s^t|\mathcal R_-(X(a,\tau),\tau)|\,d\tau
 \ge\frac\pi6.}
 \tag{CNR.17}
\]

This quantum is not assigned to pressure alone.  Equations
`(CNR.11)--(CNR.14)` retain vorticity rotation, the whole-field trace-free
pressure Hessian, and viscosity in the one relative response.

## 3. The exact changing-label incidence row

Fix \(\lambda>0\) and \(L>0\).  Let \(\theta_\varepsilon\) and
\(\eta_\delta\) be smooth nondecreasing cutoffs of the positive half-line and
set

\[
 \chi_{\lambda,L,\varepsilon,\delta}(x,t)
 :=\theta_\varepsilon(\mathfrak q(x,t)-\lambda)
   \eta_\delta(c(x,t)-L).
 \tag{CNR.18}
\]

The contracting eigenline and \(c\) are smooth on the support of this
selector.  Along the same material labels,

\[
 \widehat\chi(a,t):=\chi(X(a,t),t),
 \qquad
 \partial_t\widehat\chi=(D_t\chi)(X(a,t),t).
 \tag{CNR.19}
\]

The primitive law gives the exact joined membership response

\[
 \boxed{
 \begin{aligned}
 D_t\chi={}&
 \theta_\varepsilon'(\mathfrak q-\lambda)\eta_\delta(c-L)
 D_t\mathfrak q\\
 &+\theta_\varepsilon(\mathfrak q-\lambda)
 \eta_\delta'(c-L)D_tc,
 \end{aligned}}
 \tag{CNR.20}
\]

where \(D_t\mathfrak q\) is exactly `(ISR.20)`, and, writing
\(w_j=\omega\cdot e_j\),

\[
 \boxed{
 D_tc
 =c^2-\frac14(w_2^2+w_3^2)
 +e_-\cdot H e_-
 -\nu e_-\cdot\Delta S e_-.}
 \tag{CNR.21}
\]

Equation `(CNR.21)` follows by taking the \((-e_-)\) diagonal of
`(CNR.11)`; it retains the isotropic and trace-free parts of the same pressure
Hessian.

For the smooth selector, define the entry and total variations on
\(I=(s,t)\) by

\[
 \boxed{
 \begin{aligned}
 \mathfrak R_{\lambda,L,\varepsilon,\delta}^+(I)
 &:=\int_I\!\int [D_t\chi]_+\,dx\,d\tau,\\
 \mathfrak R_{\lambda,L,\varepsilon,\delta}^{\rm tv}(I)
 &:=\int_I\!\int |D_t\chi|\,dx\,d\tau.
 \end{aligned}}
 \tag{CNR.22}
\]

Volume preservation turns these into exact material-label quantities:

\[
 \boxed{
 \begin{aligned}
 \mathfrak R_{\lambda,L,\varepsilon,\delta}^+(I)
 &=\int\!\int_I[\partial_t\widehat\chi(a,\tau)]_+\,d\tau\,da,\\
 \mathfrak R_{\lambda,L,\varepsilon,\delta}^{\rm tv}(I)
 &=\int \operatorname{Var}_I(\widehat\chi(a,\cdot))\,da.
 \end{aligned}}
 \tag{CNR.23}
\]

For jointly regular \((\lambda,L)\), define the sharp set

\[
 E_{\lambda,L}(t)
 :=\{x:\mathfrak q(x,t)>\lambda,\ c(x,t)>L\},
 \qquad
 \widehat{\mathbf1}_{\lambda,L}(a,t)
 :=\mathbf1_{E_{\lambda,L}(t)}(X(a,t)).
 \tag{CNR.24}
\]

Its sharp positive and total material variations are defined directly in BV:

\[
 \boxed{
 \begin{aligned}
 \mathfrak R_{\lambda,L}^{+}(I)
 &:=\int
 \bigl(D_\tau\widehat{\mathbf1}_{\lambda,L}(a,\cdot)\bigr)^+(I)\,da,\\
 \mathfrak R_{\lambda,L}^{\rm tv}(I)
 &:=\int\operatorname{Var}_I
 \bigl(\widehat{\mathbf1}_{\lambda,L}(a,\cdot)\bigr)\,da,
 \end{aligned}}
 \tag{CNR.24a}
\]

with value \(+\infty\) if the corresponding BV variation is infinite.  At
almost every jointly regular pair, smooth cutoffs converge to the indicator
in \(L^1\), and their variations obey the usual lower-semicontinuity.  When the two level
surfaces are also jointly transverse, the distributional boundary row is

\[
 D_t\mathbf1_{E_{\lambda,L}}
 =\delta_{\{\mathfrak q=\lambda\}}\mathbf1_{\{c>L\}}D_t\mathfrak q
 +\mathbf1_{\{\mathfrak q>\lambda\}}
  \delta_{\{c=L\}}D_tc.
 \tag{CNR.25}
\]

Without joint transversality, `(CNR.24a)` is the governing definition and no
codimension claim is made.  Positive variation counts entries and re-entries;
total variation also counts exits.  An exit does not by itself guarantee a
replacement label.  The two boundary signs may not be separated before the
positive or total variation is read.  A passage \(\lambda\downarrow0\) would
require a uniform estimate and is not silently taken here.

## 4. Quantified episode trichotomy

Take a jointly regular sharp selector `(CNR.24)`; the smooth statement follows
by approximation.  For almost every material label, let \(J=(\tau_0,\tau_1)\)
be one connected active episode of membership in \(E_{\lambda,L}\) with an
interior entry time \(\tau_0\).  This episode receives its own relative
deformation and co-normal probe

\[
 \boxed{
 \begin{aligned}
 F_J(a,\tau)&:=F(a,\tau)F(a,\tau_0)^{-1},\\
 N_J(a,\tau)&:=F_J(a,\tau)^{-T}
 e_-(X(a,\tau_0),\tau_0),\\
 n_J&:=N_J/|N_J|.
 \end{aligned}}
 \tag{CNR.26}
\]

Thus \(N_J(\tau_0)=e_-(\tau_0)\), and `(CNR.3)--(CNR.5)` hold with
\(\tau_0\) as the reference time.  A new episode creates a new observational
probe; it does not reset the fluid, prescribe a source, or continue the probe
from a previous episode.  The probe is an exact local infinitesimal material
area/normal-height reading, not an asserted coherent level-surface field.
Write \(\mu_J:=n_J\cdot e_-\), and let \(h_J\) be the associated local normal
height from `(CNR.5)`.

Fix a positive action threshold \(\ell\), and put

\[
 A_J(a):=\int_J c(X(a,\tau),\tau)\,d\tau.
 \tag{CNR.27}
\]

Use the following priority stopping rule.  If \(A_J<\ell\), assign \(J\) to
the short-incidence branch, whether or not it also loses alignment.  If
\(A_J\ge\ell\), let \(\tau_\ell\) be the first time the accumulated action
equals \(\ell\).  On \([\tau_0,\tau_\ell]\), either the alignment threshold is
never hit, or it has a first hitting time \(\tau_{\rm hit}\le\tau_\ell\):

\[
 \boxed{
 \begin{array}{ll}
 \text{aligned contraction:}&
 \text{the threshold is not hit on }[\tau_0,\tau_\ell],\quad
 \mu_J^2>3/4\text{ throughout},\quad
 \log\dfrac{|N_J(\tau_\ell)|}{|N_J(\tau_0)|}
 \ge\dfrac\ell2,\quad
 \dfrac{h_J(\tau_\ell)}{h_J(\tau_0)}\le e^{-\ell/2};\\[3mm]
 \text{relative-frame response:}&
 \mu_J^2\text{ first reaches }3/4\text{ at }\tau_{\rm hit},\quad
 \tau_{\rm hit}\le\tau_\ell,\quad
 \displaystyle\int_{\tau_0}^{\tau_{\rm hit}}|\mathcal R_-|\,d\tau
 \ge\dfrac\pi6.
 \end{array}}
 \tag{CNR.28}
\]

An episode cut off by the left or right endpoint of \(I\) is an inherited or
unfinished incidence, not a claimed replacement.  If \(N_{<\ell}(a)\) counts
all priority-assigned short episodes restricted to \(I\), every one is either
already active at \(s\) or begins with a positive material membership
variation.  Therefore

\[
 \boxed{
 \begin{aligned}
 \int N_{<\ell}(a)\,da
 &\le |E_{\lambda,L}(s)|+\mathfrak R_{\lambda,L}^+(I),\\
 \int\sum_{J:A_J<\ell}A_J(a)\,da
 &\le\ell\bigl(|E_{\lambda,L}(s)|
 +\mathfrak R_{\lambda,L}^+(I)\bigr).
 \end{aligned}}
 \tag{CNR.29}
\]

If the sharp membership has infinite variation, the right side records that
unpaid alternative as infinite.  The priority rule is exhaustive and
disjoint as an assignment, although the underlying physical events can
overlap: a short episode may also rotate.  Thus `(CNR.28)--(CNR.29)` are an
exact quantified stopping trichotomy, not a qualitative picture.

The aligned branch lands in the datum-paid deformation row already proved in
`(ISR.32)--(ISR.33)`.  Indeed, with

\[
 \Delta:=|I|,
 \qquad
 c_+:=c\,\mathbf1_{\{\mathfrak q>0\}},
 \qquad
 \alpha_I(a)=\int_Ic_+(X(a,\tau),\tau)\,d\tau,
 \qquad
 B_I=\int_I\!\int c_+^2\,dx\,d\tau,
 \tag{CNR.30}
\]

one has

\[
 \boxed{
 |\{a:\alpha_I(a)\ge\ell\}|\,\ell^2
 \le\int\alpha_I(a)^2da
 \le\Delta B_I,
 \qquad
 B_I\le\frac{\|u_0\|_2^2}{4\nu}.}
 \tag{CNR.31}
\]

Let \(N_{{\rm al},\ell}(a)\) count the long episodes assigned to the aligned
branch.  Their stopped intervals are disjoint, and each spends \(\ell\) of
the same scalar action.  Hence, for every \(K\in\mathbb N\),

\[
 \boxed{
 \ell N_{{\rm al},\ell}(a)\le\alpha_I(a),
 \qquad
 |\{a:N_{{\rm al},\ell}(a)\ge K\}|(K\ell)^2
 \le\Delta B_I
 \le {\Delta\|u_0\|_2^2\over4\nu}.}
 \tag{CNR.31a}
\]

Thus no fixed positive-measure cohort can undergo unboundedly many aligned
long episodes in finite time without spending the kinetic-energy deformation
budget.  This is a multiplicity bound for episodewise local probes; it does
not construct a coherent thickness field or convert shrinking incidence into
fixed volume.

## 5. Why the trichotomy is not a datum-finite turn-down

The localization `(ISR.38)` forces half of the positive-face mass onto its
high-rate set, but it does not lower-bound the accumulated action \(A_J\) of
any fixed label.  A rate \(c=M\) acting for time \(M^{-2}\) has bounded
\(c^2\) cost, vanishing \(c\) action, and growing \(c^3\) reading.  This is an
insufficiency test for the available rows, not a
freely prescribed Navier--Stokes history.  It shows exactly why
`(CNR.31)` does not bound the cubic positive-face action.

The two survivor quantities are native pressure-explicit responses:

\[
 \int|\mathcal R_-|\,dt,
 \qquad
 \int\!\int |D_t\chi|\,dx\,dt.
 \tag{CNR.32}
\]

For the fixed-viscosity Navier--Stokes scaling

\[
 u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t),
 \qquad
 \lambda_\kappa=\kappa^6\lambda,
 \qquad
 L_\kappa=\kappa^2L,
\]

with \(\varepsilon_\kappa=\kappa^6\varepsilon\),
\(\delta_\kappa=\kappa^2\delta\), and
\(\chi_\kappa(x,t)=\chi(\kappa x,\kappa^2t)\),

the exact scaling laws, over corresponding scaled intervals and trajectories,
are

\[
 \boxed{
 \begin{aligned}
 \mathcal R_{-,\kappa}(x,t)
 &=\kappa^2\mathcal R_-(\kappa x,\kappa^2t),\\
 \int|\mathcal R_{-,\kappa}|\,dt
 &=\int|\mathcal R_-|\,d\tau,\\
 \int\!\int |D_t^\kappa\chi_\kappa|\,dx\,dt
 &=\kappa^{-3}\int\!\int|D_t\chi|\,dy\,d\tau.
 \end{aligned}}
 \tag{CNR.32a}
\]

The last factor is exactly the scaling of material-label volume.  Thus the
frame action and the membership variation per participating label volume are
scale invariant.  The energy row controls neither the pressure-Hessian and
viscous frame response in `(CNR.13)` nor the absolute interface variation in
`(CNR.20)`.

Most importantly, the signed current still obeys the selector-refunded join

\[
 \boxed{
 J_n^{\rm rr}
 =c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr}.}
 \tag{CNR.33}
\]

Neither the aligned, rotation, nor membership-variation reading can be
extracted from \(\mathscr Q_+\) as an independently positive payment.  The
favorable face, moving coarea collar, pressure-viscous response, and complete
finite chords reallocate so that `(CNR.33)` remains fixed.  The exact ABC
null-current audit `(ISR.39)--(ISR.41)` already forbids charging the positive
face separately.

## 6. Exact verdict

For every complete high-rate adverse material-label episode equipped at entry
with its own infinitesimal co-normal probe on the unique contracting
eigenline, the one-fluid deformation law and priority stopping rule prove

\[
 \boxed{
 \begin{gathered}
 \text{accumulated aligned contraction and local normal-height loss,}\\
 \text{or a }\pi/6\text{ pressure-explicit relative-frame action,}\\
 \text{or short incidence counted by positive material membership variation.}
 \end{gathered}}
 \tag{CNR.34}
\]

Repeated aligned long episodes on a fixed cohort are datum-paid by
`(CNR.31a)`.  The relative-frame and short-incidence alternatives are exact
but remain
same-critical, and the finite-chord refund `(CNR.33)` prevents either from
becoming a separate positive reserve.  Consequently this episodewise
infinitesimal co-normal-probe bridge separates scalar contraction, local
material normal-height loss, frame rotation, and label incidence without
asserting a coherent vortex-thickness field or a replacement after every
exit.  It supplies no datum-finite upper bound for \(J_n^{\rm rr}\), no proof
of `(TIR.37a)`, and no MPP closure.
