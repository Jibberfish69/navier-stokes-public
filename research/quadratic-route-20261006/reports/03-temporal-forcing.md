# Complete shifted forcing and finite-depth positive temporal cancellation

This calculation starts directly from the original temporal/mixed jet of one pressure-complete forced history. It derives every shifted force insertion, the finite factorial-Hankel cancellation, the normalized response and its coefficient work. The algebra holds on each strict smooth prefix. Finite depth, finite force order and terminal domains remain explicit. The shifted fields and contractions below are derived constructions, not renamed printed source definitions.

Direct sources: [assembly J1–J5, LF1451–1501](../SOURCES.md#src-native-assembly), [J10, LF1579–1605](../SOURCES.md#src-native-assembly), [local pressure/source prolongation J13a–b, LF1656–1688](../SOURCES.md#src-native-assembly), [temporal/mixed recurrence, LF91–149](../SOURCES.md#src-forced-setting), [finite-row affine force payment, LF624–635](../SOURCES.md#src-forced-setting), and [kinetic identity/payment, LF13–60](../SOURCES.md#src-compatible-rectangles).

## 1. Original jet and exact force-shifted fields

Let \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(V_n=\partial_t^nu\), \(F_n=\partial_t^nf\), \(g_n=\mathbb PF_n\), and \(B_n=\sum_{a=0}^n\binom na N(V_a,V_{n-a})\). The original complete row and scalar normalization are
\[
V_{n+1}+\nu LV_n+B_n+\nabla\partial_t^np=F_n,\qquad
\partial_t^np=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n.
\tag{AF1}
\]
All fields belong to the same actual history, with the same \(\nu\) and prescribed absolute-time \(f\). Set
\[
\phi_f=-(-\Delta)^{-1}\nabla\cdot f,\quad \nabla\phi_f=f-g_0,
\quad p_0=p-\phi_f=R_iR_j(u_iu_j).
\tag{AF2}
\]
This is an exact pressure decomposition. The full original pressure at every order remains \(\partial_t^np=\partial_t^np_0+\partial_t^n\phi_f\), including its low-frequency normalization.

Define
\[
H_0=u,\quad G_0=0,\qquad
H_n=V_n-g_{n-1},\quad G_n=g_{n-1}\quad(n\ge1).
\tag{AF3}
\]
Thus \(V_n=H_n+G_n\); every \(H_n,G_n\) is solenoidal; and
\[
H_n'=H_{n+1}\ (n\ge1),\qquad H_0'=H_1+g_0.
\tag{AF4}
\]
The base identity is essential: this is not the unmodified derivative tower at its base.

## 2. Complete raw shifted row and every ordered force parent

Put \(b_n=\sum_{a=0}^n\binom na N(H_a,H_{n-a})\). Full expansion gives
\[
B_n=b_n+M_n,\qquad
M_n=\sum_{a=0}^n\binom na
\{N(H_a,G_{n-a})+N(G_a,H_{n-a})+N(G_a,G_{n-a})\}.
\tag{AF5}
\]
For \(n\ge1\), set \(\mathcal R_n=-\nu Lg_{n-1}-M_n\); set \(\mathcal R_0=g_0\). The exact raw rows are
\[
H_n'+\nu LH_n+b_n+\nabla p_0^{(n)}=\mathcal R_n
\quad(n\ge0),\qquad p_0^{(n)}=\partial_t^np_0.
\tag{AF6}
\]
For \(n\ge1\) their complete source is
\[
\begin{aligned}
\mathcal R_n={}&-\nu Lg_{n-1}-N(u,g_{n-1})-N(g_{n-1},u)\\
&-\sum_{a=1}^{n-1}\binom na
\{N(H_a,g_{n-a-1})+N(g_{a-1},H_{n-a})
+N(g_{a-1},g_{n-a-1})\}.
\end{aligned}
\tag{AF7}
\]
The final term retains every force–force allocation. With \(L_uh=N(u,h)+N(h,u)\), the first orders are
\[
\begin{aligned}
\mathcal R_1={}&-\nu Lg_0-L_ug_0,\\
\mathcal R_2={}&-\nu Lg_1-L_ug_1
-2N(H_1,g_0)-2N(g_0,H_1)-2N(g_0,g_0),\\
\mathcal R_3={}&-\nu Lg_2-L_ug_2\\
&-3\{N(H_1,g_1)+N(g_0,H_2)+N(g_0,g_1)\}\\
&-3\{N(H_2,g_0)+N(g_1,H_1)+N(g_1,g_0)\}.
\end{aligned}
\tag{AF8}
\]
The raw scalar pressure retains all \(H/H,H/G,G/H,G/G\) parents:
\[
p_0^{(n)}=R_iR_j\sum_{a=0}^n\binom na
(H_a+G_a)_i(H_{n-a}+G_{n-a})_j,\qquad
\nabla p_0^{(n)}=(I-\mathbb P)(\mathcal R_n-b_n).
\tag{AF9}
\]
The original scalar force potential is still AF2. No raw pressure is paired with an already projected source.

## 3. Prolongation and the base-force correction at every order

The actual AF4 yields
\[
b_n'=b_{n+1}+N(g_0,H_n)+N(H_n,g_0),\qquad
\mathcal R_n'=\mathcal R_{n+1}+N(g_0,H_n)+N(H_n,g_0)\quad(n\ge1).
\tag{AF10}
\]
For every finite \(q\ge0,n\ge1\), induction and the hockey-stick binomial identity give
\[
\partial_t^q\mathcal R_n
=\mathcal R_{n+q}
+\sum_{a=0}^{q-1}\binom q{a+1}
\{N(g_a,H_{n+q-1-a})+N(H_{n+q-1-a},g_a)\}.
\tag{AF11}
\]
The sum is empty at \(q=0\); at the base \(\partial_t^q\mathcal R_0=g_q\). Independent exact integer expansion matched all 56 cases \(n=1,\ldots,8\), \(q=0,\ldots,6\), including every ordered force factor. The displayed induction proves the identity at arbitrary finite orders.

Define \(\mathcal D_{m,k}=\partial_t^kH_m\), explicitly
\[
\mathcal D_{m,k}=
\begin{cases}H_{m+k},&m\ge1,\\
u,&m=k=0,\\
H_k+g_{k-1},&m=0,\ k\ge1.
\end{cases}
\tag{AF12}
\]
Then full pair work prolongs as
\[
\partial_t^q\langle\mathcal R_n,H_m\rangle
=\sum_{a=0}^q\binom qa
\langle\partial_t^a\mathcal R_n,\mathcal D_{m,q-a}\rangle.
\tag{AF13}
\]
For time-dependent coefficients, allocate every derivative:
\[
\partial_t^q\!\sum_{n,m}Q_{nm}\langle\mathcal R_n,H_m\rangle
=\sum_{n,m}\sum_{r+s+t=q}\frac{q!}{r!s!t!}
Q_{nm}^{(r)}\langle\partial_t^s\mathcal R_n,\mathcal D_{m,t}\rangle.
\tag{AF14}
\]
Spatial prolongation adds all original multi-index Leibniz allocations to these pairs and AF7. Pressure derivatives are \(p_0^{(n+q)}\) and the original \(\phi_f^{(n+q)}\), with AF9's full parent allocations. The pressure-flux prolongation remains under its exterior divergence, as in source J13b. In particular \(\mathcal R_n'=\mathcal R_{n+1}\) is never assumed.
Explicitly, the complete original mixed scalar pressure at any finite \(n,q,\alpha\) is
\[
\begin{aligned}
\partial_t^q\partial_x^\alpha(\partial_t^np)
={}&R_iR_j\sum_{a=0}^{n+q}\sum_{\beta\le\alpha}
\binom{n+q}{a}\binom\alpha\beta
\partial_x^\beta(H_a+G_a)_i\,
\partial_x^{\alpha-\beta}(H_{n+q-a}+G_{n+q-a})_j\\
&+\partial_t^{n+q}\partial_x^\alpha\phi_f.
\end{aligned}
\tag{AF14a}
\]
The prolonged raw shifted pressure flux, still inside its exterior divergence, is
\[
\begin{aligned}
&\partial_t^q\partial_x^\alpha(p_0^{(i)}H_j+p_0^{(j)}H_i)\\
&=\sum_{a=0}^q\sum_{\beta\le\alpha}\binom qa\binom\alpha\beta
\{\partial_x^\beta p_0^{(i+a)}\,
\partial_x^{\alpha-\beta}\mathcal D_{j,q-a}
+\partial_x^\beta p_0^{(j+a)}\,
\partial_x^{\alpha-\beta}\mathcal D_{i,q-a}\}.
\end{aligned}
\tag{AF14b}
\]
Thus its exceptional base \(g\) terms are supplied by AF12 and its scalar force potential by AF14a when the original pressure is reconstructed.

