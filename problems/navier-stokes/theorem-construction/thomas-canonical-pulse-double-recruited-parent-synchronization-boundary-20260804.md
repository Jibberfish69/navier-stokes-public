# Thomas's canonical pulse: double-recruited parent synchronization boundary

Status: proved exact same-history localization of every recurrent canonical
source-square pulse to a pressure-complete interaction whose two velocity
parents are nonlinear Duhamel descendants, followed by a diverging-frequency
square-synchronous parent lower bound. This note continues
'thomas-last-record-source-square-and-first-binomial-supplier-descent-20260804.md'
inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI reversible-
intersection method. It does not prove the remaining parent desynchronization
theorem, (TIR.37a), or the MPP.

The physical object never changes. Start with the one smooth datum \(u_0\),
one fixed viscosity \(\nu>0\), and its one maximal classical Navier--Stokes
history \(u\). The heat descendant and nonlinear Duhamel descendant below are
two exact ancestry rows of that same velocity field, not two fluids,
independently prescribed sources, or reinitialized packets. Every bilinear
output is projected only after its two ordered parents have been joined, so
the simultaneous pressure completion is retained.

The proved point is narrower than a no-Zeno theorem and is an exact ancestry
localization. Initial heat ancestry and every mixed heat/recruited interaction have
datum-finite square mass on the disjoint canonical pulse sets and therefore
vanish there. A failed prefix must consequently rebuild its source square
through two nonlinear descendants at once. Full output-frequency
recombination then forces one of those descendants to occupy a frequency
tending to infinity synchronously with the total recruited enstrophy. The
only unpaid statement is the decay of that exact same-history synchronized
parent product.

## 1. The source square is localized on the canonical pulse

Keep the notation and conclusions of (LSS.1)--(LSS.23). Thus

\[
 I_n=(s_n,t_n),\qquad A_n=4^nA_0,\qquad
 m_n=\int_{I_n}b(t)\,dt,
 \tag{DRP.1}
\]

where the \(I_n\) are disjoint, \(\sum_nm_n<\infty\), and \(m_n\to0\). Put

\[
 b(t)=\|\Lambda^{-1/2}Q(u(t))\|_2,
 \qquad
 d(t)=\|\Lambda^{3/2}u(t)\|_2,
 \tag{DRP.2}
\]

with

\[
 Q(u)=-\mathbb P((u\cdot\nabla)u),
 \qquad
 -\Delta p=\partial_i\partial_j(u_i u_j).
 \tag{DRP.3}
\]

The viscosity-matched pulse set is

\[
 \mathcal F_n
 =I_n\cap\left\{
 d>{A_n\over4m_n},\quad
 b\ge {\nu A_n\over8(A_n+H_0)}d
 \right\}.
 \tag{DRP.4}
\]

The proved record and size bounds are

\[
 \int_{\mathcal F_n}\mathcal P_{1/2}\,dt\ge {A_n\over8},
 \qquad
 |\mathcal F_n|
 \le {32(A_n+H_0)m_n^2\over\nu A_n^2}.
 \tag{DRP.5}
\]

The receiver action (LSS.11) and Cauchy--Schwarz now localize the source
square on the same set, not merely on the whole record:

\[
 \begin{aligned}
 {A_n\over8}
 &\le \int_{\mathcal F_n}\mathcal P_{1/2}\,dt\\
 &\le
 \left(\int_{\mathcal F_n}b^2\,dt\right)^{1/2}
 \left(\int_{I_n}d^2\,dt\right)^{1/2}.
 \end{aligned}
 \tag{DRP.6}
\]

Therefore

\[
 \boxed{
 \mathsf S_n^{\mathcal F}
 :=\int_{\mathcal F_n}b(t)^2\,dt
 \ge {\nu A_n^2\over64(A_n+H_0)}.}
 \tag{DRP.7}
\]

For all sufficiently large \(n\),

\[
 \mathsf S_n^{\mathcal F}\ge {\nu A_n\over128},
 \qquad
 |\mathcal F_n|\le {64m_n^2\over\nu A_n}.
 \tag{DRP.8}
\]

Thus the square and the signed current are synchronous on the very same
shrinking subset of the actual record.

## 2. Exact heat and nonlinear ancestry inside the one field

Let

