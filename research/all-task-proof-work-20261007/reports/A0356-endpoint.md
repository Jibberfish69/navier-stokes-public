# Navier–Stokes source audit: endpoint and restart consumer

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Keep the whole-terminal input explicit; this is the consumer, not datum production. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only verification, 2026-10-06. This report concerns the current local combined source at the indexed mathematical source witness. Its title in `main.tex:66–70` is **Global Smoothness for the Three-Dimensional Incompressible Navier–Stokes Equations, with a Refutation of OpenAI's Finite-Time Blowup Claim**. `main.tex:50` defines `\HsSigma` as $H^\infty_\sigma$. No source was changed, copied, or built. No PDF/public-version equivalence is asserted by this audit.

**Result:** the mathematical consumer chain from whole-terminal finite rectangle membership (or the whole-terminal complete spatial column) through common endpoint, complete pressure jet, local restart, and maximal-time contradiction is verified at the actual source's scope. The upstream production of those whole-terminal memberships is a separate, indispensable input and is **not certified here**. The global theorems are consequently verified here as consequences of that input, not as independently established unconditional theorems.

## Scope and exact input

Fix $\nu>0$, $u_0\in H^\infty_\sigma(\mathbb R^3)$, one maximal pressure-complete classical history on $[0,T_*)$, and suppose $0<T_*<\infty$. The forced source prescribes $f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))$. This is smooth time-dependent Schwartz forcing, without a global-in-time norm bound; it is not a theorem here about all nondecaying spatially smooth forces.

The history definition supplies all velocity and pressure derivatives on every strict compact subinterval, but alone does not assert terminal integrability. See unforced `01-setting-mixed-jet.tex:53–86` (`u:def:formal-maximal-history`) and forced `01-setting-mixed-jet.tex:59–88` (`f:def:formal-maximal-history`).

The consumed upstream assertion is, for each finite $N,M\ge0$, on the **same entire interval** $I=(0,T_*)$,

\[
 V_n\in L^2(I;H^{M+1}_\sigma),\qquad
 V_{n+1}=\partial_tV_n\in L^2(I;H^{M-1}_\sigma),\qquad 0\le n\le N,
\]

with every row the actual derivative of this same history. The exact scalar is

\[
 \mathfrak R^*_{N,M}
 =\sum_{n=0}^N\bigl(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\bigr)<\infty.
\]

Its source locations are unforced `02-compatible-rectangles.tex:175–223` and forced `01-setting-mixed-jet.tex:729–773`. It equals the increasing cutoff supremum by monotone convergence once the whole-interval membership has been obtained. Compatibility identifies coordinates but does not itself establish this finiteness. No bound uniform in $N,M$ is consumed below.

## Verified dependency map

| Transition | Unforced source | Forced source | Verification |
|---|---|---|---|
| Exact normalized pressure and differentiated equation | `01:4–50`, `01:111–157` | `01:4–56`, `01:116–164` | Checked Fourier signs, harmonic uniqueness, all binomial allocations, and the force potential |
| Complete spatial column to full mixed membership | `01:624–714`, `u:prop:spatial-column-reconstruction` | `02:508–570`, `f:prop:forced-spatial-column-reconstruction` | Checked on $I=(0,T_*)$, independently of order-uniform bounds |
| Finite blocks to $H^r_tH^m_x$ membership | `04:32–110` | `04:30–112` | Checked as a finite derivative-sum argument, conditional on the supplied blocks |
| Common spatial endpoint | `04:112–158` | `04:114–161` | Checked $W^{1,1}$ producer and compatibility under embeddings |
| Adjacent-row continuous traces | framework `00:330–374`, endpoint `04:213–349` | framework `00:342–386`, endpoint `04:219–354` | Checked cutoff identity, uniform trace bound, common endpoint and linear time modulus |
| Complete normalized endpoint pressure jet | `04:351–464` | `04:356–491` | Checked products, spatial indices, force-potential continuity, recurrence limit and triangular uniqueness |
| $H^3$ local restart and high-order persistence | framework `00:596–1018` | framework `00:608–1071` | Checked contraction, full-class uniqueness, cutoff-uniform bounds at every fixed spatial order, and temporal recurrence |
| Same history across terminal time | `04:466–619` | `04:493–552` | Checked unforced positive overlap; forced source glues matching jets with the same absolute-time force |
| Maximality contradiction and global consumer | `04:631–733` | `04:493–657` | Checked conditional on upstream membership; pressure decay, stated uniqueness class and energy consequences checked |

Here `00`, `01`, `02`, and `04` abbreviate the named files within their respective `parts/unforced/` or `parts/forced/` folder; they are source line numbers, not PDF pages.

