# Thomas's primitive positive-radial-current causal turn-down boundary

**Date:** 2026-08-04

**Status:** scoped exact primitive-pair advance inside Thomas Birnie's
one-fluid, pressure-explicit VPI/binomial method. The positive part of the
actual all-material-pair current has an exact causal derivative with no
moving-sign-interface charge. The resulting identity keeps pair turning,
the longitudinal pressure--viscous response, relative-power selection, and
all material labels in one history. Recombining both current signs gives an
exact future-weighted whole-record turn-down formula.

On every completed positive radial pulse, the joined turn-down response is
also bounded below by the square of the accumulated positive current divided
by a denominator which the kinetic-energy law pays on every finite time
interval. This is a quantitative necessity for turning the pulse down, not an
upper payment for the response and not a closure theorem.

The audit also proves a term-for-term response-completeness uniqueness
statement: among critical quadratic pair storages, the only one whose
acceleration contraction is the complete all-pair relative-power response at
every chord is, up to constant normalization, the full relative-energy
storage \(e_{ab}\). A radial projector
by itself retains a selected pressure response; restoring its transverse
complement returns exactly \(e_{ab}\), the critical endpoint, and the original
signed prefix.

These are real identities, but they do **not** prove the remaining datum bound
(TIR.37a) and do not close the MPP. The exact joined future-weighted response
exposed below is closure-equivalent to the same first signed prefix. If its
pieces are valued separately on viscosity-matched records, the missing
quantity is again the BRP inverse-scale moment \(\nu m_r/r^3\).

The physical order is fixed:

1. one smooth finite-energy datum produces one fixed-viscosity velocity and
   pressure history;
2. every material pair of that same history retains its real chord, relative
   velocity, turning, and complete relative acceleration;
3. the sign of the primitive pair current reads actual radial contraction or
   expansion and introduces no second carrier;
4. all pair orientations and both current signs are restored before the
   pressure--viscous response is assigned its global value; and
5. only the datum-paid finite-energy rows are then compared with the remaining
   critical response.

No Fourier receiver, three-label tensor, fixed cohort, regional pressure
part, independently prescribed source, or alternate regularity criterion is
used.

## 1. Primitive pair law and the actual radial current

Let \(X(a,t)\) be the volume-preserving material flow of one smooth decaying
Navier--Stokes solution. For two labels \(a,b\), write

\[
 R:=X(a,t)-X(b,t),
 \qquad
 V:=u(X(a,t),t)-u(X(b,t),t),
 \qquad
 A:=D_tu(X(a,t),t)-D_tu(X(b,t),t).
 \tag{PRT.1}
\]

Put

\[
 r:=|R|,
 \qquad n:=R/r,
 \qquad
 \alpha:={V\cdot R\over r^2},
 \qquad
 \beta:={V\over r}-\alpha n.
 \tag{PRT.2}
\]

Thus

\[
 \dot r=\alpha r,
 \qquad
 \dot n=\beta.
 \tag{PRT.3}
\]

Resolve the complete relative acceleration per unit chord as

\[
 {A\over r}=\mathfrak c\,n+\gamma,
 \qquad
 \mathfrak c:={n\cdot A\over r},
 \qquad
 \gamma:=(I-n\otimes n){A\over r}.
 \tag{PRT.4}
\]

The finite-chord VPI law (JEM.6) fixes \(A\) from the same pressure and
velocity field:

\[
 A=\int_0^1
 \left[-\nabla^2p+\nu\Delta\nabla u\right](X_b+sR,t)R\,ds.
 \tag{PRT.5}
\]

Direct differentiation gives

\[
 \boxed{
 D_t\alpha=-\alpha^2+|\beta|^2+\mathfrak c,}
 \tag{PRT.6}
\]

and

\[
 \boxed{
 D_t\beta=\gamma-2\alpha\beta-|\beta|^2n.}
 \tag{PRT.7}
\]

Define the complete critical pair storage and its primitive radial current by

\[
 e:={1\over4\pi^2}{|V|^2\over r^4},
 \qquad
 j:=-4e\alpha.
 \tag{PRT.8}
\]

The sign has a literal pair meaning:

\[
 j>0\quad\Longleftrightarrow\quad
 e>0\ \hbox{ and }\ \dot r<0.
 \tag{PRT.9}
\]

