# Thomas's full-signed-current positive pulse recombination and turn-down action boundary

**Date:** 2026-08-04

**Status:** proved noncanonical all-complement consequence inside Thomas
Birnie's one-fluid, pressure-explicit binomial/VPI reversible-intersection
method. The positive part is taken only after the two material-current signs
and every pair orientation have been recombined into the full signed critical
current. Every failed canonical last-half record then has an exact
alternative: the positive full current is already large at a record endpoint,
or the same record contains a completed positive full-current pulse. On the
completed branch, the datum-paid critical-height mass forces a quadratic
lower bound on the variance-refunded joined angular-excess and longitudinal
turn-down action.

This removes the pairwise common-mode defect of a \(P_+\)-only pulse and then
refunds the exact nonnegative radial variance which does not contribute to
the net signed current. It does **not** produce a datum-finite upper bound for
the remaining full joined response. In
particular, restoring all complements does not turn the weighted contraction
\(\iint e\alpha\chi\) into the unweighted relative-power contraction
\(\iint e\chi\) whose pressure part cancels globally. Thus the exact
normalized joined-record inequality in Section 6 remains unproved,
(TIR.37a) remains open, and this note does not close the MPP.
Although its endpoint and refunded-response coordinates are algebraically
smaller than the corresponding unrecombined or unrefunded coordinates,
(FSQ.37) is not a strict theorem reduction of (TIR.37a). At the canonical
failed-record quantifiers it remains a same-critical contrapositive boundary.

The physical order is Thomas's order:

1. the pulse or spring winding is read from the full signed radial current;
2. the imbalanced stretched-vortex response is the full angular turn;
3. the perfectly balanced no-wobble rip-cord leaves the joined longitudinal
   pressure--viscous response; and
4. all simultaneous expanding directions and all pair orientations are
   already restored before any positive part or global pressure statement is
   made.

No Fourier receiver, fixed cohort, independently prescribed source, regional
pressure part, endpoint intersection, alternate regularity criterion, or
separate fluid mechanism is introduced.

## 1. Recombine the one-fluid current before taking its positive part

Fix one smooth divergence-free finite-energy datum \(u_0\), one viscosity
\(\nu>0\), and its one maximal classical Navier--Stokes history on
\([0,T_*)\). Retain the primitive all-material-pair variables
\(e,\alpha,\beta,\mathfrak c,\chi\) from (PRT.1)--(PRT.13), and write

\[
 H(t):=\iint e_{ab}(t)\,da\,db
 ={1\over2}\|\Lambda^{1/2}u(t)\|_2^2.
 \tag{FSQ.1}
\]

The contracting and expanding pair currents are first recombined:

\[
 \boxed{
 \mathcal P_{1/2}(t)=P_+(t)-P_-(t)
 =-4\iint e\alpha\,da\,db.}
 \tag{FSQ.2}
\]

Define the full radial self-amplification and the full joined turn-down
response, with no pair sign or orientation removed,

\[
 \mathcal G_{\rm all}(t)
 :=5\iint e\alpha^2\,da\,db\ge0,
 \tag{FSQ.3}
\]

\[
 \mathcal T_{\rm all}(t)
 :=\iint e\bigl(|\beta|^2+\mathfrak c+2\alpha\chi\bigr)
 \,da\,db.
 \tag{FSQ.4}
\]

The exact primitive law (PRT.26)--(PRT.27) is therefore

\[
 \boxed{
 \mathcal P_{1/2}'
 =4\bigl(\mathcal G_{\rm all}-\mathcal T_{\rm all}\bigr).}
 \tag{FSQ.5}
\]

On compact preterminal intervals, (PRT.15a)--(PRT.15b) give local absolute
continuity of \(P_+\) and \(P_-\), hence of \(\mathcal P_{1/2}\). Only now
take the scalar positive part

\[
 Q(t):=[\mathcal P_{1/2}(t)]_+.
 \tag{FSQ.6}
\]

The ordinary (W^{1,1}) positive-part chain rule gives