Direct source links: [unforced reconstruction](../SOURCES.md#S139), [forced reconstruction](../SOURCES.md#S118), [unforced endpoint and restart](../SOURCES.md#S143), [forced endpoint and restart](../SOURCES.md#S121), [unforced local theory](../SOURCES.md#S136), [forced local theory](../SOURCES.md#S114).

## Checked derivations

### 1. The complete spatial column is enough for endpoint reconstruction

Assume $u\in\bigcap_m L^2(I;H^m_\sigma)$. The exact projected equation is

\[
 u_t=\nu\Delta u-\mathbb P\nabla\!\cdot(u\otimes u)+\mathbb P f,
\]

with the force term absent in the unforced part. Sobolev multiplication and boundedness of $\mathbb P$ give, for each fixed $m$,

\[
 \|u_t\|_{L^1(I;H^m)}
 \le\nu\sqrt{T_*}\|u\|_{L^2(I;H^{m+2})}
 +C_m\|u\|_{L^2(I;H^{m+2})}^2
 +\|\mathbb P f\|_{L^1(I;H^m)}<\infty.
\]

The nonlinear estimate uses the product $u\otimes u$ in $H^{m+1}$, then one spatial derivative. Since $u$ itself is in $L^1H^m$ by finite $T_*$, the Banach-valued fundamental theorem gives $u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)$. Continuous representatives at different orders coincide under $H^k\hookrightarrow H^m$, because they coincide throughout the interior. Thus one distribution $u_*$ belongs to every $H^m_\sigma$.

The exact recurrences are

\[
 Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}-\Phi_n,
 \qquad \Phi_n=(-\Delta)^{-1}\nabla\!\cdot F_n,
\]
\[
 V_{n+1}=\nu\Delta V_n-
 \sum_{a=0}^n\binom na(V_a\!\cdot\nabla)V_{n-a}
 -\nabla Q_n+F_n,\qquad F_n=\partial_t^nf.
\]

Set $F_n=\Phi_n=0$ for the unforced part. If $V_0,\ldots,V_n$ are continuous in every finite spatial Sobolev order, sufficiently high spatial orders make these right sides continuous in any prescribed $H^m$. On the interior they equal the actual source-defined derivatives. The identity

\[
 V_n(t)-V_n(s)=\int_s^tV_{n+1}(r)\,dr
\]

extends to the endpoints and identifies the continuous extensions with one-sided derivatives. Induction yields all $V_n,Q_n\in C([0,T_*];H^m)$, and finite $T_*$ gives the finite derivative-sum norms of $H^r(I;H^m)$. Each induction step uses finitely many orders; no bound uniform over all $r,m$ is needed.

### 2. Adjacent rows give a common endpoint with a fixed terminal bound

For $v\in L^2(I;H^{m+1})$, $v_t\in L^2(I;H^{m-1})$, $A=(1-\Delta)^{1/2}$, the source identity is

\[
 \frac{d}{dt}\|v(t)\|_{H^m}^2
 =2\operatorname{Re}\langle A^{m-1}v_t,A^{m+1}v\rangle_{L^2}.
\]

Fourier restriction makes this a Banach differentiable identity; applying it to cutoff differences and starting at one common Lebesgue time gives a Cauchy sequence in $C([0,T_*];H^m)$. Passing to the limit proves the trace and

\[
 \sup_t\|v(t)\|_{H^m}^2
 \le T_*^{-1}\|v\|_{L^2H^m}^2
 +2\|v\|_{L^2H^{m+1}}\|v_t\|_{L^2H^{m-1}}.
\]

Apply it to $V_n$, with $0\le n\le N$. The inequality $2ab\le a^2+b^2$ and the exact nonnegative sum defining $\mathfrak R^*$ give

\[
 \sup_t\|V_n(t)\|_{H^m}
 \le\mathfrak E_{N,m}:=(1+T_*^{-1})^{1/2}(\mathfrak R^*_{N,m})^{1/2}.
\]

Spatial derivatives use the same argument at order $m+|\alpha|$, with no missing spatial index. The bound for a fixed rectangle stays fixed as $t\uparrow T_*$. All endpoint values agree under Sobolev embeddings and spatial differentiation. Applying the fundamental identity to the next continuous row gives

\[
 \|V_n(t)-V_n^*\|_{H^m}
 \le(T_*-t)\mathfrak E_{n+1,m}.
\]

Monotonicity in $N$ follows from the exact nonnegative row sums. This also justifies the use of $\mathfrak E_{n+1,m}$ to bound every lower row in subsequent product estimates.

### 3. Pressure, including its low-frequency force part, has the same endpoint

The force-potential multiplier is $i\xi\cdot\widehat F_n/|\xi|^2$. The source estimate

\[
 \|(-\Delta)^{-1}\nabla\!\cdot h\|_{H^s}
 \le C_s^{\rm fp}(\|h\|_{L^1}+\|h\|_{H^s})
\]