\[
 h(t):=e^{-\nu t\Lambda^2}u_0,
 \qquad
 w(t):=u(t)-h(t)
 =\int_0^t e^{-\nu(t-r)\Lambda^2}Q(u(r))\,dr.
 \tag{DRP.9}
\]

This is the exact mild form of the original fixed-viscosity solution. In
particular, \(w\) is not a freely selected source profile: every part of it was
created earlier by the complete pressure-coupled nonlinear source of the same
history.

For ordered divergence-free parents define

\[
 \mathcal B(a,b):=\mathbb P((a\cdot\nabla)b).
 \tag{DRP.10}
\]

The full quadratic source has the exact recombination

\[
 \begin{aligned}
 Q(u)
 &=-\mathcal B(h+w,h+w)\\
 &=Q_{\rm ic}+Q_{\rm rr},
 \end{aligned}
 \tag{DRP.11}
\]

where

\[
 \begin{aligned}
 Q_{\rm ic}
 &:=-\mathcal B(h,h)-\mathcal B(h,w)-\mathcal B(w,h),\\
 Q_{\rm rr}
 &:=-\mathcal B(w,w).
 \end{aligned}
 \tag{DRP.12}
\]

The subscript \({\rm ic}\) means that at least one ordered parent contains the
initial heat descendant; \({\rm rr}\) means that both ordered parents are
recruited nonlinear descendants. Equation (DRP.11), rather than either term
separately, remains the physical source. The split is used only to prove that
one exact ancestry class is datum-paid before the full Hilbert output is read.

## 3. Every initial-containing interaction vanishes on recurrent pulses

For smooth divergence-free \(a,b\), the pressure-complete bilinear estimate is

\[
 \boxed{
 \|\Lambda^{-1/2}\mathcal B(a,b)\|_2
 \le C_{\mathcal B}
 \|\Lambda a\|_2\|\Lambda b\|_2.}
 \tag{DRP.13}
\]

Indeed, Leray projection is bounded on the relevant homogeneous Sobolev
space, and

\[
 \begin{aligned}
 \|\Lambda^{-1/2}\mathcal B(a,b)\|_2
 &\lesssim \|\Lambda^{1/2}(a\otimes b)\|_2\\
 &\lesssim
 \|a\|_6\|\Lambda^{1/2}b\|_3
 +\|\Lambda^{1/2}a\|_3\|b\|_6\\
 &\lesssim \|\Lambda a\|_2\|\Lambda b\|_2.
 \end{aligned}
 \tag{DRP.14}
\]

Set

\[
 Z(t):=\|\Lambda u(t)\|_2^2,
 \quad Z_h(t):=\|\Lambda h(t)\|_2^2,
 \quad Z_w(t):=\|\Lambda w(t)\|_2^2.
 \tag{DRP.15}
\]

The datum is smooth, so

\[
 Z_h(t)\le Z_h(0)=:Z_0,
 \qquad
 Z_w(t)\le2Z(t)+2Z_h(t).
 \tag{DRP.16}
\]

Equations (DRP.12)--(DRP.16) give

\[
 \|\Lambda^{-1/2}Q_{\rm ic}(t)\|_2^2
 \le C\left(Z_0^2+Z_0Z_w(t)\right).
 \tag{DRP.17}
\]

The kinetic-energy law pays

\[
 \int_0^{T_*}Z(t)\,dt
 \le {\|u_0\|_2^2\over2\nu}.
 \tag{DRP.18}
\]

Because the sets \(\mathcal F_n\subset I_n\) are disjoint, (DRP.16)--(DRP.18)
and \(|\mathcal F_n|\to0\) imply

\[
 \int_{\mathcal F_n}Z_w(t)\,dt\longrightarrow0.
 \tag{DRP.19}
\]

Consequently the entire initial-containing source class obeys

\[
 \boxed{
\mathsf S_n^{\rm ic}
:=\int_{\mathcal F_n}
\|\Lambda^{-1/2}Q_{\rm ic}(t)\|_2^2\,dt
\longrightarrow0.}
\tag{DRP.20}
\]

In fact the disjointness gives the stronger datum-finite total:

\[
 \boxed{
 \sum_n\mathsf S_n^{\rm ic}
 \le C\left(
 {Z_0\|u_0\|_2^2\over\nu}+
 Z_0^2T_*
 \right)<\infty.}
 \tag{DRP.20a}
\]

