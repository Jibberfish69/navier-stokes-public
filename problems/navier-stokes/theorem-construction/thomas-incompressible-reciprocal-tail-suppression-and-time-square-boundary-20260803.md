# Thomas's incompressible reciprocal-tail suppression and time-square boundary

Status: exact auxiliary theorem and checked estimate boundary inside Thomas
Birnie's one-fluid pressure-explicit binomial/VPI method. This note proves a
datum-uniform \(L_t^1\dot H_x^{1/2}\) decay for the surviving reciprocal
parent tail \(Y_N\), then proves that pairing that tail with the critical
response requires the closure-equivalent critical enstrophy time-square. It
does **not** prove the first signed prefix and does not obstruct a signed
cancellation among the uncollapsed pressure-complete binomial insertions.

The governing parent-age identities are in
`thomas-parent-age-reciprocal-moment-telescope-positivity-boundary-20260803.md`,
especially (PRM.3)--(PRM.7), (PRM.32j)--(PRM.32m), and (PRM.37)--(PRM.46).
The critical-prefix interface is in
`thomas-first-signed-prefix-generates-complete-intersection-20260803.md`.

## 1. The surviving tail is a readout of the same pressure-complete field

Use the unitary Fourier transform on \(\mathbb R^3\). For \(k\ne0\), put

\[
 K:=|k|,
 \qquad q:=k-p,
 \qquad \gamma_k:=\nu K^2,
 \qquad \delta_{k,p}:=\nu\bigl(|p|^2+|q|^2\bigr),
 \tag{RPT.1}
\]

and define

\[
 d_{k,p}:=\frac{\delta_{k,p}}{\gamma_k}
 =\frac{|p|^2+|q|^2}{K^2},
 \qquad
 r_{k,p}:=\frac{d_{k,p}}{1+d_{k,p}}.
 \tag{RPT.2}
\]

The ordered pressure-complete source density from (SH.218) is

\[
 \Theta_Q(k,p)
 =-ic_{\mathcal F}\mathbb P_k
 \bigl[(\widehat u(p)\cdot q)\widehat u(q)\bigr],
 \qquad
 \widehat Q(k)=\int\Theta_Q(k,p)\,dp.
 \tag{RPT.3}
\]

Normalize the parent density at the critical response level by

\[
 \vartheta(k,p):=K^{-1}\Theta_Q(k,p),
 \qquad
 g(k):=\int\vartheta(k,p)\,dp=K^{-1}\widehat Q(k),
 \tag{RPT.4}
\]

and set both expressions to zero at \(k=0\). Let the response of this same
source be

\[
 \partial_tz(k,t)+\gamma_kz(k,t)=\gamma_kg(k,t),
 \qquad z(k,0)=0.
 \tag{RPT.5}
\]

For every integer \(N\ge1\), the unresolved reciprocal tail and its signed
critical current are

\[
 \boxed{
 \begin{aligned}
 Y_N(k,t)&:=\int r_{k,p}^N\vartheta(k,p,t)\,dp,\\
 F_N(t)&:=\frac1\nu\operatorname{Re}
 \int K\,z(k,t)\cdot\overline{Y_N(k,t)}\,dk.
 \end{aligned}}
 \tag{RPT.6}
\]

The multiplier \(r_{k,p}^N\) is real and positive. It changes neither the
phase nor the ownership of any parent contribution. Differentiating it in
time introduces no new term: \(Y_N\) retains the two pressure-complete
binomial insertions of the original velocity parents.

## 2. Incompressibility removes the apparent parent derivative

Because \(p\cdot\widehat u(p)=0\),

\[
 \widehat u(p)\cdot q
 =\widehat u(p)\cdot(k-p)
 =\widehat u(p)\cdot k.
 \tag{RPT.7}
\]

Since the Leray projection has operator norm one, (RPT.3)--(RPT.4) therefore
give the pointwise parent bound

\[
 \boxed{
 |\vartheta(k,p)|
 \le c_{\mathcal F}|\widehat u(p)|\,|\widehat u(k-p)|.}
 \tag{RPT.8}
\]

This is the exact incompressibility gain: after the critical \(K^{-1}\)
normalization, the derivative in the transport source is the output factor
and cancels. No absolute parent ledger or independent source has been
introduced.

## 3. Exact reciprocal suppression

For every \(d>0\), \(N\ge1\), and \(0\le\alpha\le1\), Bernoulli's inequality
gives

\[
 \left(1+\frac1d\right)^N\ge1+\frac Nd,
\]

and hence

\[
 \boxed{
 \left(\frac d{1+d}\right)^N
 \le\frac d{N+d}
 \le\left(\frac dN\right)^\alpha.}
 \tag{RPT.9}
\]

