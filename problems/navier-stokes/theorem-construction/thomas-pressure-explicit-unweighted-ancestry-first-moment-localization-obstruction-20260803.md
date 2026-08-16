# Thomas's pressure-explicit unweighted-ancestry first-moment localization obstruction

Status: exact auxiliary obstruction inside Thomas Birnie's one-fluid,
fixed-viscosity, pressure-explicit prefix route. This note tests the unpaid
source/receiver coincidence in (BRC.31) and the first history moment in
(HPF.33) against the proposed material-collar/no-recount payment. It proves
that the already established unweighted charges and multiplicity-one ancestry
do not, by themselves, supply the missing inverse-length weight.

This is not a Navier--Stokes counterexample, not a replacement theorem, and not
an alternative continuation criterion. It does not alter the pressure-explicit
binomial recurrence, the reversible-intersection method, or any canonical
authority file. Its role is narrower: it identifies exactly what the next
same-method theorem must add.

The governing adjacent notes are

- thomas-balanced-rip-cord-material-charge-and-recruitment-tail-20260803.md,
  especially (BRC.11), (BRC.26), and (BRC.31);
- thomas-one-fluid-high-pass-prefix-first-moment-reduction-20260803.md,
  especially (HPF.30)--(HPF.33) and (HPF.39)--(HPF.41).

## 1. The exact payment under test

For the same smooth fixed-viscosity history, retain the complete simultaneous
nonlinear-pressure response

\[
\mathcal B(u,u)
:=(u\cdot\nabla)u+\nabla p
=\mathbb P((u\cdot\nabla)u)
=\mathbb P(\omega\times u),
\tag{UAL.1}
\]

and put

\[
b(t):=\|\mathcal B(u,u)(t)\|_{\dot H^{-1/2}},
\qquad
d(t):=\|u(t)\|_{\dot H^{3/2}}.
\tag{UAL.2}
\]

The datum pays

\[
\int_0^{T_*}b(t)\,dt
\leq \frac{C_{\rm NS}\|u_0\|_2^2}{2\nu},
\tag{UAL.3}
\]

while the recruited-source coincidence still asks for control of

\[
\mathcal T_M(T)
:=\int_{\{t<T:\ d(t)>M\}}b(t)d(t)\,dt.
\tag{UAL.4}
\]

In the high-pass factorization, the corresponding positive response measure is

\[
d\mu_T(\xi,\omega)
:=\frac1{2\pi}
\frac{\nu|\xi|^4}{\nu^2|\xi|^4+\omega^2}
\left|
\widehat{\mathbf1_{(0,T)}\Lambda^{-1}Q}(\omega,\xi)
\right|^2
\,d\xi\,d\omega,
\tag{UAL.5}
\]

with energy-paid mass

\[
\iint d\mu_T<\infty
\tag{UAL.6}
\]

and unpaid first moment

\[
\iint|\xi|\,d\mu_T.
\tag{UAL.7}
\]

The candidate material step adds exact ancestry and no recount: each recruited
event is assigned to labels of the same fluid, with uniformly bounded label or
spacetime multiplicity. The question tested below is whether (UAL.3),
(UAL.6), the material strain-action charge (BRC.11), and that unweighted
multiplicity can force (UAL.4) or (UAL.7) to be finite.

## 2. Exact q-adic pulse schedule

Fix \(q>1\) and write

\[
\lambda_j:=q^j,
\qquad
r_j:=\lambda_j^{-1}.
\tag{UAL.8}
\]

Choose pairwise disjoint intervals \(I_j\subset(0,T_*)\), accumulating only at
\(T_*\), with

\[
|I_j|=\lambda_j^{-2}=r_j^2.
\tag{UAL.9}
\]

This fits in a finite interval because

\[
\sum_{j\geq1}|I_j|
=\sum_{j\geq1}q^{-2j}<\infty.
\tag{UAL.10}
\]

Define the nonnegative critical schedule

