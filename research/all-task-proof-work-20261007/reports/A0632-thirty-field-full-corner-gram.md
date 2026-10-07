# Full native 30-field Gram and temporal corner substitution

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This new calculation executes the original 30-vector-field selection, all its temporal Gram blocks, and the native two-factor corner substitution through order two. Every identity is evaluated on the same pressure-complete classical history, on an arbitrary strict prefix \([0,t]\), \(t<T_*\). Increasing a corner order differentiates coordinates at that time; it does not advance the fluid to another time. No terminal membership, pressure-Hessian sign, positive derivative, or datum-paid upper action is assumed.

## 1. Source identity and the exact selection

The primary original is [native assembly](../SOURCES.md#S152):

- J1–J4, LF1450–1488: full mixed fields, both projections, canonical scalar pressure and force potential.
- J5–J6, LF1490–1513: temporal nonlinear parents and spatial allocations.
- LF1515–1522 and J7–J9, LF1538–1577: mixed compatibility, instantaneous recursion and retained boundary coordinates.
- J10, LF1583–1605: the actual Gram and the explicit 30-field selection.
- J13a–b, LF1656–1690: local pressure flux and prolonged source allocations.
- J13c–d, LF1692–1725: arbitrary two-factor corners, including all nine force/nonlinear/pressure products.

The local combined manuscript's [forced mixed recurrences, LF116–149](../SOURCES.md#S117) have . Its [complete pressure-square cells, LF189–251](../SOURCES.md#S118) have . Those sources give the underlying full equations and their strict-prefix scope; this note does not independently identify a public DOI version with these files.

Let \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\). Fix the ten spatial multi-indices, in this order,
\[
 \mathcal A=(0,e_1,e_2,e_3,2e_1,2e_2,2e_3,e_1+e_2,e_1+e_3,e_2+e_3).
 \tag{TC1}
\]
The source's literal selection is
\[
 \mathcal I=\{(n,\alpha):n=0,1,2,\ \alpha\in\mathcal A\},
 \qquad J_{n,\alpha}=\partial_t^n\partial_x^\alpha u,
 \quad \Pi_{n,\alpha}=\partial_t^n\partial_x^\alpha p,
 \quad F_{n,\alpha}=\partial_t^n\partial_x^\alpha f.
 \tag{TC2}
\]
There are 30 vector fields. The Gram is \(30\times30\), rather than a separate matrix for each scalar component.

For every finite mixed index, the exact nonlinear and pressure coordinates are
\[
\begin{aligned}
 B_{n,\alpha}
 &=\sum_{a=0}^n\sum_{\beta\le\alpha}
   \binom na\binom\alpha\beta N(J_{a,\beta},J_{n-a,\alpha-\beta}),\\
 \Pi_{n,\alpha}
 &=\sum_{a=0}^n\sum_{\beta\le\alpha}
   \binom na\binom\alpha\beta
    R_iR_j(J_{a,\beta,i}J_{n-a,\alpha-\beta,j})
       -L^{-1}\operatorname{div}F_{n,\alpha},\\
 K_{n,\alpha}&=\nabla\Pi_{n,\alpha}
              =(I-\mathbb P)(F_{n,\alpha}-B_{n,\alpha}),\\
 T_{n,\alpha}&=F_{n,\alpha}-B_{n,\alpha}-K_{n,\alpha},\\
 J_{n+1,\alpha}&=-\nu LJ_{n,\alpha}+T_{n,\alpha}.
\end{aligned}\tag{TC3}
\]
The low-frequency force potential in the scalar pressure is retained. All velocity fields and the complete \(T_{n,\alpha}\) are solenoidal; neither \(F\) nor \(B\) separately need be.

## 2. Temporal generation from the actual base spatial row

For each \(\alpha\in\mathcal A\), write
\[
 U_\alpha=J_{0,\alpha},\qquad V_\alpha=J_{1,\alpha},\qquad W_\alpha=J_{2,\alpha}.
\]
Repeated use of TC3 gives
\[
 V_\alpha=-\nu LU_\alpha+T_{0,\alpha},\qquad
 W_\alpha=\nu^2L^2U_\alpha-\nu LT_{0,\alpha}+T_{1,\alpha}.
 \tag{TC4}
\]
This is the actual J13c operation at \(k=1,2\). The source terms in TC4 contain the original nonlinear history, rather than an independent forcing chosen for a truncated equation.

