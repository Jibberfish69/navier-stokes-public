# Thomas's finite-ratio double-Duhamel recent-source heat-lag boundary

Status: proved noncanonical continuation of Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method. This note starts
from the exact joint sector proved in
`thomas-double-duhamel-finite-parent-ratio-high-output-overlap-boundary-20260804.md`
and pushes its forced high Duhamel parent backward through the heat equation.
It does not replace the parent convolution, separate pressure from transport,
or introduce an independent source history.

The result is an exact shrinking-lag theorem. On every failed canonical
record, a fixed part of the finite-parent-ratio, high-output source square has
one velocity parent generated from the complete nonlinear-pressure source
within a backward heat window \(\tau_n\to0\). An older high-frequency parent
is exponentially too small to supply that part. The resulting earlier-source
quantity has a fixed \(L_t^4\) pulse and a growing heat-weighted source-square
charge, even though its full first time moment is datum-finite and summable in
\(n\).

That is not a contradiction. The datum pays the first moment, not the fourth
moment or its synchronization with the current recruited enstrophy. The
backward source windows also need not have bounded overlap unless the pulse is
away from the left edge of its record. Thus this note proves another exact
same-history localization of the critical synchronization, not a strict
reduction, a datum-paid repeated-source count, `(TIR.37a)`, or the MPP.

## 1. The already proved joint sector

Retain the canonical pulse sets \(\mathcal F_n\subset I_n=(s_n,t_n)\),
record levels \(A_n=4^nA_0\), and the one-history mild split

\[
 h(t)=e^{-\nu t\Lambda^2}u_0,
 \qquad
 w(t)=u(t)-h(t)
 =\int_0^t e^{-\nu(t-r)\Lambda^2}Q(u(r))\,dr,
 \tag{RHL.1}
\]

where

\[
 Q(u)=-\mathbb P((u\cdot\nabla)u),
 \qquad
 b(t):=\|\Lambda^{-1/2}Q(u(t))\|_2.
 \tag{RHL.2}
\]

Put

\[
 Z_w(t):=\|\Lambda w(t)\|_2^2,
 \qquad
 e_n:=\int_{\mathcal F_n}Z_w(t)\,dt.
 \tag{RHL.3}
\]

The datum pays

\[
 \sum_ne_n<\infty,
 \qquad
 \int_0^{T_*}b(t)\,dt=:B_0<\infty.
 \tag{RHL.4}
\]

Let \(K_n\to\infty\) be the canonical high-output scale in `(DRP.27)` and
let \(L_n=N_n[8]\) be the finite parent-ratio roof in `(DRO.17)`. The exact
overlap source is

\[
 \mathcal Q_n^{\rm ov}
 :=P_{\ge K_n}\mathcal B_{\le L_n}(w,w),
 \qquad
 \mathcal B(a,c):=\mathbb P((a\cdot\nabla)c).
 \tag{RHL.5}
\]

Both ordered parents and the Leray/pressure projection are retained in
`(RHL.5)`. The proved overlap is

\[
 \boxed{
 \liminf_{n\to\infty}{1\over\nu A_n}
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal Q_n^{\rm ov}(t)\|_2^2dt
 \ge c_{\rm ov},
 \qquad
 c_{\rm ov}={ (\sqrt3-1)^2\over2048}>0.}
 \tag{RHL.6}
\]

Every contribution in `(RHL.5)` has output \(|k|\ge K_n\), parent ratio

\[
 d_{k,p}={|p|^2+|k-p|^2\over|k|^2}\le L_n,
 \tag{RHL.7}
\]

and two nonlinear Duhamel parents belonging to the same velocity history.

## 2. Designate one forced high parent without selecting a triad

Set

\[
 R_n:={K_n\over4},
 \qquad
 w_n^{\rm hi}:=P_{\ge R_n}w,
 \qquad
 w_n^{\rm lo}:=P_{<R_n}w.
 \tag{RHL.8}
\]

Two low parents cannot produce an output above \(K_n\). Hence, after the
complete finite-ratio convolution is formed,