## 4. Full finite Gram matrix and factorial-Hankel cancellation

Fix a finite \(N\). Set \(C_{ij}=\langle H_i,H_j\rangle\), \(K_{ij}=\langle\nabla H_i,\nabla H_j\rangle\), \(E_{ij}=\langle SH_i,H_j\rangle\), \(S=\frac12(\nabla u+(\nabla u)^T)\). The full common-linearization remainders are
\[
D_0=-N(u,u),\quad D_1=0,\qquad
D_n=\sum_{a=1}^{n-1}\binom na N(H_a,H_{n-a})\quad(n\ge2).
\tag{AF15}
\]
The original Gram operation applied to AF6 gives
\[
C'_{ij}+2\nu K_{ij}+2E_{ij}
=\langle\mathcal R_i-D_i,H_j\rangle
+\langle H_i,\mathcal R_j-D_j\rangle.
\tag{AF16}
\]
Locally it retains the pressure flux \(p_0^{(i)}H_j+p_0^{(j)}H_i\), as well as original J13a's transport/diffusion flux. Pressure pairings vanish only in the full-space solenoidal integration used here.

Let \(\rho\) be a positive measure on \(\mathbb R\) with finite moments through \(2N\), and define
\[
m_s=\int x^s\,d\rho(x),\qquad Q_{ij}=\frac{m_{i+j}}{i!\,j!},\quad 0\le i,j\le N.
\tag{AF17}
\]
The positive semidefinite stock is
\[
\mathcal E_Q=\tfrac12\operatorname{tr}(QC)
=\tfrac12\int\left\|\sum_{i=0}^N\frac{x^i}{i!}H_i\right\|_2^2d\rho(x)\ge0.
\tag{AF18}
\]
Odd moments may have either sign; positivity concerns the matrix.

