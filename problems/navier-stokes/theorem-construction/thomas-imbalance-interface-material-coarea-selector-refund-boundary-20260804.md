# Thomas's imbalance-interface material coarea and selector-refund boundary

**Date:** 2026-08-04

**Status:** noncanonical exact boundary inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method.

Starting from (DRF.35)--(DRF.44), this note keeps the positive
one-contraction/two-expansion face, its weighted-Betchov interface, and the
complete finite-chord/pressure-heat defect in one signed object.  It proves
three facts.

1. The quantity displayed in (DRF.44) is a one-sided enlargement of the
   double-recent current: it equals that current plus the magnitude of the
   favorable two-contraction face.  The exact positive-face residual is
   therefore not \(\mathcal D_{\zeta,n}^{\rm rr}\), but
   \(\mathcal D_{\zeta,n}^{\rm rr}-c_\zeta\mathscr Q_-\).
2. Smooth radial rescaling of the fixed chord selector moves an arbitrary
   amount of first-jet mass into the complete finite-chord defect while the
   signed double-recent current stays unchanged.  Thus the imbalance/defect
   alternative is a coordinate allocation, not two separately owned physical
   payments.
3. Exact material coarea and localized enstrophy write the positive imbalance
   face as selected enstrophy motion, material interface motion, selected
   palinstrophy, viscous interface mixing, and the cofactor collar.  The
   pressure-explicit next response fixes the interface velocity.  These terms
   remain signed and are refunded by the corrected complete defect; none is a
   new datum-finite positive charge.

The finite-volume rate and travel bounds eliminate a fixed positive-volume
material cohort with unbounded accumulated contraction when its co-normal
follows the contracting eigenline, and eliminate unbounded finite-time travel
without that alignment.  What remains can concentrate on shrinking
label--time incidence or recruit changing labels; converting the scalar rate
into material thinning requires the co-normal bridge.  The calculation below
quantifies that survivor.  It does not prove (TIR.37a) and does not close the
MPP.

The physical order is unchanged: one continuing fixed-viscosity fluid, the
pulse or spring winding, the imbalanced stretched vortex, the perfectly
balanced rip-cord, and only then the primitive pressure-explicit binomial/VPI
rows and their simultaneous intersected readings.  Pressure, viscosity,
strain, vorticity, finite chords, and label motion are read from that same
history.

## 1. The exact positive-face refund omitted by clipping

On one canonical record retain the notation of (DRF.25)--(DRF.36):

\[
 J_n^{\rm rr}(t)
 =c_\zeta\mathscr Q(t)
 +\mathcal D_{\zeta,n}^{\rm rr}(t),
 \qquad
 \mathscr Q=\mathscr Q_+-\mathscr Q_-,
 \tag{ISR.1}
\]

where

\[
 \mathscr Q_+(t)=\int[\mathfrak q]_+\,dx,
 \qquad
 \mathscr Q_-(t)=\int[-\mathfrak q]_+\,dx,
 \qquad
 \mathfrak q=a(d^2-a^2).
 \tag{ISR.2}
\]

Perfect balance \(d=0\) and the entire two-contraction region \(d\leq a\)
belong to \(\mathscr Q_-\); only \(d>a\) belongs to \(\mathscr Q_+\).
Direct substitution in (ISR.1) gives

\[
 \boxed{
 c_\zeta\mathscr Q_+
 +\mathcal D_{\zeta,n}^{\rm rr}
 =J_n^{\rm rr}+c_\zeta\mathscr Q_-.}
 \tag{ISR.3}
\]

Thus (DRF.44) is a valid upper enlargement of the current, but it is not the
exact cross-cancelled join.  Define instead

\[
 \boxed{
 \mathcal D_{\zeta,n}^{+,\rm rr}
 :=\mathcal D_{\zeta,n}^{\rm rr}
 -c_\zeta\mathscr Q_-.}
 \tag{ISR.4}
\]

Then the exact positive-face coordinate is

