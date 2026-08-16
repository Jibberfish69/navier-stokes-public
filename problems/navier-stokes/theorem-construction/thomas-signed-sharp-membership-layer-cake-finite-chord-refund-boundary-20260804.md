# Thomas's signed sharp-membership layer-cake and finite-chord refund boundary

**Date:** 2026-08-04

**Status:** noncanonical exact identity and checked no-gain boundary inside
Thomas Birnie's one-fluid, pressure-explicit binomial/VPI reversible-intersection
method.

This note keeps the sharp material sets from `(CNR.24)`--`(CNR.25)` signed
before integrating their thresholds.  It asks whether entries and exits which
are expensive in total variation cancel in the signed material motion and
leave a datum endpoint capable of paying the adverse strain current.

They do cancel, exactly.  The correct layer-cake weights show, however, that
the signed cancellation has two different scopes:

1. integration over both positive thresholds reconstructs
   \(\mathfrak q_+c\), not \(\mathfrak q_+\);
2. \(\mathfrak q_+\) is the boundary trace at selector height \(L=0\), while
   adverse \(c\) is the boundary trace at \(\lambda=0\);
3. the signed derivative of either trace is only its endpoint difference;
   the time-weighted derivative needed to recover
   \(\int_I\mathscr Q_+\) is exactly that adverse action minus its left
   endpoint;
4. within the quotient-power family, the uniquely normalized \(L^{-2}\)
   weighting reconstructs
   \(\mathfrak q_+/c\le c^2/8\), but its remaining pressure--vorticity--viscous
   response has the same critical scaling as the adverse action;
5. after the favorable-face refund, these signed terms and the
   complete finite-chord defect recombine to the unchanged
   double-recent current.

Thus signed incidence removes the episode-counting overcharge, but it does
not produce a new datum-finite payment.  The physical object and order remain
Thomas's: one smooth datum, one continuing fixed-viscosity fluid, the pulse or
spring winding, the imbalanced stretched vortex, the perfectly balanced
rip-cord, and then the primitive pressure-explicit binomial/VPI rows and their
simultaneous intersected readings.  No threshold set is a second fluid and no
entry is treated as a physical reset.

## 1. The sharp sets and their signed material derivative

Fix a compact preterminal interval \(I=[s,t]\), write \(\Delta=t-s\), and
let \(X(a,\tau)\) be the volume-preserving material flow.  Put

\[
 S=\frac12(\nabla u+\nabla u^T),
 \qquad
 \mathfrak q=-\frac16\operatorname{tr}(S^3),
 \qquad
 c=-\lambda_{\min}(S)\ge0.
 \tag{SLC.1}
\]

On \(\{\mathfrak q>0\}\), the eigenvalues have the adverse ordering

\[
 (-c,b,e),\qquad b,e>0,\qquad c=b+e,
 \qquad \mathfrak q=\frac12cbe.
 \tag{SLC.2}
\]

The negative eigenvalue is simple there, so \(c\) is smooth on every set
\(\{\mathfrak q>\lambda\}\), \(\lambda>0\).  Define

\[
 \begin{aligned}
 E_{\lambda,L}(\tau)
 &:=\{x:\mathfrak q(x,\tau)>\lambda,\ c(x,\tau)>L\},\\
 \widehat\chi_{\lambda,L}(a,\tau)
 &:=\mathbf1_{E_{\lambda,L}(\tau)}(X(a,\tau)),\\
 M_{\lambda,L}(\tau)&:=|E_{\lambda,L}(\tau)|
 =\int\widehat\chi_{\lambda,L}(a,\tau)\,da.
 \end{aligned}
 \tag{SLC.3}
\]

For \(\lambda,L>0\), these volumes are finite on a preterminal smooth
record.  At a jointly regular and transverse threshold pair, the sharp
chain rule is the Radon-measure identity

\[
 \boxed{
 D_\tau\widehat\chi_{\lambda,L}
 =\left[
 \delta_{\{\mathfrak q=\lambda\}}\mathbf1_{\{c>L\}}D_t\mathfrak q
 +\mathbf1_{\{\mathfrak q>\lambda\}}
  \delta_{\{c=L\}}D_tc\right]\!\circ X.}
 \tag{SLC.4}
\]

