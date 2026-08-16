# Thomas's double-Duhamel finite-parent-ratio high-output overlap boundary

Status: proved exact overlap of the canonical double-recruited high-output
source square with the record-adapted finite parent-ratio prefix inside Thomas
Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method. This note joins
`thomas-canonical-pulse-double-recruited-parent-synchronization-boundary-20260804.md`
to
`thomas-record-pulse-reciprocal-parent-tail-evacuation-and-diagonal-depth-boundary-20260804.md`.
It does not prove the finite-ancestry turn-down isolated in Section 7,
`(TIR.37a)`, or the MPP.

The object is still the one fixed-viscosity Navier--Stokes history generated
by \(u_0\). The two Duhamel parents below are two ancestry readings of that
same velocity field. The parent-ratio split is made inside their complete
ordered convolution with the Leray/pressure projection retained at the
output. No parent, pressure term, or time segment is replaced by an
independent source.

The exact result is that three properties occur on one and the same
canonical pulse set:

1. both velocity parents are nonlinear Duhamel descendants;
2. the output frequency is at least the intrinsic \(K_n\to\infty\); and
3. their heat-rate ratio is below a finite record roof
   \(L_n\simeq\varepsilon_n^{-2}\).

A fixed fraction of the scale-critical source square remains in that joint
sector. The ratio roof therefore does not create a datum payment. It removes
the ultra-nonlocal parent tail and leaves the same critical synchronized
double-recruitment action.

## 1. Exact inputs on the same pulse

Use the canonical pulse sets \(\mathcal F_n\), record levels \(A_n\), and
normalized viscosities

\[
 \varepsilon_n=\frac{\nu}{\sqrt{A_n}},
 \qquad
 \overline H_n:=A_n+H_0.
 \tag{DRO.1}
\]

The record bounds are

\[
 H(t)\le\overline H_n,
 \qquad
 \int_{I_n}\|\Lambda^{3/2}u(t)\|_2^2\,dt
 \le\frac{\overline H_n}{\nu},
 \qquad
 t\in I_n.
 \tag{DRO.2}
\]

Retain the exact one-history ancestry split

\[
 h(t)=e^{-\nu t\Lambda^2}u_0,
 \qquad
 w(t)=u(t)-h(t)
 =\int_0^t e^{-\nu(t-r)\Lambda^2}Q(u(r))\,dr.
 \tag{DRO.3}
\]

With

\[
 \mathcal B(a,b)=\mathbb P((a\cdot\nabla)b),
 \tag{DRO.4}
\]

the double-recruited source is \(Q_{\rm rr}=-\mathcal B(w,w)\).
The initial-containing source class has already been paid:

\[
 \sum_n\int_{\mathcal F_n}
 \|\Lambda^{-1/2}Q_{\rm ic}(t)\|_2^2\,dt<\infty.
 \tag{DRO.5}
\]

Consequently the exact full-output double-recruited source satisfies

\[
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal B(w,w)\|_2^2\,dt
 \ge\frac{\nu A_n}{512}
 \tag{DRO.6}
\]

for all sufficiently large \(n\).

Let \(K_n\) be the intrinsic output cutoff in `(DRP.27)`. Then
\(K_n\to\infty\), and the fully recombined high-output square obeys

\[
 \boxed{
 \mathsf S_n^{\rm hi}
 :=\int_{\mathcal F_n}
 \|\Lambda^{-1/2}P_{\ge K_n}\mathcal B(w,w)\|_2^2\,dt
 \ge c_{\rm hi}\nu A_n,
 \qquad
 c_{\rm hi}:=\frac3{2048}.}
 \tag{DRO.7}
\]

## 2. Pressure-complete parent-ratio split of the recruited source

For \(k\ne0\), \(q=k-p\), put

\[
 d_{k,p}:=\frac{|p|^2+|q|^2}{|k|^2}.
 \tag{DRO.8}
\]

The ordered parent density for \(\mathcal B(w,w)\) is

\[
 \Theta_{ww}(k,p)
 :=ic_{\mathcal F}\mathbb P_k
 \left[(\widehat w(p)\cdot q)\widehat w(q)\right].
 \tag{DRO.9}
\]

For \(L\ge1\), define the two joined sectors

\[
 \begin{aligned}
 \widehat{\mathcal B_{\le L}(w,w)}(k)
 &:=\int_{\{d_{k,p}\le L\}}\Theta_{ww}(k,p)\,dp,\\
 \widehat{\mathcal B_{>L}(w,w)}(k)
 &:=\int_{\{d_{k,p}>L\}}\Theta_{ww}(k,p)\,dp.
 \end{aligned}
 \tag{DRO.10}
\]