This is the no-recount payment available from the datum. The pure heat parent
and both ordered mixed interactions are disposed of together; no sign or
individual triad is assigned to them.

## 4. Both surviving parents must be nonlinearly recruited

Regard the fields in (DRP.11) as elements of the one Hilbert space

\[
 L^2(\mathcal F_n;\dot H^{-1/2}_x).
 \tag{DRP.21}
\]

The reverse triangle inequality retains every cancellation in the complete
source and gives

\[
 \left(\int_{\mathcal F_n}
 \|\Lambda^{-1/2}Q_{\rm rr}\|_2^2dt\right)^{1/2}
 \ge
 (\mathsf S_n^{\mathcal F})^{1/2}
 -(\mathsf S_n^{\rm ic})^{1/2}.
 \tag{DRP.22}
\]

By (DRP.7) and (DRP.20), for all sufficiently large \(n\),

\[
 \boxed{
 \mathsf S_n^{\rm rr}
 :=\int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal B(w,w)\|_2^2dt
 \ge {\nu A_n\over512}.}
 \tag{DRP.23}
\]

Thus an infinite recurrent canonical pulse cannot be supplied by untouched
datum heat ancestry, nor by one old parent stretching one newly generated
parent. Its complete output norm forces two parents that were both generated
by earlier nonlinear, pressure-complete evolution of the same field.

## 5. Full modal recombination forces a diverging high parent

Put \(E_0:=\|u_0\|_2^2\). The energy contraction for \(u\) and \(h\) gives

\[
 \|w(t)\|_2\le2E_0^{1/2}.
 \tag{DRP.24}
\]

The Fourier transform of the fully recombined recruited output satisfies

\[
 |\widehat{\mathcal B(w,w)}(\xi,t)|
 \le C|\xi|\|w(t)\otimes w(t)\|_1
 \le C E_0|\xi|.
 \tag{DRP.25}
\]

Therefore, for a sharp output cutoff \(P_{<K}\),

\[
 \boxed{
 \|\Lambda^{-1/2}P_{<K}\mathcal B(w,w)\|_2^2
 \le C_L E_0^2K^4.}
 \tag{DRP.26}
\]

Let \(c_{\rm rr}:=1/512\) and define the intrinsic output scale

\[
 K_n^4
 :={c_{\rm rr}\nu A_n
 \over4C_LE_0^2|\mathcal F_n|}.
 \tag{DRP.27}
\]

The zero-datum case cannot generate a failed record, so \(E_0>0\). Equations
(DRP.23), (DRP.26), and orthogonality of the output cutoffs give

\[
 \boxed{
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}P_{\ge K_n}\mathcal B(w,w)\|_2^2dt
 \ge {3c_{\rm rr}\over4}\nu A_n.}
 \tag{DRP.28}
\]

The pulse-size estimate (DRP.8) also gives the explicit divergence

\[
 \boxed{
 K_n
 \ge c
 \left({\nu A_n\over E_0m_n}\right)^{1/2}
 \longrightarrow\infty.}
 \tag{DRP.29}
\]

This cutoff was obtained after the whole ordered-parent convolution and the
Leray pressure completion were formed. It does not select one favorable triad
or discard modal interference.

Now set

\[
 w_n^{\rm hi}:=P_{\ge K_n/4}w,
 \qquad
 w_n^{\rm lo}:=P_{<K_n/4}w.
 \tag{DRP.30}
\]

Two low parents cannot reach an output frequency \(K_n\). Hence the exact
high-output identity is

\[
 P_{\ge K_n}\mathcal B(w,w)
 =P_{\ge K_n}\left[
 \mathcal B(w_n^{\rm hi},w)
 +\mathcal B(w_n^{\rm lo},w_n^{\rm hi})
 \right].
 \tag{DRP.31}
\]

With

\[
 Z_{w,\ge K_n/4}(t)
 :=\|\Lambda P_{\ge K_n/4}w(t)\|_2^2,
 \tag{DRP.32}
\]

the bilinear estimate (DRP.13) yields

\[
 \|\Lambda^{-1/2}P_{\ge K_n}\mathcal B(w,w)\|_2^2
 \le C_P Z_w(t)Z_{w,\ge K_n/4}(t).
 \tag{DRP.33}
\]