Their complete nonlinear rows, including the second temporal row used in Gram evolution, are
\[
\begin{aligned}
 B_{0,\alpha}&=\sum_{\beta\le\alpha}\binom\alpha\beta
                         N(U_\beta,U_{\alpha-\beta}),\\
 B_{1,\alpha}&=\sum_{\beta\le\alpha}\binom\alpha\beta
             \{N(U_\beta,V_{\alpha-\beta})+N(V_\beta,U_{\alpha-\beta})\},\\
 B_{2,\alpha}&=\sum_{\beta\le\alpha}\binom\alpha\beta
       \{N(U_\beta,W_{\alpha-\beta})
        +2N(V_\beta,V_{\alpha-\beta})+N(W_\beta,U_{\alpha-\beta})\}.
\end{aligned}\tag{TC5}
\]
The pressure rows use the same coefficients and allocations with \(N(a,b)\) replaced by \(R_iR_j(a_i b_j)\), and retain \(-L^{-1}\operatorname{div}F_{n,\alpha}\). For example \(\alpha=2e_i\) has the spatial coefficients \(1,2,1\), while \(\alpha=e_i+e_j\), \(i\ne j\), has four spatial allocations. Thus the displayed sums specify every one of the ten spatial slots, including all multiplicities, without collapsing the proper mixed parents.

The first nonlinear source can also be expanded all the way through its generated temporal parents. Substituting \(V=-\nu LU+T_0\) gives
\[
\begin{aligned}
 B_{1,\alpha}
 =\sum_{\beta\le\alpha}\binom\alpha\beta\bigl[{}
 &-\nu N(U_\beta,LU_{\alpha-\beta})
  -\nu N(LU_\beta,U_{\alpha-\beta})\\
 &+N(U_\beta,F_{0,\alpha-\beta})+N(F_{0,\beta},U_{\alpha-\beta})\\
 &-N(U_\beta,B_{0,\alpha-\beta})-N(B_{0,\beta},U_{\alpha-\beta})\\
 &-N(U_\beta,K_{0,\alpha-\beta})-N(K_{0,\beta},U_{\alpha-\beta})\bigr].
\end{aligned}\tag{TC5a}
\]
Thus the \(F_0\) insertions are present in both orders before any source/pressure cancellation. The force-gradient part is paired with the matching \(K_0\) terms through the complete \(T_0\); they are not individually omitted. The second scalar pressure likewise becomes \(\Pi_{1,\alpha}=\sum_{\beta\le\alpha}\binom\alpha\beta R_iR_j(U_{\beta,i}V_{\alpha-\beta,j}+V_{\beta,i}U_{\alpha-\beta,j})-L^{-1}\operatorname{div}F_{1,\alpha}\), with that same full substitution for \(V\).

## 3. Every temporal block of the complete Gram

For ten-field lists \(X,Y\), define the \(10\times10\) block bracket
\[
 [X,Y]_{\alpha\beta}=\langle X_\alpha,Y_\beta\rangle_{L^2},
 \qquad [X,Y]^T=[Y,X].
 \tag{TC6}
\]
Let \(C_{rs}=[J_r,J_s]\), \(r,s=0,1,2\). Here \(J_0=U\), \(J_1=V\), \(J_2=W\), and \(T_n\) means the full list \((T_{n,\alpha})_{\alpha\in\mathcal A}\). Applying TC4 in both factors gives all nine blocks:
\[
\begin{aligned}
 C_{00}&=[U,U],\\
 C_{01}&=-\nu[U,LU]+[U,T_0],\\
 C_{10}&=-\nu[LU,U]+[T_0,U],\\
 C_{02}&=\nu^2[U,L^2U]-\nu[U,LT_0]+[U,T_1],\\
 C_{20}&=\nu^2[L^2U,U]-\nu[LT_0,U]+[T_1,U],\\
 C_{11}&=\nu^2[LU,LU]
          -\nu\{[LU,T_0]+[T_0,LU]\}+[T_0,T_0],\\
 C_{12}&=-\nu^3[LU,L^2U]
          +\nu^2\{[LU,LT_0]+[T_0,L^2U]\}\\
        &\hspace{4mm}-\nu\{[LU,T_1]+[T_0,LT_0]\}+[T_0,T_1],\\
 C_{21}&=-\nu^3[L^2U,LU]
          +\nu^2\{[LT_0,LU]+[L^2U,T_0]\}\\
        &\hspace{4mm}-\nu\{[T_1,LU]+[LT_0,T_0]\}+[T_1,T_0],\\
 C_{22}&=\nu^4[L^2U,L^2U]
          -\nu^3\{[L^2U,LT_0]+[LT_0,L^2U]\}\\
        &\hspace{4mm}+\nu^2\{[L^2U,T_1]+[T_1,L^2U]+[LT_0,LT_0]\}\\
        &\hspace{4mm}-\nu\{[LT_0,T_1]+[T_1,LT_0]\}+[T_1,T_1].
\end{aligned}\tag{TC7}
\]
This specifies all 900 ordered entries of the symmetric 30-field Gram through their actual \(\alpha,\beta\) pairings; it does not discard the off-diagonal blocks. The signs in \(C_{12},C_{22}\) come from \(\nu\Delta=-\nu L\).