Thus

\[
 \mathcal B(w,w)=\mathcal B_{\le L}(w,w)+\mathcal B_{>L}(w,w).
 \tag{DRO.11}
\]

Both ordered parents and the output Leray projection are present in
`(DRO.10)`. This is a decomposition of one pressure-complete source, not a separation of pressure from transport.

Because \(p\cdot\widehat w(p)=0\),
\(\widehat w(p)\cdot q=\widehat w(p)\cdot k\). The hard-ratio version of the
RPR incompressibility estimate therefore gives

\[
 \boxed{
 \|\Lambda^{-1/2}\mathcal B_{>L}(w,w)(t)\|_2
 \le\frac{C_R}{\sqrt L}Z_w(t),
 \qquad
 Z_w(t):=\|\Lambda w(t)\|_2^2.}
 \tag{DRO.12}
\]

## 3. The record roof evacuates the recruited parent tail in square

Put

\[
 Z(t):=\|\Lambda u(t)\|_2^2,
 \qquad
 Z_h(t):=\|\Lambda h(t)\|_2^2,
 \qquad
 Z_h(t)\le Z_0.
 \tag{DRO.13}
\]

Since \(Z_w\le2Z+2Z_h\),

\[
 Z_w^2\le8Z^2+8Z_0^2.
 \tag{DRO.14}
\]

The critical interpolation in the same record gives

\[
 Z^2
 \le2H\|\Lambda^{3/2}u\|_2^2
 \le2\overline H_n\|\Lambda^{3/2}u\|_2^2.
 \tag{DRO.15}
\]

Equations `(DRO.2)`, `(DRO.14)`, and `(DRO.15)` prove

\[
 \boxed{
 \int_{\mathcal F_n}Z_w(t)^2\,dt
 \le\frac{16\overline H_n^2}{\nu}
 +8Z_0^2|\mathcal F_n|.}
 \tag{DRO.16}
\]

Use the fixed RPR comparison factor \(h_\ast=8\) and define

\[
 \boxed{
 L_n:=N_n[8]
 =\max\left\{1,
 \left\lceil
 \frac{32768C_R^2\overline H_n^3}{\nu^2A_n^2}
 \right\rceil\right\}.}
 \tag{DRO.17}
\]

For \(A_n\ge H_0\),

\[
 L_n\simeq C_R^2\varepsilon_n^{-2},
 \qquad
 L_n\longrightarrow\infty.
 \tag{DRO.18}
\]

Let

\[
 \mathsf S_n^{>}
 :=\int_{\mathcal F_n}
 \|\Lambda^{-1/2}P_{\ge K_n}
 \mathcal B_{>L_n}(w,w)\|_2^2\,dt.
 \tag{DRO.19}
\]

Output projection is contractive, so `(DRO.12)` and `(DRO.16)` give

\[
 \begin{aligned}
 \mathsf S_n^{>}
 &\le\frac{C_R^2}{L_n}
 \left(
 \frac{16\overline H_n^2}{\nu}
 +8Z_0^2|\mathcal F_n|
 \right)\\
 &\le\frac{\nu A_n^2}{2048\overline H_n}
 +\frac{8C_R^2Z_0^2|\mathcal F_n|}{L_n}.
 \end{aligned}
 \tag{DRO.20}
\]

Since \(A_n\to\infty\), \(|\mathcal F_n|\to0\), and \(L_n\ge1\),

\[
 \boxed{
 \limsup_{n\to\infty}
 \frac{\mathsf S_n^{>}}{\nu A_n}
 \le\frac1{2048}.}
 \tag{DRO.21}
\]

Thus the same record-dependent roof that evacuated the signed RPR tail also
evacuates all but a strictly subdominant part of the double-recruited
high-output source square.

## 4. The exact three-way overlap

Define the joined overlap source

\[
 \mathcal Q_n^{\rm ov}
 :=P_{\ge K_n}\mathcal B_{\le L_n}(w,w).
 \tag{DRO.22}
\]

In the Hilbert space
\(L^2(\mathcal F_n;\dot H^{-1/2}_x)\), `(DRO.11)` gives

