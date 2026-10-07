# Original balanced axial-wobble branch: executed identities and retained response

**Reviewed scope and currentness.** Current original BWS execution. Historical earlier coverage retrieval-only is superseded. Later FRS same-field source-gradient and WW history refinements extend composition. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Date: 2026-10-06. Scope: mathematical verification of BWS.1–37 and the directly used BPT/JEM/JPC/DRF dependencies on an actual smooth Navier–Stokes history. This is a new analysis artifact.

The verified reduction is substantial: whole-spatial weighted Betchov recombination removes the complete axial-vorticity orientation term from the full-field critical first jet. Its exact result is BWS.29, a joined strain-shape, cofactor-collar, finite-chord-covariance and Fourier-exterior current. That identity can be composed with the actual two-recent-parent response after the signed DRF complements are restored. The calculation below does that composition. It does not infer a uniform terminal upper bound from a strict-prefix equality.

## 1. Source custody, definitions and quantified domains

The primary source is [BWS](../SOURCES.md#S187), 17,446 bytes. All its 615 physical lines were read. Its mathematical operations are BWS.1–37, LF34–599. Its opening and closing status prose is not used as mathematical evidence.

Newly traversed direct dependencies are [BPT](../SOURCES.md#S188), 17,009 bytes, and [JPC](../SOURCES.md#S318), 14,989 bytes. Exact proof coverage is listed in section 10.

Use the actual unforced equation
\[
 u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\qquad \nabla\cdot u=0,\qquad \nu>0.
\tag{BW1}
\]
Let \(D_t=\partial_t+u\cdot\nabla\), \(M_{ij}=\partial_j u_i\), \(S=(M+M^T)/2\), \(\Omega=(M-M^T)/2\), and \(\omega=\nabla\times u\). Then \(\Omega^2=(\omega\otimes\omega-|\omega|^2I)/4\). All calculations first hold on each strict smooth prefix \([a,b]\subset[0,T_*)\). Spatial integrations are on \(\mathbb R^3\) with justified decay/integrability, or periodic when explicitly specified. The all-pair kernel below is the whole-space kernel; a periodic calibration does not establish its whole-space terminal estimate.

Weights are not presumed admissible just because \(u\) is smooth. The displayed integrals and integration-by-parts limits must exist. Compactly supported smooth spatial weights suffice locally. For bounded constant whole-space weights, smoothness with \(u\in L^\infty\), \(\nabla u\in L^2\cap L^3\) supplies cubic integrability and an \(L^1\) cofactor flux. Time identities additionally require the displayed derivatives, endpoints and integrals finite on the strict prefix. No terminal value of any selected enstrophy or cubic primitive is assumed.

Exact balance means
\[
 S=-a(I-e\otimes e)+2a e\otimes e,\qquad a>0,\quad |e|=1.
\tag{BW2}
\]
Here the simple expanding eigenvalue is \(2a\), the transverse contracting eigenvalue is \(-a\), and the gap is \(3a>0\). The derivative formulas requiring \(e\) use this simple eigenpair. They are pointwise formulas at exact balanced points; their time-integrated balanced versions require the chosen weight to remain in that geometry. The later eigenvalue-invariant recombination applies through nonbalanced transitions without dividing by a gap.

## 2. Execute the pressure-explicit balanced frame and axial supplier

The exact differentiated NS equation is
\[
 D_tM+M^2=-\nabla^2p+\nu\Delta M,
 \qquad D_tS=-S^2-\Omega^2-\nabla^2p+\nu\Delta S.
\tag{BW3}
\]
This derives BWS.4 directly: commuting \(D_t\) with \(\partial_j\) produces the full \(M^2\) term. Taking the divergence of BW1 gives
\[
 -\Delta p=\operatorname{tr}M^2
 =6a^2-\tfrac12(w^2+|\omega_\perp|^2),\quad
 w=\omega\cdot e,\quad \omega_\perp=(I-e\otimes e)\omega.
\tag{BW4}
\]
Write \(H^\circ=(\nabla^2p)^\circ\), so \(\nabla^2p=-\operatorname{tr}(M^2)I/3+H^\circ\). The scalar eigenvalue derivative is \(2D_ta=e\cdot D_tS e\). The transverse eigenvector derivative is \(3aD_te=P_\perp D_tS e\). Substitution gives exactly [BWS.7–8, LF85–103](../SOURCES.md#S187):
\[
\begin{split}
D_ta&=-a^2-\frac{w^2}{12}+\frac{|\omega_\perp|^2}{24}
       -\frac{H^\circ_{ee}}2+\frac\nu2(\Delta S)_{ee},\\
D_te&=-\frac{w\omega_\perp}{12a}
       -\frac{P_\perp H^\circ e}{3a}
       +\frac{\nu P_\perp\Delta S e}{3a}.
\end{split}
\tag{BW5}
\]
For example, \(P_\perp\Omega^2e=w\omega_\perp/4\); the minus sign from \(-\Omega^2\) and gap \(3a\) give the first term of \(D_te\). No pressure trace or transverse component has been dropped.

The curl equation \(D_t\omega=S\omega+\nu\Delta\omega\) gives
\[
D_tw=2aw+\nu e\cdot\Delta\omega+\omega_\perp\cdot D_te.
\tag{BW6}
\]
Solving \(D_t(w^2)=2wD_tw\) for \(aw^2\) verifies BWS.11. Inserting BW5 verifies the complete signed BWS.12:
\[
\begin{split}
aw^2={}&\tfrac14D_t(w^2)-\tfrac\nu2 w e\cdot\Delta\omega
+\frac{w^2|\omega_\perp|^2}{24a}
+\frac{w\omega_\perp\cdot H^\circ e}{6a}
-\frac{\nu w\omega_\perp\cdot\Delta S e}{6a}.
\end{split}
\tag{BW7}
\]
Differentiating the complete product \(aw^2\), rather than only its axial factor, gives BWS.13:
\[
\begin{split}
D_t(aw^2)={}&3a^2w^2-\frac{w^4}{12}-\frac{w^2|\omega_\perp|^2}{8}
-\frac12w^2H^\circ_{ee}-\frac{2w}{3}\omega_\perp\cdot H^\circ e\\
&+\frac\nu2w^2(\Delta S)_{ee}
+2\nu aw e\cdot\Delta\omega
+\frac{2\nu w}{3}\omega_\perp\cdot\Delta S e.
\end{split}
\tag{BW8}
\]
The transverse-vorticity coefficient is \(1/24-1/6=-1/8\). All three viscous/frame terms and both trace-free pressure contractions are present. These are identities at the stated balanced geometry, with no claimed sign on their full right sides.

Let \(\ell\ge0\) be a smooth admissible spatial weight supported in that balanced branch. Volume preservation and product differentiation yield exactly [BWS.14, LF183–199](../SOURCES.md#S187):
\[
\int_a^b\!\int\ell aw^2
=\frac14\left[\int\ell w^2\right]_a^b
-\frac14\int_a^b\!\int w^2D_t\ell
-\frac\nu2\int_a^b\!\int\ell w e\cdot\Delta\omega
-\frac12\int_a^b\!\int\ell w\omega_\perp\cdot D_te.
\tag{BW9}
\]
The endpoint is selected axial enstrophy. The exact viscous integration by parts, an additional expansion of this original term, is
\[
\begin{split}
-\frac\nu2\int\ell w e\cdot\Delta\omega
={}&\frac\nu2\int\ell|\nabla w|^2\\
&+\frac\nu2\sum_j\int\bigl[(\partial_j\ell)w e\cdot\partial_j\omega
-\ell(\partial_jw)(\omega\cdot\partial_je)
+\ell w\partial_je\cdot\partial_j\omega\bigr].
\end{split}
\tag{BW10}
\]
Here \(\partial_jw=e\cdot\partial_j\omega+\omega\cdot\partial_je\). The positive gradient term is accompanied by the complete spatial-selector and frame derivatives. A material no-wobble condition \(D_te=0\) would not delete \(\partial_je\).

The same weight, without imposing balance, satisfies the original localized enstrophy relation BWS.18a:
\[
\begin{split}
\int_a^b\!\int\ell\omega\cdot S\omega
={}&\tfrac12\left[\int\ell|\omega|^2\right]_a^b
-\tfrac12\int_a^b\!\int|\omega|^2D_t\ell\\
&+\nu\int_a^b\!\int\ell|\nabla\omega|^2
+\tfrac\nu2\int_a^b\!\int\nabla\ell\cdot\nabla|\omega|^2.
\end{split}
\tag{BW11}
\]
It follows by multiplying the curl equation by \(\ell\omega\) and integrating \(\ell\omega\cdot\Delta\omega\). Its kinetic input is only \(\int_0^{T_*}\|\omega\|_2^2\le\|u_0\|_2^2/(2\nu)\), not a value of the endpoints or selected palinstrophy in BW9–11.

## 3. Execute whole-spatial weighted Betchov and its balanced supplier

For every trace-free \(3\times3\) matrix,
\[
\operatorname{tr}M^3
=\operatorname{tr}S^3+3\operatorname{tr}(S\Omega^2)
=\operatorname{tr}S^3+\tfrac34\omega\cdot S\omega
=3\det M.
\tag{BW12}
\]
The omitted mixed terms in the trace vanish by symmetric/skew symmetry, and the last equality is the trace-free characteristic identity. For the actual gradient \(M_{ij}=\partial_j u_i\), Piola gives \(\partial_j(\operatorname{cof}M)_{ij}=0\). Hence
\[
\nabla\cdot[(\operatorname{cof}M)^Tu]
=(\operatorname{cof}M):M=3\det M.
\tag{BW13}
\]
Integrating BW12–13 with an admissible weight verifies [BWS.19–21, LF279–305](../SOURCES.md#S187):
\[
 T_\ell+\tfrac34W_\ell=-C_\ell,
\quad T_\ell=\int\ell\operatorname{tr}S^3,
\quad W_\ell=\int\ell\omega\cdot S\omega,
\quad C_\ell=\int\nabla\ell\cdot(\operatorname{cof}M)^Tu.
\tag{BW14}
\]
On a bounded spatial domain \(D\), the right side is instead
\(\int_{\partial D}\ell(\operatorname{cof}M)^Tu\cdot n-C_\ell\). The full-space/periodic formulation removes this flux only by its actual spatial domain and admissibility. It cannot be used to remove the boundary of a selected balanced patch while forgetting the derivative of its membership weight.

On exact balanced support,
\[
\operatorname{tr}S^3=6a^3,\qquad
\omega\cdot S\omega=2aw^2-a|\omega_\perp|^2.
\]
Solving BW14 therefore gives the actual axial supplier [BWS.23, LF341–353](../SOURCES.md#S187):
\[
\boxed{\int\ell aw^2
=\tfrac12\int\ell a|\omega_\perp|^2
-4\int\ell a^3-\tfrac23C_\ell.}
\tag{BW15}
\]
This is the full-frame nonseparable cancellation. Inserting it in BPT.17 makes the entire first-jet orientation term
\[
-\frac8{15\pi}\int\ell
\left(6a^3+\tfrac a4|\omega_\perp|^2-\tfrac a2w^2\right)
=-\frac{64}{15\pi}\int\ell a^3-\frac8{45\pi}C_\ell.
\tag{BW16}
\]
No bound on axial vorticity was assumed. If \(\ell\) is spatially constant, its collar is zero. If that constant is positive throughout the spatial domain, using the balanced formula also requires balance throughout that domain; balance at one point or in a selected patch is insufficient. The full finite-chord term remains outside BW16.

Combining BW11 and BW14 gives BWS.21a with all endpoints, material flux, viscosity and cofactor collar:
\[
\begin{split}
\tfrac12[\int\ell|\omega|^2]_a^b
-\tfrac12\int_a^b\!\int|\omega|^2D_t\ell
+\nu\int_a^b\!\int\ell|\nabla\omega|^2
+\tfrac\nu2\int_a^b\!\int\nabla\ell\cdot\nabla|\omega|^2
=-\tfrac43\int_a^b(T_\ell+C_\ell)\,dt.
\end{split}
\tag{BW17}
\]
This recombination is exact. It does not create a second positive reserve: solving it back for \(W_\ell\) gives the same BW11.

## 4. Recover and execute the actual finite-chord prerequisite

The direct [BPT.1–10, LF40–138](../SOURCES.md#S188) uses \(\delta_{r,n}u(x)=u(x)-u(x-rn)\), \(L=\delta u\cdot n\), \(Q=|\delta u|^2\). The flux theorem gives \(\int_{\mathbb S^2}L\,d\sigma=0\) at every center and radius. Thus
\[
\mathscr C_u(x,r)=\int_{\mathbb S^2}(Q-\overline Q)L\,d\sigma
=\int_{\mathbb S^2}QL\,d\sigma.
\tag{BW18}
\]
The fourth spherical moment \(\int n_in_jn_kn_l=(4\pi/15)(\delta_{ij}\delta_{kl}+\delta_{ik}\delta_{jl}+\delta_{il}\delta_{jk})\), together with \(\operatorname{tr}M=0\), gives
\[
\lim_{r\downarrow0}r^{-3}\mathscr C_u(x,r)
=\frac{8\pi}{15}\operatorname{tr}(M^TMS),\quad
\operatorname{tr}(M^TMS)=\operatorname{tr}S^3-\tfrac14\omega\cdot S\omega.
\tag{BW19}
\]
This verifies the coefficient and signs independently of a positive directional interpretation.

The whole-space kernel normalization and actual NS bridge are directly present in [JEM.9–25, LF121–311](../SOURCES.md#S223):
\[
\langle u,\Lambda u\rangle=\frac1{2\pi^2}\iint\frac{|u(x)-u(y)|^2}{|x-y|^4}\,dx\,dy.
\]
For the volume-preserving flow \(X\), let \(R=X(a)-X(b)\), \(V=u(X(a))-u(X(b))\), \(r=|R|\), \(K=r^{-1}\), \(\alpha=V\cdot R/r^2\), and
\[
e=\frac{|V|^2}{4\pi^2r^4},\qquad
j=-\frac{|V|^2(V\cdot R)}{\pi^2r^6}=-4e\alpha.
\tag{BW20}
\]
Changing material labels to current endpoints preserves volume. Differentiating the inverse-distance kernel in this same measure gives
\[
\iint j=\mathcal P_{1/2}
=-\langle(u\cdot\nabla)u,\Lambda u\rangle,
\quad H=\iint e=\tfrac12\|\Lambda^{1/2}u\|_2^2.
\tag{BW21}
\]
Equivalently, if \(U_tf=f\circ X\), the material metric \(U_t\Lambda U_t^{-1}\) has derivative \(U_t[u\cdot\nabla,\Lambda]U_t^{-1}\); skew-adjointness of \(u\cdot\nabla\) gives the same BW21. Changing the second current endpoint to \(y=x-rn\) gives the exact BPT.3 coefficient:
\[
\mathcal P_{1/2}=-\pi^{-2}\int_x\int_0^\infty r^{-3}\mathscr C_u(x,r)\,dr.
\tag{BW22}
\]
These operations may be done with diagonal/spatial truncations first and their justified smooth-prefix limits. They do not introduce a terminal estimate. JEM's reference to NIC.35–44 is not needed to assume an unseen proposition: JEM provides the material kernel, operator check and full pressure-viscous proof used here.

For every admissible smooth radial selector \(0\le\zeta(t,x,r)\le1\), independent of \(n\), with finite \(\ell_\zeta=\int_0^\infty\zeta\,dr\), define exactly [BPT.14–16, LF183–218](../SOURCES.md#S188):
\[
\mathcal E_\zeta=-\pi^{-2}\int_x\int_0^\infty r^{-3}
\left[\mathscr C_u-\zeta r^3\frac{8\pi}{15}\operatorname{tr}(M^TMS)\right]dr.
\tag{BW23}
\]
Since the bracket divided by \(r^3\) is the complete difference, its definition is not a smallness estimate. For a smooth field the local first-jet remainder is \(o(r^3)\) where \(\zeta=1\) near zero. Choosing other admissible \(\zeta\) simply changes the split, while retaining every finite chord.

Define the exact Fourier exterior \(\mathcal P_{1/2}^{\rm out}=\mathcal P_{1/2}-\mathcal P_{1/2}^{\rm core}\), with the actual symmetric full-field FIM mask, as in JEM.24–25. BW22–23 give
\[
\mathcal P_{1/2}^{\rm core}
=-\frac8{15\pi}\int\ell_\zeta[\operatorname{tr}S^3-\tfrac14\omega\cdot S\omega]
+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.
\tag{BW24}
\]
This is the exact BWS.24 prerequisite, on the whole velocity \(u\); no individual chord is assigned to an individual Fourier triad.

## 5. Execute BWS.24–30 through the nonbalanced transition

BW14 implies \(T_\ell-W_\ell/4=4T_\ell/3+C_\ell/3\). Applying it to the actual nonnegative \(\ell_\zeta\) in BW24 gives
\[
\mathcal P_{1/2}^{\rm core}
=-\frac{32}{45\pi}T_{\ell_\zeta}-\frac8{45\pi}C_{\ell_\zeta}
+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.
\tag{BW25}
\]
Let the ordered actual strain eigenvalues be \(\lambda_1\le\lambda_2\le\lambda_3\), with zero sum. Set \(a=\lambda_3/2\), \(d=(\lambda_2-\lambda_1)/2\). Then
\[
\lambda_1=-a-d,\quad\lambda_2=-a+d,\quad\lambda_3=2a,
\quad a\ge0,\quad0\le d\le3a,
\quad\operatorname{tr}S^3=6a^3-6ad^2.
\tag{BW26}
\]
This uses ordered eigenvalues, not a differentiated choice of a colliding eigenframe. It therefore passes the selector transition. Substitution verifies the exact [BWS.28–29, LF448–483](../SOURCES.md#S187):
\[
\boxed{
\mathcal J_{\rm WB}^{\zeta}
=\frac{64}{15\pi}\int\ell_\zeta a(d^2-a^2)
-\frac8{45\pi}C_{\ell_\zeta}
+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}
=\mathcal P_{1/2}^{\rm core}.}
\tag{BW27}
\]
The strain-shape term is favorable on \(d\le a\). Exact balance is \(d=0\). On the whole unweighted spatial field, \(C=0\), and BW19/BW14 give BWS.27b:
\[
\int\operatorname{tr}(M^TMS)=\tfrac43\int\operatorname{tr}S^3
=8\int a(a^2-d^2).
\]
A spatially constant radial mass \(\ell_0\) thus gives the first-jet coefficient \(-64\ell_0(15\pi)^{-1}\int a(a^2-d^2)\), while the same exact finite-chord \(\mathcal E_\zeta\) and Fourier exterior remain. Dropping \(-64(15\pi)^{-1}\int\ell_\zeta a^3\) gives BWS.29a's upper comparison, only because \(\ell_\zeta\ge0\). No separate bound for its remaining terms follows from that inequality.

An explicit strict-prefix bound for the collar, derived from this very operation, is
\[
|C_\ell|\le\frac1{\sqrt3}\|\nabla\ell\|_\infty\|u\|_\infty\|\nabla u\|_2^2.
\tag{BW28}
\]
Indeed \(|\operatorname{cof}M|_F\le|M|_F^2/\sqrt3\), by the three singular values. This is finite with the stated strict-prefix weight/domain. It explicitly retains the actual selector derivative and velocity supremum; neither is replaced by a datum-uniform quantity. The central signed object is BW27, before any such absolute estimate.

## 6. Execute the actual moving pair selector and its pressure/frame prerequisites

The exact acceleration is \(A=D_tu(X(a))-D_tu(X(b))\), with
\[
A=\int_0^1[-\nabla^2p+\nu\Delta M](X(b)+sR)R\,ds.
\tag{BW29}
\]
Writing \(q=\operatorname{tr}M^2=-\Delta p\), the bracket is \(qI/3-H^\circ+\nu\Delta M\). Both the trace-free pressure and its trace remain. With \(\chi=V\cdot A/|V|^2\) on \(V\ne0\), product differentiation gives \(e'=2e\chi+j\). At \(V=0\), products such as \(e\chi=V\cdot A/(4\pi^2r^4)\) give their division-free meaning.

Consequently for every admissible smooth pair selector \(0\le\Gamma(a,b,t)\le1\), [BPT.19–22, LF253–329](../SOURCES.md#S188) is exactly
\[
\int_a^b\!\iint\Gamma j
=[\iint\Gamma e]_a^b-\int_a^b\!\iint e\Gamma'
-2\int_a^b\!\iint\Gamma e\chi.
\tag{BW30}
\]
The opposite selector \(1-\Gamma\) has opposite \(e\Gamma'\). Adding them restores
\[
\int_a^b\!\iint j=H(b)-H(a)+\nu\int_a^b\|\Lambda^{3/2}u\|_2^2.
\tag{BW31}
\]
Here the global scalar pressure cancellation is justified by
\[
2\iint e\chi=\langle D_tu,\Lambda u\rangle
=\langle-\nabla p+\nu\Delta u,\Lambda u\rangle
=-\nu\|\Lambda^{3/2}u\|_2^2.
\tag{BW32}
\]
The full \(\Lambda u\) is divergence-free. A selected pair tensor need not be, so BW32 is not available to a general \(\Gamma\) before its complement is restored.

For the actual diagnostic form of [BPT.23–25, LF336–379](../SOURCES.md#S188) and BWS.15–16,
\[
\Gamma=\gamma_{\rm bal}\psi(\log(K/K_Z)),\quad K_Z=C_ZZ/\nu^2,
\quad Z=\|\nabla u\|_2^2>0,
\]
the exact derivative is
\[
\Gamma'=\psi\gamma_{\rm bal}'
+\gamma_{\rm bal}\psi'(-\alpha-Z'/Z).
\tag{BW33}
\]
This uses \(K'/K=-\alpha\). Its full selected time-oriented supplier is
\[
-\int e\psi\gamma_{\rm bal}'
+\int e\gamma_{\rm bal}\psi'(\alpha+Z'/Z)
-2\int\Gamma e\chi,
\tag{BW34}
\]
plus the selected endpoint of BW30. Both balance membership and the moving enstrophy gate survive, with full
\(Z'=2\langle Q,Au\rangle-2\nu\|Au\|_2^2\), \(Q=-\mathbb P(u\cdot\nabla u)\), \(A=-\Delta\). BPT.25's matching to BW24 is explicitly conditional on \(\Gamma\) being the material pullback of the same radial selector \(\zeta\). The source does not identify every diagnostic \(\gamma_{\rm bal}\psi\) with that radial selector or a Fourier mask. No pointwise material/Fourier scale identification was used here.

The essential general tensor prerequisite is also executed directly. For any admissible smooth tensor selector \(A_s\), [JPC.8–13, LF98–167](../SOURCES.md#S318) gives
\[
\int A_s:\mathsf C
=-\int p\,\operatorname{div}\operatorname{div}A_s+\nu\int M:\Delta A_s
=\frac d{dt}\int A_s:M-\int D_tA_s:M+\int A_s:M^2,
\tag{BW35}
\]
where \(\mathsf C=-\nabla^2p+\nu\Delta M=D_tM+M^2\). It follows by two spatial integrations by parts and one material product rule. Componentwise \(\int M=\int\mathsf C=\int M^2=0\) holds for the stated decaying/periodic full fields; for the last identity integrate \(\partial_k u_i\partial_j u_k\) and use \(\partial_k u_k=0\). Therefore the complementary selectors cancel only for the same constant tensor and scale value. Variable orientation contributes its actual frame derivatives.

For a finite increasing scale list \(K_J<\cdots<K_N\), \(\chi_j\ge0\), \(\sum\chi_j=1\), \(\Theta_j=\sum_{p\ge j}\chi_p\), finite Abel summation gives
\[
\sum K_j\chi_j=K_J+\sum_{j>J}(K_j-K_{j-1})\Theta_j.
\tag{BW36}
\]
This verifies JPC.14–22's signed scale-jump law by BW35. If the orientation tensor \(P(t,x)\) varies, JPC.23–24 retains the baseline \(K_J\int P:\mathsf C\), \(D_t(\Theta_jP)=(D_t\Theta_j)P+\Theta_jD_tP\), and spatial derivatives of \(P\). The fixed-axis cancellation does not erase the moving balanced eigenframe in BW5/10. These are finite-list identities; no uniformity as \(N\to\infty\) was assumed.

The additionally read JPC.25–29c is conditional on a fixed no-wobble eigenline \(Mn=\alpha n\). It gives \(P:\mathsf C=\dot\alpha+\alpha^2\), and exact coasting \(P:\mathsf C=0\) refunds \(\int\vartheta\alpha^2=-[\vartheta\alpha]+\int\dot\vartheta\alpha\). The continuous compression weight \(y=(-\alpha)_+\), \(\kappa=\sqrt{y/\nu}\) yields
\(\kappa P:\mathsf C=-(2/3\sqrt\nu)D_t(y^{3/2})+y^{5/2}/\sqrt\nu\).
These actual conditional identities preserve the compression endpoint and membership terms. They provide no additional upper payment for BW27 unless their fixed-line antecedents and scale relationship are supplied. BRP's separate recruited-label bound is not invoked here.

## 7. Lawful composition with both recent histories and the exact cap/ramp response

The full-field nature of BW27 is decisive. Its \(S,\omega,a,d\) are those of \(u\). It is not applied to \(\nabla V\), and balance of \(\nabla u\) is not asserted for either recent parent.

Use the unchanged actual [DRF.1–27, LF34–317](../SOURCES.md#S203) record \(I_n=(s_n,t_n)\), output cut \(K_n\), parent floor \(r_n\), fixed lag \(\tau_n\), frozen full-field symmetric six-assignment mask, and full pressure source \(Q\). Write
\[
u=h_0+w,\quad h_0=E_tu_0,\quad
v=P_{\ge r_n}w=O+V,\quad
V=\int_{\max(0,t-\tau_n)}^tE_{t-r}P_{\ge r_n}Q(r)\,dr.
\tag{BW37}
\]
Here \(O\) is the exact old response. Freeze the same mask at each receiver time before every substitution; its geometric thresholds remain the original record thresholds. Let
\[
\begin{split}
Q_L&=P_{<K_n}Q_{\rm core}[u,u],\\
Q_{\rm ic}&=P_{\ge K_n}Q_{\rm core}[u,u]-Q_n^{\rm ch}[v,v],\\
Q_O&=Q_n^{\rm ch}[O,O]+Q_n^{\rm ch}[O,V]+Q_n^{\rm ch}[V,O],\\
C_n(t)&=\operatorname{Re}\langle\Lambda^{-1/2}(Q_L+Q_{\rm ic}+Q_O),\Lambda^{3/2}u\rangle,\\
J_n(t)&=\operatorname{Re}\langle\Lambda^{-1/2}Q_n^{\rm ch}[V,V],\Lambda^{3/2}u\rangle.
\end{split}
\tag{BW38}
\]
The definition of \(Q_{\rm ic}\) includes all datum-containing ordered parents. The FIM minimum-leg floor makes \(P_{\ge r_n}w\) an exact insertion in the high-output retained source. Bilinearity with this same frozen mask gives the exact refund
\[
\boxed{\mathcal P_{1/2}^{\rm core}=J_n+C_n,\qquad J_n=\mathcal J_{\rm WB}^{\zeta}-C_n.}
\tag{BW39}
\]
This joins BW27 lawfully to the mixed current without a polarized balanced-frame premise. Both old/recent orderings and both datum/remainder orderings remain in its complement. No inner children of \(Q(t)\) have been limited to the outer roof.

The displayed DRF.7/.13/.24 bound absolute whole-record signed integrals by \(A_n/16\) each. A slightly stronger form needed for a restricted weight is justified directly by the same Cauchy argument, not by restricting a signed bound: for every measurable \(0\le\rho\le1\),
\[
\int_{I_n}\rho|\langle\Lambda^{-1/2}Q_e,\Lambda^{3/2}u\rangle|
\le\left(\int_{I_n}\|\Lambda^{-1/2}Q_e\|_2^2\right)^{1/2}
\left(\int_{I_n}\|\Lambda^{3/2}u\|_2^2\right)^{1/2}.
\tag{BW40}
\]
DRF.3 supplies the second square \(\le2A_n/\nu\); the first squares are \(\le\nu A_n/512\) for low/old and \(\varepsilon_n^2\) for datum, with \(\varepsilon_n\to0\). Thus, for all sufficiently large original records,
\[
\int_{I_n}\rho|C_n|\le3A_n/16,
\qquad \text{datum contribution }=o(A_n).
\tag{BW41}
\]
The explicit low/old constants are whole-record refunds. They are not asserted to shrink to \(o(A_n)\) on a capped branch. A retained cap current \(A_n/64\) therefore does not by itself imply a positive cap integral of \(\mathcal J_{\rm WB}^{\zeta}\) after discarding \(C_n\). On the full original record, however, DRF.2 already gives \(\int_{I_n}\mathcal J_{\rm WB}^{\zeta}\ge A_n/4\). A genuine datum-uniform upper for BW27 would pay that full record directly.

For the response composition, use the exact typed triad functional of [JC3–5](A0344-endpoint-composition-joint-verification-20261006.md), \(J_n=T_{M_n}(u,V,V)\), cubic primitive \(\mathcal B_n=T_{M_n/d}(u,V,V)\), with \(d\) the full three-leg heat rate of that source. This heat-rate \(d\) is unrelated to the strain-splitting scalar \(d\) in BW26. To avoid ambiguity denote it \(d_{\rm heat}\) in the following formulas. The complete first-binomial derivative is
\[
\mathcal B_n'+J_n=R_n=R_{\rm gate}+R_{\rm src},
\tag{BW42}
\]
\[
\begin{split}
R_{\rm gate}&=T_{\partial_tM_n/d_{\rm heat}}(u,V,V),\\
R_{\rm src}&=T_{M_n/d_{\rm heat}}(Q,V,V)
+T_{M_n/d_{\rm heat}}(u,R_V,V)
+T_{M_n/d_{\rm heat}}(u,V,R_V),\\
R_V&=P_{\ge r_n}Q(t)-\mathbf1_{t>\tau_n}E_{\tau_n}P_{\ge r_n}Q(t-\tau_n).
\end{split}
\tag{BW43}
\]
Every pressure-completed ordered source and both recent slot derivatives remain. The gate contains the full \(Z'\), including viscosity. On a fixed smooth original core its actual \(\eta'\) is retained; no uniform derivative bound for a sharp approximation is assumed.

Let \(I_n^\sigma\) be the original signed edge/interior branch, \(\kappa_\ell(t)=\mathbf1_{\{Z(t)\le\ell\}}\), a regular nonendpoint cap with finite crossings on the strict branch, and \(\phi\) the exact ramp vanishing at its original endpoints. Fix \(\rho=\phi\kappa_\ell\). Using the same current, parents, mask and cap as [JC20](A0344-endpoint-composition-joint-verification-20261006.md), the complete joined identity is
\[
\boxed{
\int_{I_n^\sigma}\rho R_n+\mathcal X_{\phi,\ell}
=\int_{I_n^\sigma}\rho(\mathcal J_{\rm WB}^{\zeta}-C_n)
-\int_{I_n^\sigma}\phi'\kappa_\ell\mathcal B_n,\qquad
\mathcal X_{\phi,\ell}=-\sum_{Z(t_j)=\ell}\phi(t_j)\operatorname{sgn}Z'(t_j)\mathcal B_n(t_j).}
\tag{BW44}
\]
The sign follows from \(\kappa_\ell'=-\sum\operatorname{sgn}Z'(t_j)\delta_{t_j}\). There is no duplicate charge for those crossings. The ramp derivative supplies the actual averaged endpoint cost. For a sharp original Fourier gate this formula requires the full differentiated gate/trace passage specified in JC; mere continuity of the primitive at a new cap does not prove that passage.

Inserting BW27 in BW44 gives the finite expression explicitly:
\[
\begin{split}
\int\rho R_n+\mathcal X_{\phi,\ell}
={}&\int\rho\left[
\frac{64}{15\pi}\int_x\ell_\zeta a(d^2-a^2)
-\frac8{45\pi}\int_x\nabla\ell_\zeta\cdot(\operatorname{cof}\nabla u)^Tu
+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}-C_n\right]dt\\
&-\int\phi'\kappa_\ell\mathcal B_n\,dt.
\end{split}
\tag{BW45}
\]
All time integrals in BW45 are on the same \(I_n^\sigma\). On the edge branch the source hull may precede \(s_n\); on the interior both recent source times lie in \(I_n\). This is the requested complete same-selection composition, retaining actual current and both recent histories.

If BW9/BW17/BW30 are used with the additional cap/ramp, the corresponding weight is \(L=\rho\ell_\zeta\). Its derivative is
\[
D_tL=\rho D_t\ell_\zeta+\phi'\kappa_\ell\ell_\zeta
+\phi\kappa_\ell'\ell_\zeta.
\tag{BW46}
\]
The last term uses the selected axial/enstrophy storage at the cap crossings, whereas BW44 uses the cubic primitive \(\mathcal B_n\). They cannot be identified without the full intervening identity. Since \(\rho\) depends only on time, \(\nabla L=\rho\nabla\ell_\zeta\) in the spatial Betchov relation. Smooth cap approximants justify BW46 first; a sharp limit requires the displayed trace/distributional passage. No selector or threshold derivative is lost.

The conditional finite common-selection estimate remains exactly [JC21](A0344-endpoint-composition-joint-verification-20261006.md): its averaged endpoint loss, cap-crossing primitive count, full recent/source mass and capped \(\operatorname{Var}Z\) costs survive. BW45 adds a signed representation available for cancellation before absolute estimation. Neither BW15 nor BW27 bounds those surviving costs by a datum or asserts them to be \(o(A_n)\).

## 8. Forcing bookkeeping, separately qualified

BWS/BPT/JPC formulas above are the original unforced branch. Their intrinsic kinematic Betchov and covariance identities apply to every divergence-free instantaneous velocity. For an actual forced history, set \(g=\mathbb Pf\), \(G=\operatorname{sym}\nabla g\), and choose intrinsic \(p_u\) with \(-\Delta p_u=\operatorname{tr}M^2\). Then
\[
D_tu=-\nabla p_u+\nu\Delta u+g.
\]
This is equivalent to using the full physical pressure and raw force, retaining \(\nabla(p-p_u)=(I-\mathbb P)f\). The exact additions to BW5–6 are
\[
D_ta:\ +G_{ee}/2,\qquad
D_te:\ +P_\perp Ge/(3a),\qquad
D_tw:\ +e\cdot\nabla\times g.
\tag{BW47}
\]
Thus BW7 additionally contains
\(-\tfrac12w e\cdot\nabla\times g-w\omega_\perp\cdot Ge/(6a)\), and BW8 additionally contains
\[
\tfrac12w^2G_{ee}+2aw e\cdot\nabla\times g
+\tfrac{2w}{3}\omega_\perp\cdot Ge.
\]
BW11, solved for intrinsic stretching, has the extra \(-\int\ell\omega\cdot\nabla\times g\). The finite chord acceleration BW29 adds \(\int_0^1\nabla g(X(b)+sR)R\,ds\). Its full recombination BW32 becomes \(-\nu\|\Lambda^{3/2}u\|_2^2+\langle g,\Lambda u\rangle\). BW33 retains full forced \(Z'=2\langle Q+g,Au\rangle-2\nu\|Au\|_2^2\).

In BW43 a parent defined from \(Q\) retains its forcing heat subtraction in its exact mild comparison; the current slot gains \(g\) and the gate gains \(2\langle g,Au\rangle\). A parent instead defined from \(Q+g\) has both present and delayed forced source slots. The original unforced DRF floor is not asserted for arbitrary forcing just from these identities. BW27 still equals the intrinsic nonlinear \(\mathcal P_{1/2}^{\rm core}\); the known direct-force work must be kept in any forced stock balance. These forced additions are explicitly derived bookkeeping, not attributed to an unprinted BWS forced theorem.

## 9. Verify the source's actual periodic calibration without extending its scope

For completeness BWS.31–36, [LF523–586](../SOURCES.md#S187), was checked on its stated periodic solution:
\[
u=Ae^{-\nu N^2t}U(Nx),\quad
U=(\sin z+\cos y,\sin x+\cos z,\sin y+\cos x).
\]
For integer \(N\), \(\nabla\times U=U\), \(\Delta U=-U\), and the identity \((U\cdot\nabla)U=\nabla|U|^2/2-U\times\operatorname{curl}U\) gives \(Q=0\), \(p=-|u|^2/2\). This is an exact unforced smooth periodic NS history.

Direct differentiation gives \(f=\operatorname{tr}(\nabla U)^3=3(\cos x\cos y\cos z-\sin x\sin y\sin z)\), mean zero, not identically zero. For \(\ell_\pm=1\pm\varepsilon f(Nx)/C_f\), \(C_f>\|f\|_\infty\), \(0<\varepsilon\le1\), the source's exact weighted moment and collar are
\[
\int\ell_\pm\operatorname{tr}M^3
=\pm\frac{\varepsilon A^3N^3e^{-3\nu N^2t}}{C_f}\int f^2,
\qquad C_{\ell_\pm}=-\int\ell_\pm\operatorname{tr}M^3.
\]
The absolute collar integrates to \(\varepsilon|A|^3N\int f^2/(3\nu C_f)\), while the kinetic paid clock is \(A^2\|\nabla U\|_2^2/(2\nu)\). These constants follow by the actual time integrals; integer spatial dilation preserves periodic mean integrals. The full nonlinear current is zero. Every nonzero weighted split therefore has its exact complementary cancellation. The example is not a whole-space failed record, its weights are not the coupled DRF cap selector, and it is not used to assert terminal failure or terminal payment for that selector.

BPT.30–33's same ABC calibration was also checked: at \(-\pi(1,1,1)/(4N)\), the centered gradient is symmetric with eigenvalues \((-b,-b,2b)\), \(b=ANe^{-\nu N^2t}/\sqrt2\), and the exact integrated tangent strain is \(A(1-e^{-\nu N^2t})/(\sqrt2\nu N)\). At the second point \(x=0\), \(|\omega_\parallel|^2=12a^2\), \(\omega_\perp=0\), saturating the BPT first-jet sign boundary. BPT.34–37's decaying periodic shear is likewise an actual NS identity check: \(V_x=v_0e^{-\nu t}\), \(R_x=R_x(0)+v_0(1-e^{-\nu t})/\nu\), with a possible material distance minimum. No monotonicity of arbitrary material pairs is assumed in BW30–34. Neither calibration supplies a terminal-history argument for the requested record.

## 10. Exact dependency coverage and bounded conclusion

| Actual source | Directly executed coverage in this report | Role and limit |
|---|---|---|
| BWS | BWS.1–37, LF34–599; entire file read | Balanced frame, complete axial supplier, moving weight, localized enstrophy, weighted Piola/Betchov, full-field transition current, actual periodic calibration. |
| BPT | BPT.1–25, LF40–387; BPT.26–37, LF389–528; rest read | Spherical covariance coefficient, finite-chord definition, actual moving pair gate, full pressure/viscous selector, calibration. No unexplained material/Fourier pointwise bridge assumed. |
| JEM | JEM.1–25, LF39–311 directly reread and executed | Actual kernel normalization and self-contained aggregate material/Fourier/pressure bridge. Its NIC reference is not an unseen antecedent in this derivation. Later JEM operations were covered in the earlier supporting audit and are not re-claimed as new here. |
| JPC | JPC.2–24, LF36–291; JPC.25–29c, LF295–398 | General signed tensor collar, constant-tensor cancellation, finite scale-jump/moving-frame operations, conditional coasting refund. Later recruited-label estimates are not invoked. |
| DRF | DRF.1–27, LF34–317 directly reread | Exact full-field to two-recent-parent complement, both orderings, original lag/floor/record custody, absolute restricted refunds derived by Cauchy. Downstream DRF selector inference is not presumed to balance \(\nabla V\). |
| JC source-backed composition | JC3–5 and JC20–21 in supporting joint verification, LF50–76 and LF215–255 | Actual full typed response, fixed original smooth-gate scope, ramp/cap formula and retained finite costs; joined here by BW39–46. |

The BRP recruited-label branch and PLF branch are separate parallel executions; this report does not assert coverage of their complete proofs. No missing definition was required for the operations executed here, and no filesystem blocker occurred. No universal exhaustion of the NS source collection is claimed.

The exact verified end of this branch is BW45. The axial orientation has been eliminated from the full-field first-jet current, including nonbalanced strain transitions. Spatial cofactor boundary, whole finite-chord covariance and Fourier exterior remain one signed object, and the lawful mixed insertion retains its full complement. The actual axial time supplier BW9, its full spatial recombination BW15, and the moving gate BW30–35 reproduce this object with their complete endpoints and source terms. They establish these equalities on every admissible strict prefix. They supply no separate datum-uniform terminal upper for the full right side of BW45, and they do not assert small cap-crossing, response, inherited-parent or selector-variation costs.

This conclusion is limited to the actual operations and quantifiers above. It is neither a generic regularity argument nor an assertion that an unseen later dependency fails. A future uniform signed bound for BW27 would directly pay the original full record; no such bound is manufactured from the identity \(\mathcal J_{\rm WB}^\zeta=\mathcal P_{1/2}^{\rm core}\).

The BWS frame, Piola/cofactor, axial supplier, transition coefficients and assumptions were independently checked against the same unchanged original by a second mathematical reader. It is a preservation check, not a mathematical validity certificate.