At jointly regular and transverse levels, volume preservation and spatial
coarea give the equivalent Eulerian row

\[
 \boxed{
 \begin{aligned}
 M_{\lambda,L}'(\tau)={}&
 \int_{\{\mathfrak q=\lambda,\ c>L\}}
 {D_t\mathfrak q\over|\nabla\mathfrak q|}\,d\sigma\\
 &+\int_{\{c=L,\ \mathfrak q>\lambda\}}
 {D_tc\over|\nabla c|}\,d\sigma.
 \end{aligned}}
 \tag{SLC.5}
\]

At exceptional levels the governing object is instead the direct
distributional derivative \(D_\tau\widehat\chi_{\lambda,L}\), or its direct
one-dimensional BV variation when finite.  The two delta compositions in
`(SLC.4)` are not asserted there: at a critical level they need not be
defined.  This is exactly the sharp-set convention of `(CNR.24a)--(CNR.25)`.
Every identity below is
first valid with finite threshold cutoffs and a compact spatial cutoff.  The
displayed untruncated forms follow by monotone or dominated convergence when
their right sides are finite, and otherwise hold as extended nonnegative or
distributional identities.  This order of limits also covers the whole-space
setting without assigning finite volume to \(\{\mathfrak q>0\}\).

The endpoint threshold sets are monotone traces of the corrected CNR sets:

\[
 \boxed{
 \begin{aligned}
 E_{\lambda,0}&:=\bigcup_{L>0}E_{\lambda,L}
   =\{\mathfrak q>\lambda\},\qquad \lambda>0,\\
 E_{0,L}&:=\bigcup_{\lambda>0}E_{\lambda,L}
   =\{\mathfrak q>0,\ c>L\},\qquad L>0.
 \end{aligned}}
 \tag{SLC.6}
\]

The first equality uses the fact that \(\mathfrak q>0\) forces \(c>0\).

## 2. The exact weights: interior products and boundary traces

For \(r,p>0\), Tonelli's theorem gives the pointwise two-threshold
layer-cake identity

\[
 \boxed{
 rp\int_0^\infty\!\int_0^\infty
 \lambda^{r-1}L^{p-1}
 \mathbf1_{E_{\lambda,L}}\,dL\,d\lambda
 =\mathfrak q_+^r c^p.}
 \tag{SLC.7}
\]

In particular, ordinary Lebesgue weight on the interior of the threshold
quadrant reconstructs

\[
 \int_0^\infty\!\int_0^\infty
 \mathbf1_{E_{\lambda,L}}\,dL\,d\lambda
 =\mathfrak q_+c,
 \tag{SLC.8}
\]

not \(\mathfrak q_+\).  The individual adverse readings use boundary
measures:

\[
 \boxed{
 \begin{aligned}
 \mathfrak q_+
 &=\int_0^\infty\mathbf1_{E_{\lambda,0}}\,d\lambda
 &&\text{with threshold measure }d\lambda\,\delta_0(dL),\\
 c\mathbf1_{\{\mathfrak q>0\}}
 &=\int_0^\infty\mathbf1_{E_{0,L}}\,dL
 &&\text{with threshold measure }\delta_0(d\lambda)\,dL,\\
 c^2\mathbf1_{\{\mathfrak q>0\}}
 &=2\int_0^\infty L\mathbf1_{E_{0,L}}\,dL.
 \end{aligned}}
 \tag{SLC.9}
\]

This boundary support is forced.  A locally integrable interior density
\(w(\lambda,L)\) satisfying

\[
 \int_0^q\!\int_0^c w(\lambda,L)\,dL\,d\lambda=q
 \quad\hbox{for every }q,c>0
 \tag{SLC.10}
\]

would have zero derivative in \(c\), forcing \(w=0\) almost everywhere in
the open quadrant, and could not have derivative one in \(q\).  Thus no
choice of a regular positive-\(L\) weight converts interior CNR incidence
into the adverse current; the \(L=0\) trace cannot be omitted.

After spatial integration, `(SLC.9)` gives

