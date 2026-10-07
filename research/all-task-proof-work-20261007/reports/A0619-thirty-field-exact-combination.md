# Exact thirty-field combination and coefficient sources

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This new independent note executes the actual thirty-field mixed selection and its Gram contractions. It retains full nonlinear remainders, pressure, external forcing and coefficient derivatives.

## 1. Primary source identities and coverage

| Source | SHA-256 | Direct coverage |
|---|---|---|
| [forced-native-assembly-20260914.md](../SOURCES.md#S152) | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` | Lines 1440–1766: the complete named §13 mathematical section |
| [01-setting-mixed-jet.tex](../SOURCES.md#S117) | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` | Lines 1–164 |
| [02-compatible-rectangles.tex](../SOURCES.md#S118) | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` | Lines 13–163 |

Assembly J1–J4 define the actual mixed fields, complete nonlinear allocation and force-dependent pressure. J10 gives the actual Gram evolution; J11–J12 prescribe the complete height substitution; J13a keeps local pressure flux; J13c–J13d substitute both Gram corners. The thirty-field selection is explicitly named at lines 1602–1605. J14–J15, lines 1727–1765, extract finite norms only when interval intersection membership is supplied.

Use one actual strict classical interval \([a,b]\subset[0,T_*)\). All pairings below are real \(L^2(\mathbb R^3)\) pairings. There are no assumed terminal or derivative-order uniformities.

## 2. Complete common-operator decomposition

Let

\[
\mathcal I=\{(n,\alpha):n=0,1,2,\ |\alpha|\le2\},
\quad J_{n,\alpha}=\partial_t^n\partial_x^\alpha u.
\]

There are ten spatial multi-indices, hence thirty vector fields. Let \(N(v,w)=(v\cdot\nabla)w\), \(A=-\Delta\), and

\[
B_uh=N(u,h)+N(h,u),\qquad L_uh=\mathbb PB_uh.
\]

The actual nonlinear coordinate is

\[
\mathcal B_{n,\alpha}
=\sum_{r=0}^n\sum_{\beta\le\alpha}
\binom nr\binom\alpha\beta
N(J_{r,\beta},J_{n-r,\alpha-\beta}).
\]

Define \(\mathcal H_A=\mathcal B_A-B_uJ_A\). For every \(A\ne(0,0)\), its exact expression is the full sum above excluding only the two allocation endpoints \((r,\beta)=(0,0)\) and \((r,\beta)=A\). For the base row those endpoints coincide, giving the essential exception

\[
\boxed{\mathcal H_{0,0}=-N(u,u).}
\tag{T1}
\]

Indeed \(\mathcal B_{0,0}=N(u,u)\), whereas \(B_uu=2N(u,u)\). Put \(K_A=F_A-\mathcal H_A\). The exact common-operator field equation is

\[
\boxed{(J_A)_t+\nu AJ_A+B_uJ_A+\nabla\Pi_A=K_A,
\qquad (J_A)_t+\nu AJ_A+L_uJ_A=\mathbb PK_A.}
\tag{T2}
\]

The full physical mixed pressure remains

\[
\Pi_{n,\alpha}
=\sum_{r,\beta}\binom nr\binom\alpha\beta
R_iR_j(J_{r,\beta,i}J_{n-r,\alpha-\beta,j})
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha},
\]
\[
\nabla\Pi_A=(I-\mathbb P)(K_A-B_uJ_A).
\tag{T3}
\]

Thus the remainders are actual nonlinear jet sources, not new prescribed forcing. Their whole-terminal integrability is not assumed. The selection also retains its boundary coordinates: \((J_A)_t\) reaches temporal order three, gradients reach spatial order three, and \(AJ_A\) reaches spatial order four. The thirty-field selection does not discard those coordinates or solve a separately truncated fluid equation.

## 3. Explicit remainder table and diagonal coefficients

Write \(V=u_t\), \(Z=u_{tt}\), with \(u_i=\partial_iu\), \(V_i=\partial_iV\), \(Z_i=\partial_iZ\), and corresponding second derivatives. For \(i,j\in\{1,2,3\}\), the following formulas cover all thirty fields; when \(i=j\), identical terms are counted with their actual multiplicities.

\[
\begin{array}{ll}
\mathcal H_{0,0}=-N(u,u),&\mathcal H_{0,e_i}=0,\\[2pt]
\mathcal H_{0,e_i+e_j}=N(u_i,u_j)+N(u_j,u_i),&\\[2pt]
\mathcal H_{1,0}=0,&\mathcal H_{1,e_i}=N(u_i,V)+N(V,u_i),\\[2pt]
\mathcal H_{2,0}=2N(V,V),&
\mathcal H_{2,e_i}=N(u_i,Z)+N(Z,u_i)+2N(V_i,V)+2N(V,V_i).
\end{array}
\tag{T4}
\]

The complete \(n=1\), second spatial row is

\[
\begin{aligned}
\mathcal H_{1,e_i+e_j}={}&N(u_{ij},V)+N(V,u_{ij})\\
&+N(u_i,V_j)+N(u_j,V_i)
+N(V_i,u_j)+N(V_j,u_i).
\end{aligned}
\tag{T5}
\]

The complete \(n=2\), second spatial row is

\[
\begin{aligned}
\mathcal H_{2,e_i+e_j}={}&N(u_{ij},Z)+N(Z,u_{ij})\\
&+N(u_i,Z_j)+N(u_j,Z_i)+N(Z_i,u_j)+N(Z_j,u_i)\\
&+2N(V_{ij},V)+2N(V,V_{ij})\\
&+2N(V_i,V_j)+2N(V_j,V_i).
\end{aligned}
\tag{T6}
\]

In particular, the diagonal allocations are explicitly

\[
\mathcal H_{1,2e_i}=N(u_{ii},V)+N(V,u_{ii})
+2N(u_i,V_i)+2N(V_i,u_i),
\]
\[
\begin{aligned}
\mathcal H_{2,2e_i}={}&N(u_{ii},Z)+N(Z,u_{ii})
+2N(u_i,Z_i)+2N(Z_i,u_i)\\
&+2N(V_{ii},V)+2N(V,V_{ii})+4N(V_i,V_i).
\end{aligned}
\tag{T7}
\]

The coefficient four is \(\binom21\binom21\). The force and pressure coordinates for these rows are the corresponding \(\partial_t^n\partial_{ij}f\) and \(\partial_t^n\partial_{ij}p\), with the full allocation formula (T3); no pressure or force term is excluded in this table.

## 4. Thirty-field Gram, local pressure and full square

Define

\[
G_{AB}=\langle J_A,J_B\rangle,
\quad D_{AB}=\langle\nabla J_A,\nabla J_B\rangle,
\quad C_{AB}=\langle J_A,TJ_B\rangle,
\quad T=\operatorname{Sym}\nabla u.
\]

The exact common-operator version of J10 is

\[
\boxed{G'_{AB}+2\nu D_{AB}
=-2C_{AB}+\langle K_A,J_B\rangle+\langle J_A,K_B\rangle.}
\tag{T8}
\]

The full local pressure flux version is

\[
\begin{aligned}
\partial_t(J_A\cdot J_B)
+\nabla\cdot\big(u(J_A\cdot J_B)-\nu\nabla(J_A\cdot J_B)
+\Pi_AJ_B+\Pi_BJ_A\big)
={}&-2\nu\nabla J_A:\nabla J_B-2J_A^TTJ_B\\
&+K_A\cdot J_B+J_A\cdot K_B.
\end{aligned}
\tag{T9}
\]

Thus pressure vanishes only in the global solenoidal Gram test; it remains a local flux and a full mixed field coordinate.

Put \(U_A=F_A-\mathcal B_A=K_A-B_uJ_A\). The actual equation gives

\[
U_A-\nabla\Pi_A=(J_A)_t+\nu AJ_A,
\quad\nabla\Pi_A=(I-\mathbb P)U_A.
\]

Substitution of both corners in J13d, including all nine force/nonlinear/pressure pairings, gives the full matrix square

\[
\boxed{\operatorname{Gram}(J_t)+\nu^2\operatorname{Gram}(AJ)
+\nu D'+\operatorname{Gram}(\nabla\Pi)
=\operatorname{Gram}(F-\mathcal B).}
\tag{T10}
\]

The RHS is the actual \(\operatorname{Gram}(K-B_uJ)\), retaining every \(\mathcal H_A\). This identity is not an assertion that its RHS has a prescribed-data integral bound.

## 5. Time-dependent coefficient vector and PSD matrix

For any actual differentiable vector \(c(t)\in\mathbb R^{30}\), define

\[
z_c=\sum_Ac_AJ_A,
\quad p_c=\sum_Ac_A\Pi_A,
\quad k_c=\sum_Ac_AK_A,
\quad\eta_c=\sum_Ac_A'J_A.
\]

The complete combined row, including the coefficient source, is

\[
(z_c)_t+\nu Az_c+B_uz_c+\nabla p_c=k_c+\eta_c.
\tag{T11}
\]

Its energy and full pressure square are

\[
\frac12\partial_t\|z_c\|_2^2+\nu\|\nabla z_c\|_2^2
=-\langle z_c,Tz_c\rangle+\langle z_c,k_c+\eta_c\rangle,
\]
\[
\|(z_c)_t\|_2^2+\nu^2\|Az_c\|_2^2
+\nu\partial_t\|\nabla z_c\|_2^2+\|\nabla p_c\|_2^2
=\|k_c+\eta_c-B_uz_c\|_2^2.
\tag{T12}
\]

Every cross term and square involving \(c'\) is inside these complete expressions. In particular \((z_c)_t\ne\sum c_A(J_A)_t\) for a variable coefficient vector.

For a differentiable real symmetric positive semidefinite matrix \(W(t)\), let \(E_W=\tfrac12\sum W_{AB}G_{AB}\). Direct contraction of (T8) gives

\[
\boxed{E_W'+\nu\sum W_{AB}D_{AB}
=-\sum W_{AB}C_{AB}
+\sum W_{AB}\langle J_A,K_B\rangle
+\tfrac12\sum W'_{AB}G_{AB}.}
\tag{T13}
\]

The corresponding contraction of the original matrix square is

\[
\begin{aligned}
\sum W_{AB}\langle(J_A)_t,(J_B)_t\rangle
+\nu^2\sum W_{AB}\langle AJ_A,AJ_B\rangle
+\nu\partial_t\sum W_{AB}D_{AB}
+\sum W_{AB}\langle\nabla\Pi_A,\nabla\Pi_B\rangle
={}&\sum W_{AB}\langle U_A,U_B\rangle
+\nu\sum W'_{AB}D_{AB}.
\end{aligned}
\tag{T14}
\]

For \(W=cc^T\), (T13) agrees with the combined-row energy, since its coefficient derivative is \(\langle z_c,\eta_c\rangle\). The square (T14) contracts \(\sum c_A(J_A)_t\), whereas (T12) uses the actual \((z_c)_t\); their difference is exactly the retained coefficient-source cross terms. Positivity of \(W\) does not impose a sign on \(W'\).

Higher temporal prolongation of a variable combination also retains the full Leibniz row \(\partial_t^m z_c=\sum_{A,r}\binom mr c_A^{(r)}J_{n+m-r,\alpha}\); increasing derivative order does not advance the time at which the coordinates are evaluated.

## 6. Strong actual base-cross cancellations

The nonlinear base remainder (T1) yields a useful exact cancellation. For every selected solenoidal \(J_B\),

\[
2\langle u,TJ_B\rangle=\langle N(u,u),J_B\rangle,
\]

because \(\langle u,(J_B\cdot\nabla)u\rangle=0\). Hence the actual base cross row simplifies to

\[
\boxed{G_{00,B}'+2\nu D_{00,B}
=\langle f,J_B\rangle+\langle u,F_B-\mathcal H_B\rangle.}
\tag{T15}
\]

For \(B=(0,e_i+e_j)\), its stocks and remaining nonlinear pairing are

\[
G_{00,B}=-\langle u_i,u_j\rangle,
\quad D_{00,B}=-\langle\nabla u_i,\nabla u_j\rangle,
\quad\langle u,\mathcal H_B\rangle=-2\langle u_i,Tu_j\rangle.
\]

Force integration by parts yields \(\langle f,u_{ij}\rangle+\langle u,f_{ij}\rangle=-\langle f_i,u_j\rangle-\langle u_i,f_j\rangle\). Multiplying (T15) by minus one returns the complete spatial cross-Gram energy with both force terms.

For \(B=(2,0)\), put \(e=\|u\|_2^2\), \(Y=\|\nabla u\|_2^2\), \(F=\langle u,f\rangle\). Then

\[
G_{00,B}=\tfrac12e''-\|V\|_2^2,
\quad D_{00,B}=\tfrac12Y''-\|\nabla V\|_2^2,
\quad\langle u,\mathcal H_{2,0}\rangle=-2\langle V,TV\rangle,
\]
\[
\langle f,Z\rangle+\langle u,f_{tt}\rangle
=F''-2\langle V,f_t\rangle.
\]

The twice-differentiated original kinetic identity is \(\tfrac12e'''+\nu Y''=F''\). Substitution into (T15) therefore gives exactly

\[
\tfrac12\partial_t\|V\|_2^2+\nu\|\nabla V\|_2^2
=-\langle V,TV\rangle+\langle V,f_t\rangle.
\tag{T16}
\]

These are genuine cancellations inside the thirty-field operation. They return the complete gradient and temporal energy rows, including their signed strain and prescribed work; they do not remove those faces by suppressing the nonendpoint allocations.

## 7. Extraction of the intrinsic response and completed stock

The thirty-field selection contains \(u\) and \(V\). Let

\[
g=\mathbb Pf,\quad q=-\mathbb PN(u,u),\quad h=V-g,
\quad b=\|u\|_2^2+\delta,\quad\lambda=\nu Y/b,
\quad w=V+\lambda u-g,\quad\delta>0.
\]

This uses \(c_V=1\), \(c_u=\lambda\), and a known affine lift \(-g\). Retaining \(\mathcal H_{00}=-N(u,u)\) and \(c_u'=\lambda'\) is essential. Subtracting the lift's full equation gives

\[
w_t+\nu Aw+L_uw=j_g+\lambda'u+\lambda g-\lambda q,
\qquad j_g=-\nu Ag-L_ug.
\tag{T17}
\]

Here \(g_t\) cancels because the definition subtracts \(g\); \(j_g\), \(\lambda g\), \(-\lambda q\) and \(\lambda'u\) remain. In the fully unprojected representation its pressure is \(p_t+\lambda p\) and its source is

\[
f_t-g_t-\nu Ag-B_ug+\lambda'u+\lambda f+\lambda N(u,u).
\]

The actual identities \(\langle w,u\rangle=-\delta\lambda\), \(\langle q,u\rangle=0\), and

\[
\frac b2\lambda'=\langle w,q\rangle-\|w\|_2^2
+\langle q-w,g\rangle-\delta\lambda^2
\]

cancel the scalar derivative port in the positive stock

\[
R_w=\tfrac12(\|w\|_2^2+\delta\lambda^2),
\quad
\Phi=\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4b}
=\tfrac12\|w\|_2^2+\frac{\|u\|_2^2+3\delta}{4}\lambda^2,
\quad\Phi-R_w=\frac b4\lambda^2.
\]

With \(F=\langle u,g\rangle\), direct pairing and differentiation yield the complete stock law

\[
\boxed{\Phi'+\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2
+\frac{\|u\|_2^2+3\delta}{2}\lambda^3
=-\langle w,Tw\rangle+\langle w,j_g\rangle
+\lambda\langle q,g\rangle+\frac{\lambda^2}{2}F.}
\tag{T18}
\]

This verifies how an actual field-dependent weight and affine force lift produce the completed stock, with every coefficient and source term accounted for. It does not assume its signed strain input is already paid.

## 8. A positive temporal subblock that cancels the first strain current

The temporal \(\alpha=0\) subblock provides an additional exact cancellation before norms. Let \(U=u,V=u_t,Z=u_{tt}\), and use the complete rows

\[
\mathcal B_0=N(U,U),\quad
\mathcal B_1=N(U,V)+N(V,U),\quad
\mathcal B_2=N(U,Z)+2N(V,V)+N(Z,U).
\]

For a symmetric real \(3\times3\) matrix \(G\), define mixed strain by \(S(U,V,Z)=\langle V,\operatorname{Sym}(\nabla U)Z\rangle\). Integration by parts in the actual solenoidal rows gives

\[
\begin{aligned}
\sum_{r,s=0}^2G_{rs}\langle V_r,\mathcal B_s\rangle
={}&(G_{11}-2G_{02})S(U,V,V)+2G_{12}S(U,V,Z)\\
&+G_{22}\big[S(U,Z,Z)+2\langle Z,N(V,V)\rangle\big].
\end{aligned}
\tag{T19}
\]

The \(G_{02}\) contribution is \(-2G_{02}S(U,V,V)\). The \(G_{12}\) contribution uses both ordered stretch pairings: the \(U\)-transport pair cancels, and \(\langle V,N(V,V)\rangle=0\), leaving \(G_{12}(\langle V,N(Z,U)\rangle+\langle Z,N(V,U)\rangle)=2G_{12}S(U,V,Z)\). All total orders zero and one cancel. No ordered mixed pairing has been replaced by an assumed symmetry.

Choose fixed constants \(a_0>0,b_0>0,c_0\ge b_0^2/a_0\) and

\[
G=\begin{pmatrix}a_0&0&b_0\\0&2b_0&0\\b_0&0&c_0\end{pmatrix}.
\]

The positive diagonal condition matters: \(b_0>0\) and \(a_0c_0\ge b_0^2\) alone do not imply positive semidefiniteness if both diagonal coefficients are negative. With the displayed qualification,

\[
E_G=\frac{a_0}{2}\|U+(b_0/a_0)Z\|_2^2
+b_0\|V\|_2^2
+\frac{c_0-b_0^2/a_0}{2}\|Z\|_2^2\ge b_0\|V\|_2^2.
\tag{T20}
\]

Embed this actual block into the thirty-field matrix by setting other entries to zero. It cancels the first temporal strain current and all mixed \(G_{12}\) terms exactly, leaving the full highest-row current

\[
c_0\big[S(U,Z,Z)+2\langle Z,N(V,V)\rangle\big].
\]

Its complete force is

\[
a_0\langle U,f\rangle
+b_0\big(\langle Z,f\rangle+2\langle V,f_t\rangle
+\langle U,f_{tt}\rangle\big)+c_0\langle Z,f_{tt}\rangle.
\tag{T21}
\]

The physical pressure rows \(p,p_t,p_{tt}\) remain in (T3), the local flux (T9) and the full square (T10); only their global solenoidal energy pairing is zero.

The exact stock and gradient-action expressions can also be written

\[
E_G=\frac{a_0}{2}e+\frac{b_0}{2}e''+\frac{c_0}{2}\|Z\|_2^2,
\quad D_G=a_0Y+b_0Y''+c_0\|\nabla Z\|_2^2,
\]
\[
\text{force in (T21)}=a_0F+b_0F''+c_0\langle Z,f_{tt}\rangle,
\qquad F=\langle U,f\rangle.
\tag{T22}
\]

Substituting the original kinetic identity and its complete second derivative therefore returns the highest temporal energy exactly:

\[
\frac12\partial_t\|Z\|_2^2+\nu\|\nabla Z\|_2^2
=-S(U,Z,Z)-2\langle Z,N(V,V)\rangle+\langle Z,f_{tt}\rangle.
\tag{T23}
\]

This is a meaningful positive-subblock cancellation with a retained \(V\) stock. Its highest-row current has not been suppressed or paid by this identity. No statement that further actual mixed-jet operations are impossible follows from this bounded cancellation check.

## 9. Actual source weight prescription and verified limits

In the directly read §13, J10–J13d prescribes the actual Gram matrix, its positive-semidefinite test \(z^TCz\), complete binomial height coefficients and viscous corner factors. It prescribes no particular thirty-component \(c(t)\) or positive matrix \(W(t)\) with a proved datum-paid contraction. The arbitrary test vector in the Gram positivity statement is not a construction of such a time-dependent weight. The independently derived choices in §§5 and 7 retain their complete coefficient sources and have not been attributed to a weight prescription absent from this section.

The exact base cancellations and completed intrinsic stock are useful verified chains. On a strict classical interval, every displayed coordinate and boundary stock is legitimate. Integrating to a proposed finite terminal time still requires retaining or establishing the corresponding stock traces and full action/source bounds. No whole-terminal source integrability, order-independent bound, or sign closure has been supplied by this bounded thirty-field execution alone.