\[
 \|\Lambda^{-1/2}\mathcal Q_n^{\rm ov}\|_{L^2_tL^2_x}
 \ge
 (\mathsf S_n^{\rm hi})^{1/2}
 -(\mathsf S_n^{>})^{1/2}.
 \tag{DRO.23}
\]

Equations `(DRO.7)` and `(DRO.21)` therefore prove

\[
 \boxed{
 \liminf_{n\to\infty}
 \frac1{\nu A_n}
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}\mathcal Q_n^{\rm ov}(t)\|_2^2\,dt
 \ge c_{\rm ov},}
 \tag{DRO.24}
\]

where the explicit positive constant is

\[
 \boxed{
 c_{\rm ov}:=
 \frac{(\sqrt3-1)^2}{2048}>0.}
 \tag{DRO.25}
\]

Every contribution inside \(\mathcal Q_n^{\rm ov}\) simultaneously has:

\[
 \boxed{
 \begin{gathered}
 \text{two nonlinear Duhamel parents }w,w,\\
 |k|\ge K_n\longrightarrow\infty,\\
 \frac{|p|^2+|k-p|^2}{|k|^2}\le L_n
 \simeq C_R^2\varepsilon_n^{-2}.
 \end{gathered}}
 \tag{DRO.26}
\]

The triangle identity \(k=p+q\) further gives

\[
 \max\{|p|,|q|\}\ge\frac{|k|}{2}\ge\frac{K_n}{2},
 \qquad
 |p|,|q|\le\sqrt{L_n}|k|.
 \tag{DRO.27}
\]

Only one parent is forced to be high in frequency. Both are forced to be
nonlinear Duhamel descendants. Those are different statements and are not
merged here.

## 5. The overlap still lands on the critical synchronized square

The support fact in `(DRO.27)` and the pressure-complete bilinear estimate
give

\[
 \|\Lambda^{-1/2}\mathcal Q_n^{\rm ov}(t)\|_2^2
 \le C_P Z_w(t)Z_{w,\ge K_n/4}(t),
 \tag{DRO.28}
\]

where

\[
 Z_{w,\ge K_n/4}
 :=\|\Lambda P_{\ge K_n/4}w\|_2^2.
 \tag{DRO.29}
\]

Combining `(DRO.24)` and `(DRO.28)` yields

\[
 \boxed{
 \liminf_{n\to\infty}
 \frac1{\nu A_n}
 \int_{\mathcal F_n}
 Z_w(t)Z_{w,\ge K_n/4}(t)\,dt
 \ge\frac{c_{\rm ov}}{C_P}.}
 \tag{DRO.30}
\]

In particular,

\[
 \liminf_{n\to\infty}
 \frac1{\nu A_n}\int_{\mathcal F_n}Z_w(t)^2\,dt
 \ge\frac{c_{\rm ov}}{C_P}.
 \tag{DRO.31}
\]

The datum pays only the first moments

\[
 \sum_n\int_{\mathcal F_n}Z_w(t)\,dt<\infty,
 \qquad
 0\le Z_{w,\ge K_n/4}\le Z_w.
 \tag{DRO.32}
\]

It does not pay the synchronized product in `(DRO.30)`. The parent-ratio
roof has removed the BCR nonuniform tail, but the remaining overlap is still
the scale-critical time-square/source-square action.

This boundary is exact under fixed-viscosity Navier--Stokes scaling. The
ancestry split scales as

\[
 h_\lambda(x,t)=\lambda h(\lambda x,\lambda^2t),
 \qquad
 w_\lambda(x,t)=\lambda w(\lambda x,\lambda^2t).
 \tag{DRO.33}
\]

Thus \(d_{k,p}\) is invariant, \(K_n\) scales covariantly,
\(Z_w\) scales by \(\lambda\), and

\[
 \int Z_wZ_{w,\ge K_n/4}\,dt
 \tag{DRO.34}
\]

is invariant, while \(\int Z_wdt\) scales by \(\lambda^{-1}\). No estimate
using only kinetic energy, integrated enstrophy, or the \(L_t^1\) source mass
can turn `(DRO.30)` into a contradiction.

## 6. What double Duhamel recruitment does not yet pay

Bilinearity and `(DRO.3)` give the exact ancestry formula

\[
 \begin{aligned}
 \mathcal B_{\le L}(w,w)(t)
 =\int_0^t\int_0^t
 \mathcal B_{\le L}\big(
 e^{-\nu(t-r)\Lambda^2}Q(u(r)),
 e^{-\nu(t-s)\Lambda^2}Q(u(s))
 \big)\,dr\,ds.
 \end{aligned}
 \tag{DRO.35}
\]