\[
 \boxed{
 \mathscr Q_+(\tau)
 :=\int\mathfrak q_+(x,\tau)\,dx
 =\int_0^\infty M_{\lambda,0}(\tau)\,d\lambda.}
 \tag{SLC.11}
\]

The adverse \(c\)-first moment can be infinite on \(\mathbb R^3\).  The
quadratic row is finite and already datum-paid in physical time:

\[
 \boxed{
 \begin{aligned}
 C_2(\tau)&:=\int c^2\mathbf1_{\{\mathfrak q>0\}}\,dx
 =2\int_0^\infty L M_{0,L}(\tau)\,dL,\\
 \int_I C_2(\tau)\,d\tau
 &\le\int_I\!\int|S|^2\,dx\,d\tau
 \le {\|u_0\|_2^2\over4\nu}.
 \end{aligned}}
 \tag{SLC.12}
\]

The last constant uses
\(\int|S|^2=\frac12\int|\nabla u|^2\) and the kinetic-energy identity.
It is exactly the ISR deformation budget; it is not a cubic adverse-current
bound.

## 3. Signed threshold motion telescopes; total variation counts reversals

Integrating `(SLC.4)` with the weights in `(SLC.7)` and then over labels
gives, for \(r,p\ge1\) whenever the displayed quantities are finite,

\[
 \boxed{
 \begin{aligned}
 {d\over d\tau}\int\mathfrak q_+^r c^p\,dx
 =\int_{\{\mathfrak q>0\}}
 \bigl[{}
 &r\mathfrak q^{r-1}c^pD_t\mathfrak q\\
 &+p\mathfrak q^rc^{p-1}D_tc
 \bigr]dx.
 \end{aligned}}
 \tag{SLC.13}
\]

For an exponent in \((0,1)\), `(SLC.13)` is asserted only when its singular
chain-rule factor is locally integrable and the cutoff limit is justified;
the layer-cake identity `(SLC.7)` itself still holds for every \(r,p>0\).
Only the nonsingular case \(r=p=1\) is used below.

For \(r=p=1\), every constant is one:

\[
 \boxed{
 \int_0^\infty\!\int_0^\infty M_{\lambda,L}'\,dL\,d\lambda
 ={d\over d\tau}\int\mathfrak q_+c\,dx
 =\int_{\{\mathfrak q>0\}}
 (cD_t\mathfrak q+\mathfrak qD_tc)\,dx.}
 \tag{SLC.14}
\]

Let \(V_I^+(f)\) and \(V_I^-(f)\) denote the upward and downward variations,
defined directly by suprema over time partitions.  Set

\[
 \mathfrak R_{\lambda,L}^{\pm}(I)
 :=\int V_I^\pm(\widehat\chi_{\lambda,L}(a,\cdot))\,da,
 \qquad
 \mathfrak R_{\lambda,L}^{\rm tv}
 =\mathfrak R_{\lambda,L}^++\mathfrak R_{\lambda,L}^-.
 \tag{SLC.14a}
\]

When the sharp membership is BV these are its positive and negative Jordan
variations.  Defining \(\mathfrak R^-\) directly, rather than as the
potentially undefined extended-real difference
\(\mathfrak R^{\rm tv}-\mathfrak R^+\), also covers infinite-variation
levels.  The one-dimensional layer-cake/coarea formula along the same
material labels gives the sharper comparison

\[
 \boxed{
 \begin{aligned}
 \int_0^\infty\!\int_0^\infty
 \mathfrak R_{\lambda,L}^+(I)\,dL\,d\lambda
 &=\int_I\!\int_{\{\mathfrak q>0\}}
 \bigl[c(D_t\mathfrak q)_+
       +\mathfrak q(D_tc)_+\bigr]dx\,d\tau,\\
 \int_0^\infty\!\int_0^\infty
 \mathfrak R_{\lambda,L}^-(I)\,dL\,d\lambda
 &=\int_I\!\int_{\{\mathfrak q>0\}}
 \bigl[c(D_t\mathfrak q)_-
       +\mathfrak q(D_tc)_-\bigr]dx\,d\tau,\\
 \int_0^\infty\!\int_0^\infty
 \mathfrak R_{\lambda,L}^{\rm tv}(I)\,dL\,d\lambda
 &=\int_I\!\int_{\{\mathfrak q>0\}}
 \bigl[c|D_t\mathfrak q|
       +\mathfrak q|D_tc|\bigr]dx\,d\tau,\\
 \int_0^\infty\!\int_0^\infty
 [M_{\lambda,L}(t)-M_{\lambda,L}(s)]\,dL\,d\lambda
 &=\left[\int\mathfrak q_+c\,dx\right]_s^t.
 \end{aligned}}
 \tag{SLC.15}
\]

