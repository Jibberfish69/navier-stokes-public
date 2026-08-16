# Thomas's balanced rip-cord material charge and recruited-source tail

Status: two datum-finite charges proved inside Thomas Birnie's one-fluid
reversible-intersection method; the record-to-material localization and the
recruited source/receiver coincidence tail remain explicit. This note continues
the fork after (RAM.17) in
`thomas-one-fluid-record-microscope-ancestry-reduction-20260803.md`. It does not
replace the pressure-explicit binomial tower and does not claim the odd-response
prefix theorem.

## 1. One fixed-viscosity history and its datum budgets

Let the same smooth, decaying, divergence-free velocity-pressure history solve

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\tag{BRC.1}
\]

on \([0,T)\), and put

\[
K_0:=\|u_0\|_2^2,
\qquad
S:=\frac12(\nabla u+\nabla u^T),
\qquad
\omega:=\nabla\times u.
\tag{BRC.2}
\]

The kinetic-energy identity and incompressibility give

\[
\|u(t)\|_2^2+2\nu\int_0^t\|\nabla u(s)\|_2^2\,ds=K_0,
\tag{BRC.3}
\]

and, on \(\mathbb R^3\),

\[
\|\omega\|_2^2=\|\nabla u\|_2^2,
\qquad
\|S\|_2^2=\frac12\|\nabla u\|_2^2.
\tag{BRC.4}
\]

Consequently every \(t<T\) satisfies

\[
\boxed{
\begin{aligned}
\int_0^t\|S(s)\|_2^2\,ds&\leq\frac{K_0}{4\nu},\\
\int_0^t\|\omega(s)\|_2^2\,ds&\leq\frac{K_0}{2\nu},\\
\int_0^t\|u(s)\|_2^2\,ds&\leq tK_0.
\end{aligned}}
\tag{BRC.5}
\]

These are three readouts of the one carrier. Pressure, transport, strain,
rotation, and viscosity have not been split into independent mechanisms.

## 2. Proved fixed-positive-volume material collar charge

Let \(X(a,t)\) be the incompressible flow map and

\[
F(a,t):=D_aX(a,t).
\tag{BRC.6}
\]

Then

\[
\partial_tF=(\nabla u)(X(a,t),t)F,
\qquad
\det F=1.
\tag{BRC.7}
\]

For any fixed material vector \(v\neq0\), with
\(e=Fv/|Fv|\),

\[
\frac d{dt}\log|Fv|=e\cdot S(X(a,t),t)e.
\tag{BRC.8}
\]

Write \(\sigma_{\max}(F)\) and \(\sigma_{\min}(F)\) for the largest and
smallest singular values and define the same-label strain action

\[
\mathfrak a(a,t):=\int_0^t|S(X(a,s),s)|\,ds.
\tag{BRC.9}
\]

Equation (BRC.8) and the corresponding inverse estimate imply

\[
\log\sigma_{\max}(F(a,t))\leq\mathfrak a(a,t),
\qquad
-\log\sigma_{\min}(F(a,t))\leq\mathfrak a(a,t).
\tag{BRC.10}
\]

Let \(A\) be any fixed material set of finite volume. Since
\(|X(A,s)|=|A|\), Cauchy--Schwarz in material time and (BRC.5) give the
datum-finite charge

\[
\boxed{
\int_A\mathfrak a(a,t)^2\,da
\leq
t\int_0^t\int_{X(A,s)}|S(x,s)|^2\,dx\,ds
\leq\frac{tK_0}{4\nu}.}
\tag{BRC.11}
\]

It follows that for every \(L>1\),

\[
\boxed{
\left|\left\{a\in A:\sigma_{\max}(F(a,t))\geq L\right\}\right|
\leq
\frac{tK_0}{4\nu(\log L)^2}.}
\tag{BRC.12}
\]

This directly charges the balanced lengthening collar. More explicitly,
suppose that on a subset \(G\subset A\), \(F\) contracts every unit vector in
one two-dimensional transverse material subspace by a factor at most
\(0<\rho<1\). The min--max characterization then puts the two smaller singular
values at most \(\rho\), and \(\det F=1\) forces