## 4. All nine pressure/source allocations before their exact simplification

Every double-source block in TC7 has entries of the form \(\langle L^iT_{n,\alpha},L^jT_{m,\beta}\rangle\). For the present 30 fields, \(n,m\in\{0,1\}\) and the powers are \(i,j\in\{0,1\}\) where they occur in TC7. Writing the indices explicitly once gives all nine original allocations:
\[
\begin{aligned}
 \langle L^iT_{n,\alpha},L^jT_{m,\beta}\rangle
 ={}&\langle L^iF_{n,\alpha},L^jF_{m,\beta}\rangle
    -\langle L^iF_{n,\alpha},L^jB_{m,\beta}\rangle
    -\langle L^iF_{n,\alpha},L^jK_{m,\beta}\rangle\\
 &-\langle L^iB_{n,\alpha},L^jF_{m,\beta}\rangle
    +\langle L^iB_{n,\alpha},L^jB_{m,\beta}\rangle
    +\langle L^iB_{n,\alpha},L^jK_{m,\beta}\rangle\\
 &-\langle L^iK_{n,\alpha},L^jF_{m,\beta}\rangle
    +\langle L^iK_{n,\alpha},L^jB_{m,\beta}\rangle
    +\langle L^iK_{n,\alpha},L^jK_{m,\beta}\rangle.
\end{aligned}\tag{TC8}
\]
Each \(B\) in this expression has all the parents in TC3/5, and each \(K\) has the canonical scalar pressure and force potential from TC3. In particular the individual force–pressure and nonlinear–pressure pairings in TC8 need not vanish.

Only after the full expansion, set \(R_{n,\alpha}=F_{n,\alpha}-B_{n,\alpha}\). Since \(L\) commutes with the two orthogonal Fourier projections,
\[
\begin{aligned}
 \langle L^iT_{n,\alpha},L^jT_{m,\beta}\rangle
 &=\langle L^iR_{n,\alpha},L^jR_{m,\beta}\rangle
    -\langle L^iK_{n,\alpha},L^jK_{m,\beta}\rangle,\\
 \langle L^aU_\alpha,L^iT_{n,\beta}\rangle
 &=\langle L^aU_\alpha,L^i(F_{n,\beta}-B_{n,\beta})\rangle.
\end{aligned}\tag{TC9}
\]
The second equality is justified by the actual solenoidality of the \(U\) factor. The first equality retains the subtracted pressure Gram rather than declaring all pressure products zero. Together TC7–9 execute every double term of the native two-by-two temporal corner on the selected spatial blocks.

## 5. Actual Gram congruence and what its positivity says

Define the actual 60-field list
\[
 \mathcal Y=(U,LU,L^2U,T_0,LT_0,T_1)
\]
and its Hilbert-space Gram \(H_{60}\). The constant block transformation is
\[
 S=\begin{pmatrix}
 1&0&0&0&0&0\\
 0&-\nu&0&1&0&0\\
 0&0&\nu^2&0&-\nu&1
 \end{pmatrix}\otimes I_{10},\qquad
 C_{30}=S H_{60}S^T\succeq0.
 \tag{TC10}
\]
This is a congruence of actual same-history fields, not a free-data parameterization. The source fields \(T_0,T_1\) contain those generated fields through their complete nonlinear and pressure definitions. TC10 proves \(z^TC_{30}z=\|\sum_{n,\alpha}z_{n,\alpha}J_{n,\alpha}\|^2\ge0\). It also gives the ordinary mixed Cauchy/Schur constraints, for example
\[
 |\langle J_{1,\alpha},J_{2,\beta}\rangle|^2
 \le\|J_{1,\alpha}\|^2\|J_{2,\beta}\|^2.
 \tag{TC11}
\]
Those are extra quadratic restrictions relative to the preceding four-field selection. They do not put a datum-only value on either positive factor.