The two derivative contributions live on the vertical and horizontal edges
of the threshold quadrant and meet only at one threshold point, which has no
one-dimensional variation mass.  This proves the separate positive,
negative, and total-variation rows in `(SLC.15)`.  The signed difference
telescopes.  Total variation retains every entry, exit, and reversal and can
be arbitrarily larger than the endpoint.  When the integrated positive and
negative variations in `(SLC.15)` are finite, its last line may equivalently
be written as the integral of
\(\mathfrak R_{\lambda,L}^+-\mathfrak R_{\lambda,L}^-\).  If both are
infinite, that difference is not used; the endpoint line is the signed
distributional telescope.

At the \(L=0\) boundary the corresponding exact identity is

\[
 \boxed{
 \begin{aligned}
 \mathscr Q_+'(\tau)
 &=\int_0^\infty M_{\lambda,0}'(\tau)\,d\lambda
 =\int_{\{\mathfrak q>0\}}D_t\mathfrak q\,dx,\\
 \int_0^\infty
 [M_{\lambda,0}(t)-M_{\lambda,0}(s)]\,d\lambda
 &=\mathscr Q_+(t)-\mathscr Q_+(s),\\
 \int_0^\infty\mathfrak R_{\lambda,0}^{\rm tv}(I)\,d\lambda
 &=\int_I\!\int_{\{\mathfrak q>0\}}|D_t\mathfrak q|\,dx\,d\tau.
 \end{aligned}}
 \tag{SLC.16}
\]

If the integrated boundary variation is finite, the middle line of
`(SLC.16)` is also
\(\int_0^\infty(\mathfrak R_{\lambda,0}^+
-\mathfrak R_{\lambda,0}^-)\,d\lambda\).  This qualification again avoids
an \(\infty-\infty\) interpretation.

The \(\lambda=0\) adverse-\(c\) boundary has an additional signed
\(\mathfrak q=0\) interface.  For a regular zero level and finite spatial
cutoff, followed by the justified limit,

\[
 \boxed{
 \begin{aligned}
 {d\over d\tau}\int c\mathbf1_{\{\mathfrak q>0\}}dx
 &={\int_{\{\mathfrak q>0\}}D_tc\,dx}
 +\int_{\{\mathfrak q=0,\ c>0\}}
 {cD_t\mathfrak q\over|\nabla\mathfrak q|}\,d\sigma,\\
 C_2'(\tau)
 &=2\int_{\{\mathfrak q>0\}}cD_tc\,dx
 +\int_{\{\mathfrak q=0,\ c>0\}}
 {c^2D_t\mathfrak q\over|\nabla\mathfrak q|}\,d\sigma.
 \end{aligned}}
 \tag{SLC.17}
\]

The first line is asserted only when its spatial first moment is finite.  The
second is the robust finite-energy version.  These surface terms are exactly
the signed entry and exit of the adverse strain class; taking absolute values
before integrating would destroy their telescope.

On the adverse face the second response in `(SLC.13)--(SLC.17)` is itself the
primitive pressure-explicit eigenvalue row `(CNR.21)`.  If
\(w_j=\omega\cdot e_j\), then

\[
 \boxed{
 D_tc
 =c^2-\frac14(w_2^2+w_3^2)
 +e_-\cdot(\nabla^2p)e_-
 -\nu e_-\cdot\Delta S e_-.}
 \tag{SLC.17a}
\]

Thus neither threshold edge has been separated from pressure or viscosity.

## 4. Direct substitution of the pressure-explicit response

Equation `(SLC.16)` uses no free interface velocity.  Substituting `(ISR.20)`
gives

