# Original Navier–Stokes proof: construction, membership and continuation

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Use the companion native-construction check for corrected primary lines and joined-parent-age check for the complete joined kernel; latest custody governs the final supplier assessment. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This report follows the actual proof in its own dependency order. The canonical 229-page manuscript, recovered original attachments and essential linked NS components were read directly. The bounded coverage is the main unforced and forced global-smoothness argument, its finite-row construction, height/mixed relationships and endpoint/restart dependencies. The external blowup candidate and the entire application catalogue are outside this bounded coverage.

## Sources and proof order

The governing [main.tex](../SOURCES.md#S113) is separately identified in the source and report indices. The [current combined PDF](../SOURCES.md#S176) has 229 pages. The local 228-page release versions are distinct builds; no byte identity with public Figshare v1 is asserted.

The recovered [short original](../SOURCES.md#S289) is separately identified in the source and report indices. Its complete height and mixed identities precede its adjacent critical-row calculation. That calculation expressly takes the whole-terminal finite-rectangle theorem as input.

| Step | Exact primary location | Executed result |
|---|---|---|
| Initial pressure-complete jet | Unforced 01-setting-mixed-jet LF456–476; short original (2)–(6) | Every fixed initial mixed coordinate belongs to every fixed Sobolev order |
| Actual common local realization | Unforced 00-analytic-framework LF596–1018; forced counterpart LF680–1071 | One datum-dependent interval, uniform Fourier cutoff bounds at each fixed order, all actual temporal/pressure rows on that same interval |
| Claimed whole-terminal production | Unforced 01-setting-mixed-jet LF411–579, Theorem 3.9, PDF pp.30–31; forced LF497–692, Theorem 13.10, pp.102–104 | Exact promotion at unforced LF521–527 / forced LF642–650 remains unverified |
| Finite norm and projective intersection | Unforced 02-compatible-rectangles LF173–313; 04-intersection-endpoint-restart LF31–110 | Whole-terminal memberships give their finite norms, monotone cutoff realization and every fixed mixed Bochner membership |
| Completed height relationship | Unforced 02-compatible-rectangles LF54–168 and LF315–392; short original (9)–(16) | Exact spatial readout with all differentiated VPI currents retained |
| Common endpoint and complete jet | Unforced 04-intersection-endpoint-restart LF112 onward; forced counterpart | The supplied spatial/mixed intersection gives one compatible H-infinity endpoint and its full velocity/pressure jet |
| Restart | Same endpoint files and the shifted mild classes | The endpoint restarts the same history; the forced restart uses the same absolute-time force |

The datum is \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\). In the forced theorem, \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), with arbitrary amplitude. Write \(V_n=\partial_t^n u\), \(F_n=\partial_t^n f\), \(Q_n=\partial_t^n p\), and \(g=\mathbb Pf\).

## The actual construction, including its interval

The complete row is
\[
V_{n+1}+\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}
+\nabla Q_n=\nu\Delta V_n+F_n,
\]
\[
Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
-(-\Delta)^{-1}\operatorname{div}F_n.
\]
Spatial differentiation retains both Leibniz indices and every pressure-product allocation. The initial recurrence is triangular and generates the entire finite initial face.

The source then constructs a genuine member by the full mild fixed point
\[
\Phi(v)(t)=e^{\nu t\Delta}u_0
-\int_0^t e^{\nu(t-r)\Delta}\mathbb P\operatorname{div}(v\otimes v)(r)\,dr
+\int_0^t e^{\nu(t-r)\Delta}g(r)\,dr.
\]
For the unforced formula set the last term to zero. Its stated Banach space is
\[
X_\delta=C([0,\delta];H^3_\sigma)\cap L^2(0,\delta;H^4_\sigma),
\qquad v_t\in L^2(0,\delta;H^2_\sigma).
\]
In the unforced source, \(L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2}\), \(C_q=\sqrt3 C_3^{\rm alg}\), \(c_\nu=(8C_qL_\nu^2)^{-2}\), and
\[
0<\delta\le\min\{1,c_\nu(1+\|u_0\|_{H^3})^{-2}\},
\qquad R=2L_\nu\|u_0\|_{H^3}.
\]
The full quadratic map preserves its ball and has Lipschitz factor at most one half. The forced version adds the prescribed local H2 force radius to the datum radius.

