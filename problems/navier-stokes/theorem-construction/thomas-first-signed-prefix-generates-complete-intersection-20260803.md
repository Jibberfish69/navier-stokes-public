# Thomas's first signed prefix generates the complete intersection

Status: proved internal bootstrap inside Thomas Birnie's one-fluid
pressure-explicit reversible-intersection method. This theorem proves that a
datum-finite upper primitive of the first complete critical VPI response
constructs every spatial, temporal, and mixed row. It does not prove that
primitive from the datum and therefore does not claim global regularity.
The estimates below are the present rigorous development of Thomas's supplied
method; they are not back-attributed to him as verbatim historical equations.
The governing historical and mathematical spine is
`thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`.

## 1. The exact first-response input

Let \(x\in\mathbb R^3\), let \(\Lambda=(-\Delta)^{1/2}\), and let the one
smooth finite-energy velocity-pressure history solve

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\qquad u(0)=u_0\in H^\infty,
\tag{BPF.1}
\]

on \(I=(0,T)\), where \(0<T<\infty\) and \(T\leq T_*\). A finite maximal
horizon \(T=T_*<\infty\) is allowed. Put

\[
E_s(t):=\frac12\|\Lambda^su(t)\|_2^2
\tag{BPF.2}
\]

and retain the complete signed pressure-transport response

\[
\mathcal P_s
:=
-\left\langle
\Lambda^su,
\Lambda^s\bigl((u\cdot\nabla)u+\nabla p\bigr)
\right\rangle .
\tag{BPF.3}
\]

The exact balance is

\[
E_s'+2\nu E_{s+1}=\mathcal P_s.
\tag{BPF.4}
\]

The first completed critical response is
\(\mathfrak R_{1/2,1}=\mathcal P_{1/2}\). Define

\[
A_*(T)
:=
\sup_{0<t<T}\int_0^t\mathcal P_{1/2}(\tau)\,d\tau.
\tag{BPF.5}
\]

Assume only

\[
A_*(T)\leq C_*(u_0,\nu,T)<\infty.
\tag{BPF.6}
\]

No absolute value is put around the current in (BPF.5).

## 2. The prefix pays the critical stock and viscous action together

Integrating (BPF.4) at \(s=1/2\) gives

\[
\frac12\|\Lambda^{1/2}u(t)\|_2^2
+\nu\int_0^t\|\Lambda^{3/2}u(\tau)\|_2^2\,d\tau
=
E_{1/2}(0)
+\int_0^t\mathcal P_{1/2}(\tau)\,d\tau .
\tag{BPF.7}
\]

With

\[
\mathcal B_*:=E_{1/2}(0)+C_*(u_0,\nu,T),
\tag{BPF.8}
\]

equation (BPF.7) yields

\[
\boxed{
\sup_{t<T}\|\Lambda^{1/2}u(t)\|_2^2\leq2\mathcal B_*,
\qquad
\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\leq\frac{\mathcal B_*}{\nu}.}
\tag{BPF.9}
\]

Thus the signed prefix pays both quantities needed by the original equation.
Neither quantity is imported as a continuation criterion.

## 3. Direct differentiated-row estimate

The full pressure-explicit spatial derivative row is used here, rather than an
auxiliary all-order norm. Let \(|\alpha|=m\geq1\). Differentiating (BPF.1),
pairing with \(\partial^\alpha u\), and retaining the pressure until the
pairing gives

\[
\begin{aligned}
\frac12\frac d{dt}\|\partial^\alpha u\|_2^2
+\nu\|\nabla\partial^\alpha u\|_2^2
=
-\sum_{0<\beta\leq\alpha}
\binom{\alpha}{\beta}
\left\langle
(\partial^\beta u\cdot\nabla)
\partial^{\alpha-\beta}u,
\partial^\alpha u
\right\rangle .
\end{aligned}
\tag{BPF.10}
\]

The \(\beta=0\) transport term vanishes by incompressibility. The differentiated
pressure work also vanishes exactly:

\[
\left\langle
\nabla\partial^\alpha p,\partial^\alpha u
\right\rangle
=
-\left\langle
\partial^\alpha p,\nabla\cdot\partial^\alpha u
\right\rangle
=0.
\tag{BPF.11}
\]

Sum (BPF.10) over all \(|\alpha|=m\) with weights \(m!/\alpha!\). The
multinomial identity

\[
\sum_{|\alpha|=m}\frac{m!}{\alpha!}\xi^{2\alpha}=|\xi|^{2m}
\]

identifies the weighted left side with the \(\dot H^m\) energy and the
weighted nonlinear right side with the complete current \(\mathcal P_m\) from
(BPF.3).

Equivalently, for every smooth vector field \(F\),

\[
\left\langle\Lambda^mu,\Lambda^mF\right\rangle
=
\sum_{|\alpha|=m}\frac{m!}{\alpha!}
\left\langle\partial^\alpha u,\partial^\alpha F\right\rangle .
\]