\[
b(t)=\lambda_j,
\qquad
d(t)=\lambda_j,
\qquad t\in I_j,
\tag{UAL.11}
\]

and set both functions to zero off the pulses. Then

\[
\boxed{
\int_0^{T_*}b(t)\,dt
=\sum_{j\geq1}\lambda_j|I_j|
=\sum_{j\geq1}\lambda_j^{-1}<\infty.}
\tag{UAL.12}
\]

For any finite \(M>0\), every sufficiently large \(j\) has
\(d|_{I_j}=\lambda_j>M\), whereas

\[
\boxed{
\sup_{T<T_*}\mathcal T_M(T)
=\sum_{j:\lambda_j>M}
\int_{I_j}b(t)d(t)\,dt
=\sum_{j:\lambda_j>M}1
=\infty.}
\tag{UAL.13}
\]

The intervals already have multiplicity one. Thus finite unweighted source
mass plus perfect temporal no-recount does not control the coincidence moment.
The missing factor is exactly one inverse length:

\[
b_j|I_j|\sim r_j,
\qquad
b_jd_j|I_j|\sim r_j^{-1}r_j=1.
\tag{UAL.14}
\]

## 3. Pressure-complete one-fluid kinematic realization of the scaling

The schedule in Section 2 is not an arbitrary dimensional choice. It is the
exact fixed-viscosity critical scaling of the complete nonlinear-pressure
response.

Choose a real compactly supported smooth divergence-free profile \(V\) for which

\[
\mathcal B_V
:=\mathbb P((V\cdot\nabla)V)
=(V\cdot\nabla)V+\nabla p_V
\neq0,
\tag{UAL.15}
\]

and a nonnegative
\(\phi\in C_c^\infty((0,1))\) which is bounded below on a nonempty subinterval.
After translating the intervals and spatial centers, define

\[
u_j(t,x)
:=\lambda_j
\phi\!\left(\lambda_j^2(t-t_j)\right)
V\!\left(\lambda_j(x-x_j)\right),
\tag{UAL.16}
\]

\[
p_j(t,x)
:=\lambda_j^2
\phi\!\left(\lambda_j^2(t-t_j)\right)^2
p_V\!\left(\lambda_j(x-x_j)\right).
\tag{UAL.17}
\]

Because the time supports are disjoint, the sum

\[
u^{\rm kin}:=\sum_ju_j,
\qquad
p^{\rm kin}:=\sum_jp_j
\tag{UAL.18}
\]

is one divergence-free velocity-pressure field with only one active pulse at
each time. Its pressure-complete nonlinear response is exactly

\[
\mathcal B(u_j,u_j)(t,x)
=\lambda_j^3
\phi\!\left(\lambda_j^2(t-t_j)\right)^2
\mathcal B_V\!\left(\lambda_j(x-x_j)\right).
\tag{UAL.19}
\]

For the scaling

\[
f_\lambda(x)=\lambda^a f(\lambda x),
\tag{UAL.20}
\]

direct Fourier change of variables gives

\[
\boxed{
\|f_\lambda\|_{\dot H^s}
=\lambda^{a+s-3/2}\|f\|_{\dot H^s}.}
\tag{UAL.21}
\]

Applying (UAL.21) with \((a,s)=(1,3/2)\) and \((3,-1/2)\) yields

\[
\|u_j(t)\|_{\dot H^{3/2}}
=\lambda_j|\phi(\tau)|\|V\|_{\dot H^{3/2}},
\tag{UAL.22}
\]

\[
\|\mathcal B(u_j,u_j)(t)\|_{\dot H^{-1/2}}
=\lambda_j|\phi(\tau)|^2
\|\mathcal B_V\|_{\dot H^{-1/2}},
\tag{UAL.23}
\]

where \(\tau=\lambda_j^2(t-t_j)\). Since
\(dt=\lambda_j^{-2}d\tau\),