Spatial compatibility also gives exact entry relations, since the ten fields in each temporal row are derivatives of the same \(J_{n,0}\):
\[
 C_{nr}^{\alpha\beta}
 =(-1)^{|\alpha|}\langle J_{n,0},\partial^{\alpha+\beta}J_{r,0}\rangle,
 \qquad
 \langle J_{n,0},\partial_{ij}J_{n,0}\rangle
 =-\langle\partial_iJ_{n,0},\partial_jJ_{n,0}\rangle.
 \tag{TC11a}
\]
For \(n=r\), an odd total spatial order \(|\alpha|+|\beta|\) makes the entry zero by integration by parts and symmetry of the real pairing. Thus every diagonal temporal block has its even/odd spatial cross entries identically zero. These are actual derivative-coordinate restrictions; they do not treat the 30 fields as independent inputs or make a positive norm datum-paid.

Native J10 defines the selected Gram; it does not specify a preferred positive contraction weight for an upper estimate. Any constant positive-semidefinite \(30\times30\) weight used below is an explicitly chosen contraction, not a source-supplied estimate. Likewise an unweighted trace on the ten spatial slots is not an isotropic Hessian trace: \(\|Lu\|^2=\sum_{|\alpha|=2}(2!/\alpha!)\|\partial^\alpha u\|^2\), so mixed derivatives have weight two. No such norm weights are silently inserted into the plain selected Gram.

## 6. Full 30-field evolution, local pressure flux, and current/initial stocks

For \(A,B\in\mathcal I\), define
\[
 Z_{AB}=\sum_i\langle J_{A+e_i},J_{B+e_i}\rangle,
 \quad M_{AB}=\langle B_A,J_B\rangle,
 \quad E_{AB}=\langle F_A,J_B\rangle.
\]
Here \(A+e_i\) advances the spatial component of the mixed index. The literal J10 evolution and its complete integrated balance are
\[
\begin{aligned}
 C_{30}'+2\nu Z&=-M-M^T+E+E^T,\\
 C_{30}(t)+2\nu\int_0^tZ\,ds
 &=C_{30}(0)-\int_0^t(M+M^T)ds+\int_0^t(E+E^T)ds.
\end{aligned}\tag{TC12}
\]
All source derivatives through temporal order two occur in this evolution. The complete \(B_{2,\alpha}\) contains its \(2N(V,V)\) parents in TC5. The current \(C_{30}(t)\) is not an initial stock. At time zero, all entries of \(U,V,W\) are obtained from \(u_0\), \(f(0),f_t(0)\) and the full nonlinear initial recursion; their pressure coordinates additionally use the corresponding prescribed \(F_2(0)\). No terminal jet is supplied as a datum.

The local J13a relationship is, with \(\mathcal L_A=B_A-N(u,J_A)\),
\[
\begin{aligned}
 \partial_t(J_A\cdot J_B)
 +\operatorname{div}\{u(J_A\cdot J_B)-\nu\nabla(J_A\cdot J_B)
                        +\Pi_AJ_B+\Pi_BJ_A\}
 ={}&-2\nu\sum_iJ_{A+e_i}\cdot J_{B+e_i}\\
 &-\mathcal L_A\cdot J_B-J_A\cdot\mathcal L_B
   +F_A\cdot J_B+J_A\cdot F_B.
\end{aligned}\tag{TC13}
\]
Pressure is a displayed boundary flux before full-space integration. Any bounded spatial selector retains this flux, its transport and its diffusion face.