Both parents were generated by the same earlier pressure-complete source.
But `(DRO.35)` gives no positive lower bound on either heat age
\(t-r\) or \(t-s\). Source created arbitrarily close to \(t\) has no
uniform smoothing time, while source inherited from much earlier may be
reused by the current interaction.

At the left record endpoint, this becomes the exact finite-ancestry split

\[
 \begin{aligned}
 w(t)&=w_n^{\rm old}(t)+w_n^{\rm new}(t),\\
 w_n^{\rm old}(t)
 &:=e^{-\nu(t-s_n)\Lambda^2}w(s_n),\\
 w_n^{\rm new}(t)
 &:=\int_{s_n}^t e^{-\nu(t-r)\Lambda^2}Q(u(r))\,dr.
 \end{aligned}
 \tag{DRO.36}
\]

The overlap source retains all four joined ancestry classes

\[
 \mathcal B(w_n^{\rm old},w_n^{\rm old})
 +\mathcal B(w_n^{\rm old},w_n^{\rm new})
 +\mathcal B(w_n^{\rm new},w_n^{\rm old})
 +\mathcal B(w_n^{\rm new},w_n^{\rm new}),
 \tag{DRO.37}
\]

with \(P_{\ge K_n}\), the ratio restriction \(d_{k,p}\le L_n\), and the
output Leray projection applied to their joined sum. The paid datum rows do
not bound \(w(s_n)\) in the critical synchronized square, while the small
window source mass \(m_n\) does not control the terminal Duhamel kernel in
that square. The parent roof is spatial; it does not create a time gap in
`(DRO.35)`.

## 7. The exact remaining finite-ancestry turn-down theorem

The exact remaining statement after both reductions is

\[
 \boxed{
 \begin{aligned}
 &\texttt{CanonicalFiniteRatioDoubleDuhamelAncestryTurnDown.A}:\\
 &\qquad
 \frac1{\nu A_n}
 \int_{\mathcal F_n}
 \|\Lambda^{-1/2}
 P_{\ge K_n}\mathcal B_{\le L_n}(w,w)\|_2^2\,dt
 \longrightarrow0.
 \end{aligned}}
 \tag{DRO.38}
\]

Equation `(DRO.24)` proves that `(DRO.38)` contradicts every failed prefix.
It has narrower ancestry support than the earlier source-square or
synchronized-parent targets:

1. the pulse set is canonical and already fixed;
2. every parent containing the datum heat descendant is removed;
3. both surviving parents are nonlinear Duhamel descendants;
4. the output is restricted to \(K_n\to\infty\);
5. the ultra-nonlocal parent tail is removed by
   \(d_{k,p}\le L_n\simeq\varepsilon_n^{-2}\); and
6. the only remaining fork is inherited versus newly generated nonlinear
   ancestry in `(DRO.36)`--`(DRO.37)`.

Those restrictions identify the surviving mechanism, but the normalized
square in `(DRO.38)` still carries the same critical order-one payment as the
failed record. Thus `(DRO.38)` is an exact candidate sufficient theorem, not
yet a strict reduction to a genuinely smaller datum-paid quantity.

What is not proved is the turn-down of that joined four-class ancestry
source. Proving it from a lower heat-age separation, a bounded-reuse law, or
a fresh-source terminal square estimate would prove `(TIR.37a)` through the
already established implications. No one of those payments is supplied by
the ratio roof itself.

## 8. Exact verdict

The RPR finite parent roof and the DRP double-recruitment theorem overlap
without loss:

\[
 \boxed{
 \begin{aligned}
 &\text{high output}
 \cap\text{ two nonlinear Duhamel parents}
 \cap\text{ finite recordwise parent ratio}\\
 &\hspace{20mm}\text{carries at least }
 c_{\rm ov}\nu A_n
 \text{ in }L_t^2\dot H_x^{-1/2}\text{ square.}
 \end{aligned}}
 \tag{DRO.39}
\]

This does not give a datum-paid contradiction. It proves that the
nonuniform BCR tail was not the final escape: after that tail is removed, the
same history still carries a scale-critical synchronized double-Duhamel
source. The remaining theorem is
`CanonicalFiniteRatioDoubleDuhamelAncestryTurnDown.A`, not another common
radius or source-square endpoint alias. This note does not prove that
turn-down, `(TIR.37a)`, or the MPP.