Set \(T(a,b,c)=\langle N(H_a,H_b),H_c\rangle\). Solenoidality gives \(T(a,b,c)=-T(a,c,b)\). The complete nonlinear work is
\[
\sum_{i,j}Q_{ij}\langle b_i,H_j\rangle
=\sum_{\substack{a+b\le N\\c\le N}}\frac{m_{a+b+c}}{a!\,b!\,c!}T(a,b,c).
\]
Its coefficient is symmetric in \(b,c\). All terms whose exchanged partner is retained cancel, leaving exactly
\[
\mathcal B_{Q,N}
=\sum_{\substack{0\le a\le N,\ 0\le b\le N-a\\N-a<c\le N}}
\frac{m_{a+b+c}}{a!\,b!\,c!}
\langle N(H_a,H_b),H_c\rangle.
\tag{AF19}
\]
This full finite-depth boundary is not claimed to vanish. Exact rational enumeration checked AF19 at \(N=1,\ldots,10\); the coefficient-symmetry proof applies at every finite \(N\).

For \(N\ge2\), \(m_2T(1,0,1)=m_2E_{11}\) cancels \(m_2T(1,1,0)\), supplied by \(Q_{20}\,2N(H_1,H_1)\). At \(N=1\) that partner is outside the selection. For \(N=2\), the complete boundary is
\[
\mathcal B_{Q,2}=m_3E_{12}
+\frac{m_4}{4}\{E_{22}+2\langle N(H_1,H_1),H_2\rangle\}.
\tag{AF20}
\]
With odd moments zero, \(m_0=a,m_2=2b,m_4=4c\), the matrix is \(Q=\left(\begin{smallmatrix}a&0&b\\0&2b&0\\b&0&c\end{smallmatrix}\right)\). For \(a,c>0,b>0,ac\ge b^2\), a positive representing measure puts masses \(b^2/(2c)\) at each of \(\pm\sqrt{2c/b}\) and mass \(a-b^2/c\) at zero. Its remaining work is the second term of AF20.