There is also the derived polarized complete pressure square of all 30 selected rows. Define
\[
\begin{gathered}
 A^+_{AB}=\langle J_{n+1,\alpha},J_{r+1,\beta}\rangle,
 \quad D_{AB}=\langle LJ_A,LJ_B\rangle,
 \quad P_{AB}=\langle K_A,K_B\rangle,\\
 R_{AB}=\langle F_A-B_A,F_B-B_B\rangle.
\end{gathered}
\]
Then the full mixed equation gives
\[
\begin{aligned}
 A^++\nu^2D+P+\nu Z'&=R,\\
 \nu Z(t)+\int_0^t(A^++\nu^2D+P)ds
 &=\nu Z(0)+\int_0^tR\,ds.
\end{aligned}\tag{TC14}
\]
This is the full-space matrix polarization of the original complete cell, with all pressure/source crosses. In particular \(A^+\) contains the actual third temporal row when \(n=2\); it is not a submatrix consisting solely of the original 30 selected fields. Those boundary fields are retained. None of \(C_{30}',Z'\) acquires a sign from the positivity of its underlying Gram.

## 7. Exact common operator and every proper nonlinear allocation

The enlarged selection does not have a single prescribed-source homogeneous linearized equation. Define \(\mathcal B_u z=N(u,z)+N(z,u)\). For a nonbase index \(A=(n,\alpha)\), \(n+|\alpha|>0\), define the complete proper-parent remainder
\[
 \mathcal K_A
 =\sum_{\substack{0\le a\le n,\ \beta\le\alpha\\
          (a,\beta)\ne(0,0),(n,\alpha)}}
    \binom na\binom\alpha\beta
       N(J_{a,\beta},J_{n-a,\alpha-\beta}),
 \qquad\mathcal K_{0,0}=-N(u,u).
 \tag{TC15}
\]
The separate base definition is required because its two endpoint allocations coincide. For every selected row,
\[
 B_A=\mathcal B_uJ_A+\mathcal K_A,
 \qquad
 (\partial_t+\nu L+\mathbb P\mathcal B_u)J_A
 =\mathbb P(F_A-\mathcal K_A).
 \tag{TC16}
\]
Important new proper-parent entries in this 30-field selection include
\[
\begin{aligned}
 \mathcal K_{0,e_i}=\mathcal K_{1,0}&=0,\\
 \mathcal K_{0,2e_i}&=2N(\partial_iu,\partial_iu),\\
 \mathcal K_{0,e_i+e_j}&=N(\partial_iu,\partial_ju)+N(\partial_ju,\partial_iu)\quad(i\ne j),\\
 \mathcal K_{1,e_i}&=N(\partial_iu,v)+N(v,\partial_iu),\\
 \mathcal K_{2,0}&=2N(v,v).
\end{aligned}\tag{TC17}
\]
TC15 retains all the higher mixed allocations through \((2,\alpha)\), including their exact binomial coefficients. Their pressure completion is still TC3, rather than a pressure invented for a source-free linearization.