\[
\sigma_{\max}(F)\geq\rho^{-2}
\qquad\hbox{on }G.
\tag{BRC.13}
\]

Equations (BRC.11)--(BRC.13) give

\[
\boxed{
|G|
\leq
\frac{tK_0}{16\nu(\log(1/\rho))^2}.}
\tag{BRC.14}
\]

In particular, if every label in one fixed material core of volume
\(m>0\) undergoes that balanced transverse contraction, then

\[
\boxed{
\rho(t)
\geq
\exp\!\left[-\sqrt{\frac{tK_0}{16\nu m}}\right]>0.}
\tag{BRC.15}
\]

Thus a fixed positive-volume material core cannot reach zero transverse width
before a finite time while its compensating collar lengthens without bound.
No center wobble, loss of balance, or external supplier has been assumed.

There is a second datum-finite charge for physical escape. From
\(X(a,t)-a=\int_0^tu(X(a,s),s)\,ds\), volume preservation, and (BRC.5),

\[
\boxed{
\int_A|X(a,t)-a|^2\,da\leq t^2K_0.}
\tag{BRC.16}
\]

If \(\bar a_A\) and \(\bar X_A(t)\) are the material and current barycentres,
subtracting the mean only decreases the left side, so

\[
\int_A
\left|(X(a,t)-\bar X_A(t))-(a-\bar a_A)\right|^2da
\leq t^2K_0.
\tag{BRC.17}
\]

If initially \(|a-\bar a_A|\leq R_0\) on \(A\), then for every \(R>R_0\),

\[
\boxed{
\left|\left\{a\in A:|X(a,t)-\bar X_A(t)|\geq R\right\}\right|
\leq\frac{t^2K_0}{(R-R_0)^2}.}
\tag{BRC.18}
\]

Equations (BRC.11) and (BRC.16) are the joined material answer to the first
RAM.17 branch: a fixed positive material fraction cannot escape through either
infinite finite-time deformation or infinite physical travel.

### 2.1 Vorticity and circulation readouts

The same datum also pays the persistent core's vorticity occupancy:

\[
\boxed{
\int_0^t\int_{X(A,s)}|\omega(x,s)|^2\,dx\,ds
\leq\frac{K_0}{2\nu}.}
\tag{BRC.19}
\]

For example, if \(|\omega|\geq\Omega(s)\) throughout a fixed material cohort
of volume \(m\), then

\[
m\int_0^t\Omega(s)^2\,ds\leq\frac{K_0}{2\nu}.
\tag{BRC.20}
\]

For a material loop \(C_t\), Kelvin's identity for this same viscous history is

\[
\frac d{dt}\oint_{C_t}u\cdot d\ell
=\nu\oint_{C_t}\Delta u\cdot d\ell.
\tag{BRC.21}
\]

Pressure and the material transport terms contribute only closed-loop
gradients; viscosity is the circulation-change term. On any spanning surface
\(\Sigma_t\), Stokes and Cauchy--Schwarz give

\[
\left|\oint_{C_t}u\cdot d\ell\right|^2
\leq |\Sigma_t|\int_{\Sigma_t}|\omega|^2\,dA.
\tag{BRC.22}
\]

Thus retained circulation through a shrinking family of sections forces a
vorticity concentration, while changing the circulation invokes the viscous
row in (BRC.21). A three-dimensional charge from (BRC.22) additionally needs a
same-tube foliation or a trace/localization theorem; that extra statement is
not assumed here.

## 3. Exact localization hypothesis left by the persistent branch

The record-microscope result (RAM.17) is global and spectral. Equations
(BRC.11)--(BRC.18) act on fixed material labels. Their connection is therefore
the following explicit hypothesis, not an implicit identification:

\[
\begin{aligned}
\texttt{RecordCoreToPersistentCohort.A}:\quad
&\text{a record-carrying balanced persistent branch supplies one fixed}\\
&\text{material cohort }A,\ |A|=m>0,\text{ and a fixed positive fraction}\\
&\text{of its labels either has two transverse singular values }\rho_n\to0\\
&\text{or escapes to physical radius }R_n\to\infty\text{ before }T_*.
\end{aligned}
\tag{BRC.23}
\]