\[
\boxed{
\int_{I_j}
\|\mathcal B(u_j,u_j)(t)\|_{\dot H^{-1/2}}\,dt
=C_{\mathcal B}\lambda_j^{-1},}
\tag{UAL.24}
\]

but

\[
\boxed{
\int_{I_j}
\|\mathcal B(u_j,u_j)(t)\|_{\dot H^{-1/2}}
\|u_j(t)\|_{\dot H^{3/2}}\,dt
=C_{\mathcal B,V}>0.}
\tag{UAL.25}
\]

The enstrophy scaling is

\[
\|\nabla u_j(t)\|_2^2
=\lambda_j|\phi(\tau)|^2\|\nabla V\|_2^2,
\tag{UAL.26}
\]

and hence

\[
\int_{I_j}\|\nabla u_j(t)\|_2^2\,dt
=C_V\lambda_j^{-1}.
\tag{UAL.27}
\]

Thus (UAL.24) respects the pressure-complete source estimate (BRC.25) at
every scale, while (UAL.25) retains one positive constant at every scale.

### 3.1 Material cohorts and exact no-recount scaling

Let \(Y(a,\tau)\) be the flow of the fixed base pulse,

\[
\partial_\tau Y
=\phi(\tau)V(Y),
\qquad
Y(a,0)=a,
\tag{UAL.28}
\]

and choose a bounded base cohort \(A_*\) on which this flow is defined. For the
\(j\)-th pulse take

\[
A_j:=x_j+\lambda_j^{-1}A_*.
\tag{UAL.29}
\]

The corresponding trajectory during \(I_j\) is

\[
X_j(a,t)
=x_j+\lambda_j^{-1}
Y\!\left(\lambda_j(a-x_j),
\lambda_j^2(t-t_j)\right).
\tag{UAL.30}
\]

Consequently

\[
|A_j|=\lambda_j^{-3}|A_*|.
\tag{UAL.31}
\]

The strain has amplitude \(\lambda_j^2\), but it acts for time
\(\lambda_j^{-2}\). Therefore its same-label action is scale invariant:

\[
\mathfrak a_j(a)
:=\int_{I_j}|S_j(X_j(a,t),t)|\,dt
=\mathfrak a_*(\lambda_j(a-x_j)).
\tag{UAL.32}
\]

Changing material variables gives

\[
\boxed{
\int_{A_j}\mathfrak a_j(a)^2\,da
=\lambda_j^{-3}
\int_{A_*}\mathfrak a_*(a)^2\,da,}
\tag{UAL.33}
\]

and direct spacetime scaling gives

\[
\boxed{
\int_{I_j}\int_{X_j(A_j,t)}|S_j(x,t)|^2\,dx\,dt
=C_{S,A_*}\lambda_j^{-1}.}
\tag{UAL.34}
\]

The displacement is \(O(\lambda_j^{-1})\), so

\[
\boxed{
\int_{A_j}
|X_j(a,t_j^+)-X_j(a,t_j^-)|^2\,da
=C_{X,A_*}\lambda_j^{-5}.}
\tag{UAL.35}
\]

All four sums

\[
\sum_j\lambda_j^{-1},
\qquad
\sum_j\lambda_j^{-3},
\qquad
\sum_j\lambda_j^{-5},
\qquad
\sum_j|I_j|
\tag{UAL.36}
\]

are finite. The cohorts can be chosen disjoint, and the time pulses are already
disjoint, so both label and time multiplicity equal one. Nevertheless,
(UAL.25) sums to infinity.

The field (UAL.18) is a kinematic one-fluid scaling test. It retains
incompressibility, pressure completion, the exact quadratic source identity,
material trajectories, and every charge just displayed. It is not asserted to
satisfy the Navier--Stokes time equation. Therefore it proves an implication
obstruction for the proposed budget/no-recount step; it does not prove the
existence of a singular Navier--Stokes history.

## 4. Exact HPF measure with finite mass and infinite first moment