\[
 \boxed{
 \begin{aligned}
 \mathscr Q_+'(\tau)=\int_{\{\mathfrak q>0\}}\biggl[{}
 &{1\over12}\operatorname{tr}(S^2)^2
 -{1\over24}|\omega|^2\operatorname{tr}(S^2)
 +{1\over8}\omega\cdot S^2\omega\\
 &+{1\over2}S^2:(\nabla^2p)^\circ
 -{\nu\over2}S^2:\Delta S
 \biggr]dx.
 \end{aligned}}
 \tag{SLC.18}
\]

There is no \(\mathfrak q=0\) surface term in `(SLC.18)`, because the
layer-cake potential is \(\mathfrak q_+\), which vanishes on that interface.
The whole-field pressure Hessian and viscous response remain in the same
signed row, and `(SLC.18)` has no universal sign.

The signed threshold derivative becomes the adverse *time action* only after
one further, exact time moment.  Define

\[
 \boxed{
 \mathfrak M_I
 :=\int_0^\infty\int_s^t(t-\tau)\,d_\tau M_{\lambda,0}(\tau)\,d\lambda.}
 \tag{SLC.19}
\]

The Stieltjes integral is defined first for truncated threshold integrals and
then by `(SLC.16)`; preterminal smoothness supplies the endpoint traces.
Integration by parts gives, with every coefficient explicit,