Thus the positive pair current already selects the actual radial contraction
of the chord. No auxiliary receiver projector is needed to decide that sign.
The storage still contains both longitudinal and transverse relative kinetic
energy, as the complete critical current requires.

On \(V\ne0\), let

\[
 \chi:={V\cdot A\over|V|^2}
 ={\alpha\mathfrak c+\beta\cdot\gamma
 \over\alpha^2+|\beta|^2}.
 \tag{PRT.10}
\]

At \(V=0\), the products below are read without division through

\[
 e\chi={1\over4\pi^2}{V\cdot A\over r^4}.
 \tag{PRT.11}
\]

The exact critical-weight selection law is

\[
 \boxed{{D_te\over e}=2\chi-4\alpha.}
 \tag{PRT.12}
\]

Equations (PRT.6) and (PRT.12) retain pair turning, radial response, and
the change of the critical carrier at the same time.

## 2. The positive radial pulse has no sign-interface charge

Differentiate the primitive current before introducing any record mask:

\[
\begin{aligned}
 D_tj
 &=-4\bigl((D_te)\alpha+eD_t\alpha\bigr)\\
 &=\boxed{
 4e\left(
 5\alpha^2-|\beta|^2-\mathfrak c-2\alpha\chi
 \right).}
\end{aligned}
\tag{PRT.13}
\]

The coefficient five has two exact sources. One unit is the pairwise
longitudinal Riccati term in (PRT.6) and four units are the critical
reweighting by the shrinking denominator in (PRT.12). The terms
\(-|\beta|^2\), \(-\mathfrak c\), and \(-2\alpha\chi\) are respectively the
angular turn, longitudinal pressure--viscous response, and response-driven
change of the critical pair weight. They are simultaneous parts of one
relative acceleration, not separate suppliers.

No derivative of \(\mathfrak c\) or \(\chi\) is hidden in (PRT.13): both are
instantaneous contractions of the same relative acceleration \(A\). For
comparison, if \(B:=D_tA\) and
\(\mathfrak d:=n\cdot B/r\), their next exact derivatives are

\[
 \boxed{D_t\mathfrak c=\beta\cdot\gamma+\mathfrak d-\alpha\mathfrak c,}
 \tag{PRT.13a}
\]

and, on \(V\ne0\),

\[
 \boxed{
 D_t\chi={|A|^2+V\cdot B\over|V|^2}-2\chi^2.}
 \tag{PRT.13b}
\]

Thus differentiating the turn-down response again would genuinely introduce
the next pressure-complete material response \(B\); (PRT.13) does not assume
that higher row or hide it inside the first derivative.

Now put

\[
 j_+:=\max(j,0)=4e(-\alpha)_+.
 \tag{PRT.14}
\]

On every symmetric diagonal/far truncation (APR.2) and every compact smooth
time interval, \(j\) is absolutely continuous at fixed material labels. The
ordinary positive-part chain rule gives

\[
 \boxed{D_tj_+=\mathbf1_{\{\alpha<0\}}D_tj}
 \tag{PRT.15}
\]

almost everywhere. There is no delta contribution from a crossing of
\(j=0\), because the differentiated quantity \(j_+\) itself vanishes at that
interface. This is different from multiplying the storage \(e\) by
\(\mathbf1_{\{j>0\}}\): in that construction \(e\) need not vanish when
\(j=0\), and (APR.14) correctly retains the moving-interface response.

The passage from the labelwise chain rule to the aggregate law does not
differentiate the moving truncation in (APR.2). On a compact preterminal
interval, write every product containing \(\chi\) without division as in
(PRT.11). Uniform smoothness and decay give

\[
 |j|\lesssim {|V|^3\over r^5},
 \qquad
 |D_tj|\lesssim {|V|^4\over r^6}
                 +{|V|^2|A|\over r^5}.
 \tag{PRT.15a}
\]

For \(r<1\), the chord formulas
\(V=\int_0^1\nabla u(X_b+sR)R\,ds\) and
\(A=\int_0^1\nabla D_tu(X_b+sR)R\,ds\), followed by Minkowski and
Hölder, bound the pair integral in (PRT.15a) by a constant times

\[
 \|\nabla u\|_3^3+\|\nabla u\|_4^4
 +\|\nabla u\|_4^2\|\nabla D_tu\|_2.
 \tag{PRT.15b}
\]

