# How the constituent endpoint argument closes the history

**Reviewed scope and currentness.** No supersession demonstrated; long forced late-slice lemma is version-specific. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a reconstruction of the endpoint, restart and global-closure chapters from the original mathematical sources. Its starting input is the papers' whole-terminal finite-coordinate theorem. The producer of that input is identified explicitly below; this report proves the consumer chain from its stated input and does not replace that producer with a different regularity criterion. All time intervals, pressure terms and prescribed force jets are retained.

## 1. The objects being continued

Fix a viscosity \(\nu>0\) and a divergence-free initial velocity \(u_0\in H^\infty_\sigma(\mathbb R^3)\), where
\[
H^\infty=\bigcap_{m\ge0}H^m,\qquad
\|a\|_{H^m}^2=\int(1+|\xi|^2)^m|\widehat a(\xi)|^2\,d\xi.
\tag{ET1}
\]
The forced paper additionally fixes one prescribed \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\). It permits arbitrary such force, including a gradient part. In the unforced paper set \(f=0\).

A pressure-complete classical history is one pair \((u,p)\) on \([0,T_*)\). On every strict interval \([0,S]\), \(S<T_*\), all finite time derivatives of both fields are continuous in every finite Sobolev space. The pair satisfies
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u+f,
\qquad \nabla\cdot u=0.
\tag{ET2}
\]
Pressure is the canonical Sobolev-normalized field
\[
p=R_iR_j(u_i u_j)-\Phi_0,
\quad \Phi_n=(-\Delta)^{-1}\nabla\cdot F_n,
\quad F_n=\partial_t^n f.
\tag{ET3}
\]
Repeated indices in the Riesz formula run from 1 to 3. A harmonic difference between two admissible pressures is zero: its \(L^2\) Fourier transform is supported at \(\xi=0\), a set of measure zero. Thus pressure is part of the specified history, with no freely adjustable endpoint constant.

The actual temporal and mixed coordinates of this pair are
\[
V_n=\partial_t^n u,\quad Q_n=\partial_t^n p,
\quad J_{n,\alpha}=\partial_x^\alpha V_n,
\quad \Pi_{n,\alpha}=\partial_x^\alpha Q_n.
\tag{ET4}
\]
They are derivatives of this history, rather than additional independent solution variables. A maximal history means that no history with the same \((u_0,\nu,f)\), agreeing with the old pair, extends it past \(T_*\).

Sources: combined unforced [setting, LF4 and LF53](../SOURCES.md#S139); combined forced [setting, LF4–149](../SOURCES.md#S117). Here and below a linked starting LF plus the stated range identifies the complete source passage.

## 2. The finite coordinates have one whole time domain

Under the proposed finite-maximal-time assumption, put \(I=(0,T_*)\). For every **fixed finite** \(N,M\), the upstream theorem supplies the actual rectangle
\[
\mathcal R_{N,M}
=\big((V_n)_{n\le N},(V_{n+1})_{n\le N};
       (Q_n)_{n\le N};(F_n)_{n\le N}\big).
\tag{ET5}
\]
Delete the last entries in the unforced case. Its velocity norms satisfy
\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}),\qquad 0\le n\le N,
\tag{ET6}
\]
with negative order \(H^{-1}\) allowed when \(M=0\). Its pressure coordinates are \(Q_n\in L^1(I;H^M)\) and \(\nabla Q_n\in L^1(I;H^{M-1})\). The prescribed force coordinates are smooth on \([0,T_*]\) in every finite Sobolev space.

Writing
\[
\rho_{N,M}(S)=\sum_{n=0}^N
\left(\|V_n\|_{L^2(0,S;H^{M+1})}^2
+\|V_{n+1}\|_{L^2(0,S;H^{M-1})}^2\right),
\tag{ET7}
\]
the exact terminal input is
\[
\sup_{0<S<T_*}\rho_{N,M}(S)=\rho_{N,M}(T_*)
\le\mathfrak R_{N,M}^*<\infty
\quad\text{for every fixed }N,M.
\tag{ET8}
\]
Thus the constant for a chosen coordinate applies before the upper cutoff \(S\) is varied. It may depend on the chosen orders. No constant shared by infinitely many orders is asserted or used. The assertion that each strict-window norm is finite, by itself, has a different quantifier from ET8.