Combining (DRP.28) and (DRP.33) proves the promised square-synchronous
parent lower bound:

\[
 \boxed{
 \int_{\mathcal F_n}
 Z_w(t)Z_{w,\ge K_n/4}(t)\,dt
 \ge c_{\rm par}\nu A_n,
 \qquad K_n\to\infty,}
 \tag{DRP.34}
\]

where one may take \(c_{\rm par}=3/(2048C_P)\). Both factors belong to the same
Duhamel descendant \(w\); one is the complete recruited enstrophy and the
other is its actual diverging-frequency parent tail. Equation (DRP.34) is a
velocity-parent statement derived from the quadratic pressure-complete source,
not a scalar source prescribed after the fact.

## 6. The exact remaining ancestry-synchronization theorem

The exact remaining statement on this branch is

\[
 \boxed{
 \begin{aligned}
 &\texttt{CanonicalDoubleRecruitedParentDesynchronization.A}:\\
 &\qquad {1\over A_n}
 \int_{\mathcal F_n}
 Z_w(t)Z_{w,\ge K_n/4}(t)\,dt
 \longrightarrow0.
 \end{aligned}}
 \tag{DRP.35}
\]

Equation (DRP.34) contradicts (DRP.35), so this theorem would prove
'LastRecordSignedCoincidenceDecay.A', then (TIR.37a), and then activate the
already proved complete-intersection, endpoint, and restart chain.

This is an exact parent/ancestry localization of the original prefix, not a
proved reduction to a smaller critical payment:

1. it is asked only on the canonically extracted shrinking pulse sets;
2. every interaction containing the datum heat descendant is already removed
   by (DRP.20);
3. both remaining parents are the single history's Duhamel descendants;
4. one parent is restricted to the forced scale \(K_n\to\infty\); and
5. pressure and all modal interference were recombined before the estimate.

These restrictions identify the only surviving ancestry mechanism, but the
normalized synchronized square in `(DRP.35)` still has the critical size of
the failed record. It therefore cannot be counted as strict theorem progress
until a genuinely smaller datum-paid consequence is proved.

It is not yet paid. From the energy law one has only

\[
 \sum_n\int_{\mathcal F_n}Z_w(t)\,dt<\infty,
 \qquad
 0\le Z_{w,\ge K_n/4}\le Z_w.
 \tag{DRP.36}
\]

A finite first moment does not control the synchronized square in (DRP.35).
For example, the scalar concentration pattern with masses \(e_n=2^{-n}\),
heights \(L_n=A_n/e_n\), and durations \(e_n/L_n=e_n^2/A_n\) has

\[
 \sum_ne_n<\infty,
 \qquad
 \int L_n^2\mathbf 1_n\,dt=A_n.
 \tag{DRP.37}
\]

Equation (DRP.37) is only an estimate countertest. It is not asserted to be a
Navier--Stokes history.

## 7. Finite-equation stress-test sketch

There is also a standard finite-profile perturbative construction indicating
why kinetic energy, integrated enstrophy, and
\(L_t^1\dot H^{-1/2}\) source mass cannot by themselves pay a uniform number
of these pulses. The scaling identities below are exact. The final
far-translate decoupling is recorded as a stress-test sketch because the
forcing norms, stability constants, and separation choices are not quantified
here; it is not used as a proved input to `(DRP.34)` or `(DRP.35)`.

Choose a smooth divergence-free Schwartz datum \(U_0\) for which the cubic
critical current is positive at \(t=0\). Such data exist by a nondegenerate
three-wave interaction; changing \(U_0\) to \(-U_0\) reverses the current. A
sufficiently small multiple gives a global smooth decaying solution \(U\)
while retaining a short interval \(J=(a,b)\), \(0<a<b\), on which

\[
 \int_J\mathcal P_{1/2}[U]dt>0,
 \qquad
 \int_J\|\Lambda^{-1/2}Q(U)\|_2^2dt>0.
 \tag{DRP.38}
\]

The exact fixed-viscosity scaling

\[
 U_\lambda(x,t)=\lambda U(\lambda x,\lambda^2t)
 \tag{DRP.39}
\]