If (BRC.23) holds, (BRC.14) or (BRC.18) contradicts the persistent branch.
This is now a proved implication with explicit constants.

What is not proved by RAM.17 alone is (BRC.23). Escape from every fixed region
in the record microscope can mean escape relative to the shrinking microscope
length while the physical travel stays finite. Likewise, the visible
record-carrying cohort may have material volume \(m_n\to0\). In that case the
right side of (BRC.15) degenerates, and changing or vanishing label fractions
belong to the recruited-core branch. A localization theorem must make this
choice inside the same velocity-pressure history.

## 4. Proved datum-finite pressure-complete source charge

Keep the simultaneous whole-field pressure response inside the temporal-tower
source:

\[
\mathcal B(u,u)
:=(u\cdot\nabla)u+\nabla p
=\mathbb P((u\cdot\nabla)u)
=\mathbb P(\omega\times u).
\tag{BRC.24}
\]

Here \(\mathbb P\) is only the pressure-compressed notation for the complete
left side; it does not remove pressure from the physical history. The Sobolev
embedding \(\dot H^{1/2}\hookrightarrow L^3\), its dual
\(L^{3/2}\hookrightarrow\dot H^{-1/2}\), and
\(\dot H^1\hookrightarrow L^6\) give

\[
\begin{aligned}
\|\mathcal B(u,u)\|_{\dot H^{-1/2}}
&\leq C_{\rm NS}\|\omega\times u\|_{L^{3/2}}\\
&\leq C_{\rm NS}\|\omega\|_2\|u\|_6\\
&\leq C_{\rm NS}\|\nabla u\|_2^2.
\end{aligned}
\tag{BRC.25}
\]

The constant \(C_{\rm NS}\) contains only the three-dimensional Sobolev and
Riesz-transform constants. By (BRC.3),

\[
\boxed{
\int_0^t
\|\mathcal B(u,u)(s)\|_{\dot H^{-1/2}}\,ds
\leq\frac{C_{\rm NS}K_0}{2\nu}.}
\tag{BRC.26}
\]

This is a genuine datum-finite charge for the complete nonlinear-pressure
refill of the recruited branch. It is critical in space and belongs to the same
one-fluid equation.

## 5. Direct feed into the first odd response and the exact coincidence tail

At critical height, the first completed odd response in the canonical spine is

\[
\mathfrak R_{1/2,1}
=\mathcal P_{1/2}
=-\langle\mathcal B(u,u),\Lambda u\rangle.
\tag{BRC.27}
\]

Set

\[
b(t):=\|\mathcal B(u,u)(t)\|_{\dot H^{-1/2}},
\qquad
d(t):=\|u(t)\|_{\dot H^{3/2}}.
\tag{BRC.28}
\]

Duality gives

\[
[\mathfrak R_{1/2,1}(t)]_+\leq b(t)d(t).
\tag{BRC.29}
\]

For every cutoff \(M>0\) and every \(t<T\), (BRC.26) therefore gives

\[
\boxed{
\begin{aligned}
\int_0^t\mathfrak R_{1/2,1}(s)\,ds
&\leq\int_0^t[\mathfrak R_{1/2,1}(s)]_+\,ds\\
&\leq
\frac{MC_{\rm NS}K_0}{2\nu}
+\int_{\{s<t:\ d(s)>M\}}b(s)d(s)\,ds.
\end{aligned}}
\tag{BRC.30}
\]

The first term is now paid from the datum. The exact unpaid term is

\[
\boxed{
\mathcal T_M(t)
:=\int_{\{s<t:\ d(s)>M\}}
\|\mathcal B(u,u)(s)\|_{\dot H^{-1/2}}
\|u(s)\|_{\dot H^{3/2}}\,ds.}
\tag{BRC.31}
\]

Equivalently, (BRC.26) defines a finite same-history source measure
\(d\mu_{\mathcal B}=b(t)dt\), while (BRC.31) is its unresolved first moment in
the critical viscous receiver \(d(t)\). A datum-finite bound on
\(\sup_{t<T_*}\mathcal T_M(t)\) for one finite \(M\), or the stronger uniform
tail condition

\[
\lim_{M\to\infty}\sup_{t<T_*}\mathcal T_M(t)=0,
\tag{BRC.32}
\]

