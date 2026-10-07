# Original gradient row and first-temporal pressure square: joined test

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New bounded derivation on the actual original Navier–Stokes history. It joins the original spatial-gradient rows and first-temporal pressure square, including their off-diagonal source/pressure Gram terms, before estimates. Every equality first holds on [0,t], t<T, with delta>0 fixed. No pressure-Hessian sign, derivative positivity, terminal trace or whole-terminal rectangle is assumed.

The two diagonal squares and their off-diagonal contraction contain information beyond one scalar joint-storage pairing. The actual source corner-Gram substitution produces exactly those same joined squares; opposite differentiation orders produce exactly the same mixed row. Extracting the regularized w pairing returns the preceding storage. The additional quadratic information retains the complete nonlinear linearization and its mixed commutator as an unestimated source action; it supplies no independent datum-paid upper bound for I_delta in this test.

## 1. Actual original rows and selected source rectangle

The source inputs are [forced mixed recurrences, LF116–149](../SOURCES.md#S117), [complete pressure squares, LF189–251](../SOURCES.md#S118), and the actual native [Gram evolution J10, LF1583–1605](../SOURCES.md#S152), with [corner substitution J13c–d, LF1698–1725](../SOURCES.md#S152).

Let L=-Delta, N(a,b)=(a·grad)b, V=u_t, g=P f, and B=N(u,u). Write A_ij=partial_j u_i for the physical gradient matrix and A_j=partial_j u for its jth vector column. The original equations are

\[
 u_t+\nu Lu+B+\nabla p=f,
\]

\[
 A_t+\nu LA+(u\cdot\nabla)A+A^2+\nabla^2p=\nabla f,
\]

\[
 V_t+\nu LV+N(u,V)+N(V,u)+\nabla p_t=f_t.
 \tag{GT1}
\]

The gradient equation includes the complete derivative of B. Its material version has the original commutator -(partial_j u_k)(partial_k u_i), giving D_t A=nu Delta A-A²-Hess p+grad f. Material differentiation is not substituted for the Eulerian derivatives in the source square.

Choose the four actual source coordinates X_j=A_j, j=1,2,3, and X_4=V. Put

\[
 \mathcal B_u a=N(u,a)+N(a,u),\quad
 F_j=\partial_jf,\quad F_4=f_t,\quad
 \Pi_j=\partial_jp,\quad\Pi_4=p_t.
\]

Every column obeys the same full linearized row

\[
 X_{a,t}+\nu LX_a+\mathcal B_uX_a+\nabla\Pi_a=F_a,
 \qquad \operatorname{div}X_a=0,
\]

\[
 \nabla\Pi_a=(I-\mathbb P)(F_a-\mathcal B_uX_a),\qquad
 \Pi_a=R_iR_j(u_iX_{a,j}+X_{a,i}u_j)
 -L^{-1}\operatorname{div}F_a.
 \tag{GT2}
\]

Thus the physical gradient pressure and temporal pressure are genuine derivatives of the same normalized p. Neither is an independently assigned source.

## 2. Full joined squares and all cross pressures

For the selected actual fields define real Gram entries

\[
 C_{ab}=\langle X_a,X_b\rangle,\quad
 K_{ab}=\langle\nabla X_a,\nabla X_b\rangle,\quad
 Z_{ab}=\langle LX_a,LX_b\rangle,
\]

\[
 T_{ab}=\langle X_{a,t},X_{b,t}\rangle,\quad
 P_{ab}=\langle\nabla\Pi_a,\nabla\Pi_b\rangle,\quad
 R_{ab}=\langle F_a-\mathcal B_uX_a,F_b-\mathcal B_uX_b\rangle.
\]

The pressure gradients are orthogonal to both solenoidal faces in either column. Squaring the whole block, including off-diagonals, gives the exact matrix equality

\[
 \boxed{T+\nu^2 Z+P+\nu K'=R.}
 \tag{GT3}
\]

Each of T,Z,P,R is a positive-semidefinite Gram matrix. K' has no assigned sign. All four force/nonlinear source allocations are retained:

\[
 R_{ab}=\langle F_a,F_b\rangle
 -\langle F_a,\mathcal B_uX_b\rangle
 -\langle\mathcal B_uX_a,F_b\rangle
 +\langle\mathcal B_uX_a,\mathcal B_uX_b\rangle.
 \tag{GT4}
\]

Summing a=b=j over the spatial columns and using A_t=grad V gives precisely the original n=0,s=1 square:

\[
 \|\nabla V\|_2^2+\nu^2\|LA\|_2^2+\|\nabla^2p\|_2^2
 +\nu\frac{d}{dt}\|\nabla A\|_2^2
 =\|\nabla(f-B)\|_2^2.
 \tag{GT5}
\]

The fourth diagonal is precisely the original n=1,s=0 square:

\[
 \|V_t\|_2^2+\nu^2\|LV\|_2^2+\|\nabla p_t\|_2^2
 +\nu\frac{d}{dt}\|\nabla V\|_2^2
 =\|f_t-N(u,V)-N(V,u)\|_2^2.
 \tag{GT6}
\]

The genuine off-diagonal between a spatial column and temporal column is

\[
 \begin{aligned}
 &\langle\partial_jV,V_t\rangle
 +\nu^2\langle LA_j,LV\rangle
 +\langle\nabla\partial_jp,\nabla p_t\rangle
 +\nu\frac{d}{dt}\langle\nabla A_j,\nabla V\rangle\\
 &\hspace{12mm}=\langle\partial_j(f-B),f_t-N(u,V)-N(V,u)\rangle.
 \end{aligned}
 \tag{GT7}
\]

This pressure Gram generally remains. Its absence from a global solenoidal energy pairing does not imply its absence from GT7. It has not been assigned a sign or replaced by a derivative of an unrelated pressure norm.

For any fixed real coefficient vector c, integration on a strict prefix retains all initial and current stocks:

\[
 \nu c^TK(t)c+\int_0^t c^T(T+\nu^2Z+P)c\,ds
 =\nu c^TK(0)c+\int_0^t\Big\|\sum_a c_a(F_a-\mathcal B_uX_a)\Big\|_2^2ds.
 \tag{GT8}
\]

All initial X_a are generated by the original datum and force jet. This is positive quadratic information, not an estimate of the full right side from the prescribed force alone.

## 3. Actual native corner substitution: exact equivalence, with nine terms

The source's J13c–d with k=ell=1 is applied to these same columns. Define the full original source coordinate

\[
 \mathcal T_a=F_a-\mathcal B_uX_a-\nabla\Pi_a
 =\mathbb P(F_a-\mathcal B_uX_a),\qquad
 X_{a,t}=-\nu LX_a+\mathcal T_a.
\]

Its corner Gram identity is exactly

\[
 \begin{aligned}
 T_{ab}={}&\nu^2Z_{ab}
 -\nu\langle LX_a,\mathcal T_b\rangle
 -\nu\langle\mathcal T_a,LX_b\rangle
 +\langle\mathcal T_a,\mathcal T_b\rangle.
 \end{aligned}
 \tag{GT9}
\]

The last term contains all nine original force/nonlinear/pressure products:

\[
 \begin{aligned}
 \langle\mathcal T_a,\mathcal T_b\rangle={}&
 \langle F_a,F_b\rangle-\langle F_a,\mathcal B_uX_b\rangle
 -\langle F_a,\nabla\Pi_b\rangle\\
 &-\langle\mathcal B_uX_a,F_b\rangle
 +\langle\mathcal B_uX_a,\mathcal B_uX_b\rangle
 +\langle\mathcal B_uX_a,\nabla\Pi_b\rangle\\
 &-\langle\nabla\Pi_a,F_b\rangle
 +\langle\nabla\Pi_a,\mathcal B_uX_b\rangle
 +\langle\nabla\Pi_a,\nabla\Pi_b\rangle.
 \end{aligned}
 \tag{GT10}
\]

Using the actual complementary projection, these combine jointly to R_ab-P_ab. None is individually assumed zero. Also

\[
 K_{ab}'=-2\nu Z_{ab}
 +\langle\mathcal T_a,LX_b\rangle
 +\langle LX_a,\mathcal T_b\rangle.
\]

Substitution into GT9 gives exactly GT3. Thus this selected native corner relationship and the full joined pressure square are two exact presentations of the same quadratic equality; they are not independent producer bounds.

## 4. Opposite mixed paths and the surviving commutator

Let Q_j=partial_jV=partial_t A_j and let C=grad V=A_t. Taking a time derivative of the original gradient row or a spatial derivative of the original temporal row gives exactly the same full equation:

\[
 C_t+\nu LC+(u\cdot\nabla)C+CA+AC+(V\cdot\nabla)A
 +\nabla^2p_t=\nabla f_t.
 \tag{GT11}
\]

Both CA and AC, the transported C, and the V derivative of A are present. In vector-column form,

\[
 Q_{j,t}+\nu LQ_j+\mathcal B_uQ_j+\nabla\partial_jp_t
 =\partial_jf_t-N(A_j,V)-N(V,A_j).
 \tag{GT12}
\]

The canonical pressure in this row contains all four differentiated u,V product parents and the prescribed potential -L^{-1}div(partial_j f_t). The two paths coincide because the original mixed derivatives commute and both ordered sums are retained. Their equality does not remove either nonlinear commutator parent.

The precise projected operator left after prescribed-force separation is

\[
 \mathcal L_u a=\mathbb P[N(u,a)+N(a,u)],\qquad
 [\partial_j,\mathcal L_u]a
 =\mathbb P[N(A_j,a)+N(a,A_j)].
 \tag{GT13}
\]

Thus the two diagonal source actions contain g_j-L_u A_j and g_t-L_u V; their matched mixed source contains partial_j g_t-[partial_j,L_u]V. These are actual nonlinear operator sources, not arbitrary prescribed forcings.

## 5. Independence from scalar storage and exact extraction of w

GT3–8 supply independent quadratic/cross information relative to the single scalar Phi balance: they retain pressure and temporal/viscous directions that a pairing with w does not measure. This does not mean they are independent of the full original vector graph. GT9–10 are exactly redundant with GT3, and GT11–12 are exactly the same mixed row reached along opposite paths.

Their global energy contraction is the actual J10 specialization. With D=sym A and E_ab=integral X_a^T D X_b,

\[
 C'+2\nu K+2E
 =\bigl(\langle F_a,X_b\rangle+\langle X_a,F_b\rangle\bigr)_{ab}.
 \tag{GT14}
\]

The transport sums and global pressure-row pairings cancel, while the entire signed strain matrix E remains. On solenoidal fields the symmetric part of L_u is P D P: the u-advection part is skew and L_u+L_u^*=2P D P. Positivity of the Gram matrices does not assign a sign or known time integral to this coefficient-weighted strain matrix.

The original local pressure relation J13a remains explicit before integration:

\[
 \begin{aligned}
 \partial_t(X_a\cdot X_b)
 +\operatorname{div}\bigl[u(X_a\cdot X_b)
 -\nu\nabla(X_a\cdot X_b)+\Pi_aX_b+\Pi_bX_a\bigr]
 ={}&-2\nu\sum_k\partial_kX_a\cdot\partial_kX_b\\
 &-(AX_a)\cdot X_b-X_a\cdot(AX_b)
 +F_a\cdot X_b+X_a\cdot F_b.
 \end{aligned}
 \tag{GT16}
\]

Thus a nonconstant spatial selector retains its entire pressure/transport/viscous flux. Full-space integration recovers GT14; changing selectors does not license dropping that flux. The additional cross current C_j=<V,A_j> is retained, rather than inferred to vanish from <u,A_j>=0. Direct momentum pairing gives C_j=-<B,A_j>+<g,A_j>, since <Lu,partial_j u>=0. There is no q-orthogonality assertion for A_j.

Extracting w also requires the base u and known lift g, not just the four derivative columns. The base field obeys the same linearized operator only with the acquired source g-q, since L_u u=-2q, q=-P B. Its unprojected source is f+B. This source is not prescribed data. With h=V-g, b=e+delta and lambda=nu Y/b,

\[
 w=h+\lambda u,\qquad
 w_t+\nu Lw+\mathcal L_u w
 =j_g+\lambda(g-q)+\lambda'u,
 \quad j_g=-\mathcal L_u g-\nu Lg.
 \tag{GT15}
\]

Pairing this actual extracted row, keeping <u,w>=-delta lambda, gives R_w=.5(||w||²+delta lambda²) and Phi_delta=R_w+b lambda²/4. Put d=e+3delta and define the actual signed primitive I_delta=-integral_0^t <w,N(w,u)> ds. Its full identity is

\[
 \begin{aligned}
 I_\delta(t)={}&\Phi_\delta(t)-\Phi_\delta(0)
 +\int_0^t\left[\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2
                         +\tfrac d2\lambda^3\right]ds\\
 &-\int_0^t\left[\langle w,j_g\rangle+\lambda\langle q,g\rangle
                         +\tfrac12\lambda^2\langle u,g\rangle\right]ds,\\
 \Phi_\delta={}&\tfrac12\|w\|_2^2+\tfrac d4\lambda^2
 =\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4b}.
 \end{aligned}
 \tag{GT15a}
\]

This returns exactly the preceding full joint-storage law with both Phi(t) and Phi(0), all three positive actions and all source work. Gradient-column positivity introduces no extra upper term into that equality. The complete prescribed-source payments for arbitrary admitted force, including the two-parent insertion j_g, are derived in the new [pressure comparison, GT24](A0392-gradient-temporal-pressure-square-comparison.md). Their finiteness leaves the upper direction for I_delta unresolved by these particular operations.

There is also genuine additional Gram coercivity. Define a_j=<A_j,h> and the spatial Gram K_0,ij=<A_i,A_j>. The actual Gram of (u,A_1,A_2,A_3,h), using <u,A_j>=0 and <u,h>=-nu Y, gives on e>0

\[
 \|h\|_2^2\ge\frac{\nu^2Y^2}{e}+a^TK_0^\dagger a,\qquad
 \Phi_\delta\ge\tfrac12a^TK_0^\dagger a
       +\frac{\nu^2Y^2(e+2\delta)}{4e(e+\delta)}.
 \tag{GT15b}
\]

Here a belongs to Ran K_0 and the Moore–Penrose inverse retains rank loss. This is an actual lower constraint, not an upper action estimate. No division by e is used in GT15a, which remains valid with fixed positive delta.

An explicit operator-level independence check is possible without a substitute solution. The projected temporal source zeta_t=g_t-L_uV decomposes, whenever V is nonzero, into its component along V and its orthogonal component. The scalar energy pairing measures <zeta_t,V>; its full square also measures ||zeta_t-<zeta_t,V>V/||V||²||². GT6 retains that extra nonnegative component and its pressure face. No estimate of that orthogonal action follows by replacing the full source with its scalar contraction. At V=0 the full square remains valid without dividing by its norm. This distinguishes additional information from an independently paid budget.

## 6. Exact surviving operator and source-relationship coverage

One selected original higher height relationship can also be compared explicitly. Write Z_0=||Lu||², H_3=||grad Lu||² and retain the complete work

\[
 \mathcal G_{0,s}=\langle\Lambda^s u,
 \Lambda^s(f-B-\nabla p)\rangle.
\]

The original signed balances give G_(0,1)=.5Y'+nu Z_0 and G_(0,2)=.5Z_0'+nu H_3. The J11 case r=0,s=1,k=2 is

\[
 2\nu^2H_3=\tfrac12Y''+2\nu\mathcal G_{0,2}
 -\mathcal G_{0,1}'.
 \tag{GT17}
\]

Substitution of those full work identities cancels .5Y'' and nu Z_0' exactly and returns 2nu²H_3=2nu²H_3. The source relationship is verified; treating its unknown signed work derivatives as paid inputs would be a separate estimate. This selected anti-diagonal therefore gives no independent upper budget when combined in this way.

No independent upper control of I_delta is obtained from this joined test. The surviving complete nonlinear operator is L_u, its symmetric strain part P D P and its spatial commutator in GT13. In the pressure-complete presentation this is the full joined action R, including all source/nonlinear cross products and actual pressure Gram P. In the primitive presentation it is the signed strain matrix E and the previous complete w-strain/commutator bundle. These are retained actual-history quantities; no terminal action is asserted finite because it is a coordinate.

The original source [finite-row estimates, LF255–380](../SOURCES.md#S118) explicitly evaluate the squares after selecting already supplied datum-generated rectangles: their nonlinear bound uses one L-infinity-time high spatial factor and one L²-time high spatial factor. Such a rectangle would pay the displayed source actions; that premise is not assumed in this new producer test. This observation identifies the exact dependency of those estimates, not an invalidity verdict about their separate construction.

Tested here are the original n=0,s=1 and n=1,s=0 full squares; their full four-column Gram/off-diagonals; J10, the local pressure flux J13a, and J13c–d at k=ell=1; the shared n=1,alpha=e_j mixed row; J11 at r=0,s=1,k=2; and exact extraction of w with all coefficient/lift derivatives. The earlier completed signed-strain test remains separate and sealed.

This bounded pass has not reexecuted the entire higher-order or fractional-height hierarchy as a joined upper-payment construction. The actual remaining source relationships include [J11–13, LF1607–1655](../SOURCES.md#S152), with every differentiated signed work term, and the higher k,ell cases of J13d. In particular the next temporal evolution contains N(u,V_2)+2N(V,V)+N(V_2,u), V_2=u_tt, with its full pressure/source row. Their formulas are present; their possible higher joined estimates are not represented as exhausted by this low-order test. No missing reference, generic dismissal or conclusion that no further operation can work is substituted for that scope statement.

The full block and actual gradient-frame constraint were independently derived in [gradient-temporal-full-block.md](A0379-gradient-temporal-full-block.md). The independent joint-square execution and its supporting child are [gradient-temporal-joint-square-execution.md](A0385-gradient-temporal-joint-square-execution.md) and [joint-gradient-temporal-check.md](A0381-joint-gradient-temporal-check.md). Each uses the original same-history rows rather than earlier conclusions as mathematical evidence.

All time integrations are on strict prefixes with their initial and current stocks retained.