\[
 \boxed{
 J_n^{\rm rr}
 =c_\zeta\mathscr Q_+
 +\mathcal D_{\zeta,n}^{+,\rm rr}.}
 \tag{ISR.5}
\]

Equation (ISR.4) is not the deletion of the favorable face.  It is precisely
that face restored to the finite-chord/dynamic-complement defect before the
positive part is read.  Estimating \(\mathscr Q_+\) beside the uncorrected
\(\mathcal D_{\zeta,n}^{\rm rr}\) loses this refund.

## 2. Fixed-selector covariance makes the allocation explicit

Start with one admissible fixed radial selector \(\zeta\) from (FRS.5), and
for \(\rho>0\) put

\[
 \zeta_\rho(r):=\zeta(r/\rho),
 \qquad
 \ell_\rho:=\int_0^\infty\zeta_\rho(r)\,dr
 =\rho\ell_1,
 \qquad
 c_\rho:=\frac{64\ell_\rho}{15\pi}=\rho c_1.
 \tag{ISR.6}
\]

Every \(\zeta_\rho\) is still fixed in physical time and space and equals one
near the zero chord.  The full-field identity (FRS.12) therefore holds for
every \(\rho\):

\[
 \mathcal P_{1/2}=c_\rho\mathscr Q+\mathcal E_\rho.
 \tag{ISR.7}
\]

For two selector radii,

\[
 \boxed{
 \mathcal E_{\rho_2}-\mathcal E_{\rho_1}
 =-(c_{\rho_2}-c_{\rho_1})\mathscr Q.}
 \tag{ISR.8}
\]

All other signed reconstruction terms in (DRF.34) are unchanged by this
radial coordinate choice.  Equivalently, (DRF.35) itself gives

\[
 \boxed{
 \mathcal D_{\rho_2,n}^{\rm rr}
 -\mathcal D_{\rho_1,n}^{\rm rr}
 =-(c_{\rho_2}-c_{\rho_1})\mathscr Q,
 \qquad
 c_\rho\mathscr Q+\mathcal D_{\rho,n}^{\rm rr}=J_n^{\rm rr}.}
 \tag{ISR.9}
\]

The corrected positive-face residual transforms in the same exact way:

\[
 \boxed{
 c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr}=J_n^{\rm rr}
 \quad\hbox{for every }\rho>0.}
 \tag{ISR.10}
\]

By contrast, the uncorrected clipped quantity is

\[
 c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{\rm rr}
 =J_n^{\rm rr}+c_\rho\mathscr Q_-.
 \tag{ISR.11}
\]

It varies linearly with the arbitrary selector mass.  On every fixed
preterminal record, smoothness gives
\(\int_{I_n}\mathscr Q_\pm\,dt<\infty\), and hence

\[
 \boxed{
 \lim_{\rho\downarrow0}
 \int_{I_n}
 \left(c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{\rm rr}\right)dt
 =\int_{I_n}J_n^{\rm rr}\,dt.}
 \tag{ISR.12}
\]

In particular, for any one record with
\(\int_{I_n}\mathscr Q_+dt>0\), choose \(\rho\) so small that

\[
 c_\rho\int_{I_n}\mathscr Q_+dt<\frac{A_n}{32}.
 \tag{ISR.13}
\]

Then the imbalance line of (DRF.38) is false for that coordinate, while the
complete defect line carries the record.  This does not remove the physical
strain geometry.  It proves that the amount assigned to its infinitesimal
first jet is not selector-invariant; the finite chords refund the difference.

## 3. Exact material coarea of the one-contraction face

Let

\[
 M=\nabla u=S+\Omega,
 \qquad
 \mathfrak q=-\frac16\operatorname{tr}(S^3),
 \qquad
 C:=(\operatorname{cof}M)^Tu.
 \tag{ISR.14}
\]

Take a smooth nondecreasing approximation
\(\theta_\varepsilon\) to \(\mathbf1_{(0,\infty)}\), and write

\[
 \chi_\varepsilon:=\theta_\varepsilon(\mathfrak q),
 \qquad
 \mathscr Q_\varepsilon:=\int\chi_\varepsilon\mathfrak q\,dx.
 \tag{ISR.15}
\]

