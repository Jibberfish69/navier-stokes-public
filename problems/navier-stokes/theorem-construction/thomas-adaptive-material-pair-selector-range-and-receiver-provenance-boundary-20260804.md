# Thomas's adaptive material-pair selector range and receiver-provenance boundary

**Date:** 2026-08-04

**Status:** canonical exact signed-measure range theorem and checked
aggregate-selector no-gain boundary inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method.

This note continues only the material-pair premise
`(CIF.44a)--(CIF.45a)`.  It distinguishes two statements which must not be
collapsed.

1. At one time, which scalar numbers can be obtained by multiplying the
   actual signed all-pair current by an arbitrary symmetric weight between
   zero and one?
2. Does such a weight come from the complete six-assignment double-recent
   receiver, with its time response and aggregate complement preserved?

The first question has an elementary exact answer.  Its answer does not
supply the second.  Whenever the target lies inside the positive/negative
range of the all-pair current, a scalar selector can be manufactured from the
target number itself and the sign of the pair current.  That construction is
receiver-circular, has no termwise mask provenance, and its material-time
derivative contains the moving sign interface and the derivative of the
target current.  Substitution into the exact pair identity returns the target
and its complement tautologically.

The physical object remains one continuing fixed-viscosity fluid from one
datum.  Pair labels, Fourier receiver legs, co-normal incidence, finite
chords, and binomial responses are simultaneous readings of that history.
No arbitrary selector below is promoted to a new carrier or a proof of
receiver ownership.

## 1. The truncated signed material-pair measure

On one smooth preterminal time slice use the actual same-label quantities
from `(JEM.1)--(JEM.15)`:

\[
 e_{ab}={1\over4\pi^2}{|V_{ab}|^2\over|R_{ab}|^4},
 \qquad
 j_{ab}=-{1\over\pi^2}
 { |V_{ab}|^2(V_{ab}\cdot R_{ab})\over|R_{ab}|^6}.
 \tag{APR.1}
\]

Both densities are symmetric under \(a\leftrightarrow b\).  First restrict
to a symmetric diagonal/far truncation

\[
 D_{\epsilon,R}(t)
 :=\{(a,b):\epsilon<|R_{ab}(t)|<R\}
 \tag{APR.2}
\]

and define the finite signed measure

\[
 d\mu_t^{\epsilon,R}(a,b)
 :=\mathbf1_{D_{\epsilon,R}(t)}j_{ab}(t)\,da\,db.
 \tag{APR.3}
\]

Write

\[
 P_t^{\epsilon,R}:=\int (j_{ab})_+\mathbf1_D\,da\,db,
 \qquad
 N_t^{\epsilon,R}:=\int (j_{ab})_-\mathbf1_D\,da\,db.
 \tag{APR.4}
\]

For a smooth decaying preterminal field, the limit of the total variation is
finite:

\[
 \iint|j_{ab}|\,da\,db
 \le {1\over\pi^2}\iint
 { |u(x)-u(y)|^3\over|x-y|^5}\,dx\,dy<\infty.
 \tag{APR.5}
\]

Volume preservation has been used to replace \((a,b)\) by \((x,y)\).  The
last expression is the **cube** of the homogeneous two-thirds-order
\(L^3\) Gagliardo seminorm,

\[
 \iint {|u(x)-u(y)|^3\over|x-y|^5}\,dx\,dy
 =[u]_{\dot W^{2/3,3}}^3
 \tag{APR.5a}
\]

under the displayed normalization.  For example, preterminal \(H^2\)
regularity and decay suffice for its finiteness.  Under the fixed-viscosity
Navier--Stokes scaling

\[
 u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t),
 \qquad
 \iint|j_{ab}[u_\kappa]|\,da\,db
 =\kappa^2\iint|j_{ab}[u]|\,da\,db,
 \tag{APR.5b}
\]

whereas \(\|u_\kappa\|_2^2=\kappa^{-1}\|u\|_2^2\).  Thus the total pair
variation is finite on each smooth preterminal slice, has the same
time-slice scaling as the critical current, and is not bounded uniformly at
the terminal edge by the kinetic-energy row.

Consequently the monotone truncation limits exist and are finite:

\[
 \boxed{
 \begin{aligned}
 P_t&:=\lim_{\epsilon\downarrow0,\ R\uparrow\infty}
 P_t^{\epsilon,R}=\iint(j_{ab})_+\,da\,db,\\
 N_t&:=\lim_{\epsilon\downarrow0,\ R\uparrow\infty}
 N_t^{\epsilon,R}=\iint(j_{ab})_-\,da\,db.
 \end{aligned}}
 \tag{APR.5c}
\]