\[
 \boxed{
 \mathcal Q_n^{\rm ov}
 =P_{\ge K_n}\left[
 \mathcal B_{\le L_n}(w_n^{\rm hi},w)
 +\mathcal B_{\le L_n}(w_n^{\rm lo},w_n^{\rm hi})
 \right].}
 \tag{RHL.9}
\]

Equation `(RHL.9)` is an identity. It designates one high parent in each
ordered contribution; it does not choose a favorable parent pair or remove
interference inside either output.

The modulus-convolution proof of the pressure-complete product estimate is
uniform under restriction to any measurable parent sector used here. There is
a constant \(C_{\rm sec}\), independent of \(n,K_n,L_n\), such that

\[
 \|\Lambda^{-1/2}\mathcal B_{\Omega}(a,c)\|_2
 \le C_{\rm sec}\|\Lambda a\|_2\|\Lambda c\|_2
 \tag{RHL.10}
\]

for the sectors used below. To verify the uniformity, take the output Leray
norm and then the modulus inside the restricted convolution:

\[
 |k|^{-1/2}|\widehat{\mathcal B_\Omega(a,c)}(k)|
 \le C|k|^{-1/2}
 \bigl(|\widehat a|*(|\cdot|\,|\widehat c|)\bigr)(k).
 \tag{RHL.10a}
\]