The weighted-Betchov identity gives

\[
 \mathscr Q_\varepsilon
 =\frac18\int\chi_\varepsilon\,\omega\cdot S\omega\,dx
 +\frac16\int\nabla\chi_\varepsilon\cdot C\,dx.
 \tag{ISR.16}
\]

The same one-fluid vorticity equation is

\[
 D_t\omega=S\omega+\nu\Delta\omega.
 \tag{ISR.17}
\]

Incompressibility passes material time through the spatial integral.  The
exact localized enstrophy identity is

\[
 \begin{aligned}
 \int\chi_\varepsilon\omega\cdot S\omega\,dx
 ={}&\frac12\frac d{dt}
 \int\chi_\varepsilon|\omega|^2\,dx
 -\frac12\int|\omega|^2D_t\chi_\varepsilon\,dx\\
 &+\nu\int\chi_\varepsilon|\nabla\omega|^2\,dx
 +\frac\nu2\int\nabla\chi_\varepsilon
 \cdot\nabla|\omega|^2\,dx.
 \end{aligned}
 \tag{ISR.18}
\]

Combining (ISR.16) and (ISR.18) proves the complete material-coarea row

\[
 \boxed{
 \begin{aligned}
 \mathscr Q_\varepsilon
 ={}&\frac1{16}\frac d{dt}
 \int\chi_\varepsilon|\omega|^2\,dx
 -\frac1{16}\int|\omega|^2D_t\chi_\varepsilon\,dx\\
 &+\frac\nu8\int\chi_\varepsilon|\nabla\omega|^2\,dx
 +\frac\nu{16}\int\nabla\chi_\varepsilon
 \cdot\nabla|\omega|^2\,dx\\
 &+\frac16\int\nabla\chi_\varepsilon\cdot C\,dx.
 \end{aligned}}
 \tag{ISR.19}
\]

The five terms are, in order, selected enstrophy storage, material interface
motion, selected palinstrophy, viscous interface mixing, and the exact
weighted-Betchov cofactor collar.  Only selected palinstrophy is manifestly
nonnegative.  It remains joined to all four other terms.

Material interface motion is not a freely chosen selector velocity.  The
pressure-explicit next response is

\[
 \boxed{
 \begin{aligned}
 D_t\mathfrak q={}&
 \frac1{12}\operatorname{tr}(S^2)^2
 -\frac1{24}|\omega|^2\operatorname{tr}(S^2)
 +\frac18\omega\cdot S^2\omega\\
 &+\frac12S^2:(\nabla^2p)^\circ
 -\frac\nu2S^2:\Delta S,
 \qquad
 D_t\chi_\varepsilon
 =\theta_\varepsilon'(\mathfrak q)D_t\mathfrak q.
 \end{aligned}}
 \tag{ISR.20}
\]

Thus vorticity orientation, the instantaneous trace-free pressure Hessian,
and viscosity determine the same moving interface.

For almost every regular level \(\lambda\), the spatial coarea formula makes
the two interface rows explicit:

\[
 \begin{aligned}
 \int |\omega|^2D_t\chi_\varepsilon\,dx
 &=\int_{\mathbb R}\theta_\varepsilon'(\lambda)
 \int_{\{\mathfrak q=\lambda\}}
 \frac{|\omega|^2D_t\mathfrak q}{|\nabla\mathfrak q|}
 \,d\sigma\,d\lambda,\\
 \int\nabla\chi_\varepsilon\cdot C\,dx
 &=\int_{\mathbb R}\theta_\varepsilon'(\lambda)
 \int_{\{\mathfrak q=\lambda\}}C\cdot n_{\mathfrak q}
 \,d\sigma\,d\lambda.
 \end{aligned}
 \tag{ISR.21}
\]

Likewise, for a regular positive level \(\lambda>0\), if
\(V_\lambda(t)=|\{x:\mathfrak q(x,t)>\lambda\}|\), then for almost every
time for which the level is regular,

