# Actual signed strain: complete evolution and exact storage reduction

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New bounded derivation from the original pressure-complete mixed rows. The question is whether the actual regularized receiver supplies an upper payment for its signed strain primitive before separate norm estimates. All identities below first hold on a strict classical interval [0,t], t<T. The regularization delta is fixed and positive. No endpoint derivative trace, pressure sign, terminal rectangle, or zero-delta limit is assumed.

The direct receiver pairing reduces exactly to the previously derived joint-storage identity, including its initial and boundary stocks. The differentiated strain uses additional original spatial rows, but keeps opposing deformation squares, two pressure contributions and viscous commutators. Its causal integral reduces to the differentiated joint identity when those same rows are substituted. This calculation therefore supplies no independent datum-paid upper bound for the signed primitive.

## 1. Original rows, definitions and full pressure response

The primary inputs are [assembly (1)–(5), LF20–70](../SOURCES.md#S152), [the original mixed recurrences, LF116–149](../SOURCES.md#S117), and [the original pressure-complete rectangle square, LF189–251](../SOURCES.md#S118). Their identities and hashes, together with all earlier protected artifacts, are in [before.json](../COVERAGE.md#A0606).

Write L=-Delta, N(a,b)=(a·grad)b and P for the Leray projection. The actual physical rows are

\[
 u_t+\nu Lu+N(u,u)+\nabla p=f,\qquad \operatorname{div}u=0,
\]

\[
 u_{tt}+\nu Lu_t+N(u,u_t)+N(u_t,u)+\nabla p_t=f_t.
 \tag{SS1}
\]

Put

\[
 g=\mathbb P f,\quad \chi=L^{-1}\operatorname{div}f,\quad
 p_0=R_iR_j(u_i u_j),\quad p=p_0-\chi,
\]

\[
 q(u)=-\mathbb P N(u,u),\qquad
 Dq(u)[a]=-\mathbb P[N(u,a)+N(a,u)],
 \qquad h=u_t-g=q(u)-\nu Lu.
 \tag{SS2}
\]

In particular grad chi=-(I-P)f; the force need not be solenoidal. Set

\[
 e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,\quad
 b=e+\delta,\quad d=e+3\delta,\quad
 \lambda=\frac{\nu Y}{b},\quad w=h+\lambda u,\quad \delta>0.
 \tag{SS3}
\]

These are coordinates of the same original history. Both h and w are solenoidal. Define the actual signed strain and its primitive by

\[
 S(t)=\int_{\mathbb R^3}w_iw_j\partial_j u_i\,dx,
 \qquad I_\delta(t)=-\int_0^t S(s)\,ds.
 \tag{SS4}
\]

Let J=-N(u,g)-N(g,u)-nu Lg and j_g=P J=Dq(u)[g]-nu Lg. Differentiating the original temporal row, compensating g_t, and adding lambda u gives the complete physical equation

\[
 w_t+\nu Lw+N(u,w)+N(w,u)+\nabla(p_t+\lambda p)
 =f_t-g_t+J+\lambda f+\lambda N(u,u)+\lambda' u.
 \tag{SS5}
\]

No gradient or temporal source is omitted here. Since f_t-g_t=-grad chi_t and lambda(f-g)=-lambda grad chi, they cancel precisely against the prescribed-gradient pieces of p_t+lambda p. Thus the equivalent row is

\[
 w_t+\nu Lw+N(u,w)+N(w,u)+\nabla\rho
 =J+\lambda g+\lambda N(u,u)+\lambda' u=:\mathcal F_w,
 \qquad \rho=p_{0,t}+\lambda p_0.
 \tag{SS6}
\]

The remainder F_w includes intrinsic nonlinear and lambda' terms; it is not a prescribed force. Its canonical pressure response is explicitly

\[
 \rho=R_iR_j\left(
 u_iw_j+w_i u_j+u_i g_j+g_i u_j-\lambda u_i u_j\right).
 \tag{SS7}
\]

The two w parents, two g parents and the negative lambda term remain. Projecting SS6 gives

\[
 w_t+\nu Lw=Dq(u)[w]+j_g+\lambda(g-q)+\lambda'u.
 \tag{SS8}
\]

## 2. Receiver pairing with every boundary stock

Kinetic pairing and the actual Gram give

\[
 e'=-2\nu Y+2F=-2b\lambda+2F,\quad
 F=\langle u,g\rangle,\quad
 \langle u,h\rangle=-\nu Y,\quad
 \langle u,w\rangle=-\delta\lambda.
 \tag{SS9}
\]

The last inner product is not zero. Pair SS6 with w. The transport pairing vanishes by div u=0; pressure and gradient source pairings vanish by div w=0. The second ordered nonlinear parent is exactly S. Consequently

\[
 -S=R_w'+\nu\|\nabla w\|_2^2
 -\langle w,j_g\rangle-\lambda\langle w,g\rangle
 +\lambda\langle w,q\rangle,
 \qquad R_w=\tfrac12\left(\|w\|_2^2+\delta\lambda^2\right).
 \tag{SS10}
\]

The delta lambda² stock is the exact primitive of -lambda'<u,w>. Integrating gives

\[
 \boxed{\displaystyle
 I_\delta(t)=R_w(t)-R_w(0)
 +\nu\int_0^t\|\nabla w\|_2^2\,ds
 -\int_0^t\langle w,j_g\rangle\,ds
 -\int_0^t\lambda\langle w,g\rangle\,ds
 +\int_0^t\lambda\langle w,q\rangle\,ds.}
 \tag{SS11}
\]

Every initial quantity is generated from u_0, nu and delta: h(0)=q(u_0)-nu Lu_0 and w(0)=h(0)+lambda(0)u_0. There is no terminal datum on the right. There is, however, the actual unknown boundary stock R_w(t).

To test whether the last intrinsic pairing cancels independently, use q=w-lambda u+nu Lu and retain the exact lambda derivative. Differentiating b lambda=nu Y and using Y'=2<Lu,w-lambda u+g> gives

\[
 b\lambda'=2\nu\langle Lu,w+g\rangle-2\lambda F.
 \tag{SS12}
\]

With C=b lambda²/4, this yields

\[
 \nu\lambda\langle Lu,w\rangle
 =C'+\tfrac12 b\lambda^3+\tfrac12\lambda^2F
 -\nu\lambda\langle Lu,g\rangle,
\]

\[
 \lambda\langle w,q\rangle
 =\lambda\|w\|_2^2+\delta\lambda^3
 +\nu\lambda\langle Lu,w\rangle.
 \tag{SS13}
\]

Substitute these equalities into SS10 before estimating anything. The boundary stock becomes

\[
 \Phi_\delta=R_w+C
 =\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4b}
 =\tfrac12\|w\|_2^2+\tfrac14d\lambda^2,
\]