For a constant coefficient vector \(c\), let \(z=\sum_Ac_AJ_A\), \(F_c=\sum_Ac_AF_A\), \(\mathcal K_c=\sum_Ac_A\mathcal K_A\). The complete energy contraction is
\[
 \frac12(\|z\|^2)'+\nu\|\nabla z\|^2
 =-\int z_i z_j\partial_ju_i\,dx
   -\langle\mathcal K_c,z\rangle+\langle F_c,z\rangle.
 \tag{TC18}
\]
This is the exact remaining nonlinear operator/work of a combined 30-field receiver. A constant positive-semidefinite matrix weight is a sum of such contractions. Its full signed strain and proper-parent work remain; neither is prescribed force. A time-dependent coefficient additionally gives \(\langle\sum_Ac_A'J_A,z\rangle\). That term is not dropped when coefficients are chosen from the actual history.

The base row in TC16 has projected acquired source \(g-q\), with \(q=-\mathbb PN(u,u)\), and unprojected source \(f+N(u,u)\). Consequently extracting \(w=v-g+\lambda u\) from the actual 30-field selection still requires the prescribed \(g\) lift and retains \(\lambda'u\). With \(j_g=-\mathbb P\mathcal B_ug-\nu Lg\), it gives exactly
\[
 w_t+\nu Lw+\mathbb P\mathcal B_uw
 =j_g+\lambda(g-q)+\lambda'u.
 \tag{TC19}
\]
For TC19, whose right side is already projected, its unprojected left-side completion is the two-parent \(R_iR_j(u_iw_j+w_iu_j)\). With the raw source \(J_g+\lambda g+\lambda B+\lambda'u\), \(J_g=-\mathcal B_ug-\nu Lg\), the canonical pressure instead is \(p_{0,t}+\lambda p_0\), \(p_0=p+L^{-1}\operatorname{div}f\). These representatives differ by the complementary potential of that raw source; the raw force/pressure slots are retained through TC3 before projection.

For \(\lambda=\nu\|\nabla u\|^2/(\|u\|^2+\delta)\), \(\delta>0\), the actual \(w\) pairing retains \(\langle u,w\rangle=-\delta\lambda\). Its full primitive is
\[
\begin{aligned}
 I_\delta(t)={}&\Phi_\delta(t)-\Phi_\delta(0)
   +\int_0^t\left(\nu\|\nabla w\|^2+\lambda\|w\|^2
                      +\frac{\|u\|^2+3\delta}{2}\lambda^3\right)ds\\
 &-\int_0^t\left(\langle w,j_g\rangle+\lambda\langle q,g\rangle
                       +\frac{\lambda^2}{2}\langle u,g\rangle\right)ds,\\
 \Phi_\delta={}&\frac12\|w\|^2+\frac{\|u\|^2+3\delta}{4}\lambda^2,
 \qquad I_\delta=-\int_0^t\int_{\mathbb R^3}w_iw_j\partial_ju_i\,dx\,ds.
\end{aligned}\tag{TC20}
\]
Thus the 30-field extraction returns the same complete joint law, with all source work and both initial/current stocks. It does not erase the additional quadratic and commutator information in TC7/12/14/17. Conversely the scalar law does not imply those full vector relationships.

## 8. Higher corners and exact boundary orders

The dimension-independent original J13c–d operation, in homogeneous \(L\) notation, is
\[
 J_{n+k,\alpha}=(-\nu)^kL^kJ_{n,\alpha}
    +\sum_{i=0}^{k-1}(-\nu)^iL^iT_{n+k-1-i,\alpha}.
 \tag{TC21}
\]
Substitution in both actual factors gives, for arbitrary finite \(k,\ell\ge0\), with empty sums at zero,
\[
\begin{aligned}
 \langle J_{n+k,\alpha},J_{r+\ell,\beta}\rangle
 ={}&(-\nu)^{k+\ell}\langle L^kJ_{n,\alpha},L^\ell J_{r,\beta}\rangle\\
 &+\sum_{i<k}(-\nu)^{i+\ell}
     \langle L^iT_{n+k-1-i,\alpha},L^\ell J_{r,\beta}\rangle\\
 &+\sum_{j<\ell}(-\nu)^{k+j}
     \langle L^kJ_{n,\alpha},L^jT_{r+\ell-1-j,\beta}\rangle\\
 &+\sum_{i<k}\sum_{j<\ell}(-\nu)^{i+j}
     \langle L^iT_{n+k-1-i,\alpha},L^jT_{r+\ell-1-j,\beta}\rangle.
\end{aligned}\tag{TC22}
\]
TC7 is the complete explicit \(k,\ell\in\{0,1,2\}\) specialization with \(n=r=0\). The same nine block formulas apply to any base pair \((n,\alpha),(r,\beta)\) by replacing the left lists \((U,T_0,T_1)\) with \((J_n,T_n,T_{n+1})\) and the right lists with \((J_r,T_r,T_{r+1})\). Thus the direct higher corners through two are also specified when their fields lie outside the initial 30-field selection. Every double source product has precisely the nine allocations TC8, with the corresponding shifted temporal rows and spatial powers.

This algebra is independent of the number of selected fields. It does not assert an analytic norm constant uniform in \(k,\ell\), temporal order, truncation or terminal time.

The exact finite boundary requirements are:

| Operation | Actual fields/source orders retained |
|---|---|
| Generation of the selected \(U,V,W\) from \(U\) | \(L^2U_\alpha\) has base spatial order \(|\alpha|+4\le6\); \(LT_{0,\alpha}\) uses prescribed \(F_0\) through spatial order \(|\alpha|+2\le4\); \(T_{1,\alpha}\) uses \(F_1\) through order \(|\alpha|\le2\), together with the full \(U,V\) product and pressure parents. |
| Nonlinear factors in the generation | \(B_{0,\alpha}\) has velocity factors through spatial order \(|\alpha|+1\le3\); applying \(L\) retains all additional allocations through order \(|\alpha|+3\le5\). \(B_{1,\alpha}\) contains \(V\) derivatives through \(|\alpha|+1\le3\); expanding their generated form retains base-velocity derivatives through order five and the corresponding \(F_0\) insertions. |
| J10 evolution of the selected Gram | Next temporal fields \(J_{3,\alpha}\), viscous fields \(J_{n,\alpha+2e_i}\) through spatial order four, and all \(B_{2,\alpha},F_{2,\alpha},\Pi_{2,\alpha}\) entries remain in the graph. The integrated viscous Gram uses spatial order three. |
| Full selected pressure square TC14 | \(A^+\) includes temporal order three; \(LJ_{n,\alpha}\) has spatial order at most four; \(K_{n,\alpha}\) retains the entire mixed pressure and force potential, with prescribed force temporal order at most two. |
| Corners through two based at a selected \(n,r\le2\) | They can reach temporal order four and source \(T\) through temporal order three; spatial Laplacian powers reach order six. These larger coordinates are explicitly retained instead of being identified with the 30 selected fields. |
| Arbitrary finite corner TC21 | Leading spatial order is \(|\alpha|+2k\); the \(i\)th source uses temporal order \(n+k-1-i\) and spatial order \(|\alpha|+2i\), with every associated proper nonlinear/pressure allocation. |

The table counts spatial derivatives of the indicated mixed coordinates, rather than replacing their temporal generation by free inputs. If every corner based at selected \(n\le2\), \(k\le2\), \(|\alpha|\le2\) is itself regenerated from the instantaneous velocity row, source J8 with \(N=4,M=2\) requires \(u(c)\in H^{s+10}\) and \(F_j(c)\in H^{s+8-2j}\), \(0\le j<4\), \(s\ge2\). Generating only the selected 30 fields uses \(N=M=2\), hence \(u(c)\in H^{s+6}\), \(F_0(c)\in H^{s+4}\), \(F_1(c)\in H^{s+2}\). These are exact finite instantaneous input budgets, not estimates of those norms uniformly on a terminal interval.

Mixed compatibility holds because \(\partial_tB_{n,\alpha}=B_{n+1,\alpha}\) and \(\partial_iB_{n,\alpha}=B_{n,\alpha+e_i}\), by the full binomial sums. Pressure and prescribed-force derivatives commute likewise. Restriction to 30 coordinates deletes records; it does not impose an artificial boundary closure or solve a different fluid.

## 9. What this full selection adds, and the bounded upper test

Compared with the preceding four derivative columns, the actual 30-field Gram adds second temporal rows, all second spatial derivatives, all mixed spatial–temporal cross pairings, their pressure squares, and the proper-parent coordinates in TC17. They are genuinely additional vector/quadratic relationships. The complete native corner calculation TC7–10 shows how those same selected fields are generated and how all nine pressure/source products fit together; it is not a second independent equation for their sizes.

The \(W_0\) diagonal itself already occurred as \(\|v_t\|^2\) in the preceding first-temporal square. Here it is a selected field with its complete cross pairings, spatial derivatives and proper-parent evolution; not every entry of the enlarged selection is being described as previously unmeasured information.

No source-defined coercive combination or signed upper estimate is specified merely by selecting these 30 fields in native LF1602–1605. For an explicitly chosen constant PSD contraction, TC12/18 retains the complete signed intrinsic strain and proper-parent work. Its full pressure-square contraction TC14 retains the complete nonlinear/source action \(R\), with its initial and current stocks. Gram positivity and compatibility give the stated cross/lower constraints but do not pay this action. Exact extraction of the actual regularized receiver gives TC20, including its unknown positive current stock and action.

Therefore the operations executed here do not supply an independent datum-paid upper bound for \(I_\delta\). This is a bounded result of the full 30-field selection, its complete temporal blocks and the specified corner operations; it is not a proof that no further estimate of the retained nonlinear terms can exist. Nor is it an assertion that the entire higher-order/fractional-height hierarchy has been tested. The remaining actual quantities are explicitly TC5/15/18 and the full TC14 source action, rather than a schematic inequality or omitted pressure face.

All time-integrated equalities above are strict-prefix equalities. Passing any of their signed terms or positive actions to \((0,T_*)\) requires its actual convergence; finite entries at every strict time and compatible selection alone are not being relabeled as uniform terminal bounds.
