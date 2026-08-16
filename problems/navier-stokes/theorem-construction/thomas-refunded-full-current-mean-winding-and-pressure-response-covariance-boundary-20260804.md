# Thomas's refunded full-current mean winding and pressure-response covariance boundary

**Date:** 2026-08-04

**Status:** proved noncanonical full-field identity and first-response-row
upper bound inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.  After both radial-current signs and every
material-pair orientation are restored, the exact radial-variance refund in
`(FSQ.12b)--(FSQ.12e)` collapses the joined response to the evolution of one
weighted mean winding rate, its coherent square, and the complete viscous
cross-response.  The same calculation uses the global pressure cancellation
before centering the response and gives a sharp covariance refund.

The resulting positive numerator has the full-field upper bound

\[
 [\widehat{\mathcal C}]_+
 \le \mathbf 1_{\{\mathcal P_{1/2}>0\}}
 \left(2\mathcal K_{\rm ch}+{27\over10}\mathcal R_A\right),
 \tag{RMW.1}
\]

where \(\mathcal K_{\rm ch}\) is the complete critical chord-quartic row and
\(\mathcal R_A\) is the complete critical material-acceleration square.  In
Eulerian Sobolev coordinates this becomes

\[
 [\widehat{\mathcal C}]_+
 \le 2C_{\rm ch}\|\Lambda^{3/2}u\|_2^4
 +{27\over20}
 \left(\|\Lambda^{3/2}p\|_2^2
       +\nu^2\|\Lambda^{5/2}u\|_2^2\right).
 \tag{RMW.2}
\]

This is a genuine upper estimate for the exact `FSQ.37` response, not a
selected regional pressure sign.  It is not yet datum-finite: the right side
is precisely the critical chord square and the first pressure-explicit
material-acceleration row, neither of which is paid by the kinetic-energy
identity on a whole terminal interval.  Thus `(RMW.1)--(RMW.2)` sharpen the
numerator landing but do not prove `(FSQ.37)`, Thomas's original whole-terminal
promotion `(TIR.37)`, its later equivalent scalar interface `(TIR.37a)`, or
the MPP.

The physical order remains Thomas's order:

1. the pulse or spring winding is the positive mean radial rate of the full
   signed current;
2. the imbalanced stretched-vortex turn changes that same mean rate through
   the complete angular and longitudinal response;
3. the perfectly balanced no-wobble rip-cord is retained in the complete
   pressure--viscous material acceleration; and
4. all expanding directions, pair orientations, pressure, and viscosity are
   recombined before a response sign is taken.

No Fourier receiver, regional pressure part, fixed cohort, endpoint
intersection, independently prescribed acceleration, or alternate regularity
criterion is introduced.

## 1. The normalized all-pair population

Fix one smooth divergence-free finite-energy datum \(u_0\), one viscosity
\(\nu>0\), and its one maximal classical Navier--Stokes history on
\([0,T_*)\).  Use the primitive material-pair variables of `(PRT.1)--(PRT.13)`:

\[
 R=X(a,t)-X(b,t),\qquad
 V=u(X(a,t),t)-u(X(b,t),t),\qquad
 A=D_tu(X(a,t),t)-D_tu(X(b,t),t),
 \tag{RMW.3}
\]

\[
 \alpha={V\cdot R\over |R|^2},\qquad
 \beta={V\over |R|}-\alpha {R\over|R|},\qquad
 \mathfrak c={{R\over|R|}\cdot A\over |R|},\qquad
 \chi={V\cdot A\over|V|^2},
 \tag{RMW.4}
\]

and

\[
 e={1\over4\pi^2}{|V|^2\over|R|^4},\qquad
 H=\iint e={1\over2}\|\Lambda^{1/2}u\|_2^2.
 \tag{RMW.5}
\]

Products containing \(\chi\) are read without division as in `(PRT.11)`.
On a nonzero history \(H>0\).  Define the full-pair expectation