For \(r\ge1\), the kernels \(r^{-6}\) and \(r^{-5}\) are integrable, and
\(r^{-5}\mathbf1_{\{r\ge1\}}\in L^2\). Expanding the two differences and
using Young and Hölder bounds the far part by finite combinations of
\(\|u\|_2,\|u\|_3,\|u\|_4,\|D_tu\|_2\). These norms are uniformly finite on every
compact preterminal interval by the classical solution itself; no terminal
intersection is used. Volume preservation therefore gives
\(j,D_tj\in L^1_{\rm loc}(dt\,da\,db)\). Fubini and the ordinary
\(W^{1,1}\) positive-part chain rule therefore imply that \(P_+\) is locally
absolutely continuous and justify (PRT.19) almost everywhere. The same
argument applies to \(P_-\). Thus no unrecorded diagonal, far-boundary, or
sign-interface atom is being discarded.

Thus, on every compact preterminal interval, the diagonal and far limits
define

\[
 P_+(t):=\iint(j_{ab})_+\,da\,db,
 \tag{PRT.16}
\]

\[
 \mathcal G_+(t)
 :=5\iint_{\{\alpha<0\}}e\alpha^2\,da\,db,
 \tag{PRT.17}
\]

and the joined positive-pulse turn-down response

\[
 \mathcal T_+(t)
 :=\iint_{\{\alpha<0\}}
 e\left(|\beta|^2+\mathfrak c+2\alpha\chi\right)\,da\,db.
 \tag{PRT.18}
\]

Then (PRT.13)--(PRT.15) give the exact causal law

