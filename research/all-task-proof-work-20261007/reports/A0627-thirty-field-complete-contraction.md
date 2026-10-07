# Complete contraction of the actual thirty-field rectangle

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This new calculation executes the original selection \(n=0,1,2\), \(|\alpha|\le2\) as one coupled block. It retains all nonlinear allocations, the full force and pressure coordinates, the next rows along its boundary, and every derivative introduced by variable weights. In addition to the full matrix identities, it finds a positive temporal subblock that cancels the first temporal strain before any norm estimate. Its force-compensated version cancels the corresponding lower intrinsic current while preserving a positive higher-row stock. The exact remaining signed current is displayed; no upper bound on it is assumed.

## Primary sources and custody

All three originals were hashed before content reads in [contraction-before.json](../COVERAGE.md#A0625):

* [Forced native assembly](../SOURCES.md#S152), J1–J6, LF1454–1536; J10–J13d, LF1581–1725; and J14–J15, LF1727–1766. Its separate finite force weights and compensated ladder were read at LF134–160 and 264–376. .
* [Unified forced setting](../SOURCES.md#S117), pressure-complete mixed recurrences, LF116–164, with the original history and initial-jet definitions. .
* [Unified forced rectangles](../SOURCES.md#S118), complete temporal/viscous/pressure squares, LF189–251. .

Every identity below first holds on a closed strict prefix \([0,B]\), \(B<T_*\), of the original smooth \(\mathbb R^3\) history. The original datum is in every finite Sobolev space, \(\nu>0\), and \(f\) is the prescribed smooth Schwartz force; it need not be solenoidal. Initial stocks are the generated original jet. No terminal higher-row membership or trace, strain sign, or common bound over derivative order is assumed. The variable-weight choices introduced below are tests of the source identities, not prescriptions attributed to the manuscript.

## Exact thirty fields and their interior nonlinear allocations

Use \(A=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(M_{ij}=\partial_j u_i\), \(D=(M+M^T)/2\), and
\[
 \mathcal I=\{(n,\alpha):0\le n\le2,\ \alpha\in\{0,e_i,2e_i,e_i+e_j\ (i<j)\}\},\quad
 J_{n,\alpha}=\partial_t^n\partial_x^\alpha u,\quad F_{n,\alpha}=\partial_t^n\partial_x^\alpha f.
 \tag{TC1}
\]
There are ten spatial indices and thirty vector fields. Write \(\Pi_{n,\alpha}=\partial_t^n\partial_x^\alpha p\), and define exactly as original J2
\[
 \mathcal B_{n,\alpha}
 =\sum_{a=0}^n\sum_{\beta\le\alpha}\binom na\binom\alpha\beta
 N(J_{a,\beta},J_{n-a,\alpha-\beta}).
 \tag{TC2}
\]
For \(\mathfrak a=(n,\alpha)\ne(0,0)\), remove only the two allocation endpoints \((a,\beta)=(0,0)\) and \((n,\alpha)\), and call the remaining full sum \(H_{\mathfrak a}\). At \((0,0)\) set \(H_{00}=-N(u,u)\). Then
\[
 \mathcal B_{\mathfrak a}=N(u,J_{\mathfrak a})+N(J_{\mathfrak a},u)+H_{\mathfrak a},\quad
 \mathcal L_u z=\mathbb P[N(u,z)+N(z,u)],\quad
 G_{\mathfrak a}=F_{\mathfrak a}-H_{\mathfrak a}.
 \tag{TC3}
\]
The exceptional negative \(H_{00}\) is essential: the common linearization on \(u\) has two copies of \(N(u,u)\), while original \(\mathcal B_{00}\) has one.

Here is the complete low-order pattern. Put \(U=u\), \(V=u_t\), \(Z=u_{tt}\), and use subscripts \(i,j\) for spatial derivatives. The formulas with \(i=j\) use both displayed copies:
\[
 \begin{array}{lll}
 H_{00}=-N(U,U),&H_{0,i}=0,&H_{0,ij}=N(U_i,U_j)+N(U_j,U_i),\\
 H_{1,0}=0,&H_{1,i}=N(U_i,V)+N(V,U_i),&H_{2,0}=2N(V,V),\\
 H_{2,i}=N(U_i,Z)+N(Z,U_i)+2N(V,V_i)+2N(V_i,V).
 \end{array}
 \tag{TC4}
\]
The second-spatial mixed corrections are
\[
 \begin{split}
 H_{1,ij}={}&N(U_{ij},V)+N(V,U_{ij})
 +N(U_i,V_j)+N(U_j,V_i)+N(V_i,U_j)+N(V_j,U_i),\\
 H_{2,ij}={}&N(U_{ij},Z)+N(Z,U_{ij})
 +N(U_i,Z_j)+N(U_j,Z_i)+N(Z_i,U_j)+N(Z_j,U_i)\\
 &+2N(V,V_{ij})+2N(V_{ij},V)+2N(V_i,V_j)+2N(V_j,V_i).
 \end{split}
 \tag{TC5}
\]
Thus \(H_{2,ii}\) contains \(4N(V_i,V_i)\), not two copies with total coefficient two. The literal [thirty-field-allocation-table.json](../data/thirty-field-allocation-table.json) evaluates all thirty original sums: 168 raw allocations and 110 correction terms, including the exceptional negative base correction. The advective derivative on the second factor is retained in each term.

The original full pressure-complete equation becomes
\[
 (J_{\mathfrak a})_t+\nu AJ_{\mathfrak a}+N(u,J_{\mathfrak a})+N(J_{\mathfrak a},u)+\nabla\Pi_{\mathfrak a}=G_{\mathfrak a},
 \qquad (\partial_t+\nu A+\mathcal L_u)J_{\mathfrak a}=\mathbb PG_{\mathfrak a}.
 \tag{TC6}
\]
Its pressure is still original J4:
\[
 \Pi_{n,\alpha}=\sum_{a,\beta}\binom na\binom\alpha\beta R_iR_j(J_{a,\beta,i}J_{n-a,\alpha-\beta,j})-A^{-1}\operatorname{div}F_{n,\alpha},
 \quad \nabla\Pi_{\mathfrak a}=(I-\mathbb P)(F_{\mathfrak a}-\mathcal B_{\mathfrak a}).
 \tag{TC7}
\]
This finite selection is not a separately truncated NS evolution. Its time derivative includes \(n=3\), its viscous faces include two further spatial orders, and the nonlinear factors include their actual spatial derivatives; original LF1518–1522 explicitly retains these boundary coordinates.

## Full energy Gram, positive source square and local flux

Define the actual thirty-by-thirty matrices
\[
 C_{ab}=\langle J_a,J_b\rangle,\quad K_{ab}=\langle\nabla J_a,\nabla J_b\rangle,\quad
 E_{ab}=\int J_a^TDJ_b,\quad
 \mathcal R_a=F_a-\mathcal B_a=G_a-N(u,J_a)-N(J_a,u).
\]
For a tuple \(X\), write \(\operatorname{Gr}(X)_{ab}=\langle X_a,X_b\rangle\). Original J10 is exactly
\[
 C'+2\nu K+2E=(\langle G_a,J_b\rangle+\langle J_a,G_b\rangle)_{ab}.
 \tag{TC8}
\]
Transport cancels in the symmetric global pairing; stretching \(E\), all \(H_a\) and all force rows remain. On solenoidal fields, \(\mathcal L_u+\mathcal L_u^*=2\mathbb PD\mathbb P\).

The full positive block square is
\[
 \operatorname{Gr}(J_t)+\nu^2\operatorname{Gr}(AJ)+\operatorname{Gr}(\nabla\Pi)+\nu K'
 =\operatorname{Gr}(\mathcal R).
 \tag{TC9}
\]
Pressure gradients are orthogonal to the temporal and viscous solenoidal faces. The source's first full corner J13d gives the same identity after its nine force/nonlinear/pressure pairings are combined:
\(\operatorname{Gr}(\mathbb P\mathcal R)=\operatorname{Gr}(\mathcal R)-\operatorname{Gr}(\nabla\Pi)\).
The pressure Gram is genuinely positive and bounded by the complete raw source Gram; that source contains every interior correction and both endpoint parents.

Before spatial integration, let \(c_{ab}=J_a\cdot J_b\), \(k_{ab}=\sum_i\partial_iJ_a\cdot\partial_iJ_b\), \(e_{ab}=J_a^TDJ_b\), and \(\mathcal P_{ab}=\Pi_aJ_b+\Pi_bJ_a\). Original J13a becomes the matrix conservation identity
\[
 \partial_t c+\operatorname{div}(u c-\nu\nabla c+\mathcal P)
 =-2\nu k-2e+(G_a\cdot J_b+J_a\cdot G_b)_{ab}.
 \tag{TC10}
\]
Consequently a spatial/time selector \(\zeta\) contributes
\(\int(\zeta_t+u\cdot\nabla\zeta+\nu\Delta\zeta)c\) and
\(\int\nabla\zeta\cdot\mathcal P\), in addition to the selected right side. These full pressure/selector terms persist for every entry.

## Constant and variable contractions, with all derivatives

For every constant symmetric PSD matrix \(W\), the exact energy contraction is
\[
 \tfrac12(\operatorname{tr}WC)'+\nu\operatorname{tr}WK+\operatorname{tr}WE
 =\sum_{a,b}W_{ab}\langle J_a,G_b\rangle.
 \tag{TC11}
\]
Integrating (TC9) retains its actual initial and strict-terminal stocks:
\[
 \nu\operatorname{tr}[WK(B)]
 +\int_0^B\operatorname{tr}W[\operatorname{Gr}(J_t)+\nu^2\operatorname{Gr}(AJ)+\operatorname{Gr}(\nabla\Pi)]
 =\nu\operatorname{tr}[WK(0)]+\int_0^B\operatorname{tr}W\operatorname{Gr}(\mathcal R).
 \tag{TC12}
\]
For an arbitrary \(C^1\) symmetric PSD \(W(t)\), without choosing a square root,
\[
 \begin{split}
 \tfrac12(\operatorname{tr}WC)'+\nu\operatorname{tr}WK+\operatorname{tr}WE
 &=\sum_{a,b}W_{ab}\langle J_a,G_b\rangle+\tfrac12\operatorname{tr}W'C,\\
 \nu\operatorname{tr}[WK]_0^B+\int_0^B\operatorname{tr}W[\operatorname{Gr}(J_t)+\nu^2\operatorname{Gr}(AJ)+\operatorname{Gr}(\nabla\Pi)]
 &=\int_0^B\operatorname{tr}W\operatorname{Gr}(\mathcal R)+\nu\int_0^B\operatorname{tr}W'K.
 \end{split}
 \tag{TC13}
\]
The corresponding local equation acquires \(\operatorname{tr}W'c\). Thus neither a varying energy weight nor a varying square weight is free.

For an actual \(C^1\) coefficient vector \(c(t)\), put \(z=\sum c_aJ_a\), \(\pi_c=\sum c_a\Pi_a\), \(G_c=\sum c_aG_a\), \(\eta_c=\sum c_a'J_a\). Its actual derivative row and square are
\[
 z_t+\nu Az+N(u,z)+N(z,u)+\nabla\pi_c=G_c+\eta_c,
\]
\[
 \tfrac12(\|z\|_2^2)'+\nu\|\nabla z\|_2^2+\int z^TDz=\langle z,G_c+\eta_c\rangle,
 \quad
 \|z_t\|_2^2+\nu^2\|Az\|_2^2+\|\nabla\pi_c\|_2^2+\nu(\|\nabla z\|_2^2)'
 =\|\mathcal R_c+\eta_c\|_2^2.
 \tag{TC14}
\]
In particular the last right side includes \(2\langle\mathcal R_c,\eta_c\rangle+\|\eta_c\|_2^2\); it is not just an instantaneous coefficient contraction of (TC9). The pressure stays \(\pi_c\) because \(\eta_c\) is solenoidal. If a differentiable factorization \(W=L^TL\) is chosen, the same statement holds for the tuple \(LJ\) with source \(LG+L'J\). No differentiable factorization of a degenerate PSD \(W\) is presumed merely from its positivity.

## Exact base-cross cancellation and a positive temporal gain

The acquired base source in (TC3) has a real cancellation. For every selected solenoidal \(J_b\),
\[
 2E_{00,b}=2\int u^TDJ_b=\langle N(u,u),J_b\rangle,
 \quad G_{00}=f+N(u,u),
 \quad C_{00,b}'+2\nu K_{00,b}=\langle f,J_b\rangle+\langle u,F_b-H_b\rangle.
 \tag{TC15}
\]
The other ordered term is \(\langle J_b,\nabla|u|^2/2\rangle=0\). Thus this base-cross nonlinear cancellation occurs before any bound.

For \(b=(0,e_i+e_j)\), \(C_{00,b}=-\langle U_i,U_j\rangle\), \(K_{00,b}=-\langle\nabla U_i,\nabla U_j\rangle\), and \(\langle u,H_b\rangle=-2E_{i,j}\). Force integration by parts returns exactly the first-spatial cross energy (TC8). For \(b=(2,0)\),
\(C_{00,b}=e''/2-\|V\|^2\), \(K_{00,b}=Y''/2-\|\nabla V\|^2\), and \(\langle u,H_b\rangle=-2S(u,V,V)\). Using the twice-differentiated kinetic row \(e'''/2+\nu Y''=\langle u,f\rangle''\) returns the full first-temporal energy with its signed strain and \(f_t\) work. These are exact nontrivial cancellations and exact lower-row reconstructions.

A positive temporal subblock can cancel that first-temporal strain as well. For any symmetric \(3\times3\) matrix \(Q\) on \((U,V,Z)\), direct use of full \(\mathcal B_0,\mathcal B_1,\mathcal B_2\) and solenoidality gives
\[
 \sum_{r,s=0}^2Q_{rs}\langle V_r,\mathcal B_s\rangle
 =(Q_{11}-2Q_{02})S(u,V,V)+2Q_{12}\langle V,DZ\rangle
 +Q_{22}\{S(u,Z,Z)+2\langle Z,N(V,V)\rangle\}.
 \tag{TC16}
\]
All total-order-zero and total-order-one terms cancel, including both \(Q_{01}\) slots. Choose
\[
 Q=\begin{pmatrix}\alpha&0&\beta\\0&2\beta&0\\\beta&0&\gamma\end{pmatrix},
 \qquad \alpha>0,\quad\gamma>0,\quad\beta>0,\quad\alpha\gamma\ge\beta^2.
 \tag{TC17}
\]
It is PSD and embeds into the actual thirty fields by zero weights on the other entries. Its positive stock is
\[
 \tfrac12\sum Q_{rs}\langle V_r,V_s\rangle
 =\tfrac\alpha2\|U+(\beta/\alpha)Z\|^2+\beta\|V\|^2+\tfrac12(\gamma-\beta^2/\alpha)\|Z\|^2.
\]
The first-temporal strain cancels exactly and only \(\gamma\{S(u,Z,Z)+2\langle Z,N(V,V)\rangle\}\) remains from (TC16). The full force work is
\(\alpha\langle U,f\rangle+\beta\langle U,f\rangle''+\gamma\langle Z,f_{tt}\rangle\), and pressure coordinates remain in the underlying row/square. This is a genuine positive contraction gain, not a separate-norm estimate. It relocates the intrinsic signed payment to the actual highest temporal row with its full curvature \(2N(V,V)\); it does not bound that current.

## Force-compensated positive lift cancelling the lower intrinsic current

The same operation can be executed with the actual force-subtracted field. Let \(g=\mathbb Pf\), \(p_0=R_iR_j(u_i u_j)\), \(h=u_t-g\), and
\(k=h_t=u_{tt}-g_t\). For any solenoidal force field \(a\), define
\(J_a=-\nu Aa-N(u,a)-N(a,u)\).
Differentiating the original first temporal row, rather than replacing its source, gives the exact raw shifted system
\[
 \begin{split}
 u_t+\nu Au+N(u,u)+\nabla p&=f,\\
 h_t+\nu Ah+N(u,h)+N(h,u)+\nabla(p_0)_t&=J_g,\\
 k_t+\nu Ak+N(u,k)+N(k,u)+2N(h,h)+\nabla(p_0)_{tt}&=R_2,\\
 R_2&=J_{g_t}-2N(h,g)-2N(g,h)-2N(g,g).
 \end{split}
 \tag{TC18}
\]
All two mixed force orders and the force–force parent have coefficient two. The prescribed-gradient force potential cancels only its matching \(f_t-g_t\), then \(f_{tt}-g_{tt}\), gradients in these lifted rows. The pressure \((p_0)_{tt}\) remains complete:
\[
 (p_0)_{tt}=R_iR_j[u_i(k+g_t)_j+(k+g_t)_iu_j+2(h+g)_i(h+g)_j].
 \tag{TC19}
\]
Thus it contains both \(u,g_t\) orders, both \(h,g\) orders and the \(g,g\) contribution. Equivalently, after moving the corresponding projected-force gradient parts, its intrinsic pressure is \(\pi_k+2R_iR_j(h_i h_j)\), where \(\pi_k=R_iR_j(u_i k_j+k_i u_j)\). This pressure and its full compensated source must be moved together.

Fix \(\delta>0\), put \(e=\|u\|^2\), \(Y=\|\nabla u\|^2\), \(\lambda=\nu Y/(e+\delta)\), \(w=h+\lambda u\), and choose constants \(a,c>0\), \(ac>1/4\). The actual time-dependent positive test matrix is
\[
 Q_\lambda=\begin{pmatrix}\lambda^2+a&\lambda&1/2\\\lambda&1&0\\1/2&0&c\end{pmatrix}
 =\begin{pmatrix}\lambda\\1\\0\end{pmatrix}\begin{pmatrix}\lambda&1&0\end{pmatrix}
 +\begin{pmatrix}a&0&1/2\\0&0&0\\1/2&0&c\end{pmatrix}.
 \tag{TC20}
\]
Its time derivative is essential:
\(\tfrac12\sum Q_\lambda'\langle X_r,X_s\rangle=\lambda'\langle w,u\rangle=-\delta\lambda\lambda'\), with \(X=(u,h,k)\). Thus the exact positive higher stock and gradient action are
\[
 \mathcal E_\lambda=R_w+\tfrac12[a e+\langle u,k\rangle+c\|k\|^2],\quad
 R_w=\tfrac12(\|w\|^2+\delta\lambda^2),
\]
\[
 \mathcal D_\lambda=\|\nabla w\|^2+aY+\langle\nabla u,\nabla k\rangle+c\|\nabla k\|^2,
 \quad
 \boxed{\mathcal E_\lambda'+\nu\mathcal D_\lambda
 =-c\mathcal T_k+\mathcal W_g,\qquad
 \mathcal T_k=S(u,k,k)+2\langle k,N(h,h)\rangle.}
 \tag{TC21}
\]
Here all forcing is exactly
\[
 \mathcal W_g=\langle w,J_g\rangle+\lambda\langle w,g\rangle+a\langle u,g\rangle
 +\tfrac12\langle k,g\rangle+\tfrac12\langle u,R_2\rangle+c\langle k,R_2\rangle.
 \tag{TC22}
\]
The lower intrinsic \(S(u,h,h)\) cancels because \((Q_\lambda)_{11}=2(Q_\lambda)_{02}\); the crossed highest slot vanishes because \((Q_\lambda)_{12}=0\). The \(\lambda'\) port becomes the retained positive regularization stock. No highest source or pressure is omitted.

Let \(m>0\) be the smaller eigenvalue of \(\begin{pmatrix}a&1/2\\1/2&c\end{pmatrix}\). Then
\[
 \mathcal E_\lambda\ge\tfrac12\|w\|^2+\tfrac\delta2\lambda^2+\tfrac m2(\|u\|^2+\|k\|^2),\quad
 \mathcal D_\lambda\ge\|\nabla w\|^2+m(Y+\|\nabla k\|^2).
 \tag{TC23}
\]
On a finite force horizon let \(K=\|u_0\|_2+\int\|g\|_2\), so \(e\le K^2\) and \(\int Y\le K^2/(2\nu)\). In particular
\(\|h\|^2\le H_*\mathcal E_\lambda\), \(H_*=4(1+K^2/\delta)\). This stock is genuinely an additional positive higher-row stock; it is not the previous \(\Phi_\delta\) identity in a different notation.

## Complete force payment and the exact remaining estimate

The force insertions can be paid without imposing small forcing or separating away an unknown convective source. Before norms, use solenoidality to move the actual force transport onto its receiver:
\[
 \langle w,N(g,u)\rangle=-\langle N(g,w),u\rangle,\quad
 \langle k,N(g_t,u)\rangle=-\langle N(g_t,k),u\rangle,\quad
 \langle k,N(g,h)\rangle=-\langle N(g,k),h\rangle.
 \tag{TC24}
\]
The \(N(h,g)\) term remains a \(\nabla g\) multiplier. These are the exact original ordered force parents, not replacements by a force norm.

For completeness, a fully datum/force coefficient bound can be made explicit. Set \(G_0=\|g\|_\infty\), \(G_1=\|\nabla g\|_\infty\), \(G_{t0}=\|g_t\|_\infty\), \(G_{t1}=\|\nabla g_t\|_\infty\), with operator norms for gradients, and
\[
 A_g=\nu\|Ag_t\|_2+KG_{t1}+2G_0\|\nabla g\|_2,
\]
\[
 L_g=4+2\|g\|_2/\sqrt\delta+2cG_1\sqrt{2H_*/m}+4c^2G_0^2H_*/(\nu m),\qquad B_1=H_*G_0^2/2,
\]
\[
 \begin{split}
 B_0={}&\tfrac12(\nu\|Ag\|_2+KG_1)^2+K^2G_0^2/\nu+aK\|g\|_2+\|g\|_2^2/(8m)\\
 &+\tfrac\nu2K\|Ag_t\|_2+\tfrac12K^2G_{t1}+KG_0\|\nabla g\|_2
 +\tfrac{H_*}2K^2G_1^2+c^2A_g^2/(2m)+c^2K^2G_{t0}^2/(\nu m).
 \end{split}
\]
Young's inequality after the exact integrations (TC24) gives
\[
 |\mathcal W_g|\le\tfrac\nu4\|\nabla w\|^2+\tfrac{\nu m}2\|\nabla k\|^2
 +L_g\mathcal E_\lambda+B_0+B_1Y.
\]
Therefore the retained highest signed current obeys the complete coupled estimate
\[
 \boxed{\mathcal E_\lambda'+\frac\nu2[\|\nabla w\|^2+m(Y+\|\nabla k\|^2)]
 \le-c\mathcal T_k+L_g\mathcal E_\lambda+B_0+B_1Y.}
 \tag{TC25}
\]
All coefficients are fixed by \(\nu,\delta,a,c,K\) and the actual prescribed force norms; their finite-horizon integrals are finite. The kinetic measure pays \(\int B_1Y\). This is a verified arbitrary-amplitude forcing payment for this positive lift. The intrinsic \(\mathcal T_k\) remains signed and complete.

Its initial and strict-terminal law is still (TC21) integrated, with both \(\mathcal E_\lambda(0)\) and \(\mathcal E_\lambda(B)\). The initial \(h(0)=\nu\Delta u_0-\mathbb PN(u_0,u_0)\), and \(k(0)\) is generated from (TC18) with \(g(0)\); it is finite in every needed Sobolev space. If an upper bound on the actual whole-prefix signed primitive \(-\int_0^B\mathcal T_k\) were supplied, (TC25), with its decreasing datum-controlled integrating factor, would bound this positive higher stock and its actions. That premise has not been supplied by this cancellation.

The old target is linked concretely. The extracted row from the thirty fields plus the known lift is
\[
 (\partial_t+\nu A+\mathcal L_u)w=-\nu Ag-\mathcal L_ug+\lambda(g-q)+\lambda'u,
 \quad q=-\mathbb PN(u,u),\quad
 (\partial_t+\nu A+\mathcal L_u)u=g-q.
 \tag{TC26}
\]
Its direct pairing retains \(\langle w,u\rangle=-\delta\lambda\), adds the stock \((e+\delta)\lambda^2/4\), and gives exactly
\[
 \Phi_\delta'+\nu\|\nabla w\|^2+\lambda\|w\|^2+\tfrac12(e+3\delta)\lambda^3
 =-S(u,w,w)+\langle w,\mathbb PJ_g\rangle+\lambda\langle q,g\rangle+\tfrac12\lambda^2\langle u,g\rangle,
 \quad \Phi_\delta=R_w+(e+\delta)\lambda^2/4.
 \tag{TC27}
\]
The new positive lift controls this stock by
\(\Phi_\delta\le[1+(K^2+\delta)/(2\delta)]\mathcal E_\lambda\), while \(\int\lambda\le K^2/(2\delta)\). Thus a supplied upper payment of the remaining top primitive would propagate to the original signed target through these actual stocks/actions. The calculation does not assume that payment, identify the top current with \(I_\delta\), or discard its curvature term.

## What the source prescribes, and bounded conclusion

Original J10 prescribes the actual Gram and its evolution, with arbitrary coefficient positivity \(z^TCz\ge0\). J11–J13 prescribe their binomial anti-diagonal coefficients and viscous powers. J13c–d prescribe complete corner substitution. In LF1581–1725, no particular thirty-field scalar coefficient vector, PSD contraction matrix, or differential equation for such a weight is selected to pay a terminal upper budget. This statement is limited to the directly read section. The explicit weights \(w_r=\tau^{2r}\) do occur elsewhere in the same assembly at LF135–144, for its finite temporal force compensation. That compensated C6–C9 ladder retains the complete weighted nonlinear production on its right. These original weights have not been confused with a prescribed thirty-field intrinsic compensation.

Additional entries of the complete thirty-field Gram are genuine mixed directional and higher-row information, with the pressure/full-source squares and boundary coordinates retained. The base-cross identities recover selected differentiated rows exactly. The positive temporal contraction and its fully forced \(\lambda\)-dependent lift supply a real lower-current cancellation and a coercive higher stock. Known-force work is paid; the explicit signed top current \(S(u,k,k)+2\langle k,N(h,h)\rangle\), including its original curvature, is the estimate still needed in this executed lift.

The original J14–J15 norm extraction at LF1729–1765 explicitly starts from supplied interval-intersection membership. It is not consumed here to pay the source actions. All displayed equalities and inequalities are verified on strict classical prefixes, with initial and current stocks. This bounded calculation establishes neither a whole-terminal upper bound on the top primitive nor a conclusion that a further joint operation cannot supply it. No scalar toy trajectory, sign assumption or unexamined-source absence claim is used.

Independent calculations in [thirty-field-exact-combination.md](A0619-thirty-field-exact-combination.md) verify the literal allocation coefficients, the variable Gram identities, and the positive temporal cancellation. The supporting [forced-lambda-positive-lift-check.md](A0615-forced-lambda-positive-lift-check.md), derives the complete lifted pressure/source rows and positive higher stock independently. A final read-only algebra check also verifies every explicit coefficient and absorption in (TC24)–(TC25).