The same obstruction can be placed directly inside the causal heat-response
map used in (HPF.30).

Choose a nonzero real divergence-free source

\[
Q_*\in C_c^\infty((0,1);\mathcal S(\mathbb R^3;\mathbb R^3))
\tag{UAL.37}
\]

whose spatial Fourier support lies in one annulus

\[
a\leq|\eta|\leq b,
\qquad 0<a<b<\infty.
\tag{UAL.38}
\]

Choose \(q>b/a\), retain \(\lambda_j=q^j\), and place the rescaled sources in
disjoint time intervals:

\[
Q_j(t,x)
:=\lambda_j^3
Q_*\!\left(\lambda_j^2(t-t_j),\lambda_jx\right).
\tag{UAL.39}
\]

Let \(g_*:=\Lambda^{-1}Q_*\) and \(g_j:=\Lambda^{-1}Q_j\). Homogeneity gives

\[
g_j(t,x)
=\lambda_j^2
g_*\!\left(\lambda_j^2(t-t_j),\lambda_jx\right).
\tag{UAL.40}
\]

With the time Fourier convention of (HPF.30), the full spacetime transform is

\[
\widehat g_j(\omega,\xi)
=\lambda_j^{-3}e^{-it_j\omega}
\widehat g_*\!\left(\omega/\lambda_j^2,\xi/\lambda_j\right).
\tag{UAL.41}
\]

Under

\[
\xi=\lambda_j\eta,
\qquad
\omega=\lambda_j^2\varpi,
\tag{UAL.42}
\]

the heat-time multiplier is invariant:

\[
\frac{\nu|\xi|^4}{\nu^2|\xi|^4+\omega^2}
=
\frac{\nu|\eta|^4}{\nu^2|\eta|^4+\varpi^2},
\tag{UAL.43}
\]

while

\[
|\widehat g_j|^2=\lambda_j^{-6}|\widehat g_*|^2,
\qquad
d\xi\,d\omega=\lambda_j^5d\eta\,d\varpi.
\tag{UAL.44}
\]

If \(\mu_j\) is the measure (UAL.5) generated by \(Q_j\), and

\[
m_0:=\iint d\mu_*>0,
\qquad
m_1:=\iint|\eta|\,d\mu_*>0,
\tag{UAL.45}
\]

then (UAL.43)--(UAL.44) give the exact scaling laws

\[
\boxed{
\mu_j(\mathbb R^3\times\mathbb R)
=\lambda_j^{-1}m_0,}
\tag{UAL.46}
\]

\[
\boxed{
\iint|\xi|\,d\mu_j
=m_1.}
\tag{UAL.47}
\]

The source norm has the matching scaling

\[
\boxed{
\int\|Q_j(t)\|_{\dot H^{-1/2}}\,dt
=\lambda_j^{-1}
\int\|Q_*(\tau)\|_{\dot H^{-1/2}}\,d\tau.}
\tag{UAL.48}
\]

Because \(q>b/a\), the spatial Fourier annuli supporting the \(Q_j\) are
pairwise disjoint. Thus the square in (UAL.5) has no cross terms for

\[
Q:=\sum_jQ_j,
\tag{UAL.49}
\]

even though the time Fourier transforms are global. It follows exactly that

\[
\int_0^{T_*}\|Q(t)\|_{\dot H^{-1/2}}\,dt<\infty,
\qquad
\iint d\mu= m_0\sum_j\lambda_j^{-1}<\infty,
\tag{UAL.50}
\]

but

\[
\boxed{
\iint|\xi|\,d\mu
=m_1\sum_j1
=\infty.}
\tag{UAL.51}
\]

Multiplying every \(Q_j\) by one fixed constant \(0<\delta<1\) scales the
source norm by \(\delta\) and both measure moments by \(\delta^2\). Hence the
finite quantities in (UAL.50) can be placed below any prescribed positive
budget while (UAL.51) remains infinite.