\[
 \boxed{P_+'=4(\mathcal G_+-\mathcal T_+).}
 \tag{PRT.19}
\]

Consequently, on any interval \(I=[t_0,t_1]\),

\[
 \boxed{
 \int_I\mathcal T_+\,dt
 =\int_I\mathcal G_+\,dt
 -{P_+(t_1)-P_+(t_0)\over4}.}
 \tag{PRT.20}
\]

In particular, every completed aggregate positive-current pulse with equal
endpoint values has exactly as much joined angular/pressure--viscous
turn-down action as its five-unit radial self-amplification action. This is
the causal turn-down statement that sign selection alone could not express.
It counts the fixed material-pair population once and has no separately
charged entry/exit term.

There is also a quantitative Riccati lower bound. Since
\(\iint_{\{\alpha<0\}}e\le H:=\iint e
={1\over2}\|\Lambda^{1/2}u\|_2^2\), Cauchy--Schwarz gives

\[
 \mathcal G_+
 \ge {5P_+^2\over16H}.
 \tag{PRT.21}
\]

Therefore

\[
 \boxed{
 P_+'\ge {5P_+^2\over4H}-4\mathcal T_+.}
 \tag{PRT.22}
\]

This inequality quantifies the physical alternatives. A large positive
radial current either continues its critical Riccati amplification, or the
same field supplies a comparably large joined turn-down response. It does
not say that the latter response is datum-finite.

The completed-pulse consequence is quantitative. Let
\(I=[t_0,t_1]\), suppose \(P_+(t_1)=P_+(t_0)\), and define

\[
 A_I:=\int_I P_+(t)\,dt.
 \tag{PRT.22a}
\]

Then (PRT.20), (PRT.21), and weighted Cauchy--Schwarz give

\[
 \boxed{
 \int_I\mathcal T_+\,dt
 =\int_I\mathcal G_+\,dt
 \ge {5\over16}{A_I^2\over\displaystyle\int_I H(t)\,dt}.}
 \tag{PRT.22b}
\]

If \(\int_IH=0\), then \(e=0\) and hence \(P_+=0\) almost everywhere on
\(I\), so (PRT.22b) is trivial. Otherwise its denominator is positive and is
already finite from the kinetic-energy row. Indeed, with

\[
 E_{\rm kin}:=\|u_0\|_2^2,
 \qquad Z(t):=\|\nabla u(t)\|_2^2,
 \tag{PRT.22c}
\]

Fourier Cauchy--Schwarz and the kinetic-energy identity give

\[
 \boxed{
 \begin{aligned}
 \sup_{t<T_*}\|u(t)\|_2^2&\le E_{\rm kin},
 &\int_0^{T_*}Z(t)\,dt&\le {E_{\rm kin}\over2\nu},\\
 H(t)^2
 &={1\over4}\|\Lambda^{1/2}u(t)\|_2^4
 \le {1\over4}\|u(t)\|_2^2 Z(t),\\
 \int_0^{T_*}H(t)^2\,dt
 &\le {E_{\rm kin}^2\over8\nu},\\
 \int_I H(t)\,dt
 &\le {E_{\rm kin}\over\sqrt{8\nu}}|I|^{1/2}.
 \end{aligned}}
 \tag{PRT.22d}
\]

Consequently every completed positive pulse obeys the fully datum-normalized
lower bound

\[
 \boxed{
 \int_I\mathcal T_+\,dt
 =\int_I\mathcal G_+\,dt
 \ge {5\sqrt{8\nu}\over
 16E_{\rm kin}|I|^{1/2}}\,A_I^2.}
 \tag{PRT.22e}
\]

This pays the denominator, not the response. It proves that a large completed
positive radial pulse forces a large joined turn-down action in the same
history; it does not bound the number or total size of such pulses from above.

## 3. Restoring both signs gives the exact whole-record turn-down row

Let

\[
 P_-(t):=\iint(j_{ab})_-\,da\,db.
 \tag{PRT.23}
\]

The same positive-part chain rule on the expanding sector gives

\[
 P_-'
 =-4\iint_{\{\alpha>0\}}
 e\left(5\alpha^2-|\beta|^2-\mathfrak c-2\alpha\chi\right)
 \,da\,db.
 \tag{PRT.24}
\]

Since the complete current is

\[
 \mathcal P_{1/2}=P_+-P_-,
 \tag{PRT.25}
\]

the two sign sectors recombine without a sign-interface term:

\[
 \boxed{
 \mathcal P_{1/2}'(t)=4\mathcal R_{\rm pair}(t),}
 \tag{PRT.26}
\]

where

\[
 \boxed{
 \mathcal R_{\rm pair}(t)
 :=\iint e\left(
 5\alpha^2-|\beta|^2-\mathfrak c-2\alpha\chi
 \right)\,da\,db.}
 \tag{PRT.27}
\]

For a \(W^{1,1}\) scalar function, its derivative vanishes almost everywhere
on its zero set. Hence the strict contracting and expanding sectors exhaust
the label-time derivative with no omitted \(\alpha=0\) contribution.
Equivalently, (PRT.26) follows directly by differentiating
\(\mathcal P_{1/2}=\iint j\) using (PRT.13).

For \(0\le t_0<T<T_*\), one further causal integration gives

\[
 \boxed{
 \begin{aligned}
 \int_{t_0}^{T}\mathcal P_{1/2}(t)\,dt
 ={}&(T-t_0)\mathcal P_{1/2}(t_0)\\
 &+4\int_{t_0}^{T}(T-t)\mathcal R_{\rm pair}(t)\,dt.
 \end{aligned}}
 \tag{PRT.28}
\]

No endpoint term has been dropped. Anchoring the same integration at the
current endpoint instead gives the equivalent identity

\[
 \boxed{
 \begin{aligned}
 \int_{t_0}^{T}\mathcal P_{1/2}(t)\,dt
 ={}&(T-t_0)\mathcal P_{1/2}(T)\\
 &-4\int_{t_0}^{T}(t-t_0)\mathcal R_{\rm pair}(t)\,dt.
 \end{aligned}}
 \tag{PRT.28a}
\]

Equation (PRT.28) is the primitive all-material-pair form of the statement
that a higher response must turn the pulse down. The future weight \(T-t\)
is causal: each response at time \(t\) contributes only to the remaining part
of that same record. No Fourier mask, reselection of material labels, or
count of separate events occurs.

It is also an honest boundary. The left side is exactly the first signed
critical prefix. Thus (PRT.28) is a new explicit physical-coordinate
identity, but a datum bound on its right side is not a theorem already paid by
finite energy.

## 4. Why a radial quadratic storage cannot gain the global response sign

The exact chord radial projector is

\[
 P_n:=n\otimes n.
 \tag{PRT.29}
\]

The longitudinal and transverse quadratic pair storages, omitting one common
positive normalization, are

\[
 E_{\parallel}:=r^{-4}|P_nV|^2,
 \qquad
 E_{\perp}:=r^{-4}|(I-P_n)V|^2,
 \qquad
 E_{\parallel}+E_{\perp}=r^{-4}|V|^2.
 \tag{PRT.30}
\]

Their acceleration contractions are respectively

\[
 2r^{-4}(P_nV)\cdot A,
 \qquad
 2r^{-4}((I-P_n)V)\cdot A.
 \tag{PRT.31}
\]

Neither contraction has a global pressure cancellation or viscous sign by
itself. Their sum is

\[
 2r^{-4}V\cdot A,
 \tag{PRT.32}
\]

which is precisely the complete response in (JEM.17)--(JEM.19).

This is not an accident of the two displayed storages. Consider any critical
quadratic pair density of the form

\[
 F_\Phi(R,V)=r^{-4}\Phi(n,V),
 \qquad
 \Phi(n,\lambda V)=\lambda^2\Phi(n,V),
 \qquad \Phi(n,0)=0,
 \tag{PRT.33}
\]

with \(\Phi\) continuously differentiable in \(V\). The homogeneity is the
critical Navier--Stokes scaling; the argument below in fact needs only the
zero value and differentiability. Its acceleration row is

\[
 r^{-4}\nabla_V\Phi(n,V)\cdot A.
 \tag{PRT.34}
\]

Suppose this row is required to recombine as one constant multiple of the
complete relative-power response for **every** \(n,V,A\):

\[
 \nabla_V\Phi(n,V)\cdot A=c_*V\cdot A.
 \tag{PRT.35}
\]

Since \(A\) is arbitrary in this algebraic test,

\[
 \nabla_V\Phi(n,V)=c_*V.
 \tag{PRT.36}
\]

Integration in \(V\), followed by \(\Phi(n,0)=0\), gives the uniqueness law

\[
 \boxed{
 \Phi(n,V)={c_*\over2}|V|^2.}
 \tag{PRT.37}
\]

Thus the full relative-energy pair storage is the unique member of this
critical class whose acceleration contraction agrees term-for-term with the
complete relative-power response at every chord. Any nontrivial angular or
radial reweighting changes the response receiver. Restoring its complementary
directions returns (PRT.37), hence the original storage \(e\) and its critical
endpoint \(H\). This pointwise classification does not exclude a different
whole-field null identity; it proves that no such gain comes merely from
reweighting the chord's quadratic radial/transverse storage.

This proves why the sharp positive-current identity (PRT.19) does not
manufacture a new finite-energy payment. It removes the moving sign-interface
charge because \(j_+=0\) on the interface, but its selected response
(PRT.18) no longer has the all-pair pressure cancellation (JEM.19).
Restoring the complementary sector gives (PRT.26)--(PRT.28), whose endpoint
is the original signed-prefix problem.

## 5. Exact comparison with BPT, MSF, JEM, and BRP

The four existing primitive results fit (PRT.19)--(PRT.37) without any
change of theory.

- **BPT:** full spatial orientation recombination acts on the signed current
  \(P_+-P_-\), not on \(P_+\) alone. Its infinitesimal balanced no-wobble star
  is favorable because the axial expansion outweighs the two transverse
  contractions. The decaying ABC history has
  \(\mathcal P_{1/2}=0\), while an open set of its balanced contracting chords
  gives \(P_+>0\). Hence the BPT turn-down is the restored negative-current
  companion, not a bound on positive radial variation.

- **MSF:** the unweighted chord equation has the exact angular term
  \(-|\beta|^2\) after integration. Once the actual critical pair weight is
  differentiated, four additional \(\alpha^2\) units and the
  \(-2\alpha\chi\) selection term appear, exactly as in (PRT.13). The
  coasting endpoint in (MSF.23) is therefore not removed by the sharper
  sign selection.

- **JEM:** \(e\) is the critical record weight, and only its complete all-pair
  response satisfies
  \(2\iint e\chi=-\nu\|\Lambda^{3/2}u\|_2^2\). Equations
  (PRT.33)--(PRT.37) prove the local uniqueness behind that fact. A selected
  radial response has no such sign until its complement is restored.

- **BRP:** on the exact balanced transverse coasting calibration,
  \(\beta=0\) and \(\mathfrak c=0\) while \(-\alpha\) grows. Thus no positive
  longitudinal-curvature bill can dominate (PRT.17) pointwise. In a
  finite-energy history the needed cancellation must come through the joined
  collar/exterior response. Valuing that response separately still requires
  the inverse length absent from the energy and Hardy-pressure masses.

The exact shear return in BPT further shows that one pair may contract and
re-expand. Formula (PRT.15) does not count a sign crossing twice, but
finite energy supplies no bound on how much positive radial variation the
same all-pair population may accumulate before the complement is restored.

## 6. Scaling and the exact remaining physical inequality

Under the fixed-viscosity Navier--Stokes scaling

\[
 u_\kappa(x,t)=\kappa u(\kappa x,\kappa^2t),
 \tag{PRT.38}
\]

the pair quantities scale as

\[
 r\mapsto\kappa^{-1}r,
 \quad V\mapsto\kappa V,
 \quad A\mapsto\kappa^3A,
 \quad
 \alpha,\beta,\chi\mapsto\kappa^2(\alpha,\beta,\chi),
 \quad
 \mathfrak c\mapsto\kappa^4\mathfrak c.
 \tag{PRT.39}
\]

The density \(e\) scales by \(\kappa^6\), the pair-label volume by
\(\kappa^{-6}\), the current by \(\kappa^2\), and
\(\mathcal R_{\rm pair}\) by \(\kappa^4\). Consequently both

\[
 \int_0^T\mathcal P_{1/2}(t)\,dt
 \quad\hbox{and}\quad
 \int_0^T(T-t)\mathcal R_{\rm pair}(t)\,dt
 \tag{PRT.40}
\]

are scale invariant. The causal derivative has not lowered the missing
order; the future-time weight restores exactly the inverse length gained by
the response.

The smallest exact primitive-pair inequality left by this audit is therefore

\[
 \boxed{
 \sup_{0<T<T_*}
 \int_0^T(T-t)
 \iint e_{ab}
 \left(
 5\alpha_{ab}^2-|\beta_{ab}|^2
 -\mathfrak c_{ab}-2\alpha_{ab}\chi_{ab}
 \right)
 \,da\,db\,dt
 \le C(u_0,\nu,T_*).}
 \tag{PRT.41}
\]

The datum supplies the finite initial term \(T\mathcal P_{1/2}(0)\) in
(PRT.28). Hence (PRT.41) implies (TIR.37a). Conversely, (PRT.28)
shows that (PRT.41) is closure-equivalent to (TIR.37a) up to that datum
term. It is the exact causal physical-coordinate form of the remaining
theorem, not a smaller paid replacement.

On a viscosity-matched no-recount record with radius \(r_j\), material volume
\(m_j\), duration comparable to \(r_j^2/\nu\), and contraction rate comparable
to \(\nu/r_j^2\), any attempt to bound the positive pieces of (PRT.41)
separately has the BRP size

\[
 \boxed{
 \sum_j\nu{m_j\over r_j^3}<\infty.}
 \tag{PRT.42}
\]

Energy and unweighted Hardy pressure pay only the corresponding
\(\sum_j m_j/r_j^2\). Thus no-recount, full orientation recombination, angular
turning, and pressure completion do produce the exact causal identity
(PRT.28), but none of the currently proved finite-energy rows supplies the
one remaining inverse-scale moment.

## 7. Verdict

The primitive radial return yields two exact advances:

\[
 \boxed{
 \begin{gathered}
 D_t(j_+)=\mathbf1_{\{j>0\}}D_tj
 \quad\text{with no moving-sign-interface charge},\\
 \mathcal P_{1/2}'
 =4\iint e(5\alpha^2-|\beta|^2-\mathfrak c-2\alpha\chi),\\
 \text{and the full relative-energy storage is the unique critical quadratic}\\
 \text{pair storage with the complete global pressure--viscous response.}
 \end{gathered}}
 \tag{PRT.43}
\]

The first line gives a clean no-recount positive-pulse law; the second gives
the causal whole-record turn-down identity; the third proves why a radial-only
storage cannot turn that identity into a datum payment. After the compensating
orientations and response complement are restored, the result is exactly
(PRT.41), equivalently the open first signed prefix. No MPP closure is
proved here. Every differentiation and all-pair limit above is taken on a
compact preterminal interval of the one classical history. Neither the
endpoint-spanning intersection nor (TIR.37a) is used to derive any PRT
identity.