\[
 \boxed{
 \mathfrak M_I
 =\int_s^t\mathscr Q_+(\tau)\,d\tau
 -\Delta\mathscr Q_+(s)
 =\int_s^t(t-\tau)\mathscr Q_+'(\tau)\,d\tau.}
 \tag{SLC.20}
\]

Thus the unweighted signed flux only gives
\(\mathscr Q_+(t)-\mathscr Q_+(s)\).  The time weight needed to reconstruct
the adverse current produces exactly the original adverse action minus its
left endpoint.  With \(s=0\), that endpoint is datum-finite and satisfies

\[
 \boxed{
 \Delta\mathscr Q_+(0)
 \le {\Delta\over6}\|S_0\|_{L^3}^3.}
 \tag{SLC.21}
\]

No estimate for \(\mathfrak M_I\) follows from the signed telescope.  By
`(SLC.18)`, it is the first time moment of the same pressure-explicit quartic,
pressure-Hessian, and viscous response.

### 4.1 The strongest renormalized layer-cake endpoint

There is a stronger signed weighting which uses the leading \(c^2\) in
`(SLC.17a)` instead of inserting a time moment.  Define, with value zero off
the adverse face,

\[
 \mathsf h:=\frac{\mathfrak q_+}{c}.
 \tag{SLC.21a}
\]

This quotient is nonsingular.  Equation `(SLC.2)` and \(be\le c^2/4\) give

\[
 \boxed{
 0\le\mathsf h=\frac12be\le\frac18c^2.}
 \tag{SLC.21b}
\]

Its exact threshold representation is a signed renormalized \(L^{-2}\)
layer cake.  For \(\epsilon>0\), put

\[
 \mathsf h_\epsilon
 :=\frac{\mathfrak q_+}{\epsilon}
 -\int_0^\infty\!\int_\epsilon^\infty
 L^{-2}\mathbf1_{E_{\lambda,L}}\,dL\,d\lambda.
 \tag{SLC.21c}
\]

If \(c>\epsilon\), the right side is exactly \(\mathfrak q_+/c\).  If
\(c\le\epsilon\), it is \(\mathfrak q_+/\epsilon\), which is at most
\(c^2/8\).  Thus, in fact,

\[
 \mathsf h_\epsilon={\mathfrak q_+\over\max\{c,\epsilon\}},
 \tag{SLC.21ca}
\]

and consequently

\[
 \boxed{
 \mathsf h_\epsilon\longrightarrow\mathsf h,
 \qquad
 0\le\mathsf h_\epsilon\le\frac18c^2,}
 \tag{SLC.21d}
\]

pointwise and in \(L_x^1\) on every preterminal slice.  Moreover
`(SLC.12)` gives domination in \(L^1(I\times\mathbb R^3)\), so the
convergence also holds in preterminal spacetime.  In distributions in
material time, its derivative is precisely the renormalized signed membership
flux

\[
 \boxed{
 D_t\mathsf h
 =\lim_{\epsilon\downarrow0}\left[
 {1\over\epsilon}\int_0^\infty
 D_t\mathbf1_{E_{\lambda,0}}\,d\lambda
 -\int_0^\infty\!\int_\epsilon^\infty
 {D_t\mathbf1_{E_{\lambda,L}}\over L^2}\,dL\,d\lambda
 \right].}
 \tag{SLC.21e}
\]

The limit is taken after pulling back by the same material flow, applying a
compact spatial cutoff, and testing the entire bracket in time.  The two
terms in that bracket are not assigned separate limits.  Spacetime
domination from `(SLC.21d)` and `(SLC.12)` passes the distributional
derivative to the limit.  Thus the singular weight has not discarded the
\(L=0\) edge: the first term in `(SLC.21e)` is exactly the counterterm
required to retain it.

This normalization is forced by the contraction equation.  For
\(\mathfrak q_+/c^\alpha\), the leading \(c^2\) part of \(D_tc\) contributes
\(\alpha\mathfrak q_+c^{1-\alpha}\); only \(\alpha=1\) returns
\(\mathfrak q_+\) itself while leaving an endpoint controlled by the
quadratic strain row.

On the adverse face the ordinary chain rule and `(SLC.17a)` give

\[
 \begin{aligned}
 D_t\mathsf h
 &=\frac{D_t\mathfrak q}{c}
 -\frac{\mathfrak q}{c^2}D_tc\\
 &=\frac{D_t\mathfrak q}{c}
 -\mathfrak q
 -\frac{\mathfrak q}{c^2}\mathcal R_c,
 \end{aligned}
 \qquad
 \mathcal R_c:=D_tc-c^2.
 \tag{SLC.21f}
\]

Define

\[
 \begin{aligned}
 \mathsf H(\tau)&:=\int\mathsf h(x,\tau)\,dx,\\
 \mathfrak N_I&:=\int_I\!\int_{\{\mathfrak q>0\}}
 \left({D_t\mathfrak q\over c}
 -{\mathfrak q\over c^2}\mathcal R_c\right)dx\,d\tau.
 \end{aligned}
 \tag{SLC.21g}
\]

Volume preservation and `(SLC.21f)` now prove the endpoint-normalized adverse
current identity

\[
 \boxed{
 \int_I\mathscr Q_+(\tau)\,d\tau
 =\mathsf H(s)-\mathsf H(t)+\mathfrak N_I,}
 \tag{SLC.21h}
\]

with the genuine datum-sized endpoint

\[
 \boxed{
 0\le\mathsf H(0)
 \le\frac18\|S_0\|_2^2
 =\frac1{16}\|\nabla u_0\|_2^2.}
 \tag{SLC.21i}
\]

The terminal term in `(SLC.21h)` has the favorable sign.  What remains is not
lower order.  Equations `(SLC.17a)` and `(SLC.18)` give

\[
 \begin{aligned}
 \mathcal R_c={}&-\frac14(w_2^2+w_3^2)
 +e_-\cdot(\nabla^2p)e_-
 -\nu e_-\cdot\Delta S e_-,\\
 \mathfrak N_I={}&\int_I\!\int_{\{\mathfrak q>0\}}\biggl[{}
 {\operatorname{tr}(S^2)^2\over12c}
 -{|\omega|^2\operatorname{tr}(S^2)\over24c}
 +{\omega\cdot S^2\omega\over8c}
 +{S^2:(\nabla^2p)^\circ\over2c}
 -{\nu S^2:\Delta S\over2c}\\
 &\hspace{20mm}
 +{\mathfrak q(w_2^2+w_3^2)\over4c^2}
 -{\mathfrak q\,e_-\cdot(\nabla^2p)e_-\over c^2}
 +{\nu\mathfrak q\,e_-\cdot\Delta S e_-\over c^2}
 \biggr]dx\,d\tau.
 \end{aligned}
 \tag{SLC.21j}
\]

All quotients in `(SLC.21j)` are read only on \(\{\mathfrak q>0\}\).  There

\[
 {3\over2}c^2\le |S|^2=c^2+b^2+e^2\le2c^2,
 \qquad {\mathfrak q\over c^2}={be\over2c}\le{c\over8}.
 \tag{SLC.21ja}
\]

These cancellations, together with preterminal smoothness, make every term
in `(SLC.21j)` locally integrable and give its whole-space integrability under
the stated cutoffs and limits; no bare \(1/c\) or \(1/c^2\) singularity is
being assumed integrable.  The extension \(\mathsf h=0\) has no
\(\mathfrak q=0\) interface atom because \(\mathsf h\to0\) there, including
as \(c\downarrow0\).

More explicitly, under the fixed-viscosity scaling
\(u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t)\),