This is an exact counterexample to a functional estimate deriving the HPF
first moment from the unweighted \(L_t^1\dot H_x^{-1/2}\) source norm and the
mass of \(\mu\). The constructed \(Q\) is not asserted to equal the nonlinear
source of a Navier--Stokes solution. The point is that the causal heat
factorization and its paid norms alone do not contain the needed moment.

### 4.1 The q-adic shell consequence

The same arithmetic appears directly in (HPF.39). Let

\[
\alpha_j=c\lambda_j^{-1},
\qquad c>0,
\tag{UAL.52}
\]

and define

\[
\mathsf A_j:=\sum_{p\geq j}\alpha_p,
\qquad
\mathsf b_j:=\lambda_j\mathsf A_j.
\tag{UAL.53}
\]

Then

\[
\sum_j\alpha_j<\infty,
\qquad
\mathsf A_j
=\frac{c\lambda_j^{-1}}{1-q^{-1}},
\qquad
\boxed{
\mathsf b_j=\frac{c}{1-q^{-1}}.}
\tag{UAL.54}
\]

Therefore

\[
\sum_j\mathsf b_j=\infty.
\tag{UAL.55}
\]

If a contraction of the form sought in (HPF.41) were imposed on this sequence,

\[
\mathsf b_{j+1}
\leq(1-\varepsilon)\mathsf b_j+\rho_j,
\qquad \varepsilon\in(0,1),
\tag{UAL.56}
\]

then (UAL.54) forces

\[
\boxed{
\rho_j
\geq\frac{\varepsilon c}{1-q^{-1}},}
\tag{UAL.57}
\]

and consequently \(\sum_j\rho_j=\infty\). Finite shell mass and unweighted
ownership therefore cannot manufacture the summable residual required by
(HPF.41).

## 5. Exact localization commutators

Let \(N:=(u\cdot\nabla)u\), so that

\[
\mathcal B=\mathbb PN.
\tag{UAL.58}
\]

For a real smooth selector \(\chi\), define the signed localized critical
response

\[
\mathcal P_\chi
:=-\langle\chi\mathcal B,\Lambda u\rangle.
\tag{UAL.59}
\]

Self-adjointness of \(\Lambda\) and

\[
\Lambda(\chi u)=\chi\Lambda u+[\Lambda,\chi]u
\tag{UAL.60}
\]

give the exact identity

\[
\boxed{
\mathcal P_\chi
=-\langle\mathcal B,\Lambda(\chi u)\rangle
+\langle\mathcal B,[\Lambda,\chi]u\rangle.}
\tag{UAL.61}
\]

For the complementary selector \(\bar\chi:=1-\chi\),

\[
\boxed{
\mathcal P_{\bar\chi}
=-\langle\mathcal B,\Lambda(\bar\chi u)\rangle
-\langle\mathcal B,[\Lambda,\chi]u\rangle.}
\tag{UAL.62}
\]

Pressure localization has an independent exact commutator:

\[
\boxed{
\chi\mathcal B
=\mathbb P(\chi N)+[\chi,\mathbb P]N,}
\tag{UAL.63}
\]

\[
\boxed{
\bar\chi\mathcal B
=\mathbb P(\bar\chi N)-[\chi,\mathbb P]N.}
\tag{UAL.64}
\]

The fractional and pressure commutators cancel exactly when core and complement
are kept in the joined signed whole-field response. They do not cancel after
separate positive ownership is assigned to the two regions. Disjoint labels do
not change this algebra: the interface term belongs simultaneously to the two
complementary readouts of one transfer.

### 5.1 Matched-scale audit

Use the fixed-viscosity Navier--Stokes scaling

\[
u_r(t,x)=r^{-1}U(t/r^2,x/r),
\qquad
\mathcal B_r(t,x)=r^{-3}\mathcal B_U(t/r^2,x/r),
\tag{UAL.65}
\]

and a collar resolving that same scale,