At the endpoint \(\alpha=1/2\), the ratio weight inserts exactly one parent
derivative and can be estimated using only the kinetic-energy row.
Equations (RPT.8)--(RPT.9) imply

\[
 |Y_N(k)|
 \le\frac C{\sqrt N\,K}
 \int\bigl(|p|+|k-p|\bigr)
 |\widehat u(p)|\,|\widehat u(k-p)|\,dp.
 \tag{RPT.10}
\]

Let \(a\) and \(b\) be the scalar fields whose Fourier transforms are

\[
 \widehat a(\xi)=|\xi|\,|\widehat u(\xi)|,
 \qquad
 \widehat b(\xi)=|\widehat u(\xi)|.
 \tag{RPT.11}
\]

The right side of (RPT.10) is dominated by the Fourier transform of a fixed
multiple of \(ab\). Hardy--Littlewood--Sobolev, Hölder, and
\(\dot H^1\hookrightarrow L^6\) give

\[
 \begin{aligned}
 \|\Lambda^{1/2}Y_N\|_2
 &\le\frac C{\sqrt N}\|\Lambda^{-1/2}(ab)\|_2\\
 &\le\frac C{\sqrt N}\|ab\|_{3/2}
 \le\frac C{\sqrt N}\|a\|_2\|b\|_6\\
 &\le\frac C{\sqrt N}\|\Lambda u\|_2^2.
 \end{aligned}
 \tag{RPT.12}
\]

Thus the surviving signed parent tail obeys the scale-sharp energy-row
estimate

\[
 \boxed{
 \|\Lambda^{1/2}Y_N(t)\|_2
 \le\frac C{\sqrt N}\|\Lambda u(t)\|_2^2.}
 \tag{RPT.13}
\]

Using the exact kinetic-energy law,

\[
 \nu\int_0^T\|\Lambda u(t)\|_2^2\,dt
 \le E_0(0),
 \tag{RPT.14}
\]

one obtains a genuinely datum-uniform tail theorem:

\[
 \boxed{
 \sup_{T<T_*}
 \int_0^T\|\Lambda^{1/2}Y_N(t)\|_2\,dt
 \le\frac{C E_0(0)}{\nu\sqrt N}.}
 \tag{RPT.15}
\]

The reciprocal high-parent tail therefore vanishes uniformly in
\(L_t^1\dot H_x^{1/2}\). The issue is not absence of any tail decay.

## 4. The critical current requires the time square

The current in (RPT.6) is the exact \(\dot H^{1/2}\) pairing

\[
 F_N(t)=\frac1\nu\operatorname{Re}
 \langle\Lambda^{1/2}z(t),\Lambda^{1/2}Y_N(t)\rangle_2.
 \tag{RPT.16}
\]

Its interior response action is

\[
 \mathcal A_z(T)
 :=\frac1\nu\int_0^T\|\Lambda^{1/2}z(t)\|_2^2\,dt,
 \tag{RPT.17}
\]

which is the interior part of the open Dini/critical response action. Time
Cauchy--Schwarz, (RPT.13), and Young's inequality give, for every
\(\varepsilon>0\),

\[
 \boxed{
 \begin{aligned}
 \left|\int_0^TF_N(t)\,dt\right|
 &\le \mathcal A_z(T)^{1/2}
 \left(
 \frac1\nu\int_0^T
 \|\Lambda^{1/2}Y_N(t)\|_2^2\,dt
 \right)^{1/2}\\
 &\le\varepsilon\mathcal A_z(T)
 +\frac{C}{\varepsilon\nu N}
 \int_0^T\|\Lambda u(t)\|_2^4\,dt .
 \end{aligned}}
 \tag{RPT.18}
\]

The \(N^{-1/2}\) gain survives, but the \(L_t^1\) energy payment in
(RPT.15) has become the critical time-square

\[
 \mathcal H(T):=\int_0^T\|\Lambda u(t)\|_2^4\,dt.
 \tag{RPT.19}
\]

The finite joined positivity from (PRM.32f)--(PRM.32i) does not alter this
duality: it controls the parent-pair storage, while the surviving current
still contains one \(\dot H^{1/2}\) response factor and one
\(\dot H^{1/2}\) tail factor. A phase-independent absorption of that current
therefore requires the square in (RPT.18).

## 5. The time-square is equivalent to the first-prefix interface

The critical stock and action immediately bound (RPT.19). Fourier
Cauchy--Schwarz gives

\[
 \|\Lambda u\|_2^2
 \le\|\Lambda^{1/2}u\|_2
      \|\Lambda^{3/2}u\|_2,
 \tag{RPT.20}
\]

so