\[
 S_\kappa=\kappa^2S,
 \quad c_\kappa=\kappa^2c,
 \quad \mathfrak q_\kappa=\kappa^6\mathfrak q,
 \quad \mathsf h_\kappa=\kappa^4\mathsf h,
 \quad dx\,dt\mapsto\kappa^{-5}dx\,dt.
 \tag{SLC.21jb}
\]

Both terms defining the integrand of \(\mathfrak N_I\) therefore scale like
\(\kappa^6\), exactly as \(\mathfrak q_+\), and both spacetime integrals
scale like \(\kappa\).  The whole-field pressure Hessian and viscous
response have therefore survived the normalization, and this identity
supplies neither a sign nor a datum-finite estimate.  Indeed, `(SLC.21h)` is
equivalently

\[
 \mathfrak N_I
 =\int_I\mathscr Q_+\,d\tau-
   \mathsf H(s)+\mathsf H(t),
 \tag{SLC.21k}
\]

so an upper bound for \(\mathfrak N_I\) is not a reduction to a smaller
positive action: it asks for the adverse current together with the terminal
normalized strain endpoint.

## 5. The SRF favorable-face refund returns the same current

On one canonical double-recent record, integrate the corrected SRF join
`(SRF.17)` over \(I\).  With

\[
 c_\rho={64\rho\ell_1\over15\pi}=\rho c_1,
 \qquad
 \mathbf J_n:=\int_IJ_n^{\rm rr}\,d\tau,
 \qquad
 \mathbf D_{n}^{+}(\rho)
 :=\int_I\mathcal D_{\rho,n}^{+,\rm rr}\,d\tau,
 \tag{SLC.22}
\]

equations `(SRF.16)`--`(SRF.17)` say

\[
 \boxed{
 \mathbf J_n
 =c_\rho\int_I\mathscr Q_+\,d\tau
 +\mathbf D_n^+(\rho),
 \qquad
 \partial_\rho\mathbf D_n^+(\rho)
 =-c_1\int_I\mathscr Q_+\,d\tau.}
 \tag{SLC.23}
\]

Substitution of the signed layer-cake moment `(SLC.20)` gives

\[
 \boxed{
 \mathbf J_n
 =c_\rho\Delta\mathscr Q_+(s)
 +\underbrace{\left[
 \mathbf D_n^+(\rho)+c_\rho\mathfrak M_I
 \right]}_{\displaystyle\mathfrak U_{n,\rho}(I)}.}
 \tag{SLC.24}
\]

The bracket is the direct time-moment recombination after the
\(\mathscr Q_+(s)\) endpoint has been removed.  It is not a new reserve:

\[
 \boxed{
 \begin{aligned}
 \mathfrak U_{n,\rho}(I)
 &=\mathbf J_n-c_\rho\Delta\mathscr Q_+(s),\\
 \partial_\rho\mathfrak U_{n,\rho}(I)
 &=-c_1\Delta\mathscr Q_+(s),\\
 \lim_{\rho\downarrow0}\mathfrak U_{n,\rho}(I)
 &=\mathbf J_n.
 \end{aligned}}
 \tag{SLC.25}
\]

Accordingly,

\[
 \partial_\rho
 \left[c_\rho\Delta\mathscr Q_+(s)
 +\mathfrak U_{n,\rho}(I)\right]=0.
 \tag{SLC.26}
\]