\[
\chi_r(x)=\chi(x/r).
\tag{UAL.66}
\]

Direct homogeneity gives

\[
\boxed{
[\Lambda,\chi_r]u_r(t,x)
=r^{-2}([\Lambda,\chi]U)(t/r^2,x/r),}
\tag{UAL.67}
\]

and, since \(\mathbb P\) has order zero,

\[
\boxed{
[\chi_r,\mathbb P]N_r(t,x)
=r^{-3}([\chi,\mathbb P]N_U)(t/r^2,x/r).}
\tag{UAL.68}
\]

The corresponding norm scales are

\[
\|\mathcal B_r\|_{\dot H^{-1/2}}
=r^{-1}\|\mathcal B_U\|_{\dot H^{-1/2}},
\qquad
\|[\Lambda,\chi_r]u_r\|_{\dot H^{1/2}}
=r^{-1}\|[\Lambda,\chi]U\|_{\dot H^{1/2}}.
\tag{UAL.69}
\]

At the level of the exact pairing,

\[
\boxed{
\langle\mathcal B_r,[\Lambda,\chi_r]u_r\rangle_x
=r^{-2}
\langle\mathcal B_U,[\Lambda,\chi]U\rangle_y.}
\tag{UAL.70}
\]

Because \(dt=r^2d\tau\), the time-integrated commutator in (UAL.70) is
scale invariant. Whenever the fixed-profile pairing on the right is nonzero,
rescaling it to smaller collars gives no factor tending to zero.

The same conclusion holds at the sharp high-pass interface. With \(K=r^{-1}\),

\[
\boxed{
[P_{>1/r},\chi_r]u_r(t,x)
=r^{-1}([P_{>1},\chi]U)(t/r^2,x/r).}
\tag{UAL.71}
\]

By (UAL.21),

\[
\boxed{
\|[P_{>1/r},\chi_r]u_r\|_{\dot H^{1/2}}
=\|[P_{>1},\chi]U\|_{\dot H^{1/2}}.}
\tag{UAL.72}
\]

Thus a material collar chosen at the same scale as the high-pass event has
order-one critical leakage. Scale reduction alone cannot pay it.

## 6. Fractional IMS form of the same localization defect

Let \(A\) be self-adjoint, and let real selectors \(\chi_i\) satisfy

\[
\sum_i\chi_i^2=1.
\tag{UAL.73}
\]

Expanding the double commutator gives the exact IMS identity

\[
\boxed{
\sum_i\langle\chi_if,A\chi_if\rangle
=\langle f,Af\rangle
-\frac12\sum_i
\langle f,[\chi_i,[\chi_i,A]]f\rangle.}
\tag{UAL.74}
\]

Indeed,

\[
[\chi,[\chi,A]]
=\chi^2A-2\chi A\chi+A\chi^2,
\tag{UAL.75}
\]

and summing (UAL.75) under (UAL.73) yields (UAL.74).

For a critical packet and matched selectors,

\[
f_r(x)=r^{-1}F(x/r),
\qquad
\chi_{i,r}(x)=\chi_i(x/r),
\tag{UAL.76}
\]

homogeneity of \(\Lambda^s\) gives

\[
\boxed{
\langle f_r,
[\chi_{i,r},[\chi_{i,r},\Lambda^s]]f_r\rangle
=r^{1-s}
\langle F,[\chi_i,[\chi_i,\Lambda^s]]F\rangle.}
\tag{UAL.77}
\]

For the terminal critical stock \(A=\Lambda\), (UAL.77) is order one:

\[
r^{1-1}=1.
\tag{UAL.78}
\]

For the critical viscous rate \(A=\Lambda^3\), it is order \(r^{-2}\):

\[
r^{1-3}=r^{-2}.
\tag{UAL.79}
\]

One heat-scale interval has length \(r^2\), so the integrated viscous IMS defect
is again order one. For fixed profiles with nonzero double-commutator form,
neither the terminal stock nor its viscous action acquires a small factor from
matched localization.