All response identities below are still proved on `(APR.2)` first and passed
to the limit only when the displayed response terms are integrable; the
slice-wise finiteness in `(APR.5)` does not supply that time regularity.

## 2. Exact range of bounded scalar pair selection

Let

\[
 \mathscr R_t^{\epsilon,R}
 :=\left\{
 \iint\Gamma_{ab}\,d\mu_t^{\epsilon,R}:
 0\le\Gamma_{ab}\le1,
 \ \Gamma_{ab}=\Gamma_{ba}
 \right\}.
 \tag{APR.6}
\]

Every such selector obeys

\[
 -N_t^{\epsilon,R}
 \le\iint\Gamma_{ab}\,d\mu_t^{\epsilon,R}
 \le P_t^{\epsilon,R}.
 \tag{APR.7}
\]

Conversely, every number in that interval is attained.  Set \(\Gamma_0=0\).
For \(y>0\), necessarily \(P_t^{\epsilon,R}>0\), and set

\[
 \Gamma_y={y\over P_t^{\epsilon,R}}\mathbf1_{\{j_{ab}>0\}},
 \qquad 0< y\le P_t^{\epsilon,R}.
 \tag{APR.8}
\]

For \(y<0\), necessarily \(N_t^{\epsilon,R}>0\), and set

\[
 \Gamma_y={-y\over N_t^{\epsilon,R}}\mathbf1_{\{j_{ab}<0\}},
 \qquad -N_t^{\epsilon,R}\le y<0.
 \tag{APR.9}
\]

Since \(j_{ab}=j_{ba}\), both selectors are symmetric.  Direct integration
proves

\[
 \boxed{
 \mathscr R_t^{\epsilon,R}
 =[-N_t^{\epsilon,R},P_t^{\epsilon,R}].}
 \tag{APR.10}
\]

No nonatomic hypothesis is needed because fractional weights in \([0,1]\)
are allowed.  Such a hypothesis would be relevant only if the selector were
required to be an indicator.

Consequently the **instantaneous first scalar equality** in `(CIF.45)`, when
the selector is allowed to be any bounded symmetric measurable function,
has the exact necessary and sufficient condition

\[
 \boxed{
 -N_t\le J_n^{\rm rr}(t)\le P_t,}
 \tag{APR.11}
\]

with \(P_t,N_t\) defined by `(APR.5c)`.  This does not include the
material-time BV, response-integrability, or six-assignment provenance
requirements in the rest of `(CIF.44a)--(CIF.45a)`.  Neither
`(DRF.33)--(DRF.35)` nor the all-pair identity `(JEM.13)` proves `(APR.11)`:
those identities give

\[
 \iint j_{ab}=J_n^{\rm rr}
 +J_n^{\rm old}+J_n^{\rm ic}+J_n^{\rm lo}
 +\mathcal P_{1/2}^{\rm ext}+\mathcal P_{1/2}^{\rm bd},
 \tag{APR.12}
\]

but a Fourier component of a signed current need not lie between the
positive and negative masses of a different pointwise pair-density
decomposition.  Establishing `(APR.11)` from the actual receiver would
therefore be an additional same-critical statement, not a consequence of
the aggregate reconstruction.

## 3. A manufactured selector is receiver-circular

Suppose `(APR.11)` holds and use `(APR.8)--(APR.9)` with
\(y=J_n^{\rm rr}(t)\).  On a time subinterval where
\(J_n^{\rm rr}>0\) and \(P_t>0\), the resulting selector is

\[
 \Gamma_n^{\rm alg}(a,b,t)
 =\theta_n(t)\mathbf1_{\{j_{ab}(t)>0\}},
 \qquad
 \theta_n(t):={J_n^{\rm rr}(t)\over P_t}.
 \tag{APR.13}
\]

Here and below \(D_t\) on a pair quantity means differentiation at fixed
material labels.  Let \(\Theta_\eta\) be a smooth approximation of
\(\mathbf1_{(0,\infty)}\), and first define
\(\Gamma_{n,\eta}^{\rm alg}=\theta_n\Theta_\eta(j)\).  Wherever
\(J_n^{\rm rr}\) and \(P_t\) are absolutely continuous and \(P_t\) is
locally bounded away from zero, the exact regularized derivative is