is justified in forced framework `00:284–320`: on $|\xi|\le1$, the $L^1$ bound controls $\widehat h$ and the squared singularity $|\xi|^{-2}$ is integrable in three dimensions; on $|\xi|>1$, the multiplier has magnitude at most one. Smooth Schwartz time derivatives thus give $\Phi_n\in C^\infty_tH^s$, $\partial_t\Phi_n=\Phi_{n+1}$, and finite suprema on $[0,T_*]$.

The endpoint formula is exactly

\[
 Q_n^*=R_iR_j\sum_{a=0}^n\binom naV_{a,i}^*V_{n-a,j}^*-\Phi_n(T_*).
\]

Subtract each product by inserting $V_a^*V_{n-a}(t)$, use the velocity modulus, then sum $\sum_a\binom na=2^n$. The source's conservative constants give

\[
 \|Q_n^*\|_{H^s}\le9C_s^{\rm alg}2^n\mathfrak E_{n,s+1}^2+\|\Phi_n(T_*)\|_{H^s},
\]
\[
 \|Q_n(t)-Q_n^*\|_{H^s}
 \le9C_s^{\rm alg}2^{n+1}(T_*-t)\mathfrak E_{n+1,s+1}^2
 +(T_*-t)\sup_{[0,T_*]}\|\Phi_{n+1}\|_{H^s}.
\]

Both force-potential terms vanish in the unforced part. Differentiating spatially selects $s=m+|\alpha|$, retaining $\partial_x^\alpha\Phi_n$ exactly.

For the velocity recurrence in $H^q$, take velocity traces in $H^{q+2}$, pressure traces in $H^{q+1}$, and force traces in $H^q$. The transport expression is $\nabla\!\cdot(V_{n-a}\otimes V_a)$; products in $H^{q+1}$ converge from $H^{q+2}$ factors, then divergence maps to $H^q$. This carries every nonlinear allocation, diffusion, pressure gradient and force row to the terminal recurrence. Its triangular structure fixes $Q_0^*,V_1^*,Q_1^*,\ldots$ from $u_*$ and the prescribed force jet. It proves uniqueness of the displayed endpoint recurrence jet. The pressure fundamental identity with continuous $Q_n,Q_{n+1}$ then proves $p\in C^a([0,T_*];H^m)$ for every finite $a,m$.

### 4. The local restart theorem supplies the required continuation

The source defines the pressure-normalized mild class with $w\in C H^3_\sigma$, $q\in C H^3$, its exact pressure formula, and

\[
 w(t)=e^{\nu(t-s)\Delta}a+
 \int_s^te^{\nu(t-r)\Delta}\mathbb P f(r)\,dr-
 \int_s^te^{\nu(t-r)\Delta}\mathbb P\nabla\!\cdot(w\otimes w)(r)\,dr.
\]

The source's linear estimate in $X_\delta=C H^3\cap L^2H^4$, with $w_t\in L^2H^2$, is

\[
 \|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2}),\qquad
 L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2}.
\]

The energy and multiplier derivation is in unforced `00:699–788`; the forced version is identical after namespace normalization. The nonlinear estimate is $\|\mathbb P\nabla\!\cdot(v\otimes z)\|_{H^2}\le C_q\|v\|_{H^3}\|z\|_{H^3}$, $C_q=\sqrt3C_3^{\rm alg}$. The radius $2L_\nu B$, with $B=\|a\|_{H^3}$ unforced and $B=\|a\|_{H^3}+\Gamma_s$ forced, yields contraction at most $B/[2(1+B)]\le1/2$ when

\[
 0<\delta\le\min\{1,c_\nu(1+B)^{-2}\},\qquad
 c_\nu=(8C_qL_\nu^2)^{-2},\quad
 \Gamma_s=\|\mathbb P f\|_{L^2(s,s+1;H^2)}.
\]

The affine forcing is fixed throughout the contraction and cancels in the uniqueness difference. A finite short-interval partition proves uniqueness in the full $C H^3$ mild class, not just in the contraction ball.

Higher-order persistence uses Fourier cutoffs with a uniform $H^3$ bound on this same $\delta$, and the source's integer commutator

\[
 |\operatorname{Re}\langle A^m\mathbb P\nabla\!\cdot(v\otimes v),A^mv\rangle|
 \le K_m\|\nabla v\|_\infty\|v\|_{H^m}^2.
\]