\[
 \langle f\rangle_e:={1\over H}\iint ef\,da\,db,
 \qquad
 \operatorname{Cov}_e(f,g)
 :=\langle fg\rangle_e-\langle f\rangle_e\langle g\rangle_e.
 \tag{RMW.6}
\]

The exact critical selection law and the complete global relative-power
identity are

\[
 {D_te\over e}=2\chi-4\alpha,
 \qquad
 2\iint e\chi\,da\,db
 =-\nu\mathscr D,
 \qquad
 \mathscr D:=\|\Lambda^{3/2}u\|_2^2.
 \tag{RMW.7}
\]

Therefore, with

\[
 m:=\langle\alpha\rangle_e,
 \qquad
 \bar\chi:=\langle\chi\rangle_e,
 \tag{RMW.8}
\]

one has

\[
 m=-{\mathcal P_{1/2}\over4H},
 \qquad
 \boxed{\bar\chi=-{\nu\mathscr D\over2H}.}
 \tag{RMW.9}
\]

The second equality is asserted only after the complete pair population and
the whole pressure field have been recombined.

For every smooth pair observable \(f\), differentiating its normalized
expectation along the same fixed label population gives

\[
 \boxed{
 {d\over dt}\langle f\rangle_e
 =\langle D_tf\rangle_e
 +\operatorname{Cov}_e(f,2\chi-4\alpha).}
 \tag{RMW.10}
\]

No moving material boundary occurs in `(RMW.10)`; the labels are the complete
volume-preserved population and the changing weight is exactly \(e\).

## 2. Exact collapse of the variance-refunded response

Apply `(RMW.10)` to \(f=\alpha\) and use

\[
 D_t\alpha=-\alpha^2+|\beta|^2+\mathfrak c.
 \tag{RMW.11}
\]

Writing

\[
 \operatorname{Var}_e(\alpha)
 :=\langle(\alpha-m)^2\rangle_e,
 \tag{RMW.12}
\]

gives the exact mean-rate equation

\[
 \boxed{
 m'=-m^2+\langle|\beta|^2+\mathfrak c\rangle_e
 +2\operatorname{Cov}_e(\alpha,\chi)
 -5\operatorname{Var}_e(\alpha).}
 \tag{RMW.13}
\]

The five units in `(RMW.13)` are the same five units in the primitive current
law: one comes from \(D_t\alpha\), and four come from evolution of the
critical pair weight.

The full joined response and exact radial variance refund are

\[
 \begin{aligned}
 \mathcal T_{\rm all}
 &=H\langle|\beta|^2+\mathfrak c+2\alpha\chi\rangle_e,\\
 \mathcal V_{\rm rad}
 &=5H\operatorname{Var}_e(\alpha),\\
 \mathcal C_{\rm all}
 &=\mathcal T_{\rm all}-\mathcal V_{\rm rad}.
 \end{aligned}
 \tag{RMW.14}
\]

Since

\[
 \langle\alpha\chi\rangle_e
 =m\bar\chi+\operatorname{Cov}_e(\alpha,\chi),
 \tag{RMW.15}
\]

equations `(RMW.9)`, `(RMW.13)`, and `(RMW.14)` give