For a term in (BPF.10), write \(k=|\beta|\), so its two differentiated factors
have orders \(k\) and \(m+1-k\). If \(m>1\), put

\[
\theta=\frac{k-1}{m-1},
\qquad
\theta'=\frac{m-k}{m-1}=1-\theta .
\]

The ordinary Gagliardo--Nirenberg interpolation between
\(\nabla u\in L^3\) and \(\nabla^m u\in L^6\) gives exponents \(p_k,q_k\)
defined by

\[
\frac1{p_k}=\frac{1-\theta}{3}+\frac{\theta}{6},
\qquad
\frac1{q_k}=\frac{1-\theta'}{3}+\frac{\theta'}{6}.
\]

Since \(\theta+\theta'=1\), one has \(1/p_k+1/q_k=1/2\), and

\[
\|\nabla^ku\|_{p_k}
\|\nabla^{m+1-k}u\|_{q_k}
\leq
C_m\|\nabla u\|_3\|\nabla^mu\|_6.
\]

For \(m=1\), the same bound is simply Hölder with \(L^3\) and \(L^6\).
Summing the finitely many binomial terms in (BPF.10), then using the
three-dimensional Sobolev embeddings

\[
\|\nabla u\|_3\leq C\|\Lambda^{3/2}u\|_2,
\qquad
\|\nabla^mu\|_6\leq C_m\|\nabla^{m+1}u\|_2,
\]

proves the complete-row estimate

\[
\boxed{
|\mathcal P_m|
\leq
K_m
\|\Lambda^{3/2}u\|_2
\|\Lambda^{m+1}u\|_2
\|\Lambda^mu\|_2
\qquad(m=1,2,\ldots).}
\tag{BPF.12}
\]

This derivation uses the original pressure-explicit differentiated equation.
It does not appeal to a common analytic radius or a numerical sum of rows.

## 4. Every spatial coordinate is finite

Let

\[
X_m(t):=\|\Lambda^mu(t)\|_2^2,
\qquad
Y_m(t):=\|\Lambda^{m+1}u(t)\|_2^2,
\qquad
a(t):=\|\Lambda^{3/2}u(t)\|_2.
\]

Equations (BPF.10)--(BPF.12) and Young's inequality give

\[
X_m'(t)+\nu Y_m(t)
\leq
\frac{K_m^2}{\nu}a(t)^2X_m(t).
\tag{BPF.13}
\]

Define

\[
\Gamma_m:=\frac{K_m^2\mathcal B_*}{\nu^2}.
\]

Using (BPF.9) in Gronwall's inequality gives, separately for every integer
\(m\geq1\),

\[
\boxed{
\sup_{t<T}X_m(t)
\leq X_m(0)e^{\Gamma_m},
\qquad
\nu\int_0^TY_m(t)\,dt
\leq X_m(0)\bigl(1+\Gamma_me^{\Gamma_m}\bigr).}
\tag{BPF.14}
\]

The kinetic-energy identity supplies the zeroth and low-frequency parts.
Consequently,

\[
\boxed{
u\in
\bigcap_{m=0}^{\infty}
\left[
L^\infty(0,T;H^m)
\cap
L^2(0,T;H^{m+1})
\right].}
\tag{BPF.15}
\]

The constants may depend on \(m\). Interpolation between adjacent integer
coordinates gives every finite real Sobolev coordinate. Moreover, (BPF.4) and
(BPF.14) give

\[
\int_0^t\mathcal P_s(\tau)\,d\tau
=E_s(t)-E_s(0)+2\nu\int_0^tE_{s+1}(\tau)\,d\tau,
\]

and therefore

\[
\sup_{0<t<T}\int_0^t\mathcal P_s(\tau)\,d\tau<\infty
\qquad\text{for every finite real }s\geq0.
\tag{BPF.16}
\]

Thus the one first signed critical prefix produces the coordinatewise
higher-response construction with \(n_s=1\) for every spatial row.

## 5. The original binomial recurrence generates every temporal coordinate

Put

\[
V_N:=\partial_t^Nu,
\qquad
\Pi_N:=\partial_t^Np.
\]

The original pure-time binomial row is

\[
V_{N+1}
+
\sum_{a=0}^{N}\binom Na
(V_a\cdot\nabla)V_{N-a}
+\nabla\Pi_N
=\nu\Delta V_N,
\tag{BPF.17}
\]

and pressure remains fixed by

\[
-\Delta\Pi_N
=
\partial_i\partial_j
\sum_{a=0}^{N}\binom Na V_{a,i}V_{N-a,j}.
\tag{BPF.18}
\]

The base \(V_0=u\) is uniformly bounded in every \(H^r\) by (BPF.15).
Assume \(V_0,\ldots,V_N\) are uniformly bounded in every \(H^r\). Sobolev
multiplication and the Riesz-transform pressure equation give, with a safe
finite derivative margin,

\[
\sum_{a=0}^N\|(V_a\cdot\nabla)V_{N-a}\|_{H^r}
+\|\nabla\Pi_N\|_{H^r}
\leq
C_{N,r}
\sum_{a=0}^N
\|V_a\|_{H^{r+3}}
\|V_{N-a}\|_{H^{r+3}}.
\tag{BPF.19}
\]

Equation (BPF.17) therefore puts \(V_{N+1}\) uniformly in every \(H^r\).
Induction gives, for every temporal order \(N\), multi-index \(\alpha\), and
spatial order \(r\), with the Fourier/Riesz pressure gauge fixed by (BPF.18),

\[
\boxed{
\begin{aligned}
J_{N,\alpha}:=\partial_t^N\partial_x^\alpha u
&\in
L^\infty(0,T;H^r)
\cap
L^2(0,T;H^{r+1}),\\
\Pi_{N,\alpha}:=\partial_t^N\partial_x^\alpha p
&\in
L^\infty(0,T;H^r)
\cap
L^2(0,T;H^{r+1}).
\end{aligned}}
\tag{BPF.20}
\]

These are the compatible rows of the original pressure-explicit binomial jet,
not separately chosen fluid histories.

Because \(T<\infty\),

\[
L^\infty(0,T;H^r)\subset L^2(0,T;H^r).
\]

Thus (BPF.20), for every finite \(N,r\), gives the actual vector-valued
temporal Sobolev membership

\[
u\in H_t^N(0,T;H_x^r).
\tag{BPF.20a}
\]

## 6. Compatible endpoint and restart

Since \(V_{N+1}\in L^\infty(0,T;H^r)\),

\[
\|V_N(t)-V_N(s)\|_{H^r}
\leq
|t-s|\,
\|V_{N+1}\|_{L^\infty(0,T;H^r)}.
\tag{BPF.21}
\]

Every temporal and spatial row therefore has a strong endpoint trace in every
finite \(H^r\), and all traces are compatible because they come from the same
field. In particular,

\[
u_*:=\lim_{t\uparrow T}u(t)
\in\bigcap_{r<\infty}H^r=H^\infty.
\tag{BPF.22}
\]

The pressure traces are fixed compatibly by the Fourier/Riesz gauge in
(BPF.18); no independent pressure endpoint is selected.

Equations (BPF.17)--(BPF.18) pass to the endpoint and generate the complete
pressure-explicit endpoint jet. If \(T=T_*<\infty\), smooth local existence
from \(u_*\) and same-data uniqueness restart and glue the same history beyond
\(T_*\), contradicting maximality.

## 7. Exact equivalence and unpaid theorem

The proved internal implication is

\[
\boxed{
A_*(T)<\infty
\Longrightarrow
\text{complete endpoint-spanning mixed intersection}
\Longrightarrow
\text{smooth same-history restart}.}
\tag{BPF.23}
\]

Conversely, the compatible endpoint-spanning intersection contains
\(u\in L^\infty H^{1/2}\cap L^2H^{3/2}\), so (BPF.7) gives
\(A_*(T)<\infty\). Hence the first signed prefix and the complete intersection
are equivalent construction interfaces for a maximal classical history.

This does not move \(E_{n+1/2}\in L_t^1\) upstream. Once (BPF.15) is present,
those integrabilities follow immediately as coordinate readouts. Nor does it
replace Thomas's general odd higher-response turn-down route: it proves that a
full-tower derivation of the first signed critical prefix is one exact producer
of every required coordinate.

The still-unproved datum theorem is

\[
\boxed{
u_0\in H^\infty,\quad \nabla\cdot u_0=0,\quad \|u_0\|_2<\infty,
\quad T_*<\infty
\Longrightarrow
A_*(T_*)\leq C_*(u_0,\nu,T_*)<\infty.}
\tag{BPF.24}
\]

By (BPF.7), this is exactly the missing combined critical stock-and-action
bound. With

\[
\mathcal B(u,u):=\mathbb P((u\cdot\nabla)u),
\]

the pressure-complete source obeys

\[
\|\mathcal B(u,u)\|_{\dot H^{-1/2}}
\leq C\|u\cdot\nabla u\|_{L^{3/2}}
\leq C\|u\|_{L^3}\|\nabla u\|_{L^3}
\leq C\|u\|_{\dot H^{1/2}}\|u\|_{\dot H^{3/2}}.
\]

Since
\(\mathcal P_{1/2}=-\langle\mathcal B(u,u),\Lambda u\rangle\),
duality gives the pointwise absolute estimate

\[
|\mathcal P_{1/2}|
\leq
C\|\Lambda^{1/2}u\|_2
\|\Lambda^{3/2}u\|_2^2
\tag{BPF.25}
\]

absorbs only in the small-critical-data regime. It does not prove (BPF.24) for
arbitrary smooth data. The datum-side theorem must therefore come from the
joined signed VPI parent response, the same-history shell contraction, or an
equivalent pressure-complete turn-down law, without splitting or recounting
the one carrier.