Compatibility means that lowering \(N\) deletes rows and lowering \(M\) applies Sobolev embeddings to the same distributions. Consequently every finite projection of the intersection returns exactly the corresponding rectangle. It does not require extracting a new solution for each rectangle or making a separate terminal choice for each order.

The combined source states the whole-terminal producer in unforced [01, LF411–454](../SOURCES.md#S139) and forced [01, LF497–557](../SOURCES.md#S117); literal compatibility is unforced [02, LF458–501](../SOURCES.md#S140) and forced [02, LF658–702](../SOURCES.md#S118).

The reader-visible 80-page unforced PDF states this producer as Theorem 3.9, printed p29, invoking its reference [3, §5, TIR.11a-pre–TIR.11a]. The 81-page forced PDF states it as Theorem 4.10, printed pp24–25, invoking [3, §6, N11a–N11d]. Those references are the published input provenance. The endpoint proofs below use the finite-coordinate output, and the present coverage does not independently prove those cited producer passages.

## 3. Exhaustion means collecting derivatives already present

Fix \(r,m\). Choose the rectangle with \(N=r,M=m\). It includes each \(V_n\), \(n\le r\), in \(L^2(I;H^{m+1})\), hence in \(L^2(I;H^m)\). Since these rows are the distributional derivatives of \(u\),
\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2
\le\mathfrak R_{r,m}^*.
\tag{ET9}
\]
Doing this for each finite pair gives the full mixed intersection on the **same** \(I\). It is an all-orders smoothness statement, with coordinate-dependent bounds, and does not assert a convergent Taylor series.

The second description in the papers uses the completed-height rows on those same coordinates. Its spatial heights are
\[
R_k(t)=\tfrac12\|\Lambda^{k+1/2}u(t)\|_2^2,
\qquad\Lambda=(-\Delta)^{1/2},
\tag{ET10}
\]
with \(R_k\in L^1(I)\). Low Fourier frequencies are supplied by the kinetic bound; high frequencies are supplied by \(R_k\). Explicitly, with \(K=\|u_0\|_2\) in the unforced case and \(K=\|u_0\|_2+\int_0^{T_*}\|\mathbb P f\|_2\) in the forced case,
\[
\|u\|_{L^2(I;H^m)}^2
\le 2^m\left(T_*K^2+2\|R_m\|_{L^1(I)}\right).
\tag{ET11}
\]
Here \(\Lambda\) is homogeneous; the trace operator below is \(A=(1-\Delta)^{1/2}\), and the two have distinct purposes.

The resulting complete spatial column reconstructs the time rows through the full equation. For any finite \(m\), its diffusion term is \(L^1(I;H^m)\) because \(u\in L^2(I;H^{m+2})\) and \(T_*<\infty\); the quadratic term is \(L^1\) by the Sobolev product estimate; and \(\mathbb P f\) is \(L^1\). Thus \(u\in W^{1,1}(I;H^m)\). After continuity is obtained, differentiating the complete equation inductively reconstructs each higher time row, including the force and canonical pressure rows. This is a second recovery of the same history, rather than an independent choice of intersection.