## 7. Material deformation requires an exponential moment

Let \(X(a,t)\) be the incompressible flow map and

\[
F(a,t):=D_aX(a,t).
\tag{UAL.80}
\]

For a material selector

\[
\chi(t,X(a,t))=\chi_0(a),
\tag{UAL.81}
\]

the spatial gradient is exactly

\[
\boxed{
\nabla_x\chi(t,X(a,t))
=F(a,t)^{-T}\nabla_a\chi_0(a).}
\tag{UAL.82}
\]

A transported covector \(k(t)=F(a,t)^{-T}k_0\) satisfies

\[
\partial_tk=-(\nabla u(X(a,t),t))^Tk.
\tag{UAL.83}
\]

The antisymmetric part of \(\nabla u\) does not change \(|k|\), so

\[
\frac d{dt}|k|
\leq |S(X(a,t),t)|\,|k|.
\tag{UAL.84}
\]

With

\[
\mathfrak a(a,t)
:=\int_0^t|S(X(a,s),s)|\,ds,
\tag{UAL.85}
\]

Gronwall gives

\[
\boxed{
|F(a,t)^{-T}k_0|
\leq e^{\mathfrak a(a,t)}|k_0|.}
\tag{UAL.86}
\]

The datum charge (BRC.11) controls

\[
\int_A\mathfrak a(a,t)^2\,da<\infty.
\tag{UAL.87}
\]

It does not control the exponential moment required by (UAL.82)--(UAL.86).
This failure is sharp even for volume-preserving deformation. Let \(A_n\) be
disjoint material cohorts with

\[
|A_n|=\frac{e^{-n}}n,
\tag{UAL.88}
\]

and on \(A_n\) use the incompressible constant strain over unit time

\[
S_n=\operatorname{diag}(-n,n,0).
\tag{UAL.89}
\]

Then

\[
F_n=\exp(S_n)
=\operatorname{diag}(e^{-n},e^n,1),
\qquad
\det F_n=1.
\tag{UAL.90}
\]

With the Frobenius norm,

\[
\mathfrak a_n=\int_0^1|S_n|\,dt=\sqrt2\,n.
\tag{UAL.91}
\]

Therefore the BRC material charge is finite:

\[
\boxed{
\sum_n|A_n|\mathfrak a_n^2
=2\sum_nne^{-n}<\infty.}
\tag{UAL.92}
\]

But for \(k_0=e_1\),

\[
F_n^{-T}e_1=e^ne_1,
\tag{UAL.93}
\]

and hence

\[
\boxed{
\sum_n|A_n||F_n^{-T}e_1|
=\sum_n\frac1n
=\infty.}
\tag{UAL.94}
\]

The cohorts are disjoint, so ancestry multiplicity is one. Incompressibility
does not repair the missing moment: it transfers contraction in one direction
into expansion in another, and the transported frequency can align with the
expanding covector direction.

This matrix-level construction is an exact obstruction to deriving the needed
frequency or selector-gradient moment from (BRC.11). It is not asserted to be
an isolated global Navier--Stokes evolution.

## 8. Exact theorem consequence

The calculations above prove two narrowly scoped implication obstructions. In
the pressure-complete kinematic test, finite source mass, finite material
\(L^2\) strain action, and multiplicity-one same-fluid ancestry do not imply
the recruited source/receiver coincidence bound (UAL.4). In the exact causal
heat-response map, finite source norm and finite response-measure mass do not
imply the HPF first moment (UAL.7). In symbols,

\[
\boxed{
\begin{aligned}
&\left\{
\int b<\infty,\quad
\int_A\mathfrak a^2<\infty,\quad
\operatorname{mult}\leq L
\right\}
\\
&\hspace{2cm}\not\Longrightarrow
\sup_{T<T_*}\mathcal T_M(T)<\infty,
\\
&\left\{
\int\|Q(t)\|_{\dot H^{-1/2}}dt<\infty,\quad
\iint d\mu<\infty
\right\}
\not\Longrightarrow
\iint|\xi|\,d\mu<\infty.
\end{aligned}}
\tag{UAL.95}
\]