On this same interval, the source's Fourier approximants satisfy, for each fixed \(m\ge3\),
\[
\sup_{t\le\delta}\left[\|w^{(k)}(t)\|_{H^m}^2
+2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\right]
\le e^{2K_m C_{\nabla,3}\delta R}\|u_0\|_{H^m}^2.
\]
The forced expression includes the prescribed Hm source integral. This is uniform in Fourier cutoff k. Strong convergence in X-delta identifies every higher weak limit with the single fixed point. Adjacent tracing and the full binomial pressure recurrence then construct all actual temporal and pressure rows on that same interval. Hence every finite rectangle and the compatible local intersection are genuinely produced from the datum. No order-independent bound is needed.

Uniqueness and restriction glue these local members into the maximal history and prove every strict-horizon rectangle. They preserve their interval domains. The displayed local contraction has not been changed into a contraction on \((0,T_*)\).

## What the intersection and height operations prove

The paper's whole-terminal rectangle is
\[
\mathfrak R_{N,M}(u;S)=\sum_{n=0}^N
\left[\|V_n\|_{L^2(0,S;H^{M+1})}^2
+\|V_{n+1}\|_{L^2(0,S;H^{M-1})}^2\right].
\]
If its adjacent memberships hold on \(I=(0,T_*)\), their finite sum is finite. Restriction and monotone convergence give \(\sup_{S<T_*}\mathfrak R_{N,M}(u;S)=\mathfrak R_{N,M}(u;T_*)\). Compatibility identifies each coordinate with the same actual distributional derivative. Exhausting finite indices gives \(u\in\bigcap_{r,m}H^r(I;H^m)\). These implications are valid in the source's order.