\[
 \boxed{
 V_\lambda'(t)
 =\int_{\{\mathfrak q=\lambda\}}
 \frac{D_t\mathfrak q}{|\nabla\mathfrak q|}\,d\sigma.}
 \tag{ISR.22}
\]

There is no transport-Jacobian term in (ISR.22), because the same material
flow is volume preserving.  The equality is understood distributionally in
time across exceptional level times.  Restricting to \(\lambda>0\) also
avoids assigning finite volume to an unrestricted nonpositive superlevel on
\(\mathbb R^3\).  Equations (ISR.20)--(ISR.22) show why neither interface
motion nor mixing has a universal loss sign.

## 4. Rejoin coarea, palinstrophy, and the complete defect

For every \(\varepsilon>0\), define the exactly refunded residual

\[
 \boxed{
 \mathcal D_{\rho,n}^{\varepsilon,\rm rr}
 :=\mathcal D_{\rho,n}^{\rm rr}
 +c_\rho(\mathscr Q-\mathscr Q_\varepsilon).}
 \tag{ISR.23}
\]

Equations (ISR.1) and (ISR.23) give

\[
 \boxed{
 J_n^{\rm rr}
 =c_\rho\mathscr Q_\varepsilon
 +\mathcal D_{\rho,n}^{\varepsilon,\rm rr}.}
 \tag{ISR.24}
\]

Substituting (ISR.19) into (ISR.24) is the requested complete join:

\[
 \boxed{
 \begin{aligned}
 J_n^{\rm rr}={}&\mathcal D_{\rho,n}^{\varepsilon,\rm rr}
 +\frac{c_\rho}{16}\frac d{dt}
 \int\chi_\varepsilon|\omega|^2
 -\frac{c_\rho}{16}
 \int|\omega|^2D_t\chi_\varepsilon\\
 &+\frac{c_\rho\nu}{8}
 \int\chi_\varepsilon|\nabla\omega|^2
 +\frac{c_\rho\nu}{16}
 \int\nabla\chi_\varepsilon\cdot\nabla|\omega|^2
 +\frac{c_\rho}{6}
 \int\nabla\chi_\varepsilon\cdot C.
 \end{aligned}}
 \tag{ISR.25}
\]

All spatial integrals in (ISR.25) are at the same physical time.  As
\(\varepsilon\downarrow0\),

\[
 \mathscr Q_\varepsilon\longrightarrow\mathscr Q_+,
 \qquad
 \mathcal D_{\rho,n}^{\varepsilon,\rm rr}
 \longrightarrow
 \mathcal D_{\rho,n}^{\rm rr}-c_\rho\mathscr Q_-
 =\mathcal D_{\rho,n}^{+,\rm rr}.
 \tag{ISR.26}
\]

This proves the refund claim exactly.  The positive palinstrophy in
(ISR.25) is not an additional reserve beside the finite-chord defect.  It is
one summand in a selector-dependent representation whose other interface,
endpoint, favorable-face, and complete chord terms change so that
\(J_n^{\rm rr}\) remains fixed.

The full-field version makes the cancellation particularly transparent.  The
unweighted Betchov and enstrophy identities give

\[
 \boxed{
 \mathscr Q=\frac1{16}Z'+\frac\nu8\mathsf P,
 \qquad
 Z=\|\omega\|_2^2,
 \qquad
 \mathsf P=\|\nabla\omega\|_2^2.}
 \tag{ISR.27}
\]

Therefore

\[
 \boxed{
 J_n^{\rm rr}
 =\frac{c_\rho}{16}Z'
 +\left(\mathcal D_{\rho,n}^{\rm rr}
 +\frac{c_\rho\nu}{8}\mathsf P\right).}
 \tag{ISR.28}
\]

The complete defect carries the opposite supercritical part required to
leave the selector-independent critical current.  Neither the enstrophy
endpoint nor palinstrophy in (ISR.28) is datum-bounded on a hypothetical
maximal interval.