Its proof was checked at unforced `00:376–588` (the forced copy is identical): ordered-tensor integration by parts gives $X_j^2\le A_MX_{j-1}X_{j+1}$, the discrete maximum principle gives the stated interpolation exponents, divergence-free transport cancels, and multinomial summation supplies finite $K_m$. Since $H^3$ controls $\nabla v$ in $L^\infty$, Gronwall gives cutoff-uniform $H^m$ and $L^2H^{m+1}$ bounds for each fixed $m$; the force contribution is retained as $\|\mathbb P f\|_{L^2H^m}^2$. The cutoff fixed points converge to the already constructed $H^3$ fixed point, so weak compactness at order $m$ plus the adjacent trace lemma gives $C H^m$. The cutoff-comparison Lipschitz estimate uses only the radius bound; different initial affine traces do not invalidate it. The full differentiated recurrences then supply every temporal derivative. Bounds depend on $m$, but the interval does not shrink with $m$.

### 5. Restart uses the original history and force

Unforced `04:466–526` defines $\delta_0=\min\{1,c_\nu(1+\mathfrak E_{0,3})^{-2}\}>0$. A restart from any sufficiently late $t_0$ and one from $T_*$ both have lifespan at least $\delta_0$. Shifted mild uniqueness identifies the late restart with the incoming history on $[t_0,T_*)$, and then with the endpoint restart on the positive right overlap $[T_*,t_0+\delta_0]$. This proves the joined pair is one local history across the endpoint.

Forced `04:505–552` instead directly matches all one-sided jets. Local theory starts at the absolute time $s=T_*$, with the finite $\Gamma_{T_*}$. Its force is $f(T_*+r)$ in translated coordinates, not a new force with its clock reset. The restarted pressure and momentum recurrences use precisely $F_n(T_*)$ and $\Phi_n(T_*)$; triangular induction gives $W_n^+=V_n^*$, $P_n^+=Q_n^*$. Equality of all one-sided derivatives in every finite Sobolev order gives a smooth joined pair; Sobolev embedding gives joint spacetime smoothness. The exact equation and normalized pressure hold at the joining time by the terminal recurrences. Smooth gluing is sufficient for the forced maximality contradiction even though that part does not duplicate the unforced late-slice overlap lemma.

The classical history definition requires all finite derivatives on strict compact intervals. The joined pair has that property and agrees with the original pair everywhere before $T_*$, so it violates the actual definition of finite maximality. The supremum/union construction of a maximal history in each global theorem is valid because local existence makes the lifetime set nonempty and mild uniqueness identifies its members on every common strict interval.

Pressure at every time lies in every $H^s$. Taking $s>3/2$ makes its Fourier transform integrable, so Fourier inversion/Riemann–Lebesgue gives its continuous representative in $C_0(\mathbb R^3)$ and the stated spatial pressure normalization. The kinetic-energy identities at unforced `02:14–46` and forced `02:13–60` follow by Sobolev-justified integration by parts, with the forced work $\int\langle f,u\rangle$ retained. The forced regularized square-root estimate gives the stated bound on every finite time interval, not a uniform bound on $[0,\infty)$.

## Coverage boundary

No invalid inference was found in the checked downstream endpoint/restart chain, under the explicit whole-terminal inputs above. This audit does not establish the upstream datum-generated finite-block membership theorem, the critical-height exhaustion producer, or any refutation-specific supplier. It does not infer full proof validity from source compatibility or from the existence of the normalized jet. Those independent producers must be verified at their own source equations before the unconditional global conclusion is endorsed.

## Source identity and preservation evidence

SHA-256 hashes before and after reading matched for the six primary files; the remaining dependencies were hashed after acquisition. All reads concerned only the Navier–Stokes source package. No changes were made to originals.

| Source | Bytes | SHA-256 |
|---|---:|---|
| `main.tex` | 6,783 | `ff2066c823d18fde2cd761bbf1922858a80b00ce005c59096cd9f806cc0af9bb` |
| unforced `00-analytic-framework.tex` | 29,754 | `fe61c1940e5124a63eb953ea71538359675a05d0c40987b468481835c66738e1` |
| unforced `01-setting-mixed-jet.tex` | 27,407 | `dbd0c274c40b2ab9737ccc6faf7bd2ce29f1ac0d69085266cfafd89db9b1f914` |
| unforced `02-compatible-rectangles.tex` | 17,075 | `2e1c8e40a0e9fa1b2d50ac6db5680a7259404344d83258e7ff2968386fda8e66` |
| unforced `04-intersection-endpoint-restart.tex` | 27,665 | `05e31cbf3b1ff10062e46147b7079d7221744f45a6690d0be52ec3d8c8ab7845` |
| forced `00-analytic-framework.tex` | 31,562 | `fcceff8e43f1661b9d1472959188ed9968c91847eda94685d0193d8f7b645de7` |
| forced `01-setting-mixed-jet.tex` | 28,726 | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` |
| forced `02-compatible-rectangles.tex` | 25,859 | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` |
| forced `04-intersection-endpoint-restart.tex` | 26,178 | `bea4ee21c0207e2e859dac220283addac59af25e2aa069f1065da86412799fb3` |