places the same pulse on \(J_\lambda=\lambda^{-2}J\) and gives

\[
 \begin{aligned}
 \int_{J_\lambda}\mathcal P_{1/2}[U_\lambda]dt
 &=\int_J\mathcal P_{1/2}[U]dt,\\
 \int_{J_\lambda}
 \|\Lambda^{-1/2}Q(U_\lambda)\|_2^2dt
 &=\int_J\|\Lambda^{-1/2}Q(U)\|_2^2dt,\\
 \|U_{\lambda,0}\|_2^2&=O(\lambda^{-1}),\\
 \int_0^\infty\|\nabla U_\lambda\|_2^2dt&=O(\lambda^{-1}),\\
 \int_0^\infty\|\Lambda^{-1/2}Q(U_\lambda)\|_2dt
 &=O(\lambda^{-1}).
 \end{aligned}
 \tag{DRP.40}
\]

For any fixed finite \(N\), choose

\[
 \lambda_j=LR^{N-j},
 \qquad R^2>{b\over a},
 \qquad 1\le j\le N.
 \tag{DRP.41}
\]

Then the \(J_{\lambda_j}\) are disjoint and ordered. Take finitely many widely
separated spatial translates of these scaled data and let \(u^{(N)}\) be the
exact Navier--Stokes solution generated by their sum. This is one datum and one
continuing pressure-coupled fluid history; no solution segments are pasted.

For completeness, the finite decoupling is direct. The sum of the translated
exact profiles has residual

\[
 \mathcal R
 =\mathbb P\sum_{\alpha\ne\beta}
 (U_\alpha\cdot\nabla)U_\beta.
 \tag{DRP.42}
\]

On the finite interval ending after the last selected pulse, translation of
Schwartz profiles makes \(\mathcal R\to0\) in every required Sobolev forcing
norm. The high-Sobolev energy estimate for the difference between the exact
solution and the profile sum, followed by Gronwall, makes that difference
arbitrarily small. Fractional Sobolev inner products of distinct translates
also tend to zero. Therefore, after choosing the separations sufficiently
large, the exact history \(u^{(N)}\) retains the positive current and source-
square lower bounds on all \(N\) disjoint windows. Choosing \(R\) large makes
the already-passed profile tails negligible on each later window, and
positivity near \(t=0\) prevents the not-yet-passed profiles from cancelling
the active one.

Finally, increasing the common factor \(L\) in (DRP.41) makes the total
kinetic energy, integrated enstrophy, and datum-paid source mass as small as
desired while leaving each normalized current and source-square pulse
unchanged. Arbitrary finite multiplicities may be included; orthogonality
makes current and source square grow with multiplicity, while the three paid
first-moment quantities retain their \(\lambda_j^{-1}\) factor.

This is a finite-chain stress-test sketch, not an infinite Zeno history and not
a counterexample to (DRP.35). Each finite profile has an initial ancestor, and
the datum's critical and higher Sobolev sizes record those ancestors. The
scaling calculation shows why a no-recurrence proof should not charge the pulse
count to kinetic energy, integrated enstrophy, or \(L_t^1\) source mass alone.
Until the decoupling constants are supplied, this observation remains a route
test rather than a theorem.
A closing proof must use the same-datum parent ancestry that distinguishes genuinely
recycled nonlinear descendants from finitely many initially supplied profiles.

## 8. Exact verdict

The square-synchronous no-free-Zeno content has been narrowed without leaving
Thomas's theory:

1. the signed viscosity-matched pulse itself carries source square of order
   \(\nu A_n\);
2. every pressure-complete source interaction containing the datum heat
   descendant has vanishing square mass on the disjoint pulse sets;
3. the surviving source is the fully recombined \(\mathcal B(w,w)\), so both
   parents were recruited earlier by the same nonlinear history;
4. a fixed fraction of that output lies above \(K_n\to\infty\); and
5. the same pulse forces the synchronized recruited-parent product (DRP.34).

The paid inputs do not prove (DRP.35). The finite-equation stress-test sketch
indicates why the three scalar first-moment budgets cannot do so. The remaining
lawful theorem is the canonical double-recruited parent desynchronization of
the one continuing history, or a stronger material-label theorem that implies
it. This note does not claim that theorem, (TIR.37a), or the MPP is closed.