\[
 Q'=\mathbf1_{\{\mathcal P_{1/2}>0\}}\mathcal P_{1/2}'
 \quad\hbox{a.e.}
 \tag{FSQ.7}
\]

There is no sign-interface charge: the differentiated scalar \(Q\) vanishes
where its sign changes. Put

\[
 \widehat{\mathcal G}
 :=\mathbf1_{\{\mathcal P_{1/2}>0\}}\mathcal G_{\rm all},
 \qquad
 \widehat{\mathcal T}
 :=\mathbf1_{\{\mathcal P_{1/2}>0\}}\mathcal T_{\rm all}.
 \tag{FSQ.8}
\]

Equations (FSQ.5)--(FSQ.8) give the exact full-complement positive-pulse law

\[
 \boxed{Q'=4(\widehat{\mathcal G}-\widehat{\mathcal T}).}
 \tag{FSQ.9}
\]

This is not the earlier pairwise selection. Indeed,

\[
 Q=[P_+-P_-]_+\le P_+,
 \tag{FSQ.10}
\]

and a large common mode \(P_+=P_->0\) contributes nothing to \(Q\).

The full self-amplification still has the sharp Riccati lower bound. From
(FSQ.2) and weighted Cauchy--Schwarz,

\[
 |\mathcal P_{1/2}|^2
 \le16H\iint e\alpha^2\,da\,db.
 \tag{FSQ.11}
\]

Equivalently, one may first use
\(P_++P_-=4\iint e|\alpha|\) and then
\(P_++P_-\ge|P_+-P_-|\). Consequently

\[
 \boxed{
 \widehat{\mathcal G}
 \ge {5Q^2\over16H}.}
 \tag{FSQ.12}
\]

Where \(H=0\), (FSQ.2) gives \(Q=0\), and the quotient is read as zero.

The inequality has a canonical exact remainder. For \(H>0\), define the
full-population radial mean

\[
 \bar\alpha(t):={1\over H}\iint e\alpha\,da\,db
 =-{\mathcal P_{1/2}\over4H},
 \tag{FSQ.12a}
\]

and put \(\bar\alpha=0\) when \(H=0\). The nonnegative internal radial
variance is

\[
 \mathcal V_{\rm rad}(t)
 :=5\iint e(\alpha-\bar\alpha)^2\,da\,db\ge0.
 \tag{FSQ.12b}
\]

Orthogonality to the weighted mean gives the exact decomposition

\[
 \boxed{
 \mathcal G_{\rm all}
 ={5|\mathcal P_{1/2}|^2\over16H}
 +\mathcal V_{\rm rad}.}
 \tag{FSQ.12c}
\]

The first term is the coherent winding of the signed current. The variance
term is internal radial self-amplification from simultaneous contraction and
expansion that cancels in the current itself. Moving that exact residual to
the response side defines the variance-refunded joined response

\[
 \mathcal C_{\rm all}
 :=\mathcal T_{\rm all}-\mathcal V_{\rm rad},
 \qquad
 \widehat{\mathcal C}
 :=\mathbf1_{\{\mathcal P_{1/2}>0\}}\mathcal C_{\rm all}.
 \tag{FSQ.12d}
\]

Then (FSQ.5) becomes, after the same full-current positive-part chain rule,

\[
 \boxed{
 Q'=4\left({5Q^2\over16H}-\widehat{\mathcal C}\right).}
 \tag{FSQ.12e}
\]

This is an exact identity, not an estimate. Moreover,

\[
 \widehat{\mathcal C}
 =\widehat{\mathcal T}
 -\mathbf1_{\{\mathcal P_{1/2}>0\}}\mathcal V_{\rm rad}
 \le\widehat{\mathcal T},
 \qquad
 [\widehat{\mathcal C}]_+
 \le[\widehat{\mathcal T}]_+.
 \tag{FSQ.12f}
\]

Thus the refund produces an algebraically narrower full-complement response
target without deleting any part of the one fluid. This pointwise ordering
does not by itself lower the critical order or supply an independent datum
budget. Nor does the regrouping identify \(\mathcal V_{\rm rad}\) with an
angular, pressure, or viscous response; it remains the exact internal radial
residual from (FSQ.12c).

## 2. A failed canonical record has an endpoint or completed full pulse

Assume the exact failure of (TIR.37a) and retain the canonical records
(MRN.4)--(MRN.6):

\[
 I_n=(s_n,t_n),\qquad
 \Delta_n=t_n-s_n,\qquad
 A_n=4^nA_0,
 \tag{FSQ.13}
\]

with

\[
 \int_{I_n}\mathcal P_{1/2}(t)\,dt={A_n\over2}.
 \tag{FSQ.14}
\]

Because the positive part is taken after full recombination,

\[
 M_n:=\int_{I_n}Q(t)\,dt
 \ge\int_{I_n}\mathcal P_{1/2}(t)\,dt
 ={A_n\over2}.
 \tag{FSQ.15}
\]

Set the actual full-current endpoint height

\[
 m_n:=\max\{Q(s_n),Q(t_n)\}.
 \tag{FSQ.16}
\]

If \(m_n\Delta_n\ge A_n/4\), then

\[
 \boxed{
 \max\{Q(s_n),Q(t_n)\}
 \ge {A_n\over4\Delta_n}.}
 \tag{FSQ.17}
\]

Otherwise \(m_n\Delta_n<A_n/4\). By (FSQ.15), \(Q\) exceeds \(m_n\)
somewhere in \(I_n\). Let

\[
 E_n:=\{t\in I_n:Q(t)>m_n\},\qquad
 a_n:=\inf E_n,\qquad b_n:=\sup E_n,
 \tag{FSQ.18}
\]

and put \(K_n=(a_n,b_n)\). Continuity gives

\[
 s_n\le a_n<b_n\le t_n,
 \qquad Q(a_n)=Q(b_n)=m_n.
 \tag{FSQ.19}
\]

Outside \(K_n\), \(Q\le m_n\), so this one completed aggregate full-current
pulse obeys

\[
 \boxed{
 \int_{K_n}Q(t)\,dt
 \ge M_n-m_n\Delta_n>{A_n\over4}.}
 \tag{FSQ.20}
\]

The \(K_n\subset I_n\) remain disjoint. They are subintervals of the same
physical history, not new material cohorts or independently counted events.

## 3. The datum-paid height mass forces full joined action

The kinetic-energy row gives, for every interval \(J\subset(0,T_*)\),

\[
 \boxed{
 B(J):=\int_JH(t)\,dt
 \le {\|u_0\|_2^2\over\sqrt{8\nu}}\sqrt{|J|}.}
 \tag{FSQ.21}
\]

This is a datum-finite budget derived before any terminal intersection is
assumed. Set \(B_n:=B(I_n)\). Every failed record has \(B_n>0\), since
\(H=0\) implies \(\mathcal P_{1/2}=0\).

On the completed branch, (FSQ.12e) and (FSQ.19) give

\[
 \boxed{
 \int_{K_n}\widehat{\mathcal C}(t)\,dt
 ={5\over16}\int_{K_n}{Q(t)^2\over H(t)}\,dt.}
 \tag{FSQ.22}
\]

Using weighted Cauchy--Schwarz, (FSQ.20), and (FSQ.21),

\[
 \begin{aligned}
 \int_{K_n}\widehat{\mathcal C}\,dt
 &={5\over16}\int_{K_n}{Q^2\over H}\,dt\\
 &\ge {5\over16}
 {\left(\int_{K_n}Q\,dt\right)^2
  \over\int_{K_n}H\,dt}\\
 &\ge {5A_n^2\over256B_n}\\
 &\ge {5\sqrt{8\nu}\,A_n^2
 \over256\|u_0\|_2^2\sqrt{\Delta_n}}.
 \end{aligned}
 \tag{FSQ.23}
\]

Thus the exact completed full-current consequence is

\[
 \boxed{
 \int_{K_n}\widehat{\mathcal C}(t)\,dt
 \ge {5A_n^2\over256B_n}
 \ge {5\sqrt{8\nu}\,A_n^2
 \over256\|u_0\|_2^2\sqrt{\Delta_n}}.}
 \tag{FSQ.24}
\]

This is a forced lower bound. It does not yet pay an upper bound on the
joined response.

## 4. The three physical pictures, with complements already restored

First, the pulse or spring winding is now \(Q\): positive net radial current
of the entire one-fluid material-pair population. Its coherent five-unit
winding action is \(5Q^2/(16H)\). The internal radial variance
\(\mathcal V_{\rm rad}\) has already been refunded. Equation (FSQ.22) says
that a completed net pulse must be turned down by an equal amount of
variance-refunded joined response action.

Second, the raw imbalanced stretched-vortex readout is the full nonnegative
angular response

\[
 \mathcal A_{\rm all}(t)
 :=\iint e|\beta|^2\,da\,db\ge0.
 \tag{FSQ.25}
\]

Keep the longitudinal pressure--viscous response joined and fully
recombined as the single scalar

\[
 \mathcal L_{\rm all}(t)
 :=\iint e(\mathfrak c+2\alpha\chi)\,da\,db.
 \tag{FSQ.26}
\]

The response that survives the internal radial-variance refund is the single
angular-excess scalar

\[
 \mathcal I_{\rm all}
 :=\mathcal A_{\rm all}-\mathcal V_{\rm rad},
 \qquad
 \mathcal C_{\rm all}
 =\mathcal I_{\rm all}+\mathcal L_{\rm all}.
 \tag{FSQ.26a}
\]

Only after these full integrals and their refund are formed define

\[
 \begin{aligned}
 \widehat{\mathcal I}^{+}
 &:=\mathbf1_{\{\mathcal P_{1/2}>0\}}[\mathcal I_{\rm all}]_+,\\
 \widehat{\mathcal I}^{-}
 &:=\mathbf1_{\{\mathcal P_{1/2}>0\}}[\mathcal I_{\rm all}]_-,\\
 \widehat{\mathcal L}^{+}
 &:=\mathbf1_{\{\mathcal P_{1/2}>0\}}[\mathcal L_{\rm all}]_+,\\
 \widehat{\mathcal L}^{-}
 &:=\mathbf1_{\{\mathcal P_{1/2}>0\}}[\mathcal L_{\rm all}]_-.
 \end{aligned}
 \tag{FSQ.27}
\]

Then, with no pairwise sign selection hidden,

 \[
 \boxed{
 \widehat{\mathcal C}
 =\widehat{\mathcal I}^{+}
 -\widehat{\mathcal I}^{-}
 +\widehat{\mathcal L}^{+}
 -\widehat{\mathcal L}^{-}.}
 \tag{FSQ.28}
\]

Equations (FSQ.24) and (FSQ.28) force

 \[
 \int_{K_n}
 (\widehat{\mathcal I}^{+}+\widehat{\mathcal L}^{+})\,dt
 \ge {5A_n^2\over256B_n},
 \tag{FSQ.29}
\]

and hence

 \[
 \boxed{
 \int_{K_n}\widehat{\mathcal I}^{+}\,dt
 \ge {5A_n^2\over512B_n}
 \quad\hbox{or}\quad
 \int_{K_n}\widehat{\mathcal L}^{+}\,dt
 \ge {5A_n^2\over512B_n}.}
 \tag{FSQ.30}
\]

The first branch of (FSQ.30) is therefore not merely a large raw angular
term. It is the positive aggregate angular excess after the simultaneous
internal radial variance has been paid. This is the exact imbalanced
stretched-vortex reading licensed by the refunded full-current identity.

Third, take an individual perfectly balanced no-wobble contracting chord in
this same full population. On \(\beta=0\) and \(\alpha<0\), (PRT.10) gives

\[
 \chi={\mathfrak c\over\alpha},
 \qquad
 \boxed{\mathfrak c+2\alpha\chi=3\mathfrak c.}
 \tag{FSQ.31}
\]

Thus its raw angular readout vanishes and the rip-cord response is three
units of the joined longitudinal relative acceleration. This is a pairwise
physical identity inside the already recombined population, not a license to
select only contracting pairs when evaluating the pressure field.

## 5. Why full recombination still does not pay the pressure--viscous term

For every material pair, pressure and viscosity enter the same relative
acceleration

\[
 A_{ab}=\int_0^1
 \left[-\nabla^2p+\nu\Delta\nabla u\right]
 (X_b+sR_{ab})R_{ab}\,ds.
 \tag{FSQ.32}
\]

All pair orientations and both radial-current signs were restored in
(FSQ.2)--(FSQ.5), before \(Q\) or any response sign was taken. The available
whole-field relative-power identity is

\[
 \boxed{
 2\iint e\chi\,da\,db
 =-\nu\|\Lambda^{3/2}u\|_2^2.}
 \tag{FSQ.33}
\]

But the joined current derivative contains

\[
 \mathcal L_{\rm all}
 =\iint e\mathfrak c\,da\,db
 +2\iint e\alpha\chi\,da\,db.
 \tag{FSQ.34}
\]

The factor \(\alpha\) in the second integral is the actual radial winding
rate of the same material chord. It cannot be removed from (FSQ.34) by
(FSQ.33), and neither its sign nor the sign of the full scalar
\(\mathcal L_{\rm all}\) is supplied by the kinetic-energy row. Dropping that
factor would replace the current response by a different physical quantity.

The obstruction is therefore exact: after the complements are honestly
restored and the internal radial variance is refunded, the positive net
imbalanced action and the positive aggregate longitudinal action in
(FSQ.30) still have no proved datum-finite upper budget. Full recombination
removes the false common-mode current; it does not manufacture a pressure
sign.

## 6. The remaining normalized full joined-record inequality

On the completed branch,

\[
 \int_{I_n}[\widehat{\mathcal C}(t)]_+\,dt
 \ge\int_{K_n}[\widehat{\mathcal C}(t)]_+\,dt
 \ge\int_{K_n}\widehat{\mathcal C}(t)\,dt.
 \tag{FSQ.35}
\]

Therefore (FSQ.17) and (FSQ.24) give the exact normalized alternative

\[
 \boxed{
 {\Delta_n\over A_n}
 \max\{Q(s_n),Q(t_n)\}\ge {1\over4}
 \quad\hbox{or}\quad
 {\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}[\widehat{\mathcal C}(t)]_+\,dt
 \ge {5\over256}.}
 \tag{FSQ.36}
\]

Accordingly, the following exact full-complement joined-record statement
would exclude every canonical failed prefix:

\[
 \boxed{
 {\Delta_n\over A_n}
 \max\{Q(s_n),Q(t_n)\}
 +{\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}[\widehat{\mathcal C}(t)]_+\,dt
 \longrightarrow0.}
 \tag{FSQ.37}
\]

The endpoint term is algebraically narrower than the \(P_+\)-only endpoint in
(CPR.34), by (FSQ.10), and it deletes exact contracting/expanding common
modes. Inside the full-complement law, the response term is also pointwise no
larger than the raw joined-response term, by (FSQ.12f), because the exact
nonnegative radial variance has been refunded. No domination of this
refunded response by the earlier selected \([\mathcal T_+]_+\) is claimed.

This algebraic narrowness does not make (FSQ.37) a strict theorem reduction
of (TIR.37a). Under the failed-record hypothesis, (FSQ.36) forces the sum in
(FSQ.37) to be at least \(\min\{1/4,5/256\}=5/256\) for every \(n\).
Therefore proving that same sum tends to zero at exactly these quantifiers is
a same-critical exclusion of the original failed prefix, not an
independently paid lower-order lemma. What is proved here is the exact
one-fluid full-recombination and variance-refund boundary with its datum-paid
denominator. What remains unproved is a new datum-finite numerator bound for
the positive refunded joined response in (FSQ.37). Without that bound,
(TIR.37a), the endpoint-spanning intersection, and the MPP remain open.