Sources: unforced [01, LF584–714](../SOURCES.md#S139), [02, LF149–168](../SOURCES.md#S140); forced [02, LF508–570](../SOURCES.md#S118). The endpoint mixed-exhaustion statements are unforced [04, LF32–110](../SOURCES.md#S143) and forced [04, LF30–112](../SOURCES.md#S121).

## 4. Why there is one strong endpoint

First the complete spatial column and ET2 imply \(u,u_t\in L^1(I;H^m)\) for every finite \(m\). The Banach-valued fundamental theorem gives a continuous representative on \([0,T_*]\). For \(k\ge m\), embedding the \(H^k\)-continuous representative into \(H^m\) gives the same incoming distribution, so it equals the \(H^m\)-continuous representative everywhere, including \(T_*\). Therefore
\[
u_*:=u(T_*)\in H^\infty_\sigma
\tag{ET12}
\]
is one field. Divergence passes to the limit by continuity of \(\nabla\cdot:H^{m+1}\to H^m\).

Sources: unforced [04, LF112–158](../SOURCES.md#S143), forced [04, LF114–161](../SOURCES.md#S121).

The sharper adjacent-row theorem supplies all time-row traces. If
\(v\in L^2(0,T;H^{m+1})\), \(v_t\in L^2(0,T;H^{m-1})\), then
\[
\frac{d}{dt}\|v\|_{H^m}^2
=2\operatorname{Re}(A^{m-1}v_t,A^{m+1}v)_{L^2},
\quad A=(1-\Delta)^{1/2}.
\tag{ET13}
\]
The proof uses finite Fourier cutoffs for the absolutely continuous identity. For the difference of two cutoffs, choose an interior Lebesgue time and use Cauchy–Schwarz on the right. The initial Fourier tail and the two full-interval tails tend to zero; hence the cutoff representatives are Cauchy in \(C([0,T];H^m)\). Their limit represents \(v\), proves strong continuity, and satisfies
\[
\sup_{[0,T]}\|v\|_{H^m}^2
\le T^{-1}\|v\|_{L^2H^m}^2
+2\|v_t\|_{L^2H^{m-1}}\|v\|_{L^2H^{m+1}}.
\tag{ET14}
\]
This is the source's actual trace argument. It uses whole-interval adjacent norms.

Apply ET14 to each \(V_n\) in ET6. Set
\[
\mathfrak E_{N,m}=(1+T_*^{-1})^{1/2}(\mathfrak R_{N,m}^*)^{1/2}.
\tag{ET15}
\]
Then \(V_n\in C([0,T_*];H^m_\sigma)\) with supremum at most \(\mathfrak E_{N,m}\), and \(J_{n,\alpha}\in C([0,T_*];H^m)\) with supremum at most \(\mathfrak E_{N,m+|\alpha|}\). The same-representative argument gives compatible values
\[
V_n^*=\lim_{t\uparrow T_*}V_n(t),\qquad
J_{n,\alpha}^*=\partial_x^\alpha V_n^*.
\tag{ET16}
\]
Since \(\partial_tV_n=V_{n+1}\),
\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(r)\,dr,
\qquad
\|V_n(t)-V_n^*\|_{H^m}
\le(T_*-t)\mathfrak E_{n+1,m}.
\tag{ET17}
\]
The integral is in \(H^m\). This also proves \(u\in\bigcap_{a,m}C^a([0,T_*];H^m_\sigma)\), with left endpoint derivatives \(\partial_t^a u(T_*)=V_a^*\). Spatial derivatives of ET17 use the shift \(m\mapsto m+|\alpha|\).

Sources: unforced [analytic framework, LF330–374](../SOURCES.md#S136); unforced [04, LF214–349](../SOURCES.md#S143), forced [04, LF220–354](../SOURCES.md#S121).

## 5. The full pressure jet and the equation at the endpoint

The prescribed force potentials genuinely belong to the Sobolev spaces used here. At low frequency their Fourier multiplier has magnitude at most \(|\xi|^{-1}\); \(\|\widehat F_n\|_\infty\le(2\pi)^{-3/2}\|F_n\|_1\), and \(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi<\infty\) in three dimensions. At high frequency the multiplier is bounded by one. Consequently
\[
\|\Phi_n\|_{H^s}\le C_s\big(\|F_n\|_1+\|F_n\|_{H^s}\big),
\qquad \partial_t\Phi_n=\Phi_{n+1}.
\tag{ET18}
\]
All finite force-potential orders are therefore smooth across the proposed endpoint. Source: forced [analytic framework, LF284–320](../SOURCES.md#S114).

The pressure and velocity endpoint rows are
\[
Q_n^*=R_iR_j\sum_{a=0}^n\binom naV_{a,i}^*V_{n-a,j}^* -\Phi_n(T_*),
\tag{ET19}
\]
\[
V_{n+1}^*=\nu\Delta V_n^*
-\sum_{a=0}^n\binom na(V_a^*\cdot\nabla)V_{n-a}^*
-\nabla Q_n^*+F_n(T_*).
\tag{ET20}
\]
The unforced rows set both force terms to zero. Every binomial term is kept.

The product estimate and nine Riesz-product components give
\[
\|Q_n^*\|_{H^s}\le9C_s^{\rm alg}2^n\mathfrak E_{n,s+1}^2
+\|\Phi_n(T_*)\|_{H^s},
\tag{ET21}
\]
\[
\begin{aligned}
\|Q_n(t)-Q_n^*\|_{H^s}
\le{}&9C_s^{\rm alg}2^{n+1}(T_*-t)\mathfrak E_{n+1,s+1}^2\\
&+(T_*-t)\sup_{0\le r\le T_*}\|\Phi_{n+1}(r)\|_{H^s}.
\end{aligned}
\tag{ET22}
\]
For the nonlinear difference insert \(V_a^*V_{n-a}(t)\) into each product; its two differences are controlled by ET17, and the binomial sum is \(2^n\). For the force difference integrate \(\Phi_{n+1}\). The mixed pressure trace is \(\Pi_{n,\alpha}^*=\partial_x^\alpha Q_n^*\), using spatial order \(s=m+|\alpha|\), with the exact term \(\partial_x^\alpha\Phi_n(T_*)\).

To pass the velocity equation to the endpoint in \(H^q\), use velocity convergence in \(H^{q+2}\) for diffusion and every transport product, pressure convergence in \(H^{q+1}\) for its gradient, and prescribed-force convergence in \(H^q\). This proves ET20 in every finite \(H^q\).

The row \(V_0^*=u_*\), together with the prescribed \(F_n(T_*)\), fixes the entire normalized jet: ET19 fixes \(Q_0^*\), ET20 fixes \(V_1^*\), and induction fixes \(Q_n^*,V_{n+1}^*\). Uniqueness here is within this canonical recurrence class. Finally \(\partial_t Q_n=Q_{n+1}\) on the incoming interval and both are continuous through the endpoint, so their Banach integral identity extends to \(T_*\). Hence \(p\in\bigcap_{a,m}C^a([0,T_*];H^m)\), with \(\partial_t^a p(T_*)=Q_a^*\).

Sources: unforced [04, LF351–464](../SOURCES.md#S143), forced [04, LF356–491](../SOURCES.md#S121).

## 6. Restart uses one lifespan for all finite orders

The shifted mild class on \([s,b]\), with datum \(a\), consists of \(w\in C([s,b];H^3_\sigma)\) and canonical \(q\in C([s,b];H^3)\), satisfying
\[
w(t)=e^{\nu(t-s)\Delta}a
+\int_s^t e^{\nu(t-r)\Delta}\mathbb P f(r)\,dr
-\int_s^t e^{\nu(t-r)\Delta}\mathbb P\nabla\cdot(w\otimes w)(r)\,dr.
\tag{ET23}
\]
The force is evaluated at its original absolute time \(r\). Using a new coordinate \(\tau=t-s\) changes it to \(f(s+\tau)\), with jet \(F_n(s)\) at \(\tau=0\).

The source defines
\[
C_q=\sqrt3C_3^{\rm alg},\quad
L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\quad
c_\nu=(8C_qL_\nu^2)^{-2},
\tag{ET24}
\]
and
\[
\Gamma_s=\|\mathbb P f\|_{L^2(s,s+1;H^2)},\qquad
\delta=\min\{1,c_\nu(1+\|a\|_{H^3}+\Gamma_s)^{-2}\}>0.
\tag{ET25}
\]
In the unforced case \(\Gamma_s=0\). The local theorem supplies a unique pair on \([s,s+\delta]\), with \(w\in CH^3_\sigma\cap L^2H^4\), \(w_t\in L^2H^2\). If \(a\in H^\infty_\sigma\), every finite velocity and pressure time derivative is in every finite continuous Sobolev space on this **same** interval.

Its fixed point uses radius \(2L_\nu(\|a\|_{H^3}+\Gamma_s)\); ET25 makes the quadratic map contractive. Higher-order persistence then uses the already constructed \(H^3\) solution and its integrated Lipschitz norm, not a new contraction at a shrinking lifespan for each order. For each finite \(m\), the cutoff energy inequality and Gronwall provide a finite \(H^m\) bound with its own constant and prescribed force norms; the limit is identified with the same \(H^3\) fixed point. The adjacent trace argument and the complete equation then give the higher time and pressure rows on the same \(\delta\).

Uniqueness holds on every common finite mild-class interval, by subdivision until the quadratic difference coefficient is less than one. The force cancels in the difference because both members use the same prescribed force; canonical pressure then agrees too. Smooth strict-window histories belong to this mild class by variation of constants, as does any shifted restriction.

Sources: unforced [analytic framework, LF596–1018](../SOURCES.md#S136), forced [analytic framework, LF608–1071](../SOURCES.md#S114). The fixed constants and lifespan are unforced LF662–695 and forced LF680–717.

## 7. Left and right jets match, so the original pair extends

Apply the local theorem at \(s=T_*\), \(a=u_*\). The endpoint \(H^3\) norm is finite by ET15, and the force budget \(\Gamma_{T_*}\) is finite because the prescribed force is smooth on the finite interval \([T_*,T_*+1]\). This gives a right-hand pair \((w^*,q^*)\) for a positive duration, using the same \(\nu\) and the original \(f(t)\).

Let \(W_n^+=\partial_t^n w^*(T_*)\), \(P_n^+=\partial_t^n q^*(T_*)\). Differentiating its equation yields precisely ET19–20 with \(V_n^*,Q_n^*\) replaced by \(W_n^+,P_n^+\), and with the same \(F_n(T_*)\), \(\Phi_n(T_*)\). Since \(W_0^+=u_*=V_0^*\), recurrence uniqueness gives
\[
W_n^+=V_n^*,\qquad P_n^+=Q_n^*,\qquad n\ge0.
\tag{ET26}
\]
Every one-sided time derivative therefore agrees in every finite Sobolev space. Spatial derivatives agree by the compatible embeddings and derivative maps. Gluing the incoming and outgoing pairs gives one smooth pressure-complete solution through \(T_*\); ET20 gives the equation at the joining time itself.

The unforced chapter also prints an explicit late-slice overlap. Put
\(\delta_0=\min\{1,c_\nu(1+\mathfrak E_{0,3})^{-2}\}\), choose
\(\max\{0,T_*-\delta_0/2\}<t_0<T_*\), and restart from \(u(t_0)\). Its lifespan is at least \(\delta_0\). On each common incoming interval it agrees with \(u\) by mild uniqueness; at \(T_*\) it has value \(u_*\); on the right it agrees with \(w^*\) by the same uniqueness. Thus the joined pair is also witnessed by a single solution through the joining time on \([t_0,T_*+\delta_0/2]\). The combined forced chapter proves continuation directly by the all-jet matching argument rather than printing this separate late-slice lemma.

Sources: unforced [04, LF466–619](../SOURCES.md#S143); forced [04, LF493–552](../SOURCES.md#S121).

## 8. Maximality turns continuation into the global conclusion

To construct the maximal object, take the set of finite times up to which a pressure-complete history generated by the fixed datum exists. It is nonempty by the local theorem. Mild uniqueness makes any two such histories equal on their overlap, so their union is one history on \([0,T_*)\), where \(T_*\) is the supremum of those times. Higher persistence makes every strict restriction pressure-complete in all finite orders.

If \(T_*<\infty\), the papers' whole-terminal producer supplies ET8. ET9–26 then construct a history agreeing with the incoming pair and extending it to a time strictly larger than \(T_*\). That contradicts the definition of the supremum/maximal history. This is the endpoint consumer's exact global implication:
\[
\text{whole-terminal actual finite-coordinate input}
\Longrightarrow\text{one compatible full endpoint jet}
\Longrightarrow\text{same-datum/source restart}
\Longrightarrow T_*=\infty.
\tag{ET27}
\]
On every finite interval all velocity and pressure derivatives are continuous in every finite Sobolev space, hence the pair is smooth in space and time. The normalized pressure tends to zero at spatial infinity: sufficiently high Sobolev regularity makes its Fourier transform integrable, and the inverse Fourier transform belongs to \(C_0\).

The energy identity is
\[
\tfrac12\|u(t)\|_2^2+\nu\int_0^t\|\nabla u\|_2^2
=\tfrac12\|u_0\|_2^2+\int_0^t(f,u)_{L^2}\,dr.
\tag{ET28}
\]
It gives a uniform-in-time kinetic bound when \(f=0\). For arbitrary prescribed force it gives \(\|u(t)\|_2\le\|u_0\|_2+\int_0^t\|\mathbb P f\|_2\), a finite bound on each finite time interval. The endpoint chapter's uniqueness conclusion is uniqueness in its normalized \(H^3\) mild class; broader weak–strong applications are separate source passages.

Sources: unforced [04, LF631–733](../SOURCES.md#S143), forced [04, LF570–657](../SOURCES.md#S121).

## 9. Reader-visible constituent locations and version custody

The actual PDF endpoint text was read independently of the current local manuscript witnesses. The 80-page unforced candidate has , MD5 `5b91296901b8110725354813083139d5`, 2,321,401 bytes. Its original [PDF](../SOURCES.md#S080) is represented by the mechanical [text extraction](../COVERAGE.md#A0287). The endpoint consumer is Section 5:

| Operation | Printed location | Extraction LF |
|---|---|---|
| Inverse-limit object and finite-coordinate output | Definition 5.1; Theorem 5.2, pp37–38 | 2141–2214 |
| Common spatial endpoint and full mixed intersection | Proposition 5.3; Corollary 5.4, p39 | 2218–2261 |
| Adjacent Sobolev traces | Theorem 5.5, pp40–41 | 2265–2345 |
| Pressure-complete jet | Theorem 5.6, pp41–42 | 2347–2427 |
| Late-slice overlap; same-history restart | Lemma 5.7; Theorem 5.8, pp42–43 | 2429–2526 |
| Maximality contradiction; global theorem | Corollary 5.9; Theorem 5.10, pp43–44 | 2534–2590 |

The 81-page forced candidate has , MD5 `27ab1408ef3af2515691fca8a478e915`, 1,684,210 bytes. Its original [PDF](../SOURCES.md#S100) is represented by the mechanical [text extraction](../COVERAGE.md#A0182). The recovered RC archive has byte-identical PDF; its [endpoint source](../COVERAGE.md#A0211) is separately identified in the source and report indices. The reader-visible chain is Section 6:

| Operation | Printed location | Extraction LF |
|---|---|---|
| Inverse-limit object and finite-coordinate output | Definition 6.1; Theorem 6.2, pp35–36 | 2140–2218 |
| Common spatial endpoint and full mixed intersection | Proposition 6.3; Corollary 6.4, pp36–37 | 2220–2280 |
| Adjacent Sobolev traces | Theorem 6.5, pp38–39 | 2286–2371 |
| Pressure-complete jet including prescribed source | Theorem 6.6, pp39–40 | 2373–2477 |
| Same-forced-history continuation | Theorem 6.7, pp40–41 | 2479–2516 |
| Global existence | Theorem 6.8, pp41–42 | 2526–2584 |

The published-text formulations name a datum intersection \(\mathcal I[u_0]\) or \(\mathcal I[u_0,f]\) represented in a compatible inverse-limit space, and project it to the actual finite rectangles. The combined current chapters express the same endpoint consumer directly through the compatible actual coordinate family and its critical-height recovery. The trace, pressure recurrence and jet-gluing mechanisms above were checked in both PDF texts; the upstream provenance differs and has been kept explicit.

The `navier-stokes-public` current local unforced/forced sources in the checked source index are separate witnesses. Their endpoint lengths are 685/798 physical LF, whereas the combined chapters are 733/657 LF and the recovered forced RC archive chapter is 668 LF. In particular the current local forced witness prints a late-slice lemma that the 81-page forced text and combined forced chapter do not separately print. Those current-local files have not been equated with the requested DOI versions merely from titles or directories. Official article/version byte attribution is a separate metadata confirmation; the mathematical comparison here is tied to the explicit hashes above.

## 10. Coverage and preservation

Direct coverage includes the combined endpoint chapters in full; the actual whole-terminal finite-coordinate statements and compatibility; mixed exhaustion and spatial-column reconstruction; pressure normalization and force-potential low frequencies; the full shifted local fixed point, same-lifespan higher persistence and uniqueness; and the two PDF endpoint consumer chains through their global theorems. The published producer citations have been identified as inputs rather than replaced by an alternative proof. This report supplies a teachable complete derivation of ET8 → ET27, with source scope preserved.

Fresh before snapshots are [combined/current sources](../COVERAGE.md#A0144), [forced archive/PDF comparison inputs](../COVERAGE.md#A0142), [unforced extracted PDF text](../COVERAGE.md#A0146), and [unforced PDF bytes](../COVERAGE.md#A0145).