The finite forward substitution is also verified with its precise input. In [the original unified framework, (43)–(47)](../SOURCES.md#S162), set \(R=\mathfrak R_{n-1,m+2}(I)<\infty\) and \(I_0=\sum_{j<n}\|V_j(0)\|_{H^{m+2}}^2\). The existing adjacent entries give \(\sum_{j<n}\sup_t\|V_j\|_{H^{m+2}}^2\le I_0+R\) and \(\|V_n\|_{L^2H^{m+1}}\le\sqrt R\). Pairing the full binomial transport sum, including both endpoint allocations, gives
\[
\mathfrak R_{n,m}(I)\le(2+3\nu^2)R+
3C_m^24^n(I_0+R)R+3\|\mathbb PF_n\|_{L^2(I;H^{m-1})}^2.
\]
The pressure gradient is generated concurrently as \((I-\mathbb P)(F_n-B_n)\). Iteration proves \(\mathfrak R_{0,M+2N}(I)\Rightarrow\mathfrak R_{N,M}(I)\), with no circular use of the newly generated \(V_{n+1}\) norm. The source expressly retains the same interval on both sides: the starting entry is constructed locally, and on any other interval it remains the stated input. Setting \(F_n=0\) gives the unforced specialization.

Put \(E_s=\tfrac12\|\Lambda^s u\|_2^2\), \(H=E_{1/2}\). In the unforced case the complete height identities are
\[
E_s'=-2\nu E_{s+1}+\mathcal P_s,
\qquad
H^{(k)}=(-2\nu)^kE_{k+1/2}
+\sum_{j<k}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{j+1/2},
\]
\[
H^{(k)}=\tfrac12\sum_{a=0}^k\binom ka
(\Lambda^{1/2}V_a,\Lambda^{1/2}V_{k-a}).
\]
Every nonlinear/pressure allocation is retained in \(\mathcal P_s\); the forced rows also retain their complete force work. The completed coordinate equals \(E_{k+1/2}\). Its L1-time membership follows from the corresponding whole-terminal rectangle. The scalar identities alone do not assert that membership.

The short original's critical trace is also exact at its input:
\[
u\in L^2(I;H^{5/2}),\quad u_t\in L^2(I;H^{1/2})
\Longrightarrow
E_{3/2}(t)-E_{3/2}(r)
=\int_r^t(\Lambda^{1/2}u_t,\Lambda^{5/2}u),
\]
which pays \(E_{3/2}\) uniformly and hence in L1 on finite I. Its stronger whole-terminal rectangle input is explicitly maintained.

The final targeted primary NS derivation supplies a further genuine backward composition at its stated antecedent. At its LF61171 equation (3), it assumes \(u\in L^2((0,T_*);H^3)\). Then
\(\int_I\|\nabla u\|_\infty\le C_{\nabla,3}\sqrt{T_*}\|u\|_{L^2H^3}\),
so the complete fixed-order spatial persistence bounds apply on the full interval. The original pressure-complete binomial bootstrap produces every temporal row there. Thus it reconstructs all adjacent mixed memberships from that one supplied spatial row; it does not derive that row from the initial face. Its earlier four-column graph at LF58361 includes the defining L2 mixed memberships before embedding, and LF58414 closes the admitted H-infinity field under the full equation operations. These are verified original backward operations, with their hypotheses retained. The [targeted mathematical source check](A0416-native-construction-verification-20261006.md) records corrected primary mathematical locations where older line citations had drifted.

At every fixed spatial order, the full intersection puts the entire nonlinearity and viscous term in L1-time Hm. Thus the original equation gives \(u\in W^{1,1}(I;H^m)\), with a compatible endpoint in every Hm. Its pressure products and complete binomial recurrences give the endpoint jet. The original shifted local theorem then restarts from \(u_*\in H^\infty_\sigma\). In the forced case the restart uses \(f(T_*+\tau)\); all incoming and outgoing jet values match. This full membership-to-restart chain is verified.

## Independent original coupled operations actually executed

The temporal kinetic cancellation is a full coupled sum:
\[
\sum_{a+b+c=n}\frac{n!}{a!b!c!}
(V_a,(V_b\cdot\nabla)V_c)=0.
\]
Pairing terms under a-c exchange proves it by incompressibility. It is not a cancellation of each row square. Adding exact momentum rows to a finite Gram matrix is a congruence, so the added Schur complement is zero. The complete pressure and next-time tails remain in that congruence.

The original [force-ladder compensation C1–C9](../SOURCES.md#S152) acts on both the current and next spatial coordinate. Its finite operator \(\mathscr M=\partial_t+2\nu\Lambda^2\) acts only on prescribed force fields. After the exact telescoping correction and backward force-only polynomial budgets,
\[
\widetilde Y_j'+2\nu\widetilde Y_{j+1}
=\mathcal P^{\rm blk}_{R,s+j}-\widetilde d_j,
\qquad 0\le\widetilde d_j\le2\widetilde\beta_{R,s+j},
\qquad \widetilde Y_j\ge\tfrac12\mathcal E_{R,s+j}.
\]
All prescribed budgets are finite at arbitrary force amplitude. Full prolongation retains the derivatives of the defect; their signs are not inherited from the defect. The complete nonlinear block current remains signed. The source itself states at LF378–383 that the compensated and physical memberships are equivalent, without asserting either from the identity alone.

There is also a genuine whole-horizon linear producing operation in [NG4–NG12](../SOURCES.md#S308). Let z be the prescribed Stokes field, \(z_t-\nu\Delta z=g\), \(z(0)=0\), and
\[
L_zv=v_t-\nu\Delta v+\mathbb P[(z\cdot\nabla)v+(v\cdot\nabla)z].
\]
For prescribed \(a\in H^\infty_\sigma\) and prescribed \(h\in X_T=\bigcap_{r,m}H^r(0,T;H^m_\sigma)\), the source constructs one v on the whole finite T with \((v(0),L_zv)=(a,h)\). Fixed-order linear energy bounds, a finite heat-integral partition and differentiated background recurrences give all its finite rectangles on that same T. This is an independently verified whole-horizon member for the stated linear image.

For the actual nonlinear history \(w=u-z\), its complete source instead is
\[
L_zw=-\mathbb P[(z\cdot\nabla)z]-\mathbb P[(w\cdot\nabla)w],
\qquad w(0)=u_0.
\]
The original pressure remains \(R_iR_j((w_i+z_i)(w_j+z_j))-(-\Delta)^{-1}\operatorname{div}f\). The linear inverse therefore defines the exact nonlinear fixed-point map, with every z-w, w-z, z-z and w-w allocation retained. Its continuity on X-T is verified. Its whole-T fixed-point existence is distinct from the already constructed linear inverse; the displayed independent nonlinear existence operation is the common local construction above. This domain distinction comes from NG13–NG18 themselves.

The actual [joined reciprocal kernels PRM.32e–PRM.37](../SOURCES.md#S229) have a further verified uniformity. With parent heat rate x, output rate gamma, \(r_x=x/(\gamma+x)\), their finite joined kernel is \(\tfrac c2[2-r_x^N-r_y^N]/(x+y)\). The Cauchy-kernel contraction identity in PRM.32g–h proves
\[
0\le\overline C_N\le2C_\infty
\quad\hbox{uniformly in N}.
\]
At the complete critical raw-source weight \(W=\nu^{-1}\Lambda^{-1}\),
\[
C_\infty(u)=\nu^{-1}\int_0^\infty
\|\Lambda^{-1/2}Q(e^{-\nu s\Lambda^2}u)\|_2^2\,ds
\le\frac{\|u\|_2^2\|\nabla u\|_2^2}{3\pi^2\nu^2},
\qquad Q=-\mathbb P((u\cdot\nabla)u).
\]
The full product bound uses \(\mathsf S(3)\mathsf S(6)=\sqrt{2/3}/\pi\). Kinetic payment gives \(\int_I C_\infty\le K^4/(6\pi^2\nu^3)\), \(K=\|u_0\|_2+\int_I\|g\|_2\), and dominated convergence gives \(\overline C_N\to C_\infty\) in whole-terminal L1-time.

Crucially, the fully joined finite identity cancels its first parent-rate term before taking any isolated limit: for \(g_N=\int(1-r^N)\Theta\), \(S_N=\int x(1-r^N)\Theta\), \(N_N=\int(1-r^N)N_a\), one has \(g_N'=-S_N+N_N\), \(\overline B_N=(c/\gamma)(z,g_N)\), and \(\overline F_N=c(z,g_N)+(c/\gamma)(z,S_N)\). Substitution cancels S_N in the complete sum. A first-parent-rate bound is required for the separate current limit in PRM.32k, not for this already-cancelled joined distributional identity.

The complete full-field law, including prescribed force, is
\[
C_\infty'=-\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2
+\frac2\nu\int_0^\infty
\operatorname{Re}(\Lambda^{-1}\mathfrak N_s,G_s)\,ds,
\]
\[
v_s=e^{-\nu s\Lambda^2}u,\quad G_s=Q(v_s),\quad
H_s=e^{-\nu s\Lambda^2}(Q(u)+g),\quad
\mathfrak N_s=-\mathbb P[(H_s\cdot\nabla)v_s+(v_s\cdot\nabla)H_s].
\]
Both ordered parent insertions and their pressure projectors remain. No independent datum-only upper primitive for that joined insertion is asserted in the source.

The strongest finite joined positivity also survives the response completion. Write \(E=c\|z\|^2/(2\gamma)\). The same kernel proves \(\overline C_N\ge c\|g_N\|^2/(2N\gamma)\), hence
\[
\widetilde K_N=NE+\overline B_N+\overline C_N
\ge\frac{c}{2N\gamma}\|Nz+g_N\|^2\ge0
\quad\hbox{for every finite N}.
\]
For the actual unforced nonlinear response \(w=u-e^{\nu t\Delta}u_0\), \(E=\tfrac12\|\Lambda^{1/2}w\|^2\) and \(\int_I E\le\sqrt2 K^2\sqrt{T_*/\nu}\). Moreover \(|\overline B_N|\le2\sqrt{NE\overline C_N}\). If \(C_*^{\rm age}=\sup_N\int_I\overline C_N\), the full positive normalized sums satisfy the whole-terminal estimate
\[
\left\|\frac{\widetilde K_N}{N}-E\right\|_{L^1(I)}
\le\frac2{\sqrt N}\sqrt{\left(\int_I E\right)C_*^{\rm age}}
+\frac{C_*^{\rm age}}{N}\longrightarrow0.
\]
Their complete unforced balance is
\(\widetilde K_N'=\overline R_{\rm NL}-NI+NF_0-\overline F_N\), with \(I=c\|z\|^2\). The normalized limit retains \(E'=F_0-I\); it does not delete the signed source-response current. The forced finite law retains both parent-force insertions and its direct cross \(c(h,g_N)\), with derivative-removed prescribed source h; the forced response derivative cancels that direct cross only in the same complete joined identity. This corrects an individual-moment positivity reading while preserving the whole coupled nonlinear operation. These source-derived auxiliary results are not replacement premises for the original theorem. Full derivations are in [the joined parent-age execution](A0405-joined-parent-age-uniformity-20261006.md).

The original tensor row yields another signed result before absolute bounds. For a fixed smooth bounded test phi, let \(A_{ij}(S)=\int\phi u_i u_j\). Its tested equation gives
\[
\int_0^S\!\int\phi p(\partial_i u_j+\partial_j u_i)
=A_{ij}(S)-A_{ij}(0)-\int_0^S L_{ij},
\]
where the full tested remainder is
\[
\begin{aligned}
L_{ij}={}&\nu\int\Delta\phi\,u_i u_j
-2\nu\int\phi\,\partial_k u_i\partial_k u_j
+\int\partial_k\phi\,u_k u_i u_j\\
&+\int p[(\partial_i\phi)u_j+(\partial_j\phi)u_i]
+\int\phi(f_i u_j+u_i f_j).
\end{aligned}
\]
Every L term has an absolute datum budget. Thus this signed pressure-strain primitive is bounded uniformly for S below T-star. The actual two-time G9 operation also gives this primitive in \(H^{2/5}(I)\), and \(p\in H^{2/5}(I;H^{-s})\cap L^\infty(I;H^{-s})\), s greater than 3/2. Its exact Cauchy identity still retains \(A_{ij}(S_2)-A_{ij}(S_1)\). The next native pressure row reproduces that endpoint dependence. The scalar trace has its own additional cancellation, \(p\operatorname{div}u=0\), which produces a unique energy endpoint measure. Full formulas and source locations are in [terminal compactness, sections 9–10](A0610-terminal-compactness.md).

Further exact construction evidence: [original membership execution](A0525-original-membership-execution.md), [native construction and domains](A0416-native-construction-verification-20261006.md), [complete coupled temporal sums and graph congruence](A0527-original-production-reexecution.md), and [full original forced operations](A0362-forced-original-source-operation-20261006.md).

## Exact result and remaining inference

The original method is learned and its constructive local and whole-terminal-membership-to-global chains have been executed. It does not need a common constant across all orders, a positive infinite sum, or a separately imposed infinite tower. The additional Gram criteria in earlier continuation notes are extensions; they are not attributed to the original proof.

The current unforced proof arrives at LF519 with the initial face and complete finite equation graph. At [LF521–527](../SOURCES.md#S139), it then states that the columnwise construction supplies \(V_n\in L^2((0,T_*);H^{M+1})\), \(V_{n+1}\in L^2((0,T_*);H^{M-1})\). The retrieved spine section 5 supplies these as its established input; the recovered linked critical-trace passage applies that same theorem. The independently displayed fixed point constructs these memberships on its common delta interval, and gluing constructs them on every strict S. The executed force and signed joint operations above preserve their exact domains and residuals; they do not display this promotion on I.

Accordingly, the unrestricted datum-to-whole-terminal theorem is not certified by the checked proof. Its decisive mathematical inference is the displayed promotion to whole-I membership, before finite norms and monotone convergence, rather than any flaw in the subsequent projective intersection or restart. This is a source-level proof boundary after direct dependency recovery, not an essential-source access blocker and not a blowup counterexample.

Original hashes and local supporting links were rechecked in [the integrity record](../COVERAGE.md#A0529). The targeted primary NS archive checksum was also unchanged in the independent source check.