## 5. What finite-volume material deformation and escape really pay

On the adverse face write the ordered eigenvalues as

\[
 (-c,b,e),
 \qquad b>0,\quad e>0,\quad c=b+e,
 \qquad
 \mathfrak q=\frac12cbe.
 \tag{ISR.29}
\]

Since \(be\leq c^2/4\),

\[
 \boxed{0<\mathfrak q\leq\frac18c^3.}
 \tag{ISR.30}
\]

Let \(X(a,t)\) be the material flow, let \(I=(s,t)\) have length
\(\Delta\), and set \(c_+=c\mathbf1_{\{\mathfrak q>0\}}\).  Define

\[
 B_I:=\int_I\!\int c_+^2\,dx\,d\tau,
 \qquad
 \alpha_I(a):=\int_Ic_+(X(a,\tau),\tau)\,d\tau.
 \tag{ISR.31}
\]

Because \(c^2\leq|S|^2\), incompressibility and the kinetic-energy row give

\[
 \boxed{
 \int\alpha_I(a)^2\,da
 \leq\Delta B_I,
 \qquad
 B_I\leq\frac{\|u_0\|_2^2}{4\nu}.}
 \tag{ISR.32}
\]

Consequently, if one fixed material cohort \(G\) of volume \(m>0\) remains
in the adverse face and every label accumulates \(\alpha_I\geq L\), then

\[
 \boxed{mL^2\leq\Delta B_I.}
 \tag{ISR.33}
\]

If a material co-normal follows the contracting eigenline, then
\(\alpha_I(a)\), not \(L\), is that label's accumulated logarithmic
thinning action; \(L\) in `(ISR.33)` is only a common lower bound for those
actions.  Equation (ISR.33) is the fixed-volume deformation charge under
that alignment.  When alignment fails, the required object is the actual
co-normal evolution
\(D_tN=-(\nabla u)^TN\) (or its unit-direction form).  The scalar
\(\mathfrak q\)-interface law `(ISR.20)` does not itself track co-normal
rotation or label recruitment, so no such bridge is claimed here.

Physical travel and relative escape are charged independently.  For every
finite material cohort \(G\), Cauchy--Schwarz in time, volume preservation,
and the kinetic-energy bound give

\[
 \boxed{
 \begin{aligned}
 \int_G|X(a,t)-X(a,s)|^2da
 &\leq\Delta^2\|u_0\|_2^2,\\
 \int_G\left|
 [X(a,t)-\bar X_G(t)]-[X(a,s)-\bar X_G(s)]
 \right|^2da
 &\leq\Delta^2\|u_0\|_2^2.
 \end{aligned}}
 \tag{ISR.34}
\]

Thus a fixed positive-volume sheet cannot evade (ISR.33) by infinite
finite-time travel.  These charges act on persistent labels; they do not
control a cubic rate concentrated on changing label--time sets.

That remaining concentration can be quantified without inventing a new
fluid history.  Put

\[
 Q_I^+:=\int_I\mathscr Q_+(\tau)\,d\tau.
 \tag{ISR.35}
\]

For every \(L>0\), (ISR.30) gives

\[
 \int_{I\cap\{c\leq L\}}\!\int\mathfrak q_+\,dx\,d\tau
 \leq\frac{L}{8}B_I.
 \tag{ISR.36}
\]

If \(Q_I^+>0\) and \(B_I>0\), choose

\[
 L_I:=\frac{4Q_I^+}{B_I}.
 \tag{ISR.37}
\]

Then

\[
 \boxed{
 \begin{aligned}
 \int_{I\cap\{c>L_I\}}\!\int\mathfrak q_+\,dx\,d\tau
 &\geq\frac{Q_I^+}{2},\\
 |\{(x,\tau)\in\mathbb R^3\times I:c>L_I\}|
 &\leq\frac{B_I^3}{16(Q_I^+)^2}.
 \end{aligned}}
 \tag{ISR.38}
\]