If \(\mathscr Q_+(s)>0\), then `(SLC.25)` also shows
\(\mathfrak U_{n,\rho}(I)\to-\infty\) linearly as \(\rho\to\infty\), while
\(c_\rho\Delta\mathscr Q_+(s)\to+\infty\) at the opposite rate.  If
\(\mathscr Q_+(s)=0\), then \(\mathfrak U_{n,\rho}(I)=\mathbf J_n\) for every
\(\rho\).  In neither case is there a finite, separately owned large-radius
endpoint.

The signed material telescope and the finite-chord defect therefore have the
same selector-radius covariance already proved by SRF.  The left endpoint in
`(SLC.24)` is datum-finite when \(s=0\), but the remaining signed term is
exactly \(\mathbf J_n\) minus that endpoint.  A datum bound for
\(\mathfrak U_{n,\rho}\) strong enough to close the record is equivalent to
the missing bound for the record current; the layer-cake operation has not
made the dependency smaller.

The stronger normalized identity `(SLC.21h)` gives the sharpest version of
the same test.  Put

\[
 \boxed{
 \mathfrak V_{n,\rho}(I)
 :=\mathbf D_n^+(\rho)+c_\rho\mathfrak N_I.}
 \tag{SLC.26a}
\]

Then `(SLC.21h)` and `(SLC.23)` give

\[
 \boxed{
 \begin{aligned}
 \mathbf J_n
 &=c_\rho\mathsf H(s)-c_\rho\mathsf H(t)
   +\mathfrak V_{n,\rho}(I),\\
 \mathfrak V_{n,\rho}(I)
 &=\mathbf J_n-c_\rho\mathsf H(s)+c_\rho\mathsf H(t),\\
 \partial_\rho\mathfrak V_{n,\rho}(I)
 &=c_1\bigl(\mathsf H(t)-\mathsf H(s)\bigr),\\
 \lim_{\rho\downarrow0}\mathfrak V_{n,\rho}(I)
 &=\mathbf J_n.
 \end{aligned}}
 \tag{SLC.26b}
\]

Consequently

\[
 \boxed{
 \partial_\rho\left[
 c_\rho\mathsf H(s)-c_\rho\mathsf H(t)
 +\mathfrak V_{n,\rho}(I)\right]=0.}
 \tag{SLC.26c}
\]

The nonnegative terminal endpoint in `(SLC.26b)` is subtracted from the
current, but it reappears with the opposite coefficient inside the exact
refund-complete remainder.  Thus
\(\mathfrak V_{n,\rho}(I)\) is the smallest endpoint-normalized signed term
left by this layer-cake calculation, and it still tends to the unpaid current
as \(\rho\downarrow0\).

## 6. Exact verdict

The new exact identity is the signed threshold recombination

\[
 \boxed{
 \begin{gathered}
 d\lambda\,dL\text{ reconstructs }\mathfrak q_+c,
 \qquad
 d\lambda\,\delta_0(dL)\text{ reconstructs }\mathfrak q_+,\\
 \text{signed entries minus exits telescope to strain endpoints},\\
 L^{-2}\text{ renormalization gives }
 \mathsf H(s)-\mathsf H(t)+\mathfrak N_I,\\
 \text{the time moment needed for }\int_I\mathscr Q_+
 \text{ plus the corrected finite-chord defect returns }\mathbf J_n.
 \end{gathered}}
 \tag{SLC.27}
\]

This proves the physical idea at its exact scope: CNR total variation
overcounts reversals which signed material membership cancels.  But the
adverse current lies on the \(L=0\) boundary trace, and its unnormalized time
moment is \(\mathfrak M_I\), not a bounded endpoint.  The strongest
renormalized weighting improves the strain endpoint to
\(\mathsf H(0)\le\|\nabla u_0\|_2^2/16\) and exposes the favorable terminal
subtraction, but leaves the same-critical pressure--vorticity--viscous term
\(\mathfrak N_I\).  After the favorable face and complete chords are
rejoined, the smallest remaining term is
\(\mathfrak V_{n,\rho}(I)\), an exact alias of the unpaid current modulo those
two strain endpoints.  The only datum-finite bulk row is the already-known
quadratic adverse deformation budget `(SLC.12)`.  There is no new datum bound
for `(TIR.37a)` and no MPP closure in this identity.