\[
 \boxed{
 {\mathcal C_{\rm all}\over H}
 =m'+m^2+2m\bar\chi
 =m'+m^2-{\nu m\mathscr D\over H}.}
 \tag{RMW.16}
\]

This is the exact all-orientation response collapse.  The angular and
longitudinal pieces have not been discarded; together with their changing
critical weight, they are exactly the derivative \(m'\).  The pressure mean
has canceled globally, leaving the simultaneous viscous cross in the last
term.

Only now restrict to the positive full signed current.  Put

\[
 Q=[\mathcal P_{1/2}]_+,
 \qquad
 \lambda:={Q\over4H}.
 \tag{RMW.17}
\]

On the open set \(\{\mathcal P_{1/2}>0\}\), one has \(m=-\lambda\), so

\[
 \boxed{
 \widehat{\mathcal C}
 =H\left(-\lambda'+\lambda^2
 +{\nu\lambda\mathscr D\over H}\right).}
 \tag{RMW.18}
\]

Equivalently,

\[
 Q'=4\left(5H\lambda^2-\widehat{\mathcal C}\right),
 \tag{RMW.19}
\]

which is exactly `(FSQ.12e)`.  Thus `(RMW.18)` has not introduced a second
ODE; it derives the three physical readouts from the complete material-pair
law:

- \(H\lambda^2\) is the coherent spring-winding square;
- \(-H\lambda'\) is the actual relaxation of that same mean winding rate,
  including the imbalanced angular and longitudinal turn; and
- \(\nu\lambda\mathscr D\) is the globally recombined viscous cross retained
  by the balanced rip-cord response.

In particular,

\[
 [\widehat{\mathcal C}]_+
 \le \mathbf1_{\{\mathcal P_{1/2}>0\}}
 \left(H\lambda^2+H(\lambda')_-+\nu\lambda\mathscr D\right).
 \tag{RMW.20}
\]

None of the three terms on the right of `(RMW.20)` is datum-finite merely
from \(H\in L_t^2\).  The formula identifies rather than hides the required
same-history turn-down.

## 3. The pressure cancellation leaves a centered response covariance

The weighted relative-power term has the exact decomposition

\[
 \begin{aligned}
 2\iint e\alpha\chi
 &=2Hm\bar\chi
   +2H\operatorname{Cov}_e(\alpha,\chi)\\
 &=\boxed{{\nu\mathcal P_{1/2}\mathscr D\over4H}
   +2H\operatorname{Cov}_e(\alpha,\chi).}
 \end{aligned}
 \tag{RMW.21}
\]

Thus the complete pressure cancellation pays the coherent mean response.  It
does not assign a sign to the centered correlation between the instantaneous
radial rate and the complete pressure--viscous response.

The exact radial refund controls that correlation sharply.  Cauchy--Schwarz
and Young's inequality give

\[
 \boxed{
 2H\operatorname{Cov}_e(\alpha,\chi)
 -5H\operatorname{Var}_e(\alpha)
 \le {H\over5}\operatorname{Var}_e(\chi).}
 \tag{RMW.22}
\]

Consequently

\[
 \mathcal C_{\rm all}
 \le \mathcal A_{\rm all}
 +\iint e\mathfrak c
 +{\nu\mathcal P_{1/2}\mathscr D\over4H}
 +{H\over5}\operatorname{Var}_e(\chi),
 \tag{RMW.23}
\]

where

\[
 \mathcal A_{\rm all}:=\iint e|\beta|^2\ge0.
 \tag{RMW.24}
\]

Equation `(RMW.23)` preserves the physical alternatives.  The imbalanced
angular term is explicit, the balanced longitudinal term remains in
\(\iint e\mathfrak c\), and the only pressure cancellation used is the full
mean in `(RMW.21)`.

## 4. The centered remainder lands in the first material-acceleration row

Define the two complete nonnegative rows

\[
 \boxed{
 \begin{aligned}
 \mathcal K_{\rm ch}
 &:=\iint e(\alpha^2+|\beta|^2)\,da\,db
 ={1\over4\pi^2}\iint {|V|^4\over|R|^6}\,da\,db,\\
 \mathcal R_A
 &:= {1\over4\pi^2}\iint {|A|^2\over|R|^4}\,da\,db.
 \end{aligned}}
 \tag{RMW.25}
\]

They use the complete material-pair population.  Directly from their
definitions,

\[
 \mathcal A_{\rm all}\le\mathcal K_{\rm ch},
 \tag{RMW.26}
\]

\[
 \boxed{
 H\operatorname{Var}_e(\chi)
 \le\iint e\chi^2
 \le\mathcal R_A,}
 \tag{RMW.27}
\]

and Cauchy--Schwarz gives

\[
 \boxed{
 \left|\iint e\mathfrak c\right|
 \le \mathcal K_{\rm ch}^{1/2}\mathcal R_A^{1/2}.}
 \tag{RMW.28}
\]

For `(RMW.27)`, use

\[
 e\chi^2
 ={1\over4\pi^2}{(V\cdot A)^2\over|V|^2|R|^4}
 \le {1\over4\pi^2}{|A|^2\over|R|^4}.
 \tag{RMW.29}
\]

For `(RMW.28)`, pair
\(|V|^2/|R|^3\) with \((R/|R|)\cdot A/|R|^2\).  This is the complete
longitudinal acceleration; no regional pressure sign has been imposed.

Let

\[
 \mathscr A:=D_tu=-\nabla p+\nu\Delta u
 =-\nabla p-\nu\Lambda^2u.
 \tag{RMW.30}
\]

Volume preservation and the half-Laplacian pair formula give

\[
 \boxed{
 \mathcal R_A={1\over2}\|\Lambda^{1/2}\mathscr A\|_2^2.}
 \tag{RMW.31}
\]

The pressure gradient and the divergence-free viscous response are
orthogonal in the homogeneous \(H^{1/2}\) pairing.  Therefore

\[
 \boxed{
 \mathcal R_A
 ={1\over2}\left(
 \|\Lambda^{3/2}p\|_2^2
 +\nu^2\|\Lambda^{5/2}u\|_2^2\right).}
 \tag{RMW.32}
\]

This is a pressure-explicit Hodge identity for the one simultaneous material
acceleration, not a decomposition into independently acting fluids.

## 5. A clean upper bound for the exact `FSQ.37` numerator

On \(\{\mathcal P_{1/2}>0\}\), `(RMW.17)` and weighted Cauchy--Schwarz give

\[
 H\lambda^2={Q^2\over16H}
 \le\iint e\alpha^2\le\mathcal K_{\rm ch}.
 \tag{RMW.33}
\]

Fourier interpolation gives

\[
 \mathscr D^2
 \le 2H\|\Lambda^{5/2}u\|_2^2.
 \tag{RMW.34}
\]

Hence Young's inequality and `(RMW.32)--(RMW.34)` yield

\[
 \begin{aligned}
 \nu\lambda\mathscr D
 &\le {1\over2}H\lambda^2
      +{\nu^2\mathscr D^2\over2H}\\
 &\le {1\over2}\mathcal K_{\rm ch}
      +\nu^2\|\Lambda^{5/2}u\|_2^2\\
 &\le \boxed{{1\over2}\mathcal K_{\rm ch}+2\mathcal R_A.}
 \end{aligned}
 \tag{RMW.35}
\]

Take the positive part of `(RMW.23)`, use `(RMW.26)--(RMW.28)`, and then use
`(RMW.35)` and
\(\sqrt{\mathcal K_{\rm ch}\mathcal R_A}
\le(\mathcal K_{\rm ch}+\mathcal R_A)/2\).  The result is the announced
full-field estimate

\[
 \boxed{
 [\widehat{\mathcal C}]_+
 \le \mathbf1_{\{\mathcal P_{1/2}>0\}}
 \left(2\mathcal K_{\rm ch}+{27\over10}\mathcal R_A\right).}
 \tag{RMW.36}
\]

There is no hidden selected response in `(RMW.36)`: both rows on its right
are complete all-pair quantities and `(RMW.32)` retains the whole pressure--
viscous acceleration.

Finally, the Gagliardo representation and the homogeneous Sobolev/Besov
embedding give, for smooth decaying \(u\),

\[
 \mathcal K_{\rm ch}
 \le C_{\rm ch}\|u\|_{\dot B^{3/4}_{4,4}}^4
 \le C_{\rm ch}\|\Lambda^{3/2}u\|_2^4
 =C_{\rm ch}\mathscr D^2.
 \tag{RMW.37}
\]

One direct dyadic check is
\[
 \sum_j2^{3j}\|P_ju\|_4^4
 \lesssim\sum_j(2^{3j}\|P_ju\|_2^2)^2
 \le\left(\sum_j2^{3j}\|P_ju\|_2^2\right)^2.
\]
Combining `(RMW.32)`, `(RMW.36)`, and `(RMW.37)` proves `(RMW.2)`.

## 6. Exact canonical-record landing and unpaid row

On the canonical disjoint records of `(FSQ.13)--(FSQ.37)`, put

\[
 \Gamma_n:={\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}[\widehat{\mathcal C}(t)]_+\,dt.
 \tag{RMW.38}
\]

Equation `(RMW.2)` gives the exact sufficient upper landing

\[
 \boxed{
 \begin{aligned}
 \Gamma_n\le{}&
 {\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \Bigg[
 2C_{\rm ch}\int_{I_n}\mathscr D(t)^2\,dt\\
 &\hspace{21mm}
 +{27\over20}\int_{I_n}
 \left(\|\Lambda^{3/2}p\|_2^2
 +\nu^2\|\Lambda^{5/2}u\|_2^2\right)dt
 \Bigg].
\end{aligned}}
\tag{RMW.39}
\]

There is also an unconditional consequence on the response branch of
`(FSQ.36)`.  Define the normalized complete row actions

\[
 \begin{aligned}
 \mathfrak K_n
 &:={\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}\mathbf1_{\{\mathcal P_{1/2}>0\}}
 \mathcal K_{\rm ch}\,dt,\\
 \mathfrak R_n
 &:={\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}\mathbf1_{\{\mathcal P_{1/2}>0\}}
 \mathcal R_A\,dt.
 \end{aligned}
 \tag{RMW.39a}
\]

If the endpoint alternative in `(FSQ.36)` fails, then its response
alternative and `(RMW.36)` force

\[
 \boxed{2\mathfrak K_n+{27\over10}\mathfrak R_n
 \ge {5\over256}.}
 \tag{RMW.39b}
\]

Consequently every such record has the exact full-field dichotomy

\[
 \boxed{
 \mathfrak K_n\ge {5\over1024}
 \quad\hbox{or}\quad
 \mathfrak R_n\ge {25\over6912}.}
 \tag{RMW.39c}
\]

The first branch is the complete chord-quartic winding/imbalance action; the
second is the complete pressure--viscous material-acceleration action which
contains the balanced rip-cord.  This is a forced response-row alternative
inside the one history, not a claim that either row already has a datum
upper bound.

### 6.1 The coherent winding square cannot pay its own turn-down

On every completed pulse \(K_n\) from `(FSQ.18)--(FSQ.24)`, one has
\(Q>0\), and the weighted radial-mean decomposition gives

\[
 \boxed{
 \mathcal K_{\rm ch}
 =H\lambda^2+H\operatorname{Var}_e(\alpha)
  +\mathcal A_{\rm all}.}
 \tag{RMW.39d}
\]

The exact endpoint cancellation in `(FSQ.22)` is

\[
 \int_{K_n}\widehat{\mathcal C}\,dt
 =5\int_{K_n}H\lambda^2\,dt,
 \qquad
 \int_{K_n}H\lambda^2\,dt
 \ge {A_n^2\over256B_n}.
 \tag{RMW.39e}
\]

Since an integral is bounded above by the integral of its positive part,
`(RMW.36)` and `(RMW.39d)--(RMW.39e)` permit the coherent term
\(2\int H\lambda^2\) to be subtracted from both sides.  What remains is the
strict residual lower bound

\[
 \boxed{
 \begin{aligned}
 &2\int_{K_n}
 \left(H\operatorname{Var}_e(\alpha)+\mathcal A_{\rm all}\right)dt
 +{27\over10}\int_{K_n}\mathcal R_A\,dt\\
 &\hspace{32mm}\ge
 3\int_{K_n}H\lambda^2\,dt
 \ge {3A_n^2\over256B_n}.
 \end{aligned}}
 \tag{RMW.39f}
\]

Thus the coherent Riccati winding square cannot be recounted as the response
which turns that same winding down.  A completed pulse forces either radial
variance/angular imbalance of the complete pair population or the joined
pressure--viscous material-acceleration row.

This consequence becomes stronger, not weaker, under the datum-paid height
mass.  Put

\[
 h_n:=\left(\int_{I_n}H(t)^2\,dt\right)^{1/2}.
 \tag{RMW.39g}
\]

The \(I_n\) are disjoint and \(H\in L^2(0,T_*)\), so \(h_n\to0\).  Since
\(B_n\le\sqrt{\Delta_n}\,h_n\), `(RMW.39f)` implies

\[
 \boxed{
 {\sqrt{\Delta_n}\over A_n^2}
 \left[
 2\int_{K_n}
 \left(H\operatorname{Var}_e(\alpha)+\mathcal A_{\rm all}\right)dt
 +{27\over10}\int_{K_n}\mathcal R_A\,dt
 \right]
 \ge {3\over256h_n}\longrightarrow\infty.}
 \tag{RMW.39h}
\]

Equation `(RMW.39h)` is a forced higher-response concentration theorem.  It
does not give the missing upper payment: neither the transverse chord action
nor the first material-acceleration row is controlled on the whole terminal
interval by the kinetic-energy identity.

Thus the positive refunded response has been returned, without changing
Thomas's theory, to the first pressure-explicit acceleration row and the
complete chord-quartic row.  A datum-finite bound making the right side of
`(RMW.39)` tend to zero would discharge the response term in `(FSQ.37)`.

The kinetic-energy law pays
\(H\in L_t^2\) and \(\int\|\nabla u\|_2^2\), but it pays none of

\[
 \int\mathscr D^2,\qquad
 \int\|\Lambda^{3/2}p\|_2^2,\qquad
 \nu^2\int\|\Lambda^{5/2}u\|_2^2.
 \tag{RMW.40}
\]

The last two terms are exactly the pressure and viscous components of the
first material-acceleration row; the first is the square of the critical
viscous receiver.  Treating their preterminal finiteness as a whole-terminal
bound would assume the mixed-row control which the original promotion
`(TIR.37)` must establish.  The later `(TIR.37a)` is only an equivalent
scalar diagnostic for that promotion.  Consequently `(RMW.39)` is a verified
numerator upper reduction, not an independently paid theorem, a strict
reduction claim, or closure.

## 7. Verdict

The exact advance is

\[
 \boxed{
 \begin{gathered}
 {\mathcal C_{\rm all}\over H}
 =m'+m^2-{\nu m\mathscr D\over H},\\
 \widehat{\mathcal C}
 =H\left(-\lambda'+\lambda^2
 +{\nu\lambda\mathscr D\over H}\right),\\
 [\widehat{\mathcal C}]_+
 \le\mathbf1_{\{\mathcal P_{1/2}>0\}}
 \left(2\mathcal K_{\rm ch}+{27\over10}\mathcal R_A\right).
 \end{gathered}}
 \tag{RMW.41}
\]

The first line proves that the refunded response is the complete evolution of
the one full-population mean winding rate.  The second preserves Thomas's
pulse, imbalanced-vortex, and balanced-rip-cord readings in that order.  The
third is a true all-complement upper bound and lands its unpaid part exactly
in the first pressure-explicit material-acceleration row.  No datum-finite
whole-terminal bound for that row is proved here, so `(FSQ.37)`, the original
promotion `(TIR.37)`, its equivalent diagnostic `(TIR.37a)`, and the MPP
remain open.
