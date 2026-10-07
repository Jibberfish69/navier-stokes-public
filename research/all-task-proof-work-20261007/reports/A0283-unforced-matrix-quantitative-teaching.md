# Published unforced argument: matrix, quantitative and application teaching lane

**Reviewed scope and currentness.** Current/source wording compared and qualified; operator/norm arrays are not Gram matrices. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This note teaches the actual formulas in the assigned original sections. It was prepared from direct content reads of all four current standalone generated sources, direct normalized comparison with the corresponding combined unforced sources, and checks against the selected published PDF. It imports no prior report verdict. The mathematical role of each operation is explained before its dependence is assessed.

## Sources and publication identity

The selected PDF is [global-smoothness-unforced-navier-stokes-20260923.pdf](../SOURCES.md#S080). Its directly checked SHA256 is 726829ce58f71a78e82f9c81b908af284ed2c0eb1575b8b741f61920ee9738b0; it has 2,321,401 bytes. Page numbers below are printed PDF page numbers, also the physical page indices in the extracted layout text. There are 80 nonempty PDF pages; splitting the text on form feeds returns 81 strings including the trailing empty string.

The standalone source abbreviations used below are:

| Abbreviation | Original source | LF count | SHA256 |
|---|---|---:|---|
| M | [03-matrix-forms.tex](../SOURCES.md#S106) | 291 | f3de507c29df19297b33e70f22da3690d64edf07f4a1ff4143a6f18e1f2ceb50 |
| Q | [03-quantitative-consequences.tex](../SOURCES.md#S107) | 1898 | 82120c881212de03b1d50a3108c201de2afba79bb3988a66d5e32d9e553d7f6c |
| A | [05-three-dimensional-applications.tex](../SOURCES.md#S109) | 1217 | 0838b908772b0995bd4df750cfe450d150da20a9441cda0fd7164b674dc03225 |
| C | [06-conclusion.tex](../SOURCES.md#S110) | 35 | 68ca8de006b7170102cb09ec04292e28bc4c3b96503632dc1fa749e26f3055a0 |

The present generated source is not a verbatim textual source binding for every sentence of the September 23 PDF. In the assigned lane the checked displayed formulas agree, but these prose differences are visible:

- M LF4–8 says the intersection/restart have been “derived”; PDF45 says “established.” Both explicitly introduce the matrices after those operations.
- Q LF291–352 titles subsection/definition/lemma using norm and trace majorants. PDF50–51 calls them canonical coordinates, rectangle and trace coordinates, and rectangle-coordinate finiteness. The defining formulas and finiteness proof agree.
- Q LF782–787 describes bounding the same prescribed rectangle; PDF55 describes recovering any prescribed rectangle and calls the all-index description critical-height exhaustion. The recursions and dependency ceiling agree.
- Q LF1108–1126 specifies terminal representatives and terminal scalar norms; PDF58 interprets the objects by monotone limits. Both say the limits are initially extended nonnegative values and cite earlier rectangle/pressure results to make them finite.
- Q LF1749–1773 calls the general quantities canonical rectangle-norm majorants; PDF78 calls them canonical rectangle coordinates. Both explicitly eliminate them only under the critical smallness condition using Proposition 8.4.
- C LF3–13 describes one compatible rectangle family, terminal scalar realization, and larger-to-smaller restrictions. PDF75 describes finite pressure-complete blocks with two exhaustive coordinate descriptions, rectangles recording their norms, Proposition 4.7 identifying limiting values, and Theorem 5.2 identifying the common all-orders intersection. PDF75–76 gives the same endpoint/restart/global conclusion and downstream consequences.

Thus the public PDF governs the publication reading; LF locators identify the directly inspected current generated formulas rather than asserting verbatim PDF identity. The comparison to the current combined sources is a separate, exact source-to-source comparison below.

## 1. What the matrix objects mean

M LF4–8/PDF45 places the entire matrix section after the compatible intersection, endpoint jet, and restart. The arrays organize rows already obtained in that order of argument.

### 1.1 The transport operator array keeps all parents

M LF10–153, Proposition formal-mixed-index-matrix; PDF45–46 Proposition 6.1, equations (139)–(145).

Set
\[
\Gamma=\mathbb N_0\times\mathbb N_0^3,\quad
\kappa=(n,\alpha),\quad\lambda=(a,\beta),\quad
\lambda\preceq\kappa\iff a\le n,\ \beta\le\alpha,
\]
\[
\kappa-\lambda=(n-a,\alpha-\beta),\qquad
\binom\kappa\lambda=\binom na\binom\alpha\beta.
\]
The entries of the vector object are actual differentiated fields
\(J_\kappa=\partial_t^n\partial_x^\alpha u\), with pressure entries \(\Pi_\kappa\). Define the operator blocks
\[
\mathbb L(J)_{\kappa,\lambda}
=\begin{cases}
\binom\kappa\lambda\,\mathbb P[(J_{\kappa-\lambda}\cdot\nabla)\,\cdot],
&\lambda\preceq\kappa,\\
0,&\text{otherwise}.
\end{cases}
\]
The literal block action first transports \(J_\lambda\) by \(J_{\kappa-\lambda}\). Replacing the summation index by \(\kappa-\lambda\) gives
\[
[\mathbb L(J)\mathbf J]_\kappa
=\sum_{\lambda\preceq\kappa}\binom\kappa\lambda
\mathbb P[(J_\lambda\cdot\nabla)J_{\kappa-\lambda}].
\]
This is exactly the full mixed Leibniz sum; it does not remove an allocation or choose one transport parent. Applying Leray projection to the original divergence-free row gives
\[
J_{n+1,\alpha}+[\mathbb L(J)\mathbf J]_\kappa=\nu\Delta J_\kappa.
\]
Pressure is simultaneously retained by its normalized reconstruction
\[
\Pi_\kappa=R_iR_j\sum_{\lambda\preceq\kappa}
\binom\kappa\lambda J_{\lambda,i}J_{\kappa-\lambda,j}.
\]
Projection removes the pressure gradient from the projected velocity identity because \(\mathbb P\nabla\Pi=0\); the pressure coordinate remains fixed by the displayed formula. The original unprojected row still includes \(\nabla\Pi\).

Ordering indices by \(n+|\alpha|\) makes the array block lower triangular: a supported column cannot exceed the row's total mixed depth. It is an array of differential operators whose coefficients are themselves jet fields, rather than a fixed numeric matrix. Each row has exactly \((n+1)\prod_{j=1}^3(\alpha_j+1)\) supported blocks.

### 1.2 Factorials convert binomials into finite convolution

For \(\kappa!=n!\alpha!\), set \(\widehat J_\kappa=J_\kappa/\kappa!\) and similarly for pressure. On every finite downward-closed truncation, with \(D_{\kappa\kappa}=\kappa!\),
\[
D^{-1}\mathbb L(D\widehat J)D=\widehat{\mathbb L}(\widehat J),
\qquad
\widehat{\mathbb L}_{\kappa\lambda}
=\mathbb P[(\widehat J_{\kappa-\lambda}\cdot\nabla)\,\cdot].
\]
The proof is the exact identity
\(\binom\kappa\lambda\lambda!(\kappa-\lambda)!=\kappa!\).
Consequently
\[
(n+1)\widehat J_{n+1,\alpha}
+\sum_{\lambda\preceq\kappa}
(\widehat J_\lambda\cdot\nabla)\widehat J_{\kappa-\lambda}
+\nabla\widehat\Pi_\kappa=\nu\Delta\widehat J_\kappa,
\]
\[
\widehat\Pi_\kappa=R_iR_j\sum_{\lambda\preceq\kappa}
\widehat J_{\lambda,i}\widehat J_{\kappa-\lambda,j}.
\]
The factor \(n+1\) is required: temporal differentiation shifts the factorial index. This is an exact algebraic conjugacy at each finite truncation. No infinite generating-series convergence, common radius, or bounded infinite operator norm is established or required here.

### 1.3 The rectangle matrix is an object matrix and a norm matrix

M LF155–241; PDF46–47 Proposition 6.2, equations (146)–(150).

For \(0<T<T_*\), define
\[
G_{n,m}(T)=\|V_n\|_{L^2(0,T;H^m)},\quad
P_{n,M}(T)=\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}.
\]
The object matrix has rows \((V_n,V_{n+1},Q_n)|_{(0,T)}\), \(0\le n\le N\). Its norm matrix \(\mathbf C_{N,M}(T)\) has rows
\((G_{n,M+1},G_{n+1,M-1},P_{n,M})\).
Let \(\mathbf G\) be the first two columns. Then
\[
\|\mathbf G_{N,M}(T)\|_F^2=\mathfrak R_{N,M}(u;T),\qquad
\sum_{n=0}^NP_{n,M}(T)=\mathfrak Q_{N,M}(p;T).
\]
Thus the velocity scalar is the sum of the squares of the adjacent coordinate norms. The pressure scalar sums the third column without squaring.

The adjacent Hilbert-scale stencil is
\[
V_n\in L^2H^{M+1},\quad \partial_tV_n=V_{n+1}\in L^2H^{M-1}
\quad\Longrightarrow\quad V_n\in C([0,T];H^M).
\]
It identifies the trace regularity of one actual temporal row. The exact mixed-index relation is
\[
G_{n,m}(T)^2
=\sum_{|\alpha|\le m}\frac{m!}{(m-|\alpha|)!\alpha!}
\|J_{n,\alpha}\|_{L^2((0,T)\times\mathbb R^3)}^2,
\qquad m\in\mathbb N_0.
\]
All weights are positive. Plancherel and the expansion of \((1+|\xi|^2)^m\) prove this equality. These norm matrices do not substitute a signed Gram pairing for a positive norm sum. An anti-diagonal Gram construction is not defined in the four files assigned to this verification.

### 1.4 What the whole-interval matrix estimate actually uses

M LF244–291; PDF47 Proposition 6.3, equations (151)–(153).

For each fixed \(N,M\), define actual full-interval norms
\[
a_{n,M}=\|V_n\|_{L^2(0,T_*;H^{M+1})},\qquad
b_{n,M}=\|V_{n+1}\|_{L^2(0,T_*;H^{M-1})}.
\]
The source invokes datum-terminal-realization (PDF Proposition 4.7) to make every one finite. Restriction then gives entrywise
\(\mathbf G(T)\preceq\mathbf G^*\), hence
\[
\mathfrak R_{N,M}(u;T)
\le\sum_{n=0}^N(a_{n,M}^2+b_{n,M}^2)
=\mathfrak R^*_{N,M}[u_0,\nu,T_*]<\infty.
\]
This is a correct restriction and finite-sum operation with those memberships as input. It is not an additional nonlinear-producing estimate within this matrix section. It needs a separate finite bound for each prescribed rectangle, with no common bound across all \(N,M\).

## 2. Quantitative coordinates and their derivation

### 2.1 The strong H1 extension consumes smooth-data globality

Q LF1–289; PDF47–50 Theorem 7.1.

For \(a\in H^1_\sigma\), let \(Y=\|\nabla u\|_2^2\), \(Z=\|\Delta u\|_2^2\), and \(c_1=27\mathsf S(6)^6/16\). Pairing with \(-\Delta u\) and applying the displayed Sobolev, interpolation and Young estimates yields
\[
Y'+\nu Z\le c_1\nu^{-3}Y^3.
\]
ODE comparison bounds \(Y\) on
\[
\tau_\nu(a)=\min\{1,\nu^3/[4c_1(1+\|\nabla a\|_2^2)^2]\}.
\]
Fourier-truncated Banach ODE solutions exist globally at each truncation by band-limited kinetic control; the \(H^1\) and \(L^2H^2\) estimates are uniform on the displayed local lifespan. The nonlinear estimate bounds the truncated time derivatives in \(L^2L^2\). Local compactness passes the quadratic term; the initial weak formulation fixes the initial trace. The adjacent trace theorem gives \(CH^1\), variation of constants gives the mild equation, and pressure is the normalized Riesz product. Difference-energy estimates prove uniqueness.

Positive-time smoothing on this local interval gives \(u(t_0)\in H^\infty_\sigma\) for \(0<t_0<\tau_\nu(a)\). Q LF280–285/PDF50 then invokes the earlier global smoothness theorem (PDF Theorem 5.10) at \(t_0\), and uniqueness glues that history to the local \(H^1\) history. The resulting global \(H^1\) completion extends the data class; this proof does not supply the earlier smooth-data globality independently.

### 2.2 Fixed analytic constants, exact history coordinates

Q LF297–470; PDF50–52 Definitions 7.2 and Lemmas 7.3–7.4.

The rest of Q fixes one datum-generated normalized history and \(0<T<\infty\) with either \(T<T_*\) or \(T=T_*<\infty\). Write \(I_T=(0,T)\). Define
\[
\mathfrak P_{N,M}=1+\sup_{0<S<T}\mathfrak R_{N,M}(u;S),\qquad
\mathfrak T_{N,M}=(1+T^{-1})^{1/2}\mathfrak P_{N,M}^{1/2}.
\]
The terminal finiteness proof cites the earlier rectangle bound; the strict-horizon case uses classical persistence. Endpoint representatives are the earlier compatible traces.

For \(r\ge0\), the fixed constant \(A_r=2C_r^{\rm alg}\) satisfies both
\[
\|R_iR_j(f_i g_j)\|_{H^r}+\|\mathbb P\operatorname{div}(f\otimes g)\|_{H^{r-1}}
\le A_r\|f\|_{H^{r+1}}\|g\|_{H^{r+1}},
\]
and the same estimate with the second term replaced by
\(\|\nabla R_iR_j(f_i g_j)\|_{H^{r-1}}\).
For \(s>k+3/2-3/b\), \(2\le b\le\infty\),
\[
S_{s,k,b}=d_k^{1/2}(2\pi)^{-3(1/2-1/b)}
\||\xi|^k\langle\xi\rangle^{-s}\|_{L^{q_b}},\quad
q_b^{-1}=1/2-1/b,
\]
controls \(\|\nabla^k f\|_b\). The strict embedding condition makes this integral finite. For \(m\ge2\), \(L_m=\max(1,C_m^{\rm alg})\) controls multiplication and the heat-divergence estimate; the heat symbol contributes \((2e\nu t)^{-1/2}\).

Q LF472–587/PDF52–53 defines the exact minimal history coordinate
\[
\mathfrak B_{N,M}=\inf\{B\ge0:\mathfrak R_{N,M}(u;S)\le B\ \forall\,0<S<T\}
=\sup_{0<S<T}\|\mathbf G_{N,M}(S)\|_F^2.
\]
It equals the norm on \((0,T)\), or its terminal limit when \(T=T_*\), and \(\mathfrak P=1+\mathfrak B\). It is determined by one history, rather than a supremum over solution candidates. This definition does not give a formula solely in finitely many initial Sobolev norms for general data.

The remaining velocity majorants are explicit finite recursions from these history coordinates:
\[
D_{0,m}=\|u_0\|_{H^m},\quad
D_{n+1,m}=\nu D_{n,m+2}+A_{m+1}\sum_{a=0}^n\binom naD_{a,m+2}D_{n-a,m+2};
\]
\[
Y_{0,0}=\|u_0\|_2,\quad
Y_{0,m}=\min\{(1+T^{-1})^{1/2}B_{0,m}^{1/2},\|u_0\|_{H^m}+T^{1/2}B_{0,m+1}^{1/2}\},
\]
for \(m\ge1\), followed by the same full quadratic recursion as \(D\). For \(m\ge-1\), put \(m_+=\max(m,0)\), \(\mu(m)=\max(m-1,0)\), and
\[
\widetilde X_{n,m}=\min\{T^{1/2}Y_{n,m_+},B_{n,\mu(m)}^{1/2}\}.
\]
Take \(X=\widetilde X\), additionally minimizing the \((0,0)\) and \((0,1)\) entries against kinetic bounds \(T^{1/2}\|u_0\|_2\) and \((T+(2\nu)^{-1})^{1/2}\|u_0\|_2\). Finally
\[
Z_{n,m}=\min\{Y_{n,m},(1+T^{-1})^{1/2}B_{n,m}^{1/2},D_{n,m}+T^{1/2}X_{n+1,m}\}.
\]
Here the plain letters denote the source's fraktur quantities. Q LF828–894/PDF55–56 proves \(D\) controls the initial jet, \(X\) controls \(L^2H^m\), and \(Z\) controls \(CH^m\). The proof uses the full projected temporal recurrence, trace inequality, kinetic energy, Sobolev nesting and the Banach fundamental identity. Every fixed entry uses finitely many \(B\) entries; no estimate uniform over all derivative orders is asserted.

### 2.3 Height coordinates genuinely reconstruct finite rows

Q LF698–826; PDF54–55 Proposition 7.7, equations (200)–(212).

Define exact height masses
\[
\mathfrak H_m=\tfrac12\|\Lambda^{m+1/2}u\|_{L^2(I_T;L^2)}^2,
\quad\mathfrak S_m^2=2^m(T\|u_0\|_2^2+2\mathfrak H_m).
\]
Then \(2\mathfrak H_m\le B_{0,m}\), and the Fourier inequality
\((1+|\xi|^2)^m\le2^m(1+|\xi|^{2m+1})\), together with kinetic control, gives \(\|u\|_{L^2H^m}\le\mathfrak S_m\).

The projected equation yields the complete nonlinear bound
\[
\|u_t\|_{L^1H^m}\le\nu T^{1/2}\mathfrak S_{m+2}+A_{m+1}\mathfrak S_{m+2}^2.
\]
A Lebesgue time with \(\|u(t_m)\|_{H^m}\le T^{-1/2}\|u\|_{L^2H^m}\), followed by time integration, gives
\[
A^v_{0,m}=T^{-1/2}\mathfrak S_m+\nu T^{1/2}\mathfrak S_{m+2}+A_{m+1}\mathfrak S_{m+2}^2.
\]
Full pressure and temporal recurrences then give
\[
A^p_{n,m}=A_m\sum_a\binom na A^v_{a,m+1}A^v_{n-a,m+1},
\quad
A^v_{n+1,m}=\nu A^v_{n,m+2}+A_{m+1}\sum_a\binom na A^v_{a,m+2}A^v_{n-a,m+2}.
\]
These bound the actual row suprema. Integration yields rectangle and pressure bounds
\[
B_{N,M}\le T\sum_{n=0}^N[(A^v_{n,M+1})^2+(A^v_{n+1,M_-})^2],\quad
\mathfrak Q_{N,M}\le T\sum_{n=0}^NA^p_{n,M},
\]
with \(M_-=\max(M-1,0)\). A prescribed rectangle uses only \(\nu,T,\|u_0\|_2,N,M\), heights \(\mathfrak H_q\) and constants \(A_q\) for \(q\le M+2N+4\).

This conversion is a genuine finite nonlinear reconstruction. Its input is finiteness of the selected spatial height masses on the same \(I_T\). In this section their finiteness is obtained first from the earlier rectangle upper rows. The operation proves equivalence of the two finite descriptions; it does not establish whole-terminal height finiteness independently of those preceding inputs.

### 2.4 Pressure, moduli, frequency tails and production derivatives

Q LF896–1161; PDF56–59 Definition 7.9, Theorems 7.10–7.11 and Proposition 7.12.

Pressure majorants have the exact binomial sums
\[
Q^{(1)}_{n,m}=A_m\sum_a\binom na X_{a,m+1}X_{n-a,m+1},
\quad
Q^{(\infty)}_{n,m}=A_m\sum_a\binom na Z_{a,m+1}Z_{n-a,m+1}.
\]
The \(L^2\) version replaces the product by
\(\min(Z_aX_{n-a},X_aZ_{n-a})\); the time-modulus version uses
\(X_{a+1}Z_{n-a}+Z_aX_{n-a+1}\). These retain every pressure product and derivative allocation.

For \(0\le n\le N\), \(s\ge0\), any spatial multi-index \(\alpha\), and \(r=s+|\alpha|\), the actual mixed row satisfies
\[
\|J_{n,\alpha}\|_{L^2H^{s+1}}^2+\|J_{n+1,\alpha}\|_{L^2H^{s-1}}^2\le\mathfrak P_{N,r},\quad
\sup_{[0,T]}\|J_{n,\alpha}\|_{H^s}\le\mathfrak T_{N,r}.
\]
The identity \(J(t)-J(t_0)=\int_{t_0}^tJ_{n+1,\alpha}\) gives a square-root time modulus in the lower space, and one higher middle order gives it in \(H^s\). Interpolation gives exponent \(\theta/2\) in \(H^{s-\theta}\). Fixed Sobolev embedding gives every displayed admissible \(L^a_tL^b_x\) bound.

The normalized pressure recurrence
\(Q_n=R_iR_j\sum_a\binom na V_{a,i}V_{n-a,j}\)
then gives \(L^1\) using two \(L^2\) factors, \(L^2\) using one \(L^\infty\) factor, and pointwise/end-trace bounds using two \(L^\infty\) factors. The simpler bounds use \(\sum_a\binom na=2^n\); the canonical catalogue retains the individual products. Product differences give the pressure modulus. The matrix estimate is exactly the entrywise statement
\(\mathbf C\preceq(X_{n,M+1},X_{n+1,M-1},Q^{(1)}_{n,M})_{n=0}^N\).

Q LF1163–1381/PDF59–61 converts higher finite coordinates into frequency and critical-height information. The multiplier inequality
\(\|\mathsf P_{\ge K}f\|_{H^s}\le K^{-r_1}\|f\|_{H^{s+r_1}}\), \(K\ge1\), yields velocity and pressure tails. A fixed dyadic shell sum is bounded from one finite \(H^M\) coordinate if \(M>\sigma+k+3/2\); the geometric shell series is summed, not an infinite series over Sobolev orders.

For \(E_{j+1/2}=\tfrac12\|\Lambda^{j+1/2}u\|_2^2\), the catalogue Q LF1643–1708/PDF77 supplies
\[
E^{[1]}_{j,\ell}=\tfrac12\sum_{a=0}^\ell\binom\ell aX_{a,j+1}X_{\ell-a,j+1},\quad
E^{[\infty]}_{j,\ell}=\tfrac12\sum_{a=0}^\ell\binom\ell aZ_{a,j+1}Z_{\ell-a,j+1}.
\]
They control the full differentiated energy row. Since
\(\mathcal P_{j+1/2}=\partial_tE_{j+1/2}+2\nu E_{j+3/2}\), its full differentiated production is controlled by
\[
C^{[1]}_{j,\ell}=E^{[1]}_{j,\ell+1}+2\nu E^{[1]}_{j+1,\ell},\quad
C^{[\infty]}_{j,\ell}=E^{[\infty]}_{j,\ell+1}+2\nu E^{[\infty]}_{j+1,\ell}.
\]
These bounds retain viscosity, height and temporal depth and therefore carry all completed-height currents. They consume \(X,Z\) already obtained from the fixed finite rectangle coordinates. They are not a new argument that these coordinates are finite.

### 2.5 Continuation constants and exact scaling

Q LF589–696/PDF53–54: with \(v(s)=\nu^{-1}u(s/\nu)\), \(q(s)=\nu^{-2}p(s/\nu)\),
\[
V_n(t)=\nu^{n+1}\widetilde V_n(\nu t),\qquad
Q_n(t)=\nu^{n+2}\widetilde Q_n(\nu t).
\]
The rectangle's first squared column scales by \(\nu^{2n+1}\), the second by \(\nu^{2n+3}\), the pressure \(L^1\) norm by \(\nu^{n+1}\), and pressure supremum by \(\nu^{n+2}\). Initial-jet \(D_{n,m}\) scales by \(\nu^{n+1}\); height mass scales by \(\nu\). The shifted mild-class rescaling is a bijection and gives exact maximal lifespan covariance \(\tau^{\max}_{\nu,3}(s,b)=\nu^{-1}\tau^{\max}_{1,3}(0,b/\nu)\).

Q LF1383–1523/PDF61–62 uses the low rectangles to obtain
\[
\|u\|_{L^2L^\infty}\le S_{2,0,\infty}X_{0,2},\qquad
\int_0^T\|\nabla u\|_\infty\le S_{3,1,\infty}T^{1/2}X_{0,3}.
\]
The inhomogeneous commutator bounds \(H^m\) growth by an exponential of this Lipschitz action. Given the already compatible endpoint, the explicit restart interval is
\[
\delta_{\rm qc}=\min\{1,c_\nu(1+Z_{0,3})^{-2}\}>0.
\]
The local fixed-point ball bounds its base \(CH^3+L^2H^4+L^2H^2\) derivative norms by \(2L_\nu Z_{0,3}\). Its higher norms have the displayed exponential persistence bound. This quantifies the earlier endpoint/restart argument after its finite traces have been obtained.

Q LF1525–1898/PDF76–79 collects these same operations as Theorem A.1. Its general-data dependence remains finitely many exact history coordinates. Q LF1770–1773/PDF78 explicitly points to the following small-data argument to eliminate those coordinates in favor of datum norms.

## 3. A separate explicit nonlinear closure for small critical data

A LF4–410; PDF62–66 Lemmas 8.1–8.2, Theorem 8.3, Proposition 8.4.

This argument uses the original full projected source and local restart theorem. Its proof can be followed without invoking the general whole-terminal rectangle theorem.

Let
\(\mathcal B(u)=\mathbb P\operatorname{div}(u\otimes u)\),
\(A=\|\Lambda^{1/2}u\|_2\), \(B=\|\Lambda^{3/2}u\|_2\).
The exact square identity A LF24–62/PDF63 (269) is
\[
\nu(A^2)'+\nu^2B^2+\|u_t\|_{\dot H^{-1/2}}^2
=\|\mathcal B(u)\|_{\dot H^{-1/2}}^2.
\]
Its proof expands \(\Lambda^{-1/2}u_t=-\nu\Lambda^{3/2}u-\Lambda^{-1/2}\mathcal B(u)\); the cross term cancels against \(\nu(A^2)'\). The source stays on the right side.

The source estimate A LF233–245/PDF65 (278) is
\[
\|\mathcal B(u)\|_{\dot H^{-1/2}}
\le\mathsf S(3)\|(u\cdot\nabla)u\|_{3/2}
\le\mathsf S(3)\|u\|_3\|\nabla u\|_3
\le C_{\rm src}AB,
\quad C_{\rm src}=\mathsf S(3)^3=\frac1{\sqrt2\pi}.
\]
For Schwartz solenoidal datum \(a\), assume
\[
a_c=\|\Lambda^{1/2}a\|_2<\sqrt2\pi\nu,\qquad
\delta_0=\nu^2-C_{\rm src}^2a_c^2>0.
\]
Combining the exact square with that complete source estimate gives
\[
\nu(A^2)'+(\nu^2-C_{\rm src}^2A^2)B^2+\|u_t\|_{\dot H^{-1/2}}^2\le0.
\]
Continuity and the first-exit argument ensure \(A\le a_c\) on the entire maximal smooth interval. Integration gives
\[
\nu A(t)^2+\delta_0\int_0^tB^2+\int_0^t\|u_t\|_{\dot H^{-1/2}}^2\le\nu a_c^2.
\]
This genuinely closes the nonlinear action under the stated strict threshold. The full source-square integral is bounded by \(C_{\rm src}^2\nu a_c^4/\delta_0\).

Higher-order control retains every commutator term. A LF64–152/PDF63–64 defines
\[
\mathsf K_m^{\rm hom}=3^m\sum_{\ell=1}^m\binom m\ell\mathsf S(p_{m,\ell})\mathsf S(q_{m,\ell}).
\]
For \(m\ge2\), let \(\vartheta=(\ell-1)/(m-1)\), \(p^{-1}=1/3-\vartheta/6\), \(q^{-1}=1/6+\vartheta/6\), with \((p_{1,1},q_{1,1})=(3,6)\). Incompressibility cancels the undifferentiated transport pairing; the remaining derivative allocations are bounded by complementary Sobolev interpolants. The exact multinomial and binomial sums give the displayed constant and
\[
|\operatorname{Re}\langle\Lambda^m\mathcal B(z),\Lambda^mz\rangle|
\le\mathsf K_m^{\rm hom}\|\Lambda^{3/2}z\|_2\|\Lambda^mz\|_2\|\Lambda^{m+1}z\|_2.
\]
Young and the integrating factor, using \(\int B^2\le\nu a_c^2/\delta_0\), produce for each fixed \(m\)
\[
\|\Lambda^mu(t)\|_2^2+\nu\int_0^t\|\Lambda^{m+1}u\|_2^2
\le\|\Lambda^ma\|_2^2\exp((\mathsf K_m^{\rm hom})^2a_c^2/\delta_0).
\]
Kinetic energy plus \((1+|\xi|^2)^m\le2^{m-1}(1+|\xi|^{2m})\) gives a bound \(U_m^{\rm sm}\) for \(\sup_t\|u(t)\|_{H^m}\). In particular \(U_3^{\rm sm}\) gives a uniform positive restart horizon
\(\delta_{\rm crit}=\min\{1,c_\nu(1+U_3^{\rm sm})^{-2}\}\).
Starting before any purported finite maximal time and using overlap uniqueness extends beyond it. This proves globality in the small-critical regime by a producing estimate and local restart; terminal traces from the general rectangle theorem are not used in this contradiction.

Now set \(Y^{\rm sm}_{0,m}=U_m^{\rm sm}\), \(U_{-1}^{\rm sm}=U_0^{\rm sm}\), and run the full projected recurrence
\[
Y^{\rm sm}_{n+1,m}=\nu Y^{\rm sm}_{n,m+2}
+A_{m+1}\sum_{a'=0}^n\binom n{a'}Y^{\rm sm}_{a',m+2}Y^{\rm sm}_{n-a',m+2}.
\]
This bounds every actual temporal row for \(m\ge-1\). Integrating gives, for each finite \(T,N,M\),
\[
\mathfrak R_{N,M}\le T\sum_{n=0}^N[(Y^{\rm sm}_{n,M+1})^2+(Y^{\rm sm}_{n+1,M-1})^2],
\]
\[
\mathfrak Q_{N,M}\le TA_M\sum_{n=0}^N\sum_{a'=0}^n\binom n{a'}Y^{\rm sm}_{a',M+1}Y^{\rm sm}_{n-a',M+1}.
\]
The same expressions are the entrywise bounds for all three norm columns. Each uses only \(\nu,T,N,M\), \(\|a\|_2\), \(a_c\), and \(\|\Lambda^ra\|_2\) for \(1\le r\le M+2N+1\). No unknown history-coordinate majorant remains in this regime. The two descriptions agree because this is the same complete temporal/pressure recurrence.

## 4. What the later three-dimensional applications require and prove

The following general-data applications explicitly start with the global strong history from PDF Theorem 5.10. Their new operations are concrete, but they are consequences of that history and its finite coordinates.

| Operation | Actual input and proof operation | Result and locator |
|---|---|---|
| Low regularity classes | Fixed Sobolev embeddings of \(Z_{0,1}\) and \(X_{0,2}\) | \(u\in L^\infty L^3\cap L^2L^\infty\), \(\nabla u\in L^2L^3\); A LF419–446/PDF67 Prop8.5 |
| Uniform parabolic scale content | Uniform velocity and pressure bounds \(U_T,P_T\), cylinder volume \((4\pi/3)\rho^5\) | \(\rho^{-2}\iint_{Q_\rho}(|u|^3+|p|^{3/2})\le(4\pi/3)\rho^3(U_T^3+P_T^{3/2})\to0\), uniformly in centers; A LF448–507/PDF67–68 Cor8.6 |
| Vorticity | Curl equation, power test with cutoffs/regularization, nonnegative diffusion, finite Lipschitz action \(L_T^\omega=S_{3,1,\infty}T^{1/2}X_{0,3}\) | \(\sup_{t\le T}\|\omega(t)\|_r\le e^{L_T^\omega}\|\omega_0\|_r\); stretching and dissipation bounds, including \(r=\infty\) by limit; A LF511–659/PDF68–69 Thm8.7 |
| Material flow | \(\int\|u\|_\infty\le D_T\), \(\int\|\nabla u\|_\infty\le L_T\) | ODE trajectories cannot escape, Gronwall gives \(e^{-L_T}|a-b|\le|X(t,a)-X(t,b)|\le e^{L_T}|a-b|\), Jacobi gives \(\det D_aX=1\); A LF661–718/PDF69–70 Thm8.8 |
| Admissible strong-history weak test | Compact solenoidal cutoff construction, time-independent operators, strong convergence in the retained finite Sobolev spaces | Legitimate test against \(u\) in the weak formulation and the cross-energy identity; A LF770–1023/PDF70–73 Lemmas8.10–8.11 |
| Leray–Hopf stability | Weak energy inequality plus strong equality and cross-energy identity; bound the signed interaction by Lipschitz action, or integrate by parts and use \(L^2L^\infty\) | Relative energy bounded by datum difference times \(\exp(2\int\|\nabla u\|_\infty)\), or \(\exp(S_{2,0,\infty}^2X_{0,2}^2/\nu)\); A LF1025–1129/PDF73–74 Thm8.12 |
| Same-datum weak uniqueness and pressure gauge | Set the initial difference to zero; subtract the distributional momentum equations | \(v=u\), exact kinetic identity, and \(q=p+c(t)\); decay normalization fixes \(c=0\); A LF1165–1217/PDF75 Cor8.14 |

A LF450–455/PDF67 expressly identifies the scale-content result as post-regularity and excludes using it as an epsilon-regularity entrance criterion. The vorticity and flow operations consume the finite Lipschitz action obtained from the rectangle; they do not produce it for general data.

For completeness, the weak-testing operation has a specific construction rather than an unexplained admissibility assertion. For \(g_R=\nabla\chi_R\cdot f\), mean zero follows from solenoidality. A compact anti-divergence \(\mathcal G_R\) is constructed by successive one-dimensional integrals with mean corrections. Then
\(\mathcal S_Rf=\chi_Rf-\mathcal G_Rg_R\)
is compact and solenoidal. Scaled Sobolev bounds make its error controlled by the annular tails of finitely many derivatives. Taking \(R_k\to\infty\) produces time-independent \(\mathcal T_k\), commuting with temporal differentiation. Uniform convergence on the compact ranges of \(u\) and \(u_t\) gives the admissible tests. This is needed because the smooth history is not spatially compact.

Writing \(w=v-u\), the resulting exact cross-energy identity is
\[
\langle v(t),u(t)\rangle
=\langle v_0,u_0\rangle
+\int_0^t\int(w\cdot\nabla u)\cdot w
-2\nu\int_0^t\langle\nabla v,\nabla u\rangle.
\]
Subtracting it from the two energy statements gives the signed relative-energy remainder
\[
\tfrac12\|w(t)\|_2^2+\nu\int_0^t\|\nabla w\|_2^2
\le\tfrac12\|w(0)\|_2^2-\int_0^t\int(w\cdot\nabla u)\cdot w.
\]
The high rectangle controls its absolute value by \(\|\nabla u\|_\infty\|w\|_2^2\). The low rectangle uses
\(|\int(w\cdot\nabla u)\cdot w|\le\|u\|_\infty\|w\|_2\|\nabla w\|_2\)
and Young. Neither removes the signed interaction from the original identity; each supplies the required integrable coefficient from an already finite rectangle.

## 5. Exact comparison with combined unforced sources

I removed only the literal u: namespace prefix inside label, ref, eqref, pageref and autoref commands, then performed actual unified diffs of the complete four files.

| File | Complete normalized comparison |
|---|---|
| 03-matrix-forms.tex | Exactly identical. |
| 03-quantitative-consequences.tex | Only catalogue macro name QuantitativeCatalogue versus UnforcedQuantitativeCatalogue, and catalogue section title Canonical coordinate catalogue versus Unforced canonical coordinate catalogue. All displayed formulas, quantifiers, proofs and dependencies agree. |
| 05-three-dimensional-applications.tex | Only the subsection title's Unicode en dash in Leray–Hopf versus TeX double hyphen. All mathematical text agrees. |
| 06-conclusion.tex | Exactly identical. |

This source-to-source agreement does not erase the visible PDF-to-current-source prose differences listed at the beginning. It supports carrying the checked formulas between the current standalone and combined versions, while preserving the publication's actual wording and numbering.

## 6. Teaching conclusion within this verification

There are three distinct operations, in their own source order:

1. The transport array, factorial conjugacy, and Sobolev norm matrix give exact finite descriptions of the full pressure-complete jet. They preserve the nonlinear graph and its allocations.
2. For general data, quantitative recursions convert finite whole-interval rectangle or height coordinates into traces, pressure estimates, production bounds and applications. Their terminal finiteness is expressly taken from the earlier rectangle/terminal-realization results; these four sections do not independently produce that input.
3. Under the explicit critical smallness hypothesis, the full-source bound and square identity close a positive action estimate. The homogeneous commutator, fixed-order integrating factors and uniform local restart then independently give globality and explicit datum-norm rectangle formulas in that regime.

Therefore the later majorants should not be presented as a replacement general-data construction, and the small-data source closure should not be omitted when teaching what the original paper actually proves by an estimate. This lane does not assess the preceding finite-block producer; it records exactly where the assigned sections consume that producer and which operations they perform afterward.

Only this fresh note and its fresh after-hash metadata were created.