\[
 \boxed{
 \mathcal H(T)
 \le
 \sup_{0<t<T}\|\Lambda^{1/2}u(t)\|_2^2
 \int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt.}
 \tag{RPT.21}
\]

Conversely, the pressure-explicit critical energy identity is

\[
 E_{1/2}'(t)+\nu\|\Lambda^{3/2}u(t)\|_2^2
 =P_{1/2}(t).
 \tag{RPT.22}
\]

Because the Leray projection is self-adjoint on the divergence-free output,

\[
 \begin{aligned}
 |P_{1/2}|
 &=\left|\langle u\cdot\nabla u,\Lambda u\rangle\right|\\
 &\le\|u\|_6\|\nabla u\|_2\|\Lambda u\|_3\\
 &\le C\|\Lambda u\|_2^2\|\Lambda^{3/2}u\|_2\\
 &\le\frac\nu2\|\Lambda^{3/2}u\|_2^2
 +\frac C\nu\|\Lambda u\|_2^4.
 \end{aligned}
 \tag{RPT.23}
\]

Integrating (RPT.22)--(RPT.23) yields

\[
 \boxed{
 \sup_{0<t<T}E_{1/2}(t)
 +\frac\nu2\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
 \le E_{1/2}(0)+\frac C\nu\mathcal H(T).}
 \tag{RPT.24}
\]

Hence, on a finite classical horizon,

\[
 \boxed{
 \sup_{T<T_*}\mathcal H(T)<\infty
 \quad\Longleftrightarrow\quad
 \sup_{t<T_*}E_{1/2}(t)
 +2\nu\int_0^{T_*}E_{3/2}(t)\,dt<\infty.}
 \tag{RPT.25}
\]

The right side is exactly the stock/action consequence of the first signed
prefix. Thus the remainder in (RPT.18) is not a smaller datum-finite theorem;
it is another critical coordinate of the same closure interface.

## 6. Exact scale and terminal nonuniformity

For every fixed \(N\),

\[
 \sup_{d>0}\left(\frac d{1+d}\right)^N=1.
 \tag{RPT.26}
\]

The multiplier suppresses each fixed parent/output ratio, but the region
\(d_{k,p}\gtrsim N\) survives. Since

\[
 d_{k,p}=\frac{|p|^2+|k-p|^2}{|k|^2},
 \tag{RPT.27}
\]

this is precisely the increasingly separated high-parent/low-output region.
The ratio is invariant under common Navier--Stokes dilation, and
\(\mathcal H\) is also critical:

\[
 \int\|\Lambda u_\lambda(t)\|_2^4\,dt
 =\int\|\Lambda u(t)\|_2^4\,dt,
 \qquad
 u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t).
 \tag{RPT.28}
\]

For every fixed \(T<T_*\), smoothness makes \(\mathcal H(T)<\infty\), and
(RPT.18) lets the magnitude estimate of the tail vanish as \(N\to\infty\).
Uniform closure would require the opposite order of operations. If
\(\sup_{T<T_*}\mathcal H(T)=\infty\), then for every finite \(N\)

\[
 \sup_{T<T_*}\frac{\mathcal H(T)}N=\infty,
 \qquad\text{although}\qquad
 \lim_{N\to\infty}\frac{\mathcal H(T)}N=0
 \quad(T<T_*\text{ fixed}).
 \tag{RPT.29}
\]

Thus the fixed-prefix limit and the terminal supremum cannot be exchanged
without (RPT.25), the theorem being sought. Allowing \(N=N(T)\to\infty\)
does not remove the payment: the finite joined current in (PRM.32j) then
approaches the full first parent-rate moment, while the joined storage
evolution resums to the collapsed source square and the actual binomial
insertion/heat-defect pair in (PRM.37)--(PRM.46).

## 7. Verdict

The reciprocal-tail attack proves a real in-method gain:

\[
 \boxed{
 Y_N\longrightarrow0
 \quad\text{uniformly in the datum-paid }
 L_t^1\dot H_x^{1/2}\text{ norm at rate }N^{-1/2}.}
 \tag{RPT.30}
\]

It does not by itself close the first prefix. The exact critical pairing turns
that \(L_t^1\) gain into the \(L_t^2\) time-square (RPT.19), and (RPT.25)
proves that this time-square is the original first-prefix interface in another
coordinate. The positive finite joined parent kernel remains a genuine
survivor, but magnitude control of its tail is closure-equivalent.

The only continuation not covered by this obstruction is the one Thomas's
method already requires: keep the parent phases and prove a signed telescope
among the uncollapsed pressure-complete binomial insertions and the
VPI-minus-heat defect before applying time Cauchy--Schwarz. No such signed
datum-finite bound is proved here.