Volume preservation makes the second line the same bound in material
label--time coordinates.  Equation `(ISR.38)` is a one-record localization.
Along any sequence for which \(Q_I^+/B_I\to\infty\), it forces increasingly
high contraction rate on shrinking incidence.  In particular this ratio
diverges on any infinite fixed-selector imbalance branch of `(DRF.38)`,
because \(Q_{I_n}^+\gtrsim A_n\to\infty\) while `(ISR.32)` bounds \(B_{I_n}\)
from the datum.  Outside that quantified branch no increasing-rate conclusion
is asserted.  The alternative is still a localization of the survivor, not a
datum-finite bound for its cubic action.

## 6. Exact null-current audit

Use normalized spatial measure on the periodic cell (equivalently, take the
cell volume to be one).  The decaying periodic ABC histories used in
(SSR.25)--(SSR.29) satisfy

\[
 \mathcal P_{1/2}=0,
 \qquad
 \mathscr Q=0,
 \qquad
 \mathscr Q_+=\mathscr Q_->0.
 \tag{ISR.39}
\]

For the full-field positive-face coordinate, (ISR.5) reads

\[
 0=c_\rho\mathscr Q_+
 +\left(\mathcal E_\rho-c_\rho\mathscr Q_-\right).
 \tag{ISR.40}
\]

Moreover,

\[
 \int_0^\infty\mathscr Q_+(t)\,dt
 =\frac{C_+A^3N}{3\nu},
 \qquad
 \int_0^\infty Z(t)\,dt
 =\frac{A^2\langle|U|^2\rangle}{2\nu}.
 \tag{ISR.41}
\]

The first grows linearly with frequency while the datum-paid enstrophy clock
does not.  Yet the complete current is identically zero.  This exact
same-equation audit proves that the favorable face and finite chords can
refund an arbitrarily large positive imbalance reading.  It also prevents
the positive palinstrophy term in (ISR.19) from being promoted to a separate
record payment: its endpoint and interface partners remain in the same
identity.

The pressure-explicit higher response itself has both signs in the exact
smooth \(2D3C\) family from (SSR.41)--(SSR.45):

\[
 \left.\frac d{dt}\mathscr Q(v_{A,N}(t))\right|_{t=0}
 =\frac{A^3N^4}{4}(A-\nu N).
 \tag{ISR.42}
\]

Thus neither material interface motion nor the next response has a universal
turn-down sign.

## 7. Exact verdict

The checked theorem is the selector-covariant refund identity

\[
 \boxed{
 J_n^{\rm rr}
 =c_\rho\mathscr Q_\varepsilon
 +\mathcal D_{\rho,n}^{\varepsilon,\rm rr}
 \xrightarrow[\varepsilon\downarrow0]{}
 c_\rho\mathscr Q_+
 +\mathcal D_{\rho,n}^{+,\rm rr},}
 \tag{ISR.43}
\]

with \(\mathscr Q_\varepsilon\) given by the complete material-coarea row
(ISR.19) and the pressure-explicit interface response (ISR.20).  This object
is independent of the radial selector allocation.  The uncorrected clipped
quantity in (DRF.44) differs from it by
\(c_\rho\mathscr Q_-\geq0\).

Accordingly, the one-contraction/two-expansion region does expose interface
motion, viscous mixing, and palinstrophy, but it does not have to spend any of
them as an independently positive datum resource.  The complete
finite-chord/dynamic-complement defect refunds their signed reallocation.
Aligned fixed-positive-volume persistent contraction and physical travel are
datum-paid by (ISR.32)--(ISR.34).  On an infinite fixed-selector imbalance
branch, the positive-face reading localizes to shrinking high-rate label
incidence by `(ISR.38)`; actual material thinning still requires the co-normal
bridge.  This localization remains joined to the pressure-explicit interface
and finite-chord refund in `(ISR.43)`.

No datum-finite upper bound for that selector-invariant signed current is
proved here.  This is a checked exact boundary and a removal of a false
separate-payment interpretation, not (TIR.37a), not MPP closure, and not a
replacement for Thomas's pressure-explicit binomial/VPI method.
