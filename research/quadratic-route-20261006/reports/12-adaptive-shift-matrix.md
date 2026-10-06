# Adaptive actual-time sampling: complete cancellation, stock and derivative price

6 October 2026. This is a new finite calculation on the actual same Navier–Stokes history. It constructs no other history, scalar schedule or forcing witness. It classifies only complete transport coefficients under incompressibility, while retaining every coefficient-work port that may depend on the history.

## 1. Original equation and actual sampling domain

The unchanged [native assembly J1–J5, LF1450–1501](../SOURCES.md#src-native-assembly), gives the full equation, both nonlinear parents upon differentiation and canonical pressure. Its [local pressure and complete corner identities J13a–d, LF1656–1725](../SOURCES.md#src-native-assembly) retain the pressure flux and all force/nonlinear/pressure pairings. The local combined [forced history, LF60–88](../SOURCES.md#src-forced-setting), fixes \(\nu>0,u_0\in H^\infty_\sigma,f\in C^\infty([0,\infty);\mathcal S)\). Its [kinetic identity, LF13–66](../SOURCES.md#src-compatible-rectangles), supplies the physical energy profile used below. These equations are source statements; the adaptive sampling construction is newly derived here.

Fix one actual classical pressure-normalized history on \([0,T_*)\), and a clock interval \(J=(a,b)\). Choose smooth actual sample maps \(\tau_i(t)=t+s_i(t)\) such that
\[
0\le\tau_i(t)<T_*,\qquad
U_i=u(\tau_i(t)),\quad P_i=p(\tau_i(t)),\quad F_i=f(\tau_i(t)),\quad
\lambda_i=\tau_i'=1+s_i'.
\tag{AS1}
\]
The speeds may be positive, zero or negative. They are scalar in space. Take \(\tau_i\in C^2_{\mathrm{loc}}(J)\) and symmetric \(Q\in C^1_{\mathrm{loc}}(J)\); the first row and energy identities need only \(C^1\) sample maps. Every integrated identity is initially on a strict compact clock subinterval. No whole-terminal uniformity is assumed.

Write \(L=-\Delta\), \(N(v,w)=(v\cdot\nabla)w\), \(B_i=N(U_i,U_i)\), and let \(V_i=u_t(\tau_i(t))\) denote the actual physical derivative, even where \(\lambda_i=0\). Then
\[
\begin{aligned}
U_i'&=\lambda_iV_i,\\
U_i'+\lambda_i(\nu LU_i+B_i+\nabla P_i)&=\lambda_iF_i,\\
P_i&=R_kR_\ell(U_{i,k}U_{i,\ell})-L^{-1}\operatorname{div}F_i.
\end{aligned}
\tag{AS2}
\]
This is the actual original equation evaluated at its sample times. No division by a vanishing speed is used. A stopped row does not erase the original physical derivative or its canonical pressure.

Differentiation retains the full two-parent and speed terms:
\[
\begin{aligned}
U_i''+\nu\lambda_i LU_i'
+\lambda_i\{N(U_i',U_i)+N(U_i,U_i')\}
+\lambda_i\nabla P_i'
&=\lambda_i^2 f_t(\tau_i)+\lambda_i'V_i,\\
P_i'&=\lambda_i p_t(\tau_i),\qquad
F_i'=\lambda_i f_t(\tau_i).
\end{aligned}
\tag{AS3}
\]
Thus the speed derivative carries the entire original physical row, including its nonlinear, force and pressure terms.

## 2. Full Gram, local flux and all endpoint terms

Set
\[
C_{ij}=\langle U_i,U_j\rangle,\quad K_{ij}=\langle\nabla U_i,\nabla U_j\rangle,
\quad D=\operatorname{diag}(\lambda_i),\quad
H=\frac{QD+DQ}{2},\quad A=\frac{QD-DQ}{2},\quad E_Q=\frac12Q:C.
\tag{AS4}
\]
The complete moving Gram and energy are
\[
\begin{aligned}
C_{ij}'={}&-\nu(\lambda_i+\lambda_j)K_{ij}
-\lambda_i\langle B_i,U_j\rangle-\lambda_j\langle U_i,B_j\rangle\\
&+\lambda_i\langle F_i,U_j\rangle+\lambda_j\langle U_i,F_j\rangle,\\
E_Q'+\nu H:K
={}&-W_{Q,D}+\mathcal F_{Q,D}+\frac12Q':C,\\
W_{Q,D}&=\sum_{i,j}Q_{ij}\lambda_j\langle U_i,B_j\rangle,\qquad
\mathcal F_{Q,D}=\sum_{i,j}Q_{ij}\lambda_j\langle U_i,F_j\rangle .
\end{aligned}
\tag{AS5}
\]
For any strict clock faces \(r<t\),
\[
E_Q(t)+\nu\int_r^tH:K
=E_Q(r)-\int_r^tW_{Q,D}+\int_r^t\mathcal F_{Q,D}
+\frac12\int_r^tQ':C.
\tag{AS6}
\]
Both endpoint stocks use the actual fields \(u(\tau_i(r)),u(\tau_i(t))\). A terminal limit of a general cross Gram has not been supplied merely by writing AS6.

For \(Q\succeq0\), the stock is nonnegative. The action \(H:K\) need not be nonnegative, even if every speed is nonnegative: a Jordan product of two PSD matrices need not be PSD. For two columns its determinant is
\[
\det H=Q_{00}Q_{11}\lambda_0\lambda_1
-\frac{Q_{01}^2(\lambda_0+\lambda_1)^2}{4}.
\tag{AS7}
\]
The cancelling diagonal class below does have positive action when its positively weighted sampling speeds are nonnegative.

Before spatial integration, define \(e_Q=\frac12\sum Q_{ij}U_i\cdot U_j\). The exact local identity is
\[
\begin{aligned}
\partial_te_Q+\operatorname{div}\!\left[
-\nu\sum_{i,j}Q_{ij}\lambda_j(U_i\cdot\nabla U_j)
+\sum_{i,j}Q_{ij}\lambda_jP_jU_i\right]
+\nu\sum_{i,j}H_{ij}\nabla U_i:\nabla U_j\\
=-\sum_{i,j}Q_{ij}\lambda_jU_i\cdot B_j
+\sum_{i,j}Q_{ij}\lambda_jU_i\cdot F_j
+\frac12\sum_{i,j}Q_{ij}'U_i\cdot U_j .
\end{aligned}
\tag{AS8}
\]
Here the \(k\)-component of \(U_i\cdot\nabla U_j\) in the diffusion flux means \(U_i\cdot\partial_kU_j\). With unequal speeds this is not simply \(\nabla e_Q\). Its exact decomposition is \(\nabla e_H+\sum A_{ij}U_i\cdot\nabla U_j\), where \(e_H=\frac12H:C\) pointwise. Every local pressure face remains. In the cancelling diagonal class, \(U_i\cdot B_i=\operatorname{div}(U_i|U_i|^2/2)\) gives the complete shifted kinetic transport flux.

## 3. Complete speed-weighted pressure square

Let \(Z_{ij}=\langle LU_i,LU_j\rangle\). Squaring the complete scaled rows AS2, then using only true full-space solenoidal orthogonality, gives
\[
\begin{aligned}
&\sum Q_{ij}\langle U_i',U_j'\rangle
+\nu^2(DQD):Z+(DQD):\operatorname{Gr}(\nabla P)\\
&\quad+\nu(H:K)'-\nu H':K
+2\nu\sum A_{ij}\langle U_i',LU_j\rangle
=(DQD):\operatorname{Gr}(F-B).
\end{aligned}
\tag{AS9}
\]
In particular the speed mismatch is
\(2A_{ij}=Q_{ij}(\lambda_j-\lambda_i)\). The derivative retained at the gradient stock is
\[
H'=\frac{Q'D+QD'+D'Q+DQ'}2 .
\tag{AS10}
\]
The exact integrated square has both stocks
\(\nu H(t):K(t)-\nu H(r):K(r)\), with \(-\nu\int H':K\) and the full mismatch integral. Its right side contains force–force, force–nonlinear, nonlinear–force and nonlinear–nonlinear terms, with both speeds. Neither pressure positivity nor kinetic cancellation bounds this square.

The local pressure faces in this square can also be displayed without any sign assumption. Pointwise, the right side of AS9 before converting its viscosity cross is the sum of its three quadratic terms, \(2\nu\sum Q_{ij}\lambda_jU_i'\cdot LU_j\), and
\[
2\operatorname{div}\!\left[
\sum Q_{ij}\lambda_jP_jU_i'
+\nu\sum(DQD)_{ij}P_jLU_i\right].
\tag{AS11}
\]
Integration of these displayed pressure divergences produces the actual boundary flux on a selected spatial domain. Full-space integration under the original regularity gives AS9. No pressure face is dropped in a local contraction.

## 4. Tested coefficient class, including stopped and reversed sampling

For distinct actual times use \(T(r,j,k)=\langle U_r,N(U_j,U_k)\rangle\). Incompressibility gives \(T(r,j,k)=-T(k,j,r)\). The exact complete paired coefficient is
\[
W_{Q,D}=\frac12\sum_{r,j,k}
\left[Q_{rj}\lambda_j\mathbf1_{k=j}
-Q_{kj}\lambda_j\mathbf1_{r=j}\right]T(r,j,k).
\tag{AS12}
\]
For \(r\ne j=k\) its coefficient is \(Q_{rj}\lambda_j\). The transposed matrix entry has a different advector, so opposite sampling speeds do not cancel these two transport coefficients. Complete formal coefficient cancellation using precisely this incompressibility identity is equivalent to
\[
Q_{ij}\lambda_i=Q_{ij}\lambda_j=0\qquad(i\ne j).
\tag{AS13}
\]
Thus every nonzero-speed row has only its diagonal weight. The zero-speed subblock can be any symmetric matrix. If \(z\) of \(m\) speeds are zero, this pointwise coefficient class has dimension \(m+z(z-1)/2\). Its PSD members have nonnegative active diagonal weights and a PSD stopped subblock. On an open interval where both sample speeds vanish, those sampled fields are constant; their stock changes only through the weight port. Reversed active speeds still permit kinetic coefficient cancellation but give negative diagonal viscosity in the forward clock.

This is a formal coefficient classification on the actual equations, not an independence assumption about the sampled values of one unforced history. No alternate solution or forcing profile is introduced to prove it. Actual-history special relations can further simplify a current. In particular \(Q'\) may itself depend on the history and cancel a signed nonlinear term; AS5 retains its full work. Such a cancellation would require an actual budget for the resulting coefficient port. AS13 does not rule it out.

If some actual times coincide, let \(R\) replicate the corresponding distinct-time groups. The coefficient matrix entering the current is \(R^TQD R\), which need not be symmetric at an isolated crossing. Complete coefficient cancellation then means its off-diagonal entries vanish. On an interval of persistent coincident groups the speeds also coincide within each group, and AS13 applies to the compressed weight and group speeds. A transient coincidence is not used to impose an interval-wide alias.

## 5. Exact two-time moving-gap algebra

Let \(\tau_1>\tau_0\), \(h=\tau_1-\tau_0>0\), so \(h'=\lambda_1-\lambda_0\), and put
\[
m=\frac{U_0+U_1}{2},\qquad d=\frac{U_1-U_0}{h},\qquad
v_m=\frac{V_0+V_1}{2},\quad v_d=\frac{V_1-V_0}{h},\quad
\bar\lambda=\frac{\lambda_0+\lambda_1}{2}.
\tag{AS14}
\]
The complete physical rows give
\[
\begin{aligned}
v_m+\nu Lm+N(m,m)+\frac{h^2}{4}N(d,d)+\nabla\bar P&=\bar F,\\
v_d+\nu Ld+N(m,d)+N(d,m)+\nabla P_d&=F_d .
\end{aligned}
\tag{AS15}
\]
Their canonical pressures are
\(\bar P=R_kR_\ell(m_km_\ell+h^2d_kd_\ell/4)-L^{-1}\operatorname{div}\bar F\) and
\(P_d=R_kR_\ell(m_kd_\ell+d_km_\ell)-L^{-1}\operatorname{div}F_d\).
All forces are the original actual-time mean/difference.

The clock derivatives are exactly
\[
m'=\bar\lambda v_m+\frac{hh'}4v_d
=\lambda_0v_m+\frac{h'}2V_1,\qquad
d'=\bar\lambda v_d+\frac{h'}h v_m-\frac{h'}h d
=\lambda_0v_d+\frac{h'}h(V_1-d).
\tag{AS16}
\]
Substitution of AS15 gives every speed-weighted nonlinear, viscous, force and pressure term. In particular the two pressure combinations are
\(\bar\lambda\bar P+hh'P_d/4\) and
\(\bar\lambda P_d+h'\bar P/h\), and the same combinations of \(\bar F,F_d\) are the force faces. The \(V_1\) response in the last expressions is the complete physical row, not a prescribed source-only field.

For the mean/difference weight \(\left(\begin{smallmatrix}\alpha&\gamma\\\gamma&\beta\end{smallmatrix}\right)\), the actual physical weight has
\[
Q_{00}=\frac\alpha4-\frac\gamma h+\frac\beta{h^2},\quad
Q_{11}=\frac\alpha4+\frac\gamma h+\frac\beta{h^2},\quad
Q_{01}=\frac\alpha4-\frac\beta{h^2}.
\tag{AS17}
\]
Use \(S(m,d,d)=\langle d,N(d,m)\rangle\), \(T_d=\langle d,N(m,m)\rangle\). Exact incompressibility gives
\[
\langle U_0,B_1\rangle=-hT_d-\frac{h^2}{2}S,\quad
\langle U_1,B_0\rangle= hT_d-\frac{h^2}{2}S,
\]
\[
\boxed{W_{Q,D}
=\left(\beta-\frac{\alpha h^2}{4}\right)
\left[\bar\lambda S(m,d,d)+\frac{h'}hT_d\right].}
\tag{AS18}
\]
Thus wherever at least one speed is active, complete coefficient cancellation remains \(\beta=\alpha h^2/4\); it cancels both displayed speed terms. The \(\gamma\) cross stock has no intrinsic nonlinear work. The PSD cancelling weight is exactly
\[
Q=\operatorname{diag}\left(\frac\alpha2-\frac\gamma h,
\frac\alpha2+\frac\gamma h\right),\qquad
\alpha\ge0,\quad|\gamma|\le\frac{\alpha h}{2}.
\tag{AS19}
\]
All moving-coordinate work is still contained in \(Q'\); balancing the coefficients does not remove it.

For example, the unnormalized actual stock
\[
E_{\mathrm{kin}}=\frac12\|m\|_2^2+\frac{h^2}{8}\|d\|_2^2
=\frac{e(\tau_0)+e(\tau_1)}4,\qquad e(s)=\|u(s)\|_2^2
\tag{AS20}
\]
has constant physical diagonal weights \(1/2,1/2\) and exact budget
\[
E_{\mathrm{kin}}'+\frac\nu2(\lambda_0Y(\tau_0)+\lambda_1Y(\tau_1))
=\frac12(\lambda_0F(\tau_0)+\lambda_1F(\tau_1)),
\quad Y=\|\nabla u\|_2^2,\quad F=\langle u,\mathbb Pf\rangle.
\tag{AS21}
\]
Every \(h'\) response and coefficient derivative has recombined correctly. Normalizing the full stock by \(h^{-2}\) adds its genuine work:
\[
(E_{\mathrm{kin}}/h^2)'
+\frac{\nu}{2h^2}\sum_i\lambda_iY(\tau_i)
=\frac1{2h^2}\sum_i\lambda_iF(\tau_i)
-\frac{h'}{2h^3}\{e(\tau_0)+e(\tau_1)\}.
\tag{AS22}
\]
No sign or upper payment for the last term is inserted.

## 6. General moving coordinates and sharp extraction

For an arbitrary finite invertible coordinate change \(Z=A_0(t)U\), storage weight \(P(t)\) induces
\[
Q=A_0^TPA_0,\qquad
Q'=A_0'^TPA_0+A_0^TP'A_0+A_0^TPA_0'.
\tag{AS23}
\]
The transformed momentum has \(Z'=A_0'U+A_0DV\), with every actual nonlinear, force and pressure coordinate of AS2. A basis change adds no cancellation class beyond AS13 and its coincident-group qualification.

For \(Q\succeq0\) and a nonzero stencil \(c\) targeting \(c^TU\), the optimal Hilbert-space extraction coefficient is
\[
2E_Q\ge\kappa_c\|c^TU\|_2^2,\qquad
\kappa_c=
\begin{cases}(c^TQ^\dagger c)^{-1},&c\in\operatorname{Ran}Q,\ c\ne0,\\
0,&c\notin\operatorname{Ran}Q .
\end{cases}
\tag{AS24}
\]
For a physical diagonal weight and \(c=(-1/h,1/h)\), including zero weights by coefficient zero,
\[
\kappa_h=\frac{h^2q_0q_1}{q_0+q_1}
\le\frac{Mh^2}{4},\qquad M=q_0+q_1.
\tag{AS25}
\]
The all-zero weight has \(\kappa_h=0\). A general PSD two-column weight of trace \(M\) only obeys the larger sharp bound \(Mh^2/2\); the physical difference matrix attains it and retains the intrinsic current except where both sample speeds vanish. These are coefficient facts, not assertions of actual stock divergence.

More precisely, for the actual face energies \(e_i=e(\tau_i)\), a physical diagonal stock with \(\kappa_c\ge\kappa_0>0\) obeys
\[
\boxed{E_Q\ge\frac{\kappa_0}{2}
\left(\sum_i|c_i|\sqrt{e_i}\right)^2 .}
\tag{AS26}
\]
This is weighted Cauchy–Schwarz applied to
\((\sum q_ie_i)(\sum c_i^2/q_i)\). It is sharp on a stencil with positive face energies: weights \(q_i\propto |c_i|/\sqrt{e_i}\), no unused mass, attain equality with the prescribed coefficient. When a used energy vanishes, the same inequality holds; a minimizing value can instead be an infimum. For the first difference it says
\[
E_Q\ge\frac{\kappa_0}{2h^2}
(\sqrt{e(\tau_0)}+\sqrt{e(\tau_1)})^2,\qquad
q_i\ge\frac{\kappa_0}{h^2}.
\tag{AS27}
\]

## 7. What genuinely pays a positive total stock

Take a finite physical horizon \(T\le T_*\), \(T<\infty\), and require actual sample times below \(T\). The original kinetic budgets are
\[
K=\|u_0\|_2+\int_0^T\|\mathbb Pf(s)\|_2\,ds,\quad
e(s)\le K^2,\quad \int_0^TY(s)\,ds\le\frac{K^2}{2\nu}.
\tag{AS28}
\]
For diagonal nonnegative weights, \(E_Q=\frac12\sum q_ie(\tau_i)\) exactly, so bounded mass gives \(E_Q\le K^2\sum q_i/2\). If \(\tau_i\) are nondecreasing and \(0\le q_i\le\bar q_i\), their positive action has the independent original bound
\[
\int_a^b\sum q_i\lambda_iY(\tau_i)\,dt
\le\sum_i\bar q_i\int_{\tau_i(a)}^{\tau_i(b)}Y(s)\,ds
\le\frac{K^2}{2\nu}\sum_i\bar q_i.
\tag{AS29}
\]
The substitution is valid also with flat pieces. Likewise the absolute force work is at most
\(\sum_i\bar q_i K\int_0^T\|\mathbb Pf\|\). There is also a genuinely paid signed coefficient primitive without assuming finite weight variation: since \(W=0\), AS6 gives exactly
\[
\frac12\int_r^t\sum_iq_i'e(\tau_i)
=E_Q(t)-E_Q(r)+\nu\int_r^t\sum_iq_i\lambda_iY(\tau_i)
-\int_r^t\sum_iq_i\lambda_iF(\tau_i).
\tag{AS29a}
\]
Using the already paid current stock, positive physical action and force work gives a uniform absolute prefix bound
\(\sum_i\bar q_i[K^2+K\int_0^T\|\mathbb Pf\|]\).
It need not give absolute integrability of the coefficient work or an endpoint limit for oscillating weights. If one instead bounds that work pointwise in absolute value, its price is \(K^2\sum_i\int|q_i'|/2\), and \(C^1_{\mathrm{loc}}\) alone does not assert finite variation. When all weights are nonincreasing their diagonal port is nonpositive. Thus bounded-mass cancellation gives an actual paid stock, action and signed coefficient primitive, but its shrinking-gap extraction coefficient vanishes.

A reverse monotone sample traverses a physical interval in the opposite direction. Its signed viscosity in AS5 is negative; positivity cannot be recovered by simply changing its label. The absolute physical action can separately be integrated over that reversed interval. For paths making repeated excursions, a bound on their physical-time multiplicity would pay \(\int|\lambda_i|Y(\tau_i)\); arbitrary smooth sampling alone does not provide that bound.

Diverging diagonal mass does not imply diverging actual energy. An exact history-dependent illustration uses the actual energy itself, not an invented profile. On any interval where \(e(\tau_i)>0\), choose \(q_i=c_i/e(\tau_i)\), with fixed \(c_i>0\). Its stock is constant, yet its full weight work is
\[
E_Q=\frac12\sum c_i,\qquad
\frac12\int_r^t\sum q_i'e(\tau_i)\,ds
=-\frac12\sum_i c_i\log\frac{e(\tau_i(t))}{e(\tau_i(r))}.
\tag{AS30}
\]
If these actual energies tend to zero, this signed port tends to \(+\infty\). The exact kinetic action and prescribed force terms remain in AS5; a constant normalized stock has not paid their work. A fixed positive regularization \(q_i=c_i/(\eta+e_i)\) yields bounded mass and stock; its coefficient work has primitive
\(-c_i[\log(\eta+e_i)+\eta/(\eta+e_i)]/2\). Its first-difference extraction still vanishes with \(h^2\). No assertion that a zero-energy terminal branch occurs is made by these conditional identities.

## 8. One terminal curve versus a genuine row-recovering family

First consider one curve \(\tau_0(t),\tau_1(t)\to T_*\), \(h(t)\to0\), on which the diagonal cancelling class has \(\kappa_h\ge\kappa_0\). If its total stock is bounded by \(B\), AS27 requires
\[
e(\tau_i(t))\le\frac{2Bh(t)^2}{\kappa_0},\qquad
\sqrt{e(\tau_0(t))}+\sqrt{e(\tau_1(t))}
\le \sqrt{\frac{2B}{\kappa_0}}\,h(t).
\tag{AS31}
\]
The physical kinetic identity gives a scalar limit \(e_*\) at a finite terminal time. If \(e_*>0\), AS27 gives \(\liminf h^2E_Q\ge2\kappa_0e_*\), hence actual stock divergence. If \(e_*=0\), mass growth alone proves no such divergence: bounded stock requires the exact \(O(h^2)\) face-energy condition above. The known kinetic action supplies no such rate by itself. These implications are restricted to actual active points in the diagonal coefficient class; a stationary off-diagonal block is not silently treated as diagonal.

When both sample times approach the terminal face, the weak \(L^2\) trace and scalar \(e_*\) do not alone identify their cross Gram. The fixed separated-shift formula with one strict lagged field is not reused while its gap collapses. General off-diagonal stocks retain their actual strict endpoint Gram until its limit is justified. A single terminal curve also gives no pointwise recovery of \(u_t\) at fixed earlier times.

Now consider a genuine first-row recovering family on the actual physical clock: \(\tau_{0,\varepsilon}(t)=t\), \(\tau_{1,\varepsilon}(t)=t+h_\varepsilon(t)<T_*\), with \(h_\varepsilon(t)>0\) and \(h_\varepsilon(t)\to0\) at every fixed actual time. The first speed equals one. Thus complete coefficient cancellation forces physical diagonal weights everywhere, regardless of the second speed. Suppose their extraction coefficient is uniformly at least \(\kappa_0>0\). At every strict time with \(u(t)\ne0\), actual continuity and AS27 imply
\[
E_\varepsilon(t)\ \ge\
\frac{\kappa_0}{2h_\varepsilon(t)^2}
(\sqrt{e(t)}+\sqrt{e(t+h_\varepsilon(t))})^2
\longrightarrow+\infty .
\tag{AS32}
\]
This uses only the actual history. If it is nonzero at any strict time, continuity supplies an open interval of nonzero velocity. Fatou on that interval then gives
\(\liminf_{\varepsilon\to0}\int E_\varepsilon\,dt=+\infty\).
For varying family domains, extend only the nonnegative comparison stock by zero outside each domain, provided every fixed point in that interval is eventually sampled. No velocity is continued beyond its original domain.

Consequently this tested cancelling family cannot have a uniform pointwise or integrated total stock with a fixed positive derivative extraction coefficient on a nonzero actual strict history. This conclusion holds even if its terminal scalar kinetic limit is zero. It does not apply to a single curve shrinking only at the terminal time, to both-stopped off-diagonal sampling blocks, or to adaptive non-diagonal constructions that keep and actually pay their nonlinear/weight ports.

The same stock inequality applies to general diagonal stencils whose sample times approach one fixed actual time. It also applies algebraically to affine force-compensated columns tending to that same nonzero velocity, with every compensating source still present. For example the actual two columns
\(Z_0=U_0+hG_h/2,\ Z_1=U_1-hG_h/2\),
where \(G_h=h^{-1}\int_{\tau_0}^{\tau_1}\mathbb Pf\), tend to \(u(t)\) on strict windows. Their difference is the actual compensated quotient. This observation is a positive-stock implication only; it does not omit or newly certify a compensated source balance.

## 9. Exact finite checks and bounded result

The [new exact checker](../checks/adaptive-shifts/validate.py) and [results](../checks/adaptive-shifts/coefficient-check.json) test the coefficient class with positive, zero and reversed speed patterns, the full two-time moving-gap contraction and the complete gradient-stock/speed-mismatch decomposition using exact rational arithmetic. They check algebra, not a surrogate history.

The result is the exact adaptive same-history momentum, prolonged row, local flux, full pressure/source square and both endpoint stocks; the complete formal moving-speed coefficient class; the sharp actual-energy extraction price; known bounded-weight monotone-clock budgets; and the distinct conclusions for one terminal curve and a genuine row-recovering family. A possible history-dependent cancellation through \(Q'\), or another paid adaptive nonlinear relationship, is retained as its actual work and remains outside the tested coefficient classification. No global sign, terminal norm bound, pressure-Hessian sign, derivative positivity or upper primitive is assumed.