would prove the first odd upper-prefix bound and hence the critical-height roof
through (TIR.29). Equation (BRC.26) alone does not prove (BRC.32): it controls
the amount of source action, but not its coincidence with an arbitrarily large
receiver.

This is the recruited-core no-refill payment in exact pressure-complete form.
It is not a second source external to the fluid.

## 6. The moving-core identity and the localization/no-recount boundary

Let \(e=|u|^2/2\) and let \(0\leq\chi(t,x)\leq1\) be a smooth selector for a
visible core. The exact local kinetic-energy equality is

\[
\partial_te+
\nabla\cdot\bigl((e+p)u-\nu\nabla e\bigr)
=-\nu|\nabla u|^2.
\tag{BRC.33}
\]

Multiplication by \(\chi\) gives

\[
\boxed{
\begin{aligned}
\frac d{dt}\int\chi e\,dx
+\nu\int\chi|\nabla u|^2\,dx
={}&\int e(\partial_t\chi+u\cdot\nabla\chi)\,dx\\
&+\int(pu-\nu\nabla e)\cdot\nabla\chi\,dx.
\end{aligned}}
\tag{BRC.34}
\]

The first term on the right records changing material membership. The second
is the joined collar flux containing the same pressure response and viscosity.
For a material selector, \(\partial_t\chi+u\cdot\nabla\chi=0\); for a recruited
core it does not vanish. Complementary selectors cancel their shared internal
flux, so assigning separate positive ownership to the two sides would recount
one transfer.

To convert (BRC.34) into (BRC.31), a proof still has to localize the nonlocal
critical pairing \(-\langle\mathcal B,\Lambda u\rangle\) to the actual recruited
core while retaining its complement and pressure response. It must then show
that label entry, exit, and reconvergence do not repeatedly count the same
whole-field transfer. This is the precise localization/no-recount bridge; the
local energy equality itself does not supply it.

## 7. Heat-scale insufficiency test

The remaining tail cannot be deleted by the datum-finite source norm alone.
Under the fixed-viscosity Navier--Stokes scaling

\[
u_r(t,x)=r^{-1}U(t/r^2,x/r),
\tag{BRC.35}
\]

one heat-scale event has

\[
\|\mathcal B(u_r,u_r)\|_{\dot H^{-1/2}}\sim r^{-1},
\qquad
\|u_r\|_{\dot H^{3/2}}\sim r^{-1},
\qquad
|I_r|\sim r^2.
\tag{BRC.36}
\]

Hence

\[
\int_{I_r}b_r(t)\,dt\sim r,
\qquad
\int_{I_r}b_r(t)d_r(t)\,dt\sim1.
\tag{BRC.37}
\]

The same event has order-one material deformation while

\[
\int_{I_r}\int_{B_r}|\nabla u_r|^2\,dx\,dt\sim r.
\tag{BRC.38}
\]

Thus a freely prescribed geometric scale stack can have summable source and
dissipation costs while retaining order-one response or deformation at every
scale. This is an insufficiency test for estimates (BRC.26) and (BRC.11), not a
Navier--Stokes failure history: it reselects a profile at each scale and does
not prove same-datum pressure, ancestry, partners, or refill.

## 8. Exact advance and remaining theorem

The balanced rip-cord fork now has the following checked form:

\[
\boxed{
\begin{aligned}
&\text{fixed positive-volume persistent cohort}
+\text{ physical contraction/escape localization}\\
&\hspace{3cm}\Longrightarrow
\text{contradiction by (BRC.14) or (BRC.18)},\\[1mm]
&\text{recruited-core branch: datum-finite whole-field source mass (BRC.26),}\\
&\hspace{3cm}\text{with core localization and coincidence tail (BRC.31) unpaid.}
\end{aligned}}
\tag{BRC.39}
\]

The first line is proved once the record-to-material localization in
(BRC.23) is present. The second line pays the source mass but leaves its
high-receiver coincidence. The next theorem must therefore join RAM.17 to
either the fixed-cohort hypothesis or a same-history recruited-core estimate
that bounds (BRC.31), without splitting the complete signed current or
reinitializing the carrier at each finer scale.