\[
 \boxed{
 D_t\Gamma_{n,\eta}^{\rm alg}
 =\theta_n'\Theta_\eta(j)
 +\theta_n\Theta_\eta'(j)D_tj.}
 \tag{APR.14a}
\]

Only when the zero level of \(j\) is regular and the corresponding variation
is locally finite may the sharp limit be written as the Radon-measure formula

\[
 \boxed{
 D_t\Gamma_n^{\rm alg}
 =\theta_n'\mathbf1_{\{j>0\}}
 +\theta_n\delta_{\{j=0\}}D_tj,}
 \tag{APR.14}
\]

where

\[
 \theta_n'
 ={(J_n^{\rm rr})'P_t-J_n^{\rm rr}P_t'\over P_t^2}.
 \tag{APR.15}
\]

The quotient formula `(APR.15)` is a classical almost-everywhere formula
under those hypotheses.  The negative-target branch has the analogous
moving negative-sign interface.  Crossings of \(J_n^{\rm rr}=0\), vanishing
of \(P_t\) or \(N_t\), and sharp sign interfaces require the quotient
selector itself to have locally finite BV and
\(e_{ab}D_t\Gamma_{ab}\) to be integrable.  One-sided traces or the
pointwise range condition alone do not supply either property.  At a
degenerate zero level, the composed delta term in `(APR.14)` is not asserted;
the direct distributional derivative of the sharp selector, obtained only
after testing the whole regularized expression `(APR.14a)`, is the governing
object.

This selector is algebraically backward.  It uses the value of the very
receiver current it is supposed to represent.  Its derivative contains
\((J_n^{\rm rr})'\), while \(D_tj\) contains the full pressure--viscous
relative acceleration through \(A_{ab}\).  Controlling further material
variation would require the next response, but it is not already a term in
\(D_tj\).  Neither term is paid by `(APR.10)`.

## 4. The exact pair identity returns the same target and complement

Whenever the BV and diagonal-limit hypotheses of `(CIF.35)--(CIF.37)` hold,
substitution of \(\Gamma_n^{\rm alg}\) gives, in material-time
distributions,

\[
 \boxed{
 \begin{aligned}
 J_n^{\rm rr}
 ={}&\frac d{dt}\iint\Gamma_n^{\rm alg}e_{ab}
 -\iint e_{ab}D_t\Gamma_n^{\rm alg}
 -2\iint\Gamma_n^{\rm alg}e_{ab}\sigma_{ab},\\
 \mathcal P_{1/2}-J_n^{\rm rr}
 ={}&\frac d{dt}\iint(1-\Gamma_n^{\rm alg})e_{ab}
 +\iint e_{ab}D_t\Gamma_n^{\rm alg}
 -2\iint(1-\Gamma_n^{\rm alg})e_{ab}\sigma_{ab}.
 \end{aligned}}
 \tag{APR.16}
\]

Adding the two lines cancels the moving-sign and target-derivative response
and returns the unmasked stock/action identity `(CIF.37)`.  The second line
equals the **aggregate** remainder in `(APR.12)`.  It does not partition that
remainder into old, datum-heat, low-output, exterior, and bounded-frequency
pieces, and it does not show that \(\Gamma_n^{\rm alg}\) was generated by the
six-assignment mask.

Thus an aggregate equality manufactured from `(APR.10)` is not the missing
receiver-compatible bridge.  It is an exact scalar restatement which imports
the target current into its own selector and then refunds the selector
derivative with the complement.

## 5. Exact verdict

The adaptive scalar branch has now been separated into its two actual
requirements:

\[
 \boxed{
 \begin{gathered}
 \text{bounded symmetric scalar selection range}
 =[-\iint j_-,\iint j_+],\\
 \text{instantaneous aggregate representation of }J_n^{\rm rr}
 \text{ by an arbitrary bounded scalar selector}
 \Longleftrightarrow -\iint j_-\le J_n^{\rm rr}\le\iint j_+,\\
 \text{selector manufactured from that range}
 =\text{target-circular moving-sign identity},\\
 \text{six-assignment receiver provenance}
 \neq\text{aggregate scalar equality alone}.
 \end{gathered}}
 \tag{APR.17}
\]

The second line of `(APR.17)` is pointwise in time.  It is not an
equivalence with the full receiver-compatible premise `(CIF.45)`, which also
requires material-time BV, response integrability, aggregate-complement
compatibility, and six-assignment provenance.

No estimate in this note proves the range condition `(APR.11)` for the
actual double-recent current.  Even if that condition is supplied, the
algebraic selector `(APR.13)` has no termwise mask provenance and its
material derivative recreates the current derivative and pair-sign
interface.  The exact pair/complement recombination then returns the same
open critical stock/action.  Hence no datum-finite bound for `(TIR.37a)` and
no MPP closure follows.