At matched scale, fractional, pressure, high-pass, and quadratic IMS
localization defects carry exactly the same order as the missing first-moment
payment.

The statement in (UAL.95) does not say that the complete pressure-explicit
Navier--Stokes recurrence permits the q-adic pulse history. It says that a
proof cannot obtain the desired conclusion from the already paid scalar and
material budgets plus unweighted no-recount alone. Some additional identity
from the same recurrence must exclude, cancel, or charge that history.

The fixed-positive-volume branch (BRC.14)--(BRC.15) is unaffected. The
obstruction applies to the shrinking or repeatedly recruited cohorts for which
the visible material volume can tend to zero.

## 9. The three surviving in-method options

After (UAL.95), the pressure-explicit prefix route has exactly three live forms
of the missing payment.

### 9.1 A scale-weighted parent charge

Derive from the same pressure-explicit recurrence a datum-finite action which
already carries one inverse-length factor, for example a bound of the form

\[
\sup_{T<T_*}
\sum_{j\geq J}\lambda_j
\mu_T\{\lambda_j\leq|\xi|<\lambda_{j+1}\}
\leq C(u_0,\nu).
\tag{UAL.96}
\]

The weight in (UAL.96) cannot be inferred from bounded overlap; it must be
owned by an independently finite parent action in the one-fluid recurrence.

### 9.2 Joined signed adjacent-scale cancellation

Keep core, collar, complement, pressure, and high-pass leakage joined until
their opposite interface signs cancel, and prove the pressure-complete shell
contraction

\[
b_{j+1}(T)
\leq(1-\varepsilon)b_j(T)+r_j(T),
\qquad
\sup_{T<T_*}\sum_{j\geq J}r_j(T)<\infty,
\tag{UAL.97}
\]

with \(r_j\) paid independently from the datum. The commutators in
(UAL.61)--(UAL.72) must cancel or enter \(r_j\) before any positive regional
charges are taken.

### 9.3 A stronger same-label deformation moment

Prove from the one-fluid pressure-explicit history a datum-finite control
strong enough for transported covectors, such as

\[
\int_Ae^{c\mathfrak a(a,T)}\,d\vartheta_0(a)
\leq C(u_0,\nu)
\tag{UAL.98}
\]

for the actual record-carrying label measure \(d\vartheta_0\) and the required
positive constant \(c\), or an equivalent scale-sensitive geometric estimate
on \(F^{-T}\). The existing \(L^2\) logarithmic moment (BRC.11) does not imply
(UAL.98).

These are not three substitute theories. They are the three possible locations
of the same missing inverse-length payment inside Thomas's pressure-explicit
prefix theorem: parent ownership, signed interscale cancellation, or stronger
same-label deformation control.

## 10. Proof-status boundary

What is now proved:

\[
\begin{aligned}
&\text{unweighted source mass plus unweighted no-recount}
\not\Longrightarrow \sup_{T<T_*}\mathcal T_M(T)<\infty,\\
&\text{finite HPF mass plus }L_t^1\dot H_x^{-1/2}\text{ source}
\not\Longrightarrow \iint|\xi|\,d\mu<\infty,\\
&\text{material }L^2\text{ strain action}
\not\Longrightarrow\text{the transported first-frequency moment},\\
&\text{matched localization}
\not\Longrightarrow\text{a scale-small commutator error}.
\end{aligned}
\tag{UAL.99}
\]

What remains to be proved is one of (UAL.96)--(UAL.98) from the complete
pressure-explicit binomial history of the same datum. Until that additional
payment is derived, (BRC.31), (HPF.33), and (HPF.41) remain the same open
prefix interface viewed in material, Fourier-time, and q-adic coordinates.