Let \(a^\#\) and \(c^\#\) have Fourier transforms
\(|\widehat a|\) and \(|\widehat c|\).  Fourier-side domination, the
embedding \(L^{3/2}\hookrightarrow\dot H^{-1/2}\), Hölder, and Sobolev give

\[
 \|\mathcal B_\Omega(a,c)\|_{\dot H^{-1/2}}
 \le C\|a^\#\Lambda c^\#\|_{3/2}
 \le C\|a^\#\|_6\|\Lambda c^\#\|_2
 \le C\|\Lambda a\|_2\|\Lambda c\|_2.
 \tag{RHL.10b}
\]

The sector mask only removes terms before the modulus bound, so the constant
does not depend on its boundary or on \(L_n\). The argument is componentwise,
and the Fourier matrix of the Leray projection has pointwise operator norm at
most one.

## 3. Exact old/recent split at a moving heat age

For a lag \(\tau>0\), define

\[
 \begin{aligned}
 w_\tau^{\rm old}(t)
 &:={\bf1}_{\{t>\tau\}}e^{-\nu\tau\Lambda^2}w(t-\tau),\\
 w_\tau^{\rm rec}(t)
 &:=\int_{(t-\tau)_+}^{t}
 e^{-\nu(t-r)\Lambda^2}Q(u(r))\,dr.
 \end{aligned}
 \tag{RHL.11}
\]

Then

\[
 w(t)=w_\tau^{\rm old}(t)+w_\tau^{\rm rec}(t)
 \tag{RHL.12}
\]

for every \(t\). Both terms are readings of the same Duhamel history. The
first is ancestry already present at time \(t-\tau\); the second is ancestry
created by the complete source during the last \(\tau\) units of physical
time.

The energy contraction gives

\[
 \|w(t)\|_2^2\le4E_0,
 \qquad E_0:=\|u_0\|_2^2.
 \tag{RHL.13}
\]

If \(2\nu\tau R_n^2\ge1\), the heat multiplier is decreasing above \(R_n\),
and therefore

\[
 \boxed{
 \|\Lambda P_{\ge R_n}w_\tau^{\rm old}(t)\|_2^2
 \le4E_0R_n^2e^{-2\nu\tau R_n^2}.}
 \tag{RHL.14}
\]

Decompose `(RHL.9)` by replacing its designated high parent with the high
part of `(RHL.12)`. Write

\[
 \begin{aligned}
 \mathcal Q_{n,\tau}^{\rm old}
 &:=P_{\ge K_n}\left[
 \mathcal B_{\le L_n}(P_{\ge R_n}w_\tau^{\rm old},w)
 +\mathcal B_{\le L_n}(w_n^{\rm lo},P_{\ge R_n}w_\tau^{\rm old})
 \right],\\
 \mathcal Q_{n,\tau}^{\rm rec}
 &:=P_{\ge K_n}\left[
 \mathcal B_{\le L_n}(P_{\ge R_n}w_\tau^{\rm rec},w)
 +\mathcal B_{\le L_n}(w_n^{\rm lo},P_{\ge R_n}w_\tau^{\rm rec})
 \right],\\
 \mathcal Q_n^{\rm ov}
 &=\mathcal Q_{n,\tau}^{\rm old}
 +\mathcal Q_{n,\tau}^{\rm rec}.
 \end{aligned}
 \tag{RHL.15}
\]

Using `(RHL.10)` on both ordered terms and then `(RHL.14)` gives

\[
 \boxed{
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal Q_{n,\tau}^{\rm old}\|_2^2dt
 \le C_{\rm old}E_0R_n^2e^{-2\nu\tau R_n^2}e_n,}
 \tag{RHL.16}
\]

where one may take \(C_{\rm old}=16C_{\rm sec}^2\).

## 4. The intrinsic shrinking heat lag

Choose

\[
 \eta_n:=\min\left\{{c_{\rm ov}\over8},{1\over n}\right\}
 \tag{RHL.17}
\]

and define

\[
 X_n:={C_{\rm old}E_0R_n^2e_n\over\eta_n\nu A_n},
 \qquad
 \boxed{
 \tau_n:={1+\log(1+X_n)\over2\nu R_n^2}.}
 \tag{RHL.18}
\]

This definition remains valid if \(e_n=0\). By construction,

\[
 \boxed{
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal Q_{n,\tau_n}^{\rm old}\|_2^2dt
 \le e^{-1}\eta_n\nu A_n=o(\nu A_n).}
 \tag{RHL.19}
\]

Moreover \(\tau_n\to0\). Indeed, \(e_n\) is bounded and `(DRP.29)` gives

\[
 R_n^2\ge c{\nu A_n\over E_0m_n},
 \qquad m_n\to0.
 \tag{RHL.20}
\]

Since \(A_n=4^nA_0\), the numerator in `(RHL.18)` grows at most
logarithmically in \(R_n\) and \(n\), while its denominator is \(R_n^2\).
Thus

\[
 \boxed{
 \tau_n=O\!\left({1+\log R_n+\log n\over\nu R_n^2}\right)
 \longrightarrow0.}
 \tag{RHL.21}
\]

Combining `(RHL.6)`, `(RHL.15)`, and `(RHL.19)` by the reverse triangle
inequality in \(L^2(\mathcal F_n;\dot H^{-1/2})\) proves, for all sufficiently
large \(n\),

\[
 \boxed{
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal Q_{n,\tau_n}^{\rm rec}(t)\|_2^2dt
 \ge {c_{\rm ov}\over8}\nu A_n.}
 \tag{RHL.22}
\]

This is the exact heat-lag consequence: a fixed part of the joined overlap
must use one parent generated within age at most \(\tau_n\). There is no positive lower bound on that parent's heat age. The source may be created
arbitrarily close to the interaction time.

## 5. Direct lower bound on earlier pressure-complete source ancestry

For \(s>0\) define the exact high-frequency heat kernel norm

\[
 \kappa_R(s):=\sup_{\rho\ge R}\rho^{3/2}e^{-\nu s\rho^2}.
 \tag{RHL.23}
\]

Only the high-frequency part of the earlier source can generate the
designated high parent. Define

\[
 b_R(t):=\|P_{\ge R}\Lambda^{-1/2}Q(u(t))\|_2,
 \qquad 0\le b_R(t)\le b(t).
 \tag{RHL.23a}
\]

The map from the pressure-complete source row \(\dot H^{-1/2}\) to the
velocity-parent row \(\dot H^1\) gives

\[
 \begin{aligned}
 \|\Lambda P_{\ge R_n}w_{\tau_n}^{\rm rec}(t)\|_2
 &\le\int_0^{\min\{\tau_n,t\}}
 \kappa_{R_n}(s)b_{R_n}(t-s)\,ds\\
 &=:\mathfrak A_n(t).
 \end{aligned}
 \tag{RHL.24}
\]

The elementary heat estimate

\[
 \kappa_R(s)
 \le C_\kappa\nu^{-3/4}s^{-3/4}
 e^{-\nu R^2s/2}
 \tag{RHL.25}
\]

shows both the parabolic \(3/2\)-derivative gap and its integrable but
singular terminal kernel. Applying `(RHL.10)` to the recent part of
`(RHL.15)` and using `(RHL.24)` yields

\[
 \|\Lambda^{-1/2}\mathcal Q_{n,\tau_n}^{\rm rec}(t)\|_2^2
 \le4C_{\rm sec}^2Z_w(t)\mathfrak A_n(t)^2.
 \tag{RHL.26}
\]

Consequently `(RHL.22)` proves the direct earlier-source synchronization

\[
 \boxed{
 \int_{\mathcal F_n}Z_w(t)\mathfrak A_n(t)^2dt
 \ge c_{\rm age}\nu A_n,
 \qquad
 c_{\rm age}:={c_{\rm ov}\over32C_{\rm sec}^2}>0.}
 \tag{RHL.27}
\]

This formula retains the pressure-complete high-source tail
\(b_{R_n}(t-s)\), its actual heat age, the current recruited receiver
\(Z_w(t)\), and the same canonical pulse.

The other Duhamel parent can also be pushed back to its complete source
ancestry without splitting its age. Put

\[
 \Phi(t):=C_\Phi\nu^{-3/4}
 \int_0^t s^{-3/4}b(t-s)\,ds.
 \tag{RHL.27a}
\]

The unrestricted version of `(RHL.24)` gives

\[
 Z_w(t)^{1/2}=\|\Lambda w(t)\|_2\le\Phi(t).
 \tag{RHL.27b}
\]

Thus `(RHL.27)` has the fully source-ancestry consequence

\[
 \boxed{
 \int_{\mathcal F_n}
 \big(\Phi(t)\mathfrak A_n(t)\big)^2dt
 \ge c_{\rm age}\nu A_n.}
 \tag{RHL.27c}
\]

Here \(\Phi\) is the full-age pressure-complete ancestry of the unrestricted
Duhamel parent, while \(\mathfrak A_n\) is the recent, high-frequency ancestry
of the designated parent. Equation `(RHL.27c)` makes both recruited parents'
source histories explicit. It still does not force the unrestricted parent
to be recent.

There is also an explicit source-square version. Put

\[
 k_n:=\int_0^{\tau_n}\kappa_{R_n}(s)\,ds.
 \tag{RHL.28}
\]

Equation `(RHL.25)` gives

\[
 k_n\le {C_k\over\nu\sqrt{R_n}}.
 \tag{RHL.29}
\]

Cauchy--Schwarz in heat age gives

\[
 \mathfrak A_n(t)^2
 \le k_n\int_0^{\min\{\tau_n,t\}}
 \kappa_{R_n}(s)b_{R_n}(t-s)^2\,ds.
 \tag{RHL.30}
\]

Therefore `(RHL.27)--(RHL.30)` imply

\[
 \boxed{
 \int_{\mathcal F_n}\int_0^{\min\{\tau_n,t\}}
 \kappa_{R_n}(s)Z_w(t)b_{R_n}(t-s)^2\,ds\,dt
 \ge {c_{\rm age}\over C_k}\nu^2A_n\sqrt{R_n}.}
 \tag{RHL.31}
\]

This is a direct positive source-square consequence of the present
Duhamel/sector estimate: an increasingly large
heat-weighted pressure-complete source square synchronized with the later
recruited enstrophy. It is not the datum-paid source mass in `(RHL.4)`.

## 6. The first moment is paid; the forced fourth moment is not

The record estimate in `(DRO.16)` gives

\[
 \int_{\mathcal F_n}Z_w(t)^2dt
 \le {16(A_n+H_0)^2\over\nu}+8Z_0^2|\mathcal F_n|.
 \tag{RHL.31a}
\]

Since \(A_n\to\infty\) and \(|\mathcal F_n|\to0\), the second term and
\(H_0\) are absorbed into a fixed \(C_Z\) for all large \(n\), giving

\[
 \int_{\mathcal F_n}Z_w(t)^2dt
 \le C_Z{A_n^2\over\nu}.
 \tag{RHL.32}
\]

Hölder in `(RHL.27)` therefore forces

\[
 \boxed{
 \int_{\mathcal F_n}\mathfrak A_n(t)^4dt
 \ge {c_{\rm age}^2\over C_Z}\nu^3.}
 \tag{RHL.33}
\]

Thus every failed record carries a fixed parabolic-ancestry fourth-moment
pulse.

For the high source tail put

\[
 M_n^{\rm hi}:=\int_0^{T_*}b_{R_n}(t)\,dt.
 \tag{RHL.33a}
\]

For every fixed preterminal time, smoothness gives
\(b_{R_n}(t)\to0\), while \(b_{R_n}\le b\in L_t^1\). Dominated convergence
therefore proves

\[
 M_n^{\rm hi}\longrightarrow0.
 \tag{RHL.33b}
\]

Fubini, `(RHL.29)`, and `(RHL.33a)` give the sharper first-moment bound

\[
 \int_0^{T_*}\mathfrak A_n(t)dt
 \le k_nM_n^{\rm hi}
 \le {C_kM_n^{\rm hi}\over\nu\sqrt{R_n}}.
 \tag{RHL.34}
\]

Since \(M_n^{\rm hi}\le B_0\), the explicit lower bound `(RHL.20)` and
\(A_n=4^nA_0\) imply

\[
 \sum_nR_n^{-1/2}<\infty.
 \tag{RHL.35}
\]

Hence even the ancestry readouts themselves have the datum-paid total first
moment

\[
 \boxed{
 \sum_n\int_0^{T_*}\mathfrak A_n(t)dt<\infty.}
 \tag{RHL.36}
\]

Equations `(RHL.33)` and `(RHL.36)` are compatible: a summable first moment
does not control recurrent fourth-moment spikes on shrinking sets. The heat
kernel in `(RHL.25)` is locally integrable, but its square-synchronized output
is not bounded by the datum's \(L_t^1\dot H^{-1/2}\) source row.

The exact endpoint mapping records the same boundary. For every
\(1\le q<4/3\), Young's inequality and `(RHL.25)` give

\[
 \|\mathfrak A_n\|_{L_t^q}
 \le C_q\nu^{-1/q}R_n^{3/2-2/q}M_n^{\rm hi},
 \tag{RHL.36a}
\]

while the endpoint fractional-integral estimate gives

\[
 \|\mathfrak A_n\|_{L_t^{4/3,\infty}}
 \le C\nu^{-3/4}M_n^{\rm hi}\longrightarrow0.
 \tag{RHL.36b}
\]

The lower bounds do not contradict `(RHL.36a)--(RHL.36b)`: weak
\(L^{4/3}\) and all subendpoint strong rows allow arbitrarily tall values on
shrinking sets. The missing bound is precisely a super-endpoint or
synchronized estimate, not another first-moment estimate.

A quantitative weighted-amplitude consequence is also immediate. On

\[
 \mathcal G_n:=\left\{t\in\mathcal F_n:
 \mathfrak A_n(t)^2\ge {c_{\rm age}\nu A_n\over2e_n}\right\},
 \tag{RHL.37}
\]

one has

\[
 \int_{\mathcal G_n}Z_w(t)\mathfrak A_n(t)^2dt
 \ge {c_{\rm age}\over2}\nu A_n.
 \tag{RHL.38}
\]

Thus the relevant ancestry amplitude diverges on the part carrying a fixed
fraction of the current response, because \(A_n/e_n\to\infty\). This is
concentration, not a finite-budget contradiction.

The fully ancestry-resolved version `(RHL.27c)` also yields

\[
 \mathop{\rm ess\,sup}_{t\in\mathcal F_n}
 \Phi(t)\mathfrak A_n(t)
 \ge\left({c_{\rm age}\nu A_n\over|\mathcal F_n|}\right)^{1/2}
 \ge c_*E_0K_n^2.
 \tag{RHL.38a}
\]

The last inequality is the defining identity `(DRP.27)` for \(K_n\), up to
its fixed constants. Both pressure-complete source ancestries therefore
become synchronously large on the same shrinking pulse even though the recent
high-source mass \(M_n^{\rm hi}\) tends to zero.

## 7. Exact record-edge versus disjoint interior fork

The moving source interval in `(RHL.24)` can reach before the left record
endpoint. Split

\[
 \begin{aligned}
 \mathcal F_n^{\rm edge}
 &:=\mathcal F_n\cap(s_n,s_n+\tau_n),\\
 \mathcal F_n^{\rm int}
 &:=\mathcal F_n\cap[s_n+\tau_n,t_n).
 \end{aligned}
 \tag{RHL.39}
\]

At least one of these two sets carries half of `(RHL.27)`.

On the edge branch, a fixed critical action is compressed into the first
\(\tau_n\to0\) portion of the record. This is an exact temporal-concentration
alternative; no datum row presently excludes it.

On the interior branch, every source time in `(RHL.24)` lies in the same
record interval:

\[
 t\in\mathcal F_n^{\rm int},\quad0<s<\tau_n
 \quad\Longrightarrow\quad t-s\in I_n.
 \tag{RHL.40}
\]

The \(I_n\) are disjoint, so this branch does not recount source mass across
different records. Nevertheless `(RHL.31)` contains \(b^2\), a singular heat
weight, and the later receiver \(Z_w\). The paid row is only
\(\sum_n\int_{I_n}b=m_1+m_2+\cdots<\infty\). It supplies no upper bound for
the joined action in `(RHL.31)`.

Therefore the exact fork is

\[
 \boxed{
 \begin{aligned}
 &\text{near-left-edge critical concentration}\quad\text{or}\\
 &\text{a disjoint-record, recent pressure-source-square/current}\
 &\hspace{34mm}\text{synchronization of size `(RHL.31)`.}
 \end{aligned}}
 \tag{RHL.41}
\]

Neither branch is a datum-paid repeated-source count.

## 8. The exact remaining recent-source candidate theorem

The exact remaining statement after the old high-frequency ancestry has been
removed is

\[
 \boxed{
 \begin{aligned}
 &\texttt{CanonicalFiniteRatioRecentDuhamelSourceDesynchronization.A}:\\
 &\qquad {1\over\nu A_n}
 \int_{\mathcal F_n}Z_w(t)\mathfrak A_n(t)^2dt
 \longrightarrow0.
 \end{aligned}}
 \tag{RHL.42}
\]

Equation `(RHL.27)` proves that `(RHL.42)` contradicts every failed prefix.
It has more localized ancestry support than the finite-ratio double-Duhamel
turn-down in `(DRO.38)`:

1. the output is already above \(K_n\to\infty\);
2. both parents are nonlinear descendants of the one history;
3. the parent ratio is already below \(L_n\simeq\varepsilon_n^{-2}\);
4. the older part of the designated high parent is already exponentially
   removed; and
5. only its pressure-complete source ancestry during a quantified shrinking
   heat lag remains.

These restrictions identify the surviving source age, but the normalized
quantity in `(RHL.42)` still carries the same critical order-one payment as
the failed record. It is therefore an exact candidate sufficient theorem,
not a genuinely smaller datum-paid theorem or a strict reduction.

What is not proved is `(RHL.42)`. The datum pays `(RHL.36)`, not the
critical synchronized square in `(RHL.27)`. Proving a terminal Duhamel
maximal estimate, a bounded-reuse law for the same source ancestry, or a
joined signed cancellation strong enough to imply `(RHL.42)` would discharge
this branch. None follows from the finite ratio or heat semigroup alone.

## 9. Exact verdict

The joint finite-ratio sector does force fresh ancestry:

\[
 \boxed{
 \begin{aligned}
 &\text{failed canonical record}\Longrightarrow
 \text{ high output with two Duhamel parents}\Longrightarrow\\
 &\text{one high parent recruited from }Q(u(t-s))
 \text{ at }0<s\le\tau_n,\qquad\tau_n\to0,\\
 &\int_{\mathcal F_n}Z_w\mathfrak A_n^2dt
 \ge c_{\rm age}\nu A_n.
 \end{aligned}}
 \tag{RHL.43}
\]

The old high-frequency ancestry has been rigorously evacuated. The survivor
is not a datum-paid repeated-source charge; it is the same continuing fluid
rebuilding a high Duhamel parent through an increasingly short terminal heat
window while the other recruited parent and current receiver are present.
The remaining object is
`CanonicalFiniteRatioRecentDuhamelSourceDesynchronization.A`. This note does not prove that theorem, `(TIR.37a)`, or the MPP.