and the whole identity is precisely

\[
 \boxed{\displaystyle
 -S=\Phi_\delta'
 +\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2+\tfrac12d\lambda^3
 -\langle w,j_g\rangle-\lambda\langle q,g\rangle
 -\tfrac12\lambda^2F.}
 \tag{SS14}
\]

Thus SS11 is exactly the [previous joint-storage law](A0729-zero-reciprocal-joint-strain-necessity.md), with Phi(t)-Phi(0) retained. It supplies no independent upper payment. The earlier finite full-source price still gives its lower necessity, not an upper bound on its positive boundary/action terms.

The same reduction can be checked directly in the nonlinear current:

\[
 S(u,w,w)=S(u,h,h)-\lambda\langle h,q\rangle.
 \tag{SS15}
\]

Indeed S(u,u,h)=0 and S(u,u,u)=0 by solenoidality, while S(u,h,u)=<h,N(u,u)>=-<h,q>. Pairing the h row yields
\(-S(u,h,h)=\tfrac12(\|h\|_2^2)'+\nu\|\nabla h\|_2^2-\langle h,j_g\rangle\).
Combining it with SS15 again yields SS14. These are exact construction-specific cancellations, rather than a claim that strain has a favorable sign.

## 3. Original gradient commutator and complete strain evolution

For this section let A_ij=partial_j u_i be the physical velocity-gradient matrix, not the positive spatial operator L. Put D=(A+A^T)/2, Omega=(A-A^T)/2 and H_p=grad²p. The Eulerian-to-material conversion is derived, not substituted for the source's time derivative:

\[
 D_t=\partial_t+u_k\partial_k,\qquad
 [D_t,\partial_j]u_i=-(\partial_j u_k)(\partial_k u_i),
\]

\[
 D_t A=\nu\Delta A-A^2-H_p+\nabla f,
 \qquad
 D_t w=\nu\Delta w-Aw-\nabla\rho+\mathcal F_w.
 \tag{SS16}
\]

The first equation is the original n=0, alpha=e_j mixed row, with its entire commutator. Material reconstruction of h=nu Delta u-N(u,u)-grad p_0 also retains

\[
 [D_t,\Delta]u=-(\Delta u\cdot\nabla)u
 -2\sum_k(\partial_k u\cdot\nabla)\partial_k u,
 \qquad [D_t,\nabla]p_0=-A^T\nabla p_0.
\]

These terms reassemble into the complete first-binomial h row; they are not removed by treating a material derivative as an Eulerian derivative. Differentiate the actual integral S=integral w^T A w. Divergence freedom cancels the integral of u·grad(w^T A w). Integration by parts in all three viscous product terms gives

\[
 \begin{aligned}
 S'={}&-2\nu\sum_k\int(\partial_k w)^T D(\partial_k w)\,dx
       -4\nu\sum_k\int(\partial_k w)^T(\partial_kD)w\,dx\\
 &-\int|Aw|^2\,dx-2\int w^TA^2w\,dx\\
 &-2\int\nabla\rho\cdot Dw\,dx
       -\int w^TH_pw\,dx\\
 &+2\int\mathcal F_w\cdot Dw\,dx
       +\int w^T(\nabla f)w\,dx.
 \end{aligned}
 \tag{SS17}
\]

In particular, the first-response pressure and physical pressure Hessian do not disappear when the pairing is differentiated. The source includes J, lambda g, lambda N(u,u) and lambda'u exactly as in SS6.

The deformation has the useful exact signed-square decomposition

\[
 -|Aw|^2-2w^TA^2w
 =-3|Dw|^2+|\Omega w|^2-2(Dw)\cdot(\Omega w)
 =|A^Tw|^2-4|Dw|^2.
 \tag{SS18}
\]

Both signs are retained. The delta regularization is still present in w and lambda' through SS3 and SS12. This is not a coercive remainder of one sign.

There is one exact physical pressure/source-gradient cancellation:

\[
 -H_p+\nabla f=-\nabla^2p_0+\nabla g.
 \tag{SS19}
\]

It follows from p=p_0-chi and f=g-grad chi. It removes only the prescribed gradient contribution, not the nonlinear pressure Hessian. The nonlinear pressure satisfies

\[
 -\Delta p_0=\operatorname{tr}(A^2),\qquad
 \operatorname{tr}(A^2+\nabla^2p_0)=0.
\]

Thus the contraction with sym(A²)+grad²p_0 sees the trace-free part of w tensor w. This trace relation assigns no sign to that remaining anisotropic contraction. The canonical rho in SS7 likewise remains in its full signed pairing in SS17.

### Intrinsic pressure cancellation and signed completion before norms

Define the two actual linearized pressure potentials

\[
 \pi_w=R_iR_j(u_iw_j+w_i u_j),\qquad
 \pi_g=R_iR_j(u_i g_j+g_i u_j).
\]

SS7 says rho=pi_w+pi_g-lambda p_0, while J=j_g+grad pi_g. Hence the entire pi_g contribution cancels between the original response pressure and raw source, and lambda(N(u,u)+grad p_0)=-lambda q. The complete intrinsic row becomes

\[
 w_t+\nu Lw+N(u,w)+N(w,u)+\lambda w+\nabla\pi_w
 =j_g-\lambda\nu Lu+(\lambda'+\lambda^2)u+\lambda g.
 \tag{SS24}
\]

This removes no prescribed pressure: j_g retains both projected source parents and their pressure contraction, and SS5–7 retain their full unprojected representatives. In the material strain equation it gives

\[
 \begin{aligned}
 S'+2\lambda S={}&\mathcal V
 +\|A^Tw\|_2^2-4\|Dw\|_2^2
 -2\langle\nabla\pi_w,Dw\rangle
 -\int w^T\nabla^2p_0w\,dx\\
 &+\int w^T(\nabla g)w\,dx
 +2\langle j_g-\lambda\nu Lu+\lambda g,Dw\rangle
 -(\lambda'+\lambda^2)c,
 \qquad c=\langle w,q\rangle,
 \end{aligned}
 \tag{SS25}
\]

where V is the full pair of viscous integrals on the first line of SS17. The last term follows from the construction-specific integral identity 2<u,Dw>=-<w,q>; the u^T A w contribution integrates to zero and u^T A^T w pairs to <w,N(u,u)>.

The exact Poisson equation -Delta pi_w=2 tr(A grad w) supplies a further pressure completion. Since div(Aw)=tr(A grad w),

\[
 \langle\nabla\pi_w,Aw\rangle
 =-\tfrac12\|\nabla\pi_w\|_2^2,
 \qquad
 -2\langle\nabla\pi_w,Dw\rangle
 =\tfrac12\|\nabla\pi_w\|_2^2
 -\langle\nabla\pi_w,A^Tw\rangle.
\]

Thus the entire deformation and response-pressure bundle in SS25 is exactly

\[
 \boxed{\displaystyle
 -4\|Dw\|_2^2
 +\|A^Tw-\tfrac12\nabla\pi_w\|_2^2
 +\tfrac14\|\nabla\pi_w\|_2^2.}
 \tag{SS26}
\]

This is a genuine cancellation/completion before norm separation, with both opposing signed contributions retained. The positive squares increase S' and decrease the corresponding causal I_delta contribution; the negative Dw-square has the reverse orientation. The base pressure Hessian remains: with pi_ww=R_iR_j(w_iw_j), it is exactly

\[
 -\int w^T\nabla^2p_0w\,dx
 =-\langle\nabla p_0,\nabla\pi_{ww}\rangle,
 \qquad -\Delta\pi_{ww}=\operatorname{tr}((\nabla w)^2).
\]

No Hessian positivity is inferred from this signed cross pairing. The mixed viscous terms, full source terms and regularization term in SS25 remain complete.

The actual construction allows a deeper base-pressure substitution before any norm estimate. From w=nu Delta u-N(u,u)-grad p_0+lambda u,

\[
 \nabla p_0=\nu\Delta u-N(u,u)+\lambda u-w.
\]

For the full unprojected B_ww=N(w,w), integrate the Hessian once and use <u,B_ww>=-S and <w,B_ww>=0. The exact result is

\[
 \boxed{\displaystyle
 -\int w^T\nabla^2p_0w\,dx
 =\nu\langle\Delta u,B_{ww}\rangle
 -\langle N(u,u),B_{ww}\rangle-\lambda S.}
 \tag{SS29}
\]

Both raw nonlinear/viscous pairings remain. Replacing B_ww by P B_ww in this pressure identity would incorrectly remove the very gradient contribution under evaluation. Substituting SS29 into SS25 moves a third lambda S to the left:

\[
 \begin{aligned}
 S'+3\lambda S={}&\mathcal V-4\|Dw\|_2^2
 +\|A^Tw-\tfrac12\nabla\pi_w\|_2^2
 +\tfrac14\|\nabla\pi_w\|_2^2\\
 &+\nu\langle\Delta u,B_{ww}\rangle
 -\langle N(u,u),B_{ww}\rangle
 +\int w^T(\nabla g)w\,dx\\
 &+2\langle j_g-\lambda\nu Lu+\lambda g,Dw\rangle
 -(\lambda'+\lambda^2)c.
 \end{aligned}
 \tag{SS30}
\]

This is a verified construction-specific pressure cancellation, not a Hessian sign assumption. It exposes extra damping while retaining the replacement pressure work as two full unprojected contractions.

## 4. Initial strain, causal primitive and exact redundancy test

Let E(s) be the entire right-hand side of SS17. No term is removed or separately bounded. On every strict prefix,

\[
 S(t)=S(0)+\int_0^t E(s)\,ds,\qquad
 I_\delta(t)=-tS(0)-\int_0^t(t-s)E(s)\,ds.
 \tag{SS20}
\]

The initial strain S(0) is the actual datum-generated integral, with w(0) given after SS11. All integrals are justified by the classical finite-order regularity on a strict prefix. Their whole-terminal integrability is not asserted.

The deformation contribution to this causal primitive is

\[
 \int_0^t(t-s)\left(4\|Dw\|_2^2-\|A^Tw\|_2^2\right)ds.
\]

Its positive term is therefore not an upper payment. The mixed viscous terms, both pressure terms, complete source work and lambda' term remain alongside it. None is assigned a favorable sign. The previously paid kinetic and weighted-first-row measures do not supply estimates for this complete combination in the executed calculation.

To test whether SS20 is genuinely new scalar closure, denote the full joint action density and complete force work by

\[
 \mathcal D_\delta=\nu\|\nabla w\|_2^2
 +\lambda\|w\|_2^2+\tfrac12d\lambda^3,\qquad
 \mathcal G_\delta=\langle w,j_g\rangle
 +\lambda\langle q,g\rangle+\tfrac12\lambda^2F.
\]

SS14 says H=Phi'+D_delta-G_delta=-S. Differentiating gives E=-H'. Consequently the causal formula is exactly

\[
 \begin{aligned}
 I_\delta(t)
 &=tH(0)+\int_0^t(t-s)H'(s)\,ds\\
 &=\int_0^tH(s)\,ds\\
 &=\Phi_\delta(t)-\Phi_\delta(0)
   +\int_0^t\mathcal D_\delta(s)\,ds
   -\int_0^t\mathcal G_\delta(s)\,ds.
 \end{aligned}
 \tag{SS21}
\]

The initial term cancels against the integration-by-parts face -tH(0); the terminal weight is zero, while the original Phi(t) boundary stock remains. Substitution of the complete original rows into SS17 and substitution into the derivative of SS14 describe the same scalar equality. The material formula is useful explicit information about all retained pressures and commutators, but it is not an additional upper primitive estimate.

### Datum-paid damping clock with its complete regularization work

The intrinsic row SS24 has nonnegative damping lambda. For K=||u_0||_2+integral_0^T||g||_2, kinetic dissipation gives

\[
 \Lambda(t):=\int_0^t\lambda(s)\,ds
 \le\frac\nu\delta\int_0^T Y(s)\,ds
 \le\frac{K^2}{2\delta}.
\]

Therefore its exact integrating factor is datum-bounded for fixed delta. Let R_0 be the whole right-hand side of SS25 except -(lambda'+lambda²)c, including SS26's three terms. Define

\[
 k(t,s)=\int_s^t\exp\left(-2\int_s^r\lambda(a)\,da\right)dr,
 \qquad \partial_s k=-1+2\lambda(s)k,
\]

with exp(-K²/delta)(t-s)<=k(t,s)<=t-s. Solving the actual strain equation and integrating once gives

\[
 I_\delta(t)=-k(t,0)S(0)
 -\int_0^t k(t,s)R_0(s)\,ds
 +\int_0^t k(t,s)(\lambda'+\lambda^2)c(s)\,ds.
 \tag{SS27}
\]

Integrating its regularization derivative by parts retains the initial face:

\[
 \int_0^t k(\lambda'+\lambda^2)c
 =-k(t,0)\lambda(0)c(0)
 +\int_0^t\lambda c
 -\int_0^t k\lambda(c'+\lambda c).
\]

The actual mixed pairing c=<w,q>=<h,q> has no lambda' in its derivative, because <u,q>=0. Direct use of SS8 and q_t=Dq[w]-2lambda q+Dq[g] gives

\[
 \begin{aligned}
 c'={}&-\nu\langle Lw,q\rangle+\langle Dq[w],q\rangle
 -3\lambda c-S\\
 &+\langle j_g-\lambda\nu Lu+\lambda g,q\rangle
 +\langle w,Dq[g]\rangle.
 \end{aligned}
 \tag{SS28}
\]

Both ordered source parents remain in Dq[g]. With Sigma=S+lambda c=S(u,h,h), this is precisely
Sigma'+2lambda Sigma=R_0+lambda(c'+lambda c). The kernel formula, including its nonzero initial lambda(0)c(0) face, thus returns
I_delta=-integral Sigma+integral lambda c. Pairing the h row, or using SS10, returns SS11 and then SS14. The finite damping factor is paid, but its complete signed remainder is not paid by that fact. This is an executed regularization cancellation test, not a renamed upper estimate.

Before rewriting the Lu term, the last mixed-pairing derivative is equivalently

\[
 \begin{aligned}
 c'={}&-\nu\langle Lw,q\rangle+\langle Dq[w],q\rangle
 +\langle j_g+\lambda g,q\rangle
 -\lambda\|q\|_2^2-2\lambda c-S+\langle w,Dq[g]\rangle.
 \end{aligned}
\]

Its negative square has not been discarded: q=w-lambda u+nu Lu and <u,q>=0 change -lambda||q||² exactly into -lambda c-nu lambda<Lu,q>, giving SS28.

After these exact cancellations, the genuinely prescribed compensated insertion does have a finite squared price. Since P contracts L²,

\[
 \|j_g\|_2\le K\|\nabla g\|_\infty
 +\|g\|_\infty\sqrt Y+\nu\|Lg\|_2,
\]

\[
 \int_0^T\|j_g\|_2^2\,dt
 \le3K^2\int_0^T\|\nabla g\|_\infty^2\,dt
 +3\sup_{[0,T]}\|g\|_\infty^2\int_0^TY\,dt
 +3\nu^2\int_0^T\|Lg\|_2^2\,dt<\infty.
\]

Thus its work against Dw can be priced against part of SS26's negative Dw-square in an upper S' balance. This pays that source port, not an upper I_delta balance. The lambda g, intrinsic Lu, lambda derivative, viscous and nonlinear pressure ports remain exactly as displayed. At zero physical force, all prescribed ports vanish and those intrinsic signed terms still remain.

The deeper SS30 row admits the identical test with damping 3lambda. Its kernel k_3 has partial_s k_3=-1+3lambda k_3 and exp(-3K²/(2delta))(t-s)<=k_3<=t-s. If R_3 denotes all SS30 terms except -(lambda'+lambda²)c, the regularization contribution is exactly

\[
 \int_0^t k_3(\lambda'+\lambda^2)c
 =-k_3(t,0)\lambda(0)c(0)
 +\int_0^t\lambda c
 -\int_0^t k_3\lambda(c'+2\lambda c).
\]

Again Sigma=S+lambda c=S(u,h,h) satisfies Sigma'+3lambda Sigma=R_3+lambda(c'+2lambda c). Solving with its actual initial strain and integrating therefore returns I_delta=-integral Sigma+integral lambda c, then SS11–14. The extra paid damping does not pay the signed unprojected pressure-replacement contractions or supply an additional scalar primitive.

## 5. What additional original identities remain

The original full matrix spatial row SS16 contains information beyond the one scalar storage pairing. So does the original n=1 pressure-complete square:

\[
 \|u_{tt}\|_2^2+\nu^2\|Lu_t\|_2^2+\|\nabla p_t\|_2^2
 +\nu\frac{d}{dt}\|\nabla u_t\|_2^2
 =\|f_t-N(u,u_t)-N(u_t,u)\|_2^2.
 \tag{SS22}
\]

This is the directly read source rectangle identity, not a new theorem or renamed joint storage. It has its own initial gradient stock and complete nonlinear source square. Its strict-prefix integral retains the positive boundary nu||grad u_t(t)||² and the full squared source on the right. Neither that source action nor its unknown terminal boundary is paid by merely substituting SS14 or invoking compatibility. Thus it remains additional original information, without becoming a datum-paid upper bound for I_delta in this calculation.

Equivalently SS6 has its own complete square

\[
 \|w_t\|_2^2+\nu^2\|Lw\|_2^2+\|\nabla\rho\|_2^2
 +\nu\frac{d}{dt}\|\nabla w\|_2^2
 =\|\mathcal F_w-N(u,w)-N(w,u)\|_2^2.
 \tag{SS23}
\]

The full remainder includes lambda' u, both ordered nonlinear parents and the canonical pressure response. Treating it as prescribed-force action would discard exactly the unestimated terms under test.

## Bounded result

The actual w pairing, its construction-specific nonlinear cancellation, the lambda derivative and all boundary stocks reduce exactly to the earlier joint-storage equality. Differentiating the signed strain exposes the additional original gradient commutator and complete pressures; its causal integral returns to the same scalar equality. The verified deeper cancellations include the response-pressure signed completion, base-Hessian replacement by full unprojected nonlinear/viscous contractions, pressure-gradient source compensation and trace-free pressure relation. The resulting 2lambda and 3lambda damping factors are datum-paid for fixed delta; their complete regularization kernels return to the same primitive while retaining all opposing terms.

No datum-paid upper primitive or coercive remainder of one sign is produced by these operations. This is a statement of their verified scope, not a proof that no further estimate can exist. The previous conditional zero-stock necessity I_delta(t)->+infinity is neither contradicted nor promoted to branch exclusion. The original mixed rows and their full squares remain explicit; none is assumed terminally integrable. Originals, old reports and old seals remain unchanged.

Independent full derivations are [complete receiver pairing and kernel](A0597-signed-strain-complete-pairing.md), [physical pressure/material strain calculation](A0602-pressure-material-signed-strain-evolution.md), [independent pressure completion and damping kernel](A0592-independent-signed-strain-evolution.md), and its [full signed-strain check](A0585-full-signed-strain-check.md). These are new analysis reports, distinct from the original manuscript identities identified in Section 1.
