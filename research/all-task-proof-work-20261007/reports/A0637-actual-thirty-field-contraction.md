# Actual thirty-field selection, complete corners and signed contraction

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This new targeted calculation follows the source-defined thirty-field selection on the actual forced history. It executes its full matrix evolution and directly required two-factor corners before taking norms. It also tests a positive coupled contraction that really cancels the lower temporal strain. The result is a new positive higher-row storage with a precise surviving highest-row current, rather than an assumed upper payment. Every identity is on a strict prefix [0,t], t<T, with positive regularization delta fixed. Initial and current stocks remain explicit.

## 1. Literal object and the meaning of thirty

The actual source sentence at [assembly LF1602–1605](../SOURCES.md#S152) selects n=0,1,2 and |alpha|<=2. Thus

\[
 \mathcal I=\{0,1,2\}\times\mathcal A_2,\qquad
 \mathcal A_2=(0,e_1,e_2,e_3,2e_1,2e_2,2e_3,e_1+e_2,e_1+e_3,e_2+e_3),
 \quad J_{n,\alpha}=\partial_t^n\partial_x^\alpha u.
 \tag{TF1}
\]

There are three temporal rows and ten spatial multi-indices, hence thirty vector fields and a 30 by 30 Gram. All are derivatives of one history at the same time. The section defines the selection and arbitrary Gram tests; it does not prescribe one numerical or moving thirty-field scalar weight. The contractions below are explicitly derived tests of that actual matrix. Unique mixed second derivatives count once in the selection; an isotropic Hessian norm instead gives them weight two.

Write L=-Delta, N(a,b)=(a dot grad)b, B=N(u,u), V=u_t and W=u_tt. The actual [J1–J4, LF1455–1488](../SOURCES.md#S152) give

\[
 \begin{aligned}
 B_{n,\alpha}&=\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta N(J_{a,\beta},J_{n-a,\alpha-\beta}),\\
 F_{n,\alpha}&=\partial_t^n\partial_x^\alpha f,\qquad
 \Pi_{n,\alpha}=\partial_t^n\partial_x^\alpha p,\\
 \Pi_{n,\alpha}&=\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 R_iR_j(J_{a,\beta,i}J_{n-a,\alpha-\beta,j})-L^{-1}\operatorname{div}F_{n,\alpha},\\
 J_{n+1,\alpha}+\nu LJ_{n,\alpha}+B_{n,\alpha}+\nabla\Pi_{n,\alpha}&=F_{n,\alpha},
 \qquad \operatorname{div}J_{n,\alpha}=0.
 \end{aligned}
 \tag{TF2}
\]

The arbitrary admitted smooth force can have a gradient part. Its scalar potential and every mixed force/pressure slot are retained. No finite rectangle norm or terminal membership is an input here.

## 2. All directly required higher corners

For alpha in A_2 let U_alpha=J_(0,alpha), T_(n,alpha)=F_(n,alpha)-B_(n,alpha)-grad Pi_(n,alpha). The actual [J13c–d, LF1692–1725](../SOURCES.md#S152) give

\[
 J_{1,\alpha}=-\nu LU_\alpha+T_{0,\alpha},\qquad
 J_{2,\alpha}=\nu^2L^2U_\alpha-\nu LT_{0,\alpha}+T_{1,\alpha}.
 \tag{TF3}
\]

This generates all selected temporal rows from n=0. It retains base velocity derivatives through spatial order six and the full source families T_0 through spatial order four and T_1 through spatial order two. The source instantaneous J8 budget for N=M=2 is u(c) in H^(s+6), F_0(c) in H^(s+4), F_1(c) in H^(s+2), s>=2. It is a generating budget, rather than a bound up to a maximal terminal time.

Define the actual sixty-field list Y=(U,LU,L^2U,T_0,LT_0,T_1), with ten spatial fields in each group. Every one of the nine temporal Gram blocks, including all 900 ordered spatial pairings, is given by

\[
 C_{30}=S\operatorname{Gr}(Y)S^T,\qquad
 S=\begin{pmatrix}
 1&0&0&0&0&0\\
 0&-\nu&0&1&0&0\\
 0&0&\nu^2&0&-\nu&1
 \end{pmatrix}\otimes I_{10}.
 \tag{TF4}
\]

These are actual same-history primitives; the T fields contain the generated nonlinear history. This is not a parameterization by sixty independent known inputs. The temporal blocks have respectively 1,2,3; 2,4,6; and 3,6,9 grouped parent terms. The complete explicit block expansion is derived in the new [corner report, TC7](A0632-thirty-field-full-corner-gram.md).

Every source-source term, with its actual indices A,B and Laplacian powers i,j, is expanded before simplification as

\[
 \begin{aligned}
 \langle L^iT_A,L^jT_B\rangle={}&
 \langle L^iF_A,L^jF_B\rangle-\langle L^iF_A,L^jB_B\rangle
 -\langle L^iF_A,L^j\nabla\Pi_B\rangle\\
 &-\langle L^iB_A,L^jF_B\rangle+\langle L^iB_A,L^jB_B\rangle
 +\langle L^iB_A,L^j\nabla\Pi_B\rangle\\
 &-\langle L^i\nabla\Pi_A,L^jF_B\rangle
 +\langle L^i\nabla\Pi_A,L^jB_B\rangle
 +\langle L^i\nabla\Pi_A,L^j\nabla\Pi_B\rangle.
 \end{aligned}
 \tag{TF5}
\]

Only the actual complementary projection then combines this to the Gram of L^i(F_A-B_A),L^j(F_B-B_B) minus the corresponding full pressure Gram. Individual force-pressure and nonlinear-pressure pairings are not deleted. For all k,l<=2 this is the directly required J13d substitution; a source-specified scalar operation requiring larger k,l has not been found in this selection.

## 3. Complete nonlinear remainders in all thirty rows

Define B_u a=N(u,a)+N(a,u), L_u=P B_u and H_A=B_A-B_uJ_A. For A nonzero, H_A is exactly the complete binomial sum TF2 with only its two endpoint allocations removed. For the base A=(0,0) the endpoints coincide, so H_(0,0)=-B. Consequently

\[
 J_{A,t}+\nu LJ_A+B_uJ_A+\nabla\Pi_A=F_A-H_A,
 \qquad J_{A,t}+\nu LJ_A+\mathcal L_uJ_A=\mathbb P(F_A-H_A).
 \tag{TF6}
\]

The base acquires the nonlinear source f+B, or g-q after projection, g=P f and q=-P B. Higher rows acquire their full proper-parent sources; they are not prescribed force derivatives alone.

For completeness let U_j=partial_j u, Y_j=partial_j Y, and U_jk=partial_j partial_k u, with j<=k. Put

\[
 \begin{aligned}
 P_{jk}(Y)={}&N(U_{jk},Y)+N(Y,U_{jk})
 +N(U_j,Y_k)+N(Y_k,U_j)\\
 &+N(U_k,Y_j)+N(Y_j,U_k).
 \end{aligned}
\]

All nine groups of rows are

\[
 \begin{aligned}
 H_{0,0}&=-B,&H_{0,j}&=0,&H_{0,jk}&=N(U_j,U_k)+N(U_k,U_j),\\
 H_{1,0}&=0,&H_{1,j}&=N(U_j,V)+N(V,U_j),&H_{1,jk}&=P_{jk}(V),\\
 H_{2,0}&=2N(V,V),\qquad
 H_{2,j}&=N(U_j,W)+N(W,U_j)+2N(V_j,V)+2N(V,V_j),\\
 H_{2,jk}&=P_{jk}(W)+2\{N(V_{jk},V)+N(V,V_{jk})+N(V_j,V_k)+N(V_k,V_j)\}.
 \end{aligned}
 \tag{TF7}
\]

Repeated indices preserve all displayed multiplicities. The new [binomial check](../data/thirty-field-binomial-check.json) verifies these exact allocations against TF2 for each of the thirty indices. It checks coefficients, rather than a trajectory or analytic estimate.

## 4. Full matrix and moving contractions

Put D=sym grad u, C_AB=<J_A,J_B>, K_AB=<grad J_A,grad J_B>, E_AB=integral J_A^T D J_B. The source J10 becomes the full matrix identity

\[
 C'+2\nu K+2E
 =\bigl(\langle F_A-H_A,J_B\rangle+\langle J_A,F_B-H_B\rangle\bigr)_{AB}.
 \tag{TF8}
\]

All 900 ordered pairings are retained. Its local J13a version retains the full flux u(J_A dot J_B)-nu grad(J_A dot J_B)+Pi_A J_B+Pi_B J_A. Only the global solenoidal pairing cancels pressure. A nonconstant spatial selector retains that pressure flux and its complete transport/diffusion terms.

With T=Gr(J_t), Z=Gr(LJ), P=Gr(grad Pi), R=Gr(F-B), the complete polarized pressure square is

\[
 T+\nu^2Z+P+\nu K'=R.
 \tag{TF9}
\]

Its integral retains nu K(t), nu K(0) and every positive action. T reaches J_(3,alpha) at the upper selected temporal boundary; Z reaches spatial order four. The primitive J10 diffusion factors reach spatial order three. Neither evolution is a closed thirty-field truncated fluid. All full B_(2,alpha), pressure and F_(2,alpha) coordinates remain at that boundary.

For any symmetric positive-semidefinite time-dependent Q(t), the exact energy contraction is

\[
 \left(\tfrac12\operatorname{tr}(QC)\right)'
 +\nu\operatorname{tr}(QK)+\operatorname{tr}(QE)
 =\sum_{A,B}Q_{AB}\langle J_A,F_B-H_B\rangle
 +\tfrac12\operatorname{tr}(Q'C).
 \tag{TF10}
\]

For the pressure square, its moving contraction instead reads tr Q(T+nu^2Z+P)+nu(tr QK)'=tr QR+nu tr Q'K. Rank-one moving combinations have the actual extra source sum c_A' J_A; squaring that row retains its derivative-source squares and crosses. No moving-coefficient port receives a sign from Q>=0.

In particular the complete unweighted trace uses every selected field once and gives

\[
 \left(\tfrac12\sum_{A\in\mathcal I}\|J_A\|_2^2\right)'
 +\nu\sum_{A\in\mathcal I}\|\nabla J_A\|_2^2
 =-\sum_{A\in\mathcal I}\{S(u,J_A,J_A)+\langle J_A,H_A\rangle\}
 +\sum_{A\in\mathcal I}\langle J_A,F_A\rangle.
 \tag{TF10a}
\]

All proper mixed work in TF7 remains in this exact all-thirty-field contraction. The source does not assert that its sum is a paid upper action.

The base-cross cancellations are real. Solenoidality gives 2E_(00),B=<B,J_B>; this cancels the acquired +B source in TF8. For B=(0,e_j+e_k), integration by parts converts the base cross to the first-spatial Gram energy. For B=(1,e_j) it returns the old spatial/temporal cross energy. For B=(2,0), C_0W=e''/2-||V||^2, K_0W=Y''/2-||grad V||^2 and <u,H_2,0>=-2E_VV; the twice-differentiated complete kinetic row returns the first-temporal energy. These conversions preserve all forcing terms and explain specific redundancies without deleting the additional higher Gram entries.

## 5. A genuine positive cancellation, before estimates

For the actual temporal subblock (u,V,W), the full ordered nonlinear contraction of an arbitrary symmetric Q is exactly

\[
 \sum_{r,s=0}^2Q_{rs}\langle V_r,B_s\rangle
 =(Q_{11}-2Q_{02})S(u,V,V)+2Q_{12}\langle V,DW\rangle
 +Q_{22}\{S(u,W,W)+2\langle W,N(V,V)\rangle\},
 \tag{TF11}
\]

where V_0=u,V_1=V,V_2=W and S(u,a,a)=<a,N(a,u)>. Both ordered Q_01 terms cancel by solenoidality. This displays an additional useful contraction beyond the earlier four-column pressure square.

Choose a,b,c>0 with ac>=b^2 and Q=[[a,0,b],[0,2b,0],[b,0,c]]. The lower S(u,V,V) cancels exactly, while the highest-row curvature 2N(V,V) remains. For example b=eta^2,a=1,c=eta^4, eta>0 fixed, gives

\[
 \begin{aligned}
 E_\eta&=\tfrac12\|u+\eta^2W\|_2^2+\eta^2\|V\|_2^2,\\
 E_\eta'+\nu\|\nabla(u+\eta^2W)\|_2^2+2\nu\eta^2\|\nabla V\|_2^2
 &=-\eta^4\{S(u,W,W)+2\langle W,N(V,V)\rangle\}\\
 &\quad+\langle u+\eta^2W,f+\eta^2f_{tt}\rangle+2\eta^2\langle V,f_t\rangle.
 \end{aligned}
 \tag{TF12}
\]

Thus the enlargement can cancel a lower signed current with a positive matrix. It moves that current to the actual higher tangent and its complete quadratic curvature; it does not turn the latter into prescribed data. In this temporal three-field family, cancelling S(u,W,W) by setting Q_22=0 would, by positive-semidefiniteness, also force Q_02=0 and remove this lower-strain cancellation. This algebraic observation concerns TF11's family, rather than every conceivable contraction of the full jet.

## 6. Forced receiver and complete higher positive stock

The following force-compensated test uses only selected u,V,W plus prescribed lifts g=P f,g_t. Let h=V-g, k=h_t=W-g_t, e=||u||_2^2, Y=||grad u||_2^2, lambda=nu Y/(e+delta), and w=h+lambda u. Define

\[
 J_a=-\nu La-N(u,a)-N(a,u),\qquad
 R_2=J_{g_t}-2N(h,g)-2N(g,h)-2N(g,g).
 \tag{TF13}
\]

Using the intrinsic pressure p_0=p+L^{-1}div f, all three raw rows are

\[
 \begin{aligned}
 u_t+\nu Lu+N(u,u)+\nabla p_0&=g,\\
 h_t+\nu Lh+N(u,h)+N(h,u)+\nabla p_{0,t}&=J_g,\\
 k_t+\nu Lk+N(u,k)+N(k,u)+2N(h,h)+\nabla p_{0,tt}&=R_2.
 \end{aligned}
 \tag{TF14}
\]

These pressures belong to those complete raw-source rows. Projected source completions use their corresponding canonical pressure, rather than substituting p_0 derivatives without its complementary source. Both force parents, the force-force parent and g_t remain in R_2; no amplitude restriction on the admitted force is introduced.

Choose fixed a,c>0 with ac>1/4 and the positive matrix

\[
 Q_\lambda=\begin{pmatrix}
 \lambda^2+a&\lambda&1/2\\
 \lambda&1&0\\
 1/2&0&c
 \end{pmatrix}.
 \tag{TF15}
\]

It is the sum of the actual w rank-one weight and the positive (u,k) block. The nonlinear lower strain again cancels before estimation. Its moving-weight term is exactly lambda'<u,w>=-delta lambda lambda', using the original complete kinetic equation. Moving this term gives the new positive stock

\[
 \begin{aligned}
 \mathcal E_\lambda&=\tfrac12(\|w\|_2^2+\delta\lambda^2)
 +\tfrac12\{a e+\langle u,k\rangle+c\|k\|_2^2\},\\
 \mathcal D_\lambda&=\nu\{\|\nabla w\|_2^2+aY
                   +\langle\nabla u,\nabla k\rangle+c\|\nabla k\|_2^2\},\\
 \mathcal E_\lambda'+\mathcal D_\lambda
 &=-c\{S(u,k,k)+2\langle k,N(h,h)\rangle\}+\mathcal W_g,\\
 \mathcal W_g&=\langle w,J_g\rangle+\lambda\langle w,g\rangle
 +a\langle u,g\rangle+\langle u/2+ck,R_2\rangle+\tfrac12\langle k,g\rangle.
 \end{aligned}
 \tag{TF16}
\]

This is a positive higher-row storage, not a replacement of its current value by its initial value. The (u,k) block has a strictly positive smallest eigenvalue, so both stocks/actions are coercive in their displayed fields. Integrating keeps E_lambda(t), E_lambda(0), every D_lambda action, all force work, and the complete signed higher primitive

\[
 J_k(t)=-\int_0^t\{S(u,k,k)+2\langle k,N(h,h)\rangle\}\,ds.
 \tag{TF17}
\]

This new primitive has not been assigned a sign or an upper payment.

The force work can be estimated without discarding any source parent. Let K=||u_0||_2+integral_0^T||g||_2, so ||u||_2<=K. Positivity gives ||w||_2^2+delta lambda^2<=2E_lambda, ||k||_2^2<=C E_lambda, and ||h||_2<=||w||_2+K lambda<=C(K,delta) sqrt(E_lambda). With y=u/2+ck, D_lambda controls grad w,grad u,grad k and hence grad y. The source pairings use

\[
 \begin{aligned}
 |\langle z,J_a\rangle|&\le(\nu\|\nabla a\|_2+2K\|a\|_\infty)\|\nabla z\|_2,\\
 |\langle y,N(h,g)\rangle|&\le\|\nabla g\|_\infty\|h\|_2\|y\|_2,\\
 |\langle y,N(g,h)\rangle|&\le\|g\|_\infty\|h\|_2\|\nabla y\|_2,\\
 |\langle y,N(g,g)\rangle|&\le\|g\|_\infty\|g\|_2\|\nabla y\|_2.
 \end{aligned}
 \tag{TF18}
\]

The first estimate applies to solenoidal receivers z=w,y and a=g,g_t; all sources here are those in TF13. An explicit full payment is available. Let rho be the positive smallest eigenvalue of [[a,1/2],[1/2,c]], ell=(1/4+c^2)^(1/2), H=2(1+K^2/delta)^(1/2), G=||g||_2, G_inf=||g||_infinity, and C_z=nu||grad z||_2+2K||z||_infinity for the known force row z. For any epsilon>0, four Young absorptions of size epsilon/4 give

\[
 \begin{aligned}
 |\mathcal W_g|&\le\epsilon\mathcal D_\lambda+A_g(t)\mathcal E_\lambda+B_g(t),\\
 A_g&=1+\frac G{\sqrt\delta}
 +\frac{2\sqrt2 H\ell}{\sqrt\rho}\|\nabla g\|_\infty
 +\frac{4H^2\ell^2}{\epsilon\nu\rho}G_\infty^2,\\
 B_g&=aKG+\frac{G^2}{8\rho}
 +\frac{C_g^2}{\epsilon\nu}
 +\frac{\ell^2C_{g_t}^2}{\epsilon\nu\rho}
 +\frac{4\ell^2G_\infty^2G^2}{\epsilon\nu\rho}.
 \end{aligned}
 \tag{TF18a}
\]

Indeed ||y||<=sqrt(2/rho) ell sqrt(E_lambda), ||grad y||<=ell sqrt(D_lambda/(nu rho)), ||h||<=H sqrt(E_lambda), and lambda||w||<=E_lambda/sqrt(delta). The four absorptions are the J_g, J_(g_t), N(g,h) and N(g,g) pairings; N(h,g) contributes the displayed grad g coefficient. The remaining k,g pairing costs E_lambda+G^2/(8rho), and a<u,g> costs aKG. Thus no force parent is suppressed in the payment. A_g and B_g are integrable on each admitted finite force horizon, independently of a possible classical endpoint. Constants depend on the fixed parameters and admitted force; no limit delta down to zero or derivative-order uniformity is asserted. This pays the force insertion and leaves J_k as the intrinsic signed analytic requirement.

If a datum-paid upper bound for J_k on all strict prefixes were supplied, the integrated TF16 and Gronwall would bound E_lambda and its actions. That would also give an upper bound for the original I_delta: Phi_delta<=C(K,delta)E_lambda, integral lambda<=K^2/(2delta), and the old positive lambda||w||^2 and (e+3delta)lambda^3 actions are then finite uniformly. This is a conditional implication, not an assumed estimate of J_k. To make its actual target explicit, put q=-P B, j_g=P J_g and d=e+3delta. The complete original identity is

\[
 \begin{aligned}
 I_\delta(t)&=-\int_0^tS(u,w,w)\,ds,\qquad
 \Phi_\delta=\tfrac12\|w\|_2^2+\tfrac d4\lambda^2,\\
 I_\delta(t)&=\Phi_\delta(t)-\Phi_\delta(0)
 +\int_0^t\{\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2+\tfrac d2\lambda^3\}\,ds\\
 &\quad-\int_0^t\{\langle w,j_g\rangle+\lambda\langle q,g\rangle
                         +\tfrac12\lambda^2\langle u,g\rangle\}\,ds.
 \end{aligned}
 \tag{TF19}
\]

Both Phi boundary stocks and every force work remain. This is independently rederived in the new full corner report TC20; its upper direction has not been assumed in constructing the higher stock TF16.

## 7. Precise independence and bounded outcome

The full thirty-field object is genuinely source-defined. A distinguished thirty-field scalar strain selector is not specified by this source section. Its complete Gram includes higher temporal/spatial correlations, for example ||partial_1^2 V_2||_2^2, that were absent from the preceding four-column join. The new k,l<=2 corner relationships are exact substitutions of its full vector graph; their complete source Gram and pressure Gram remain. They provide additional quadratic/coercive information without creating independent prescribed source budgets.

The positive contractions TF12 and TF16 demonstrate a real algebraic gain: lower temporal strain cancels before norms, while the entire highest-row curvature stays. The force compensation and moving lambda derivative produce the positive higher stock TF16 with every source term priced as TF18. The exact surviving intrinsic quantity for this test is J_k, containing both S(u,k,k) and 2<k,N(h,h)>. No independent upper bound for that full primitive is obtained in this execution.

In any finite derivative selection, the dimension-independent structure is TF6/TF8/TF9/TF10 with every nonendpoint mixed allocation, its pressure and the actual derivative halo. Higher corners are congruences of actual generated coordinates and their full sources. Additional rows can produce new positive stocks and cancel particular lower currents; they do not supply a terminal norm merely by becoming coordinates. An analytic bound for the surviving full signed current or source action is a distinct requirement. This report makes no impossibility assertion about other estimates and no verdict on a separate whole-terminal intersection construction.

The targeted source reading and directly required corners for this actual selection are complete. The new [definition report](A0636-thirty-fields-definition-and-boundaries.md), [full corner report](A0632-thirty-field-full-corner-gram.md), [coupled contraction report](A0627-thirty-field-complete-contraction.md) and [independent allocation check](A0614-thirty-field-algebra.md) supply the parallel derivations.