## 5. Stocks, variable weights and endpoint domains

The complete constant-weight equation is
\[
\mathcal E_Q'+\nu\operatorname{tr}(QK)+\mathcal B_{Q,N}
=\mathcal F_Q,\qquad
\mathcal F_Q=\sum_{i,j=0}^NQ_{ij}\langle\mathcal R_i,H_j\rangle.
\tag{AF21}
\]
For \(C^1\) time-dependent factorial-Hankel weights, add the necessary right side \(\frac12\operatorname{tr}(Q'C)\). Spatial weights would add further transport, diffusion and pressure terms.

For \(0\le s<S<T_*\), the exact endpoint balance is
\[
\mathcal E_Q(S)+\nu\int_s^S\operatorname{tr}(QK)+\int_s^S\mathcal B_{Q,N}
=\mathcal E_Q(s)+\int_s^S\mathcal F_Q
+\tfrac12\int_s^S\operatorname{tr}(Q'C).
\tag{AF22}
\]
This strict-prefix equality does not itself supply whole-terminal integrability. If diffusion, boundary work, source work and coefficient work are \(L^1\) on the whole terminal interval, it supplies a finite one-sided scalar stock trace and the terminal balance. This does not by itself construct all field traces or an \(H^\infty\) restart datum.

A positive measure with all finite moments gives compatible principal matrices at every finite depth. It supplies no convergence of the infinite field polynomial or uniform stock, boundary-work or force-derivative bound as \(N\to\infty\).

## 6. Finite-order forcing relative to actual lower stocks

For solenoidal factors, \(N(a,b)=\nabla\cdot(b\otimes a)\) and \(\|N(a,b)\|_{\dot H^{-1}}\le\|a\otimes b\|_2\). On a finite prescribed-force horizon \(T\), let \(K=\|u_0\|_2+\int_0^T\|g_0\|_2\); the kinetic identity pays \(\sup_{0\le t<\min(T,T_*)}\|u(t)\|_2\le K\). All estimates in this section are on that domain, with strict cutoffs \(S<\min(T,T_*)\). AF7 therefore gives
\[
\begin{aligned}
\|\mathcal R_n\|_{\dot H^{-1}}
&\le A_n+2\sum_{\ell=1}^{n-1}\binom n\ell
\|g_{n-\ell-1}\|_\infty\|H_\ell\|_2,\\
A_n&=\nu\|\nabla g_{n-1}\|_2+2K\|g_{n-1}\|_\infty
+\sum_{a=1}^{n-1}\binom na
\|g_{a-1}\|_\infty\|g_{n-a-1}\|_2,\qquad n\ge1.
\end{aligned}
\tag{AF23}
\]
Every force–force term remains in \(A_n\). For each fixed finite \(n\), these are finite known coefficients of the actual prescribed \(g_j\) on \([0,T]\), independent of a strict velocity cutoff. The projected force need not be Schwartz: its required \(H^m\) and bounded derivative norms follow from the original Schwartz force and bounded Leray projection.

Thus \(\|\mathcal R_1\|_{\dot H^{-1}}\le\nu\|\nabla g_0\|_2+2K\|g_0\|_\infty\) is paid by datum and force alone. Higher orders retain known-force affine couplings to actual lower \(L^2\) stocks, rather than estimates of those stocks solely from kinetic action. At the base \(g_0\in\dot H^{-1}\) under the original force decay.

For fixed constant positive-definite \(Q\), \(\kappa=\lambda_{\min}(Q)>0\), Cauchy–Schwarz gives
\[
|\mathcal F_Q|\le\|Q\|_{\rm op}
\Big(\sum_i\|\mathcal R_i\|_{\dot H^{-1}}^2\Big)^{1/2}
\Big(\sum_j\|\nabla H_j\|_2^2\Big)^{1/2}.
\]
AF23 and Young then give, for every fixed finite \(N\), \(\varepsilon>0\),
\[
|\mathcal F_Q|\le\varepsilon\nu\operatorname{tr}(QK)
+C_{N,g,Q,\nu,\varepsilon,T}\big(1+\operatorname{tr}(QC)\big).
\tag{AF24}
\]
The constant uses only finite prescribed force orders, \(K\) and the fixed weight. A rank-deficient weight does not control every individual lower stock; those stocks must remain or be separately controlled. Variable weights retain their actual coefficient bounds and \(Q'\) work. There is no infinite-order uniform force constant here.

## 7. Normalized rank-one response and its relation to Hankel weights

Fix \(\delta>0\), set \(e=\|u\|_2^2\), \(Y=\|\nabla u\|_2^2\), and define
\[
\lambda=\frac{\nu Y}{e+\delta},\qquad w=H_1+\lambda u.
\tag{AF25}
\]
The actual base equation gives \(\langle u,H_1\rangle=-\nu Y\), hence
\[
\langle u,w\rangle=-\delta\lambda,\qquad
\tfrac12\operatorname{tr}(Q_w'C)=\lambda'\langle u,w\rangle
=-\delta\lambda\lambda',\quad Q_w=rr^T,\quad r=(\lambda,1,0,\ldots)^T.
\tag{AF26}
\]
Here \(\lambda'=\nu Y'/(e+\delta)-\nu Ye'/(e+\delta)^2\), with all force contributions:
\[
Y'=2\langle\nabla u,\nabla H_1\rangle+2\langle\nabla u,\nabla g_0\rangle,
\qquad e'=-2\nu Y+2\langle u,g_0\rangle.
\tag{AF27}
\]
At arbitrary finite derivative order, differentiation of \((e+\delta)\lambda=\nu Y\) gives the triangular coefficient recursion
\[
(e+\delta)\lambda^{(q)}
=\nu Y^{(q)}-\sum_{a=1}^q\binom qa e^{(a)}\lambda^{(q-a)},
\quad
e^{(a)}=\sum_{r=0}^a\binom ar\langle V_r,V_{a-r}\rangle,
\quad
Y^{(a)}=\sum_{r=0}^a\binom ar\langle\nabla V_r,\nabla V_{a-r}\rangle.
\tag{AF27a}
\]
Each \(V_r=H_r+G_r\), so this retains every force parent. Also
\(\partial_t^qw=H_{q+1}+\sum_{a=0}^q\binom qa\lambda^{(a)}V_{q-a}\).
The coefficient derivatives are therefore explicit finite jet expressions; they are not treated as prescribed-force constants. The complete raw response is
\[
w_t+\nu Lw+L_uw+\nabla(p_0'+\lambda p_0)
=\mathcal R_1+\lambda g_0+\lambda B+\lambda'u,\quad B=N(u,u).
\tag{AF28}
\]
For the projected source, set \(j_g=\mathbb P\mathcal R_1\), \(q=-\mathbb PB\). The corresponding pressure is the distinct \(\pi_{uw}=R_iR_j(u_iw_j+w_iu_j)\), and the source is \(j_g+\lambda(g_0-q)+\lambda'u\). Exactly
\[
\nabla[\pi_{uw}-(p_0'+\lambda p_0)]
=-(I-\mathbb P)(\mathcal R_1+\lambda B).
\tag{AF29}
\]
The raw pressure is therefore not combined with an already projected right side.
Its complete prolonged scalar expression is
\(\partial_t^q(p_0'+\lambda p_0)=p_0^{(q+1)}
+\sum_{a=0}^q\binom qa\lambda^{(a)}p_0^{(q-a)}\), with each pressure jet supplied by AF9 and the original full pressure restored by AF2.

Since \(2E_{0,1}=\langle B,H_1\rangle\) and \(\langle B,u\rangle=0\), one has \(\langle Sw,w\rangle-\lambda\langle B,w\rangle=E_{11}\). Including AF26 yields
\[
\Psi_w'+\nu\|\nabla w\|_2^2+E_{11}
=\langle\mathcal R_1,w\rangle+\lambda\langle g_0,w\rangle,\qquad
\Psi_w=\tfrac12(\|w\|_2^2+\delta\lambda^2).
\tag{AF30}
\]
The full known-force payment is
\[
|\langle\mathcal R_1,w\rangle|
\le\tfrac\nu2\|\nabla w\|_2^2
+\frac{(\nu\|\nabla g_0\|_2+2K\|g_0\|_\infty)^2}{2\nu},
\qquad
|\lambda\langle g_0,w\rangle|\le\frac{\|g_0\|_2}{\sqrt\delta}\Psi_w.
\tag{AF31}
\]
This leaves signed \(E_{11}\), with no sign estimate.

Adding \(Q_w\) to an already factorial-Hankel matrix adds that rank-one \(E_{11}\) work. Cancellation is a property of the total factorial-Hankel weight, in particular \(Q_{11}=2Q_{02}\). A finite positive Hankel stock can nevertheless contain the response positively. For this embedding take \(N\ge2\), choose fixed positive-definite factorial-Hankel \(Q_*\), and set
\[
M=1+r^TQ_*^{-1}r,\qquad Q=MQ_*,\qquad Q_s=Q-rr^T\ge0.
\tag{AF32}
\]
Such a \(Q_*\) exists: use positive masses at \(N+1\) distinct real points. A nonzero polynomial of degree at most \(N\) cannot vanish at every one of those points, so the moment stock matrix is positive definite. The inequality \(Q_s\ge0\) follows from \((r^Tz)^2\le(r^TQ_*^{-1}r)(z^TQ_*z)\) for every coefficient vector \(z\).
Then \(\mathcal E_Q=\frac12\|w\|_2^2+\frac12\operatorname{tr}(Q_sC)\). The total \(Q\) remains factorial-Hankel, so its lower \(E_{11}\) cancellation is AF19 with the full finite boundary. After adding \(\delta\lambda^2/2\), its exact derivative work is
\[
\tfrac12\operatorname{tr}(Q'C)+\delta\lambda\lambda'
=\tfrac12\operatorname{tr}(Q_s'C).
\tag{AF33}
\]
This is a positive finite stock containing the actual normalized response, with every additional coefficient derivative retained. No uniform terminal control of \(M\), \(Q_s'\) or the higher boundary is assumed.

## Verified mathematical scope

The complete shifted source, ordered force parents, all-order base correction, factorial-Hankel interior cancellation and finite boundary, finite-order force payment, and normalized rank-one coefficient work have been executed independently from the original equations. Their remaining boundary and coefficient terms are displayed; terminal control is not inferred from positivity or kinetic action alone.
