# Coupled causal Gramian and material-metric producer attempt

**Reviewed scope and currentness.** Extends [Actual Navier–Stokes operator metric: independent derivation](A0424-operator-metric-validation.md); weighted parent [A datum-paid weighted first rectangle of the actual mixed history](A0452-weighted-native-first-rectangle.md) and later zero-clock analysis refine gauge question. No assigned result removes full-space coercivity requirement. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


New mathematical calculation, 6 October 2026. The target is the original unweighted adjacent rectangle \(\mathfrak R_{0,1}\) of the actual history. This calculation retains its first temporal row, all three first spatial rows, full pressure, viscosity and prescribed forcing. It introduces no alternative fluid or independent source history.

There is a substantive new cancellation: a **nonlocal positive terminal metric** cancels intrinsic stretching, the material metric's diffusion remainder and its weighted pressure port simultaneously. Its reverse evolution is positive on the actual \(\mathbb R^3\) domain, and its complete forced energy identity yields an explicit unweighted finite-prefix rectangle bound. The bound still contains the actual-history metric condition number, presently bounded by \(\exp(4\int\|\operatorname{Sym}\nabla u\|_\infty)\). The kinetic identity pays a weaker, precisely quantified material-path strain action; the calculation below does not promote that action into uniform coercivity.

The [source-before record](../COVERAGE.md#A0420) captures three primary witnesses: [UPG](../SOURCES.md#S244), ; [current contraction/material metric](../SOURCES.md#S156), ; and [native assembly kinetic budget](../SOURCES.md#S152), . Mathematical reads here are UPG.1–21 LF23–304, material equations41–45/49–52 LF697–752/803–884, and assembly L5–L6 LF740–786. Source status paragraphs and diagnostic test families supply no mathematical evidence.

The complete independent check, including the bounded positive-evolution construction and cutoff passage, is [operator-metric validation](A0424-operator-metric-validation.md). The derivations below distinguish primary identities from the new operator compensation.

## 1. Actual first temporal and spatial rows

**CA1 (primary rows, explicit full operator).** Fix a strict classical interval \([a,b]\subset[0,T_*)\), \(b<\infty\), in \(\mathbb R^3\). Use
\(\mathscr H=L^2_\sigma\), \(A=-\Delta\), \(D_j=\partial_j\), and

\[
L_uh=\mathbb P[(u\cdot\nabla)h+(h\cdot\nabla)u],
\qquad B_u=\nu A+L_u.
\]

The same operator governs all four actual rows

\[
Y=(v,a_1,a_2,a_3)=(u_t,\partial_1u,\partial_2u,\partial_3u),
\quad
Y_t+B_uY=g=(G_1,D_1G_0,D_2G_0,D_3G_0),
\tag{CA1}
\]

where \(G_r=\mathbb P\partial_t^rf\). Before projection the temporal row is
\(D_tv+(\nabla u)v+\nabla p_t=\nu\Delta v+f_t\), and the spatial row is
\(D_ta_j+(\nabla u)a_j+\partial_j\nabla p=\nu\Delta a_j+\partial_jf\).
Neither receiving interaction is omitted. Each row's pressure gradient is exactly \((I-\mathbb P)(g^{\rm raw}_h-(u\cdot\nabla)h-(h\cdot\nabla)u)\). Thus CA1 incorporates, rather than neglects, all pressure terms from primary equations41/50.

At \(a=0\), every initial row is datum-generated:

\[
Y(0)=\left(\nu\Delta u_0-\mathbb P[(u_0\cdot\nabla)u_0]+G_0(0),\nabla u_0\right).
\]

Full ordered transport and the source potential still determine scalar pressure as in the original recurrence. The force is arbitrary in amplitude within the admitted smooth finite-horizon class.

**CA2.** Global integration by parts gives the exact adjoint

\[
L_u^*k=\mathbb P[-(u\cdot\nabla)k+(\nabla u)^Tk],
\qquad L_u+L_u^*=2\mathbb P S_u\mathbb P,
\quad S_u=\operatorname{Sym}\nabla u.
\tag{CA2}
\]

This uses the actual divergence-free advecting field and both Leray projections. It identifies precisely which part of the complete linearization is not skew-adjoint.

## 2. What the original multiplication metric cancels

**CA3 (primary equations42–45/51–52).** Along actual particle paths, \(D_tM=M\nabla u\), \(M(a)=I\), gives \(H^{\rm mat}=M^TM>0\), \(\det H^{\rm mat}=1\). Its positive bundle energy has the exact identity

\[
(E^{\rm mat})'+\nu\sum_{h,j}\int(D_jh)^TH^{\rm mat}D_jh
=\frac\nu2\sum_h\int h^T\Delta H^{\rm mat}h
+\int\left(p_t\operatorname{div}(H^{\rm mat}v)
+\sum_j\partial_jp\operatorname{div}(H^{\rm mat}a_j)\right)
+\sum_h\int h^TH^{\rm mat}g_h^{\rm raw}.
\tag{CA3}
\]

Intrinsic stretching cancels exactly, for both temporal and spatial rows. The diffusion, pressure and force ports remain. In particular, weighted pressure cannot be declared zero because \(H^{\rm mat}h\) is not generally solenoidal. Temporal source integration by parts retains \((H^{\rm mat})_t f_t\); spatial source integration retains \(D_jH^{\rm mat}\,D_jf\). A prescribed-matrix force budget does not pay those history-dependent derivatives.

The source's suggestion \(D_tH+\nu\Delta H=(\nabla u)^TH+H\nabla u\) cancels the local diffusion remainder algebraically, but it has inverse diffusion direction as a forward initial-value metric. It also retains the projected-pressure port. These observations motivate using the **full projected operator** instead of only a multiplication matrix.

## 3. The complete causal Gram and forcing extension

**CA4 (primary UPG.1–19, new forced extension).** UPG keeps both physical parents \(F=u\otimes u\), with \(\mathcal A_u h=-\mathbb P[(u\cdot\nabla)h]\) skew-adjoint, and insertion \(\mathscr C(a\otimes b)=-\mathbb P[(a\cdot\nabla)b]\). Its unforced tensor equation is exact. With force the exact additional terms are

\[
F_t=(\mathcal A_u\otimes I+I\otimes\mathcal A_u-\nu\mathscr D)F
+G_0\otimes u+u\otimes G_0,
\qquad\mathscr D=A\otimes I+I\otimes A.
\]

For \(w=u-e^{-\nu tA}u_0\), \(w_t+\nu Aw=\mathscr CF+G_0\). The augmented actual state \((w,F,u,1)\) is therefore a homogeneous block system with coefficient

\[
\begin{pmatrix}
-\nu A&\mathscr C&0&G_0\\
0&\mathcal A_u\otimes I+I\otimes\mathcal A_u-\nu\mathscr D&\mathscr K_{G_0}&0\\
0&0&\mathcal A_u-\nu A&G_0\\
0&0&0&0
\end{pmatrix},\qquad
\mathscr K_{G_0}h=G_0\otimes h+h\otimes G_0.
\]

Both ordered source insertions are present. The rank-one tensor is always the same actual \(u\otimes u\). This block linearity after fixing the history does not change how its coefficients are generated.

These tensor equations are used on their smooth physical graph. No bounded ambient parent-collapse operator norm for \(\mathscr C\) is assumed.

For CA1's actual homogeneous propagator \(U(t,s)\), a prescribed positive output \(C^*C\) gives the exact terminal Gram

\[
O_b(t)=U(b,t)^*O_b(b)U(b,t)
+\int_t^bU(r,t)^*C^*CU(r,t)\,dr,
\]

with \(O_t=B_u^*O+OB_u-C^*C\). Along the forced rows,

\[
\langle Y(b),O_b(b)Y(b)\rangle+\int_a^b\|CY\|^2
=\langle Y(a),O_b(a)Y(a)\rangle
+2\operatorname{Re}\int_a^b\langle O_bY,g\rangle.
\]

All future incidence and force work is inside this exact form. For the causal initial prescription of the same law, its endpoint lower bound and the integrated observation action are related by the same identity. Positivity of a future Gram alone is not a datum value estimate. The derivative order of \(C\) must stay fixed; UPG's critical response observation is not silently identified with the CA1 adjacent-row observation.

## 4. New simultaneous positive compensation

**CA5 (new operator metric).** Instead of a fixed-output Gram or a multiplication matrix, impose the same nonlocal metric on every row:

\[
(H_b)_t=B_u^*H_b+H_bB_u
-2\nu\sum_jD_j^*H_bD_j,
\qquad H_b(b)=I.
\tag{CA5}
\]

Its diffusion part is exactly
\(\nu(AH_b+H_bA)-2\nu\sum_jD_j^*H_bD_j=-\nu\sum_j[D_j,[D_j,H_b]]\).
For a multiplication matrix it equals \(-\nu\Delta H_b\). Including the full \(L_u\) in CA5 incorporates the missing weighted-pressure cancellation as well.

Direct substitution, before any absolute estimate, proves

\[
E_b'+\nu\mathcal D_b=\operatorname{Re}\langle H_bY,g\rangle,
\quad
E_b=\tfrac12\sum_h\langle h,H_bh\rangle,
\quad
\mathcal D_b=\sum_{h,j}\langle D_jh,H_bD_jh\rangle.
\tag{CA6}
\]

This cancels all intrinsic stretching, diffusion-metric and pressure ports in CA3. They have been built into one operator compensation, not individually discarded.

**CA6 (positivity on the original domain).** On the actual \(\mathbb R^3\) Hilbert space use \(\Pi_R=1_{|\xi|\le R}\). Its range is infinite dimensional; it is not a periodic or different fluid. On that range \(A_R,D_{j,R},L_R=\Pi_RL_u\Pi_R\) are bounded and \(A_R=\sum_jD_{j,R}^*D_{j,R}\). Reverse time gives

\[
K'=G^*K+KG+\sum_jJ_j^*KJ_j,
\quad G=-\nu A_R-L_R,\quad J_j=\sqrt{2\nu}D_{j,R}.
\]

Congruence evolution for \(G^*K+KG\), with repeated positive insertions \(J_j^*KJ_j\), proves a convergent positive Dyson expansion for these bounded operators. Thus the terminal identity produces a positive metric. The generator on \(I\) is exactly
\(-2\Pi_R\mathbb P S_u\mathbb P\Pi_R\); the full diffusion generator annihilates \(I\). Positive comparison yields

\[
e^{-2\int_t^b\|S_u(r)\|_\infty dr}I
\preceq H_{b,R}(t)
\preceq e^{2\int_t^b\|S_u(r)\|_\infty dr}I.
\tag{CA7}
\]

The actual cutoff row has the complete defect
\(\delta_{R,h}=-\Pi_RL_u(1-\Pi_R)h\) in addition to \(\Pi_Rg_h\). It is retained in CA6's source and tends to zero in \(C([a,b];L^2)\) because the strict history is smooth, with \(L_u:H^1\to L^2\) uniformly bounded there. The comparison constants are independent of \(R\). Hence the bounds below pass to the original rows. A weak-operator extraction on smooth test pairs also supplies CA5 in quadratic-form distributions on each strict interval. No passage to a possibly singular terminal endpoint is assumed in this construction.

## 5. Full force payment and unweighted native rectangle

**CA7.** Set \(J_{a,b}=\int_a^b\|S_u(t)\|_\infty dt\), \(m=e^{-2J_{a,b}}\), \(M=e^{2J_{a,b}}\), and
\(F=\|g\|_{L^1(a,b;\mathscr H^4)}\). The complete source pairing is bounded in the positive metric by \(\sqrt{2E_b}\sqrt M\|g\|\). With \(x=\sqrt{2E_b}\), CA6 gives
\(x(t)\le x(a)+\sqrt M\int_a^t\|g\|\), and therefore

\[
\int_a^b\operatorname{Re}\langle H_bY,g\rangle
\le\sqrt M\,x(a)F+\tfrac12MF^2.
\]

The factor \(1/2\) is the integral of the accumulated source against its derivative. Retaining the positive terminal energy gives

\[
\sup_{[a,b]}\|Y\|_2^2\le e^{4J_{a,b}}B_0^2,
\qquad
\int_a^b\|\nabla Y\|_2^2\le\frac{e^{4J_{a,b}}}{2\nu}B_0^2,
\quad B_0=\|Y(a)\|_2+F.
\tag{CA8}
\]

At \(a=0\), \(B_0\) uses only the generated initial rows and prescribed \(G_1,\nabla G_0\) norms. Source amplitude is unrestricted. Integrating force by parts instead would retain \((H_b)_tG_1\), \(H_bG_2\) and \([D_j,H_b]D_jG_0\); CA8 pays the complete original source without dropping those history-dependent terms.

With the Bessel norm and the known kinetic roof \(K\),

\[
\boxed{\mathfrak R_{0,1}(a,b)
\le(b-a)K^2+
\left(2(b-a)+\frac1{2\nu}\right)e^{4J_{a,b}}B_0^2.}
\tag{CA9}
\]

Indeed \(\|u\|_{H^2}^2=\|u\|_2^2+2\|\nabla u\|_2^2+\|\Delta u\|_2^2\), and \(\sum_{j,k}\|D_ka_j\|^2=\|\Delta u\|^2\). This obtains the requested unweighted adjacent rectangle from the simultaneously compensated original rows, rather than from an unrelated downstream quantity.

## 6. What the actual kinetic/material action pays

**CA8 (new quantified consequence of primary L5).** In the actual volume-preserving flow \(X(t,\alpha)\), let
\(\ell_{a,b}(\alpha)=\int_a^b\|S_u(t,X(t,\alpha))\|_{\rm op}dt\).
The local multiplication metric in CA3 has eigenvalues between \(e^{-2\ell_{a,t}(\alpha)}\) and \(e^{2\ell_{a,t}(\alpha)}\). Kinetic dissipation pays the square of this path action:

\[
\int_{\mathbb R^3}\ell_{a,b}(\alpha)^2d\alpha
\le(b-a)\int_a^b\|S_u(t)\|_2^2dt
=\frac{b-a}{2}\int_a^b\|\nabla u(t)\|_2^2dt
\le\frac{(b-a)K^2}{4\nu}.
\tag{CA10}
\]

The equality uses the integrated incompressibility identity \(\int|\operatorname{Sym}\nabla u|^2=\frac12\int|\nabla u|^2\), with actual spatial decay. Volume preservation and Cauchy–Schwarz justify the preceding inequality. Thus
\(|\{\alpha:\ell_{a,b}>\lambda\}|\le(b-a)K^2/(4\nu\lambda^2)\).
This is an actual-history, datum-paid material action, not a simulated scalar profile.

It gives local metric coercivity on the specified good particle set, while CA3 still retains its full pressure/diffusion ports. It gives no uniform eigenfloor over all particles by itself. The new CA5 metric is nonlocal, so CA10 is not a pointwise coercivity statement for that operator. Removing particles or clipping eigenvalues would add selector/interface terms; none is silently discarded here. No small-cost estimate for the actual derivative rows on the complementary set has been proved by CA10.

The force budget in this paragraph is exactly the admitted kinetic one, \(K=\|u_0\|_2+\|G_0\|_{L^1(0,b;L^2)}\); assembly L5 supplies \(2\nu\int\|\nabla u\|^2\le K^2\). Thus CA10 really extends uniformly to a finite maximal horizon for the nonnegative paid action. It does not replace CA9's presently available \(J_{0,b}\) by that weaker action.

## 7. Test against the newly paid weighted complete action

This section composes with the **new mathematical derivation**, [weighted native first rectangle](A0452-weighted-native-first-rectangle.md), (A8)/(A11). It is not attributed to an original theorem. The inspected input version is recorded in [weighted-parent-input-before.json](../COVERAGE.md#A0425). Distinguish its scalar stocks from the four-row bundle:

\[
Y_s=\|\nabla u\|_2^2,\quad Z_s=\|\Delta u\|_2^2,\quad
z=(A_0+Y_s)^{-1},\quad A_0>0,
\]

\[
q_-=\|u_t\|_2^2+\tfrac12\nu^2Z_s+\|\nabla p\|_2^2,
\qquad \int_Iz^2q_-\le C_W.
\tag{CA11}
\]

The full pressure action is part of this paid input. Direct differentiation of the actual history gives \(z'=2z^2\operatorname{Re}\langle\Delta u,u_t\rangle\). The joint action, rather than separate roofs for its summands, proves the sharper bound
\(\operatorname{Var}_I z\le\sqrt2C_W/\nu\).

**CA9 (exact normalization test).** The normalized actual bundle \(\widehat Y=zY\) satisfies

\[
\widehat Y_t+\left(B_u-\frac{z'}zI\right)\widehat Y=zg.
\]

Its terminal-I positive metric is exactly

\[
\widehat H_b(t)=\left(\frac{z(b)}{z(t)}\right)^2H_b(t).
\tag{CA12}
\]

Substituting proves every term in its compensated identity: its energy, viscous action and full source pairing are **\(z(b)^2\) times the corresponding original CA6 term**. Thus the positive metric's gauge correction cancels the variable normalization; it does not convert the already paid time-variable \(z(t)^2q_-\) into an unweighted operator floor. BV payment of \(z\) pays \(\int|z'|\); the normalized drift retains \(z'/z\). On the referenced positive terminal-limit branch, the supplied lower bound for \(z\) pays that logarithmic term and the unweighted action. On its zero-limit branch, this calculation supplies no such division bound. No artificial history is used for this assertion.

**CA10 (datum-paid fixed-band coercivity).** The positive evolution does yield a useful stronger bound at each fixed spatial band without \(\int\|S_u\|_\infty\). For band-limited solenoidal \(h_R\), unitary Fourier Cauchy–Schwarz gives

\[
\|h_R\|_\infty\le\frac{R^{3/2}}{\sqrt6\pi}\|h_R\|_2,
\qquad
\|h_R\|_4^2\le\frac{R^{3/2}}{\sqrt6\pi}\|h_R\|_2^2.
\]

Using \(\|S_u\|_2^2=Y_s/2\) in the full symmetric operator therefore gives

\[
\|\Pi_R\mathbb P S_u\mathbb P\Pi_R\|_{\mathscr H\to\mathscr H}
\le\frac{R^{3/2}\sqrt{Y_s}}{\sqrt{12}\pi},
\quad
J_R:=\int_a^b\|\Pi_R\mathbb P S_u\mathbb P\Pi_R\|
\le\frac{R^{3/2}K\sqrt{b-a}}{\sqrt{24}\pi\sqrt\nu}.
\tag{CA13}
\]

Replacing \(J_{a,b}\) by \(J_R\) in the positive scalar comparison proves \(e^{-2J_R}I\preceq H_{b,R}\preceq e^{2J_R}I\), uniformly as the strict terminal cutoff approaches a finite horizon **for each fixed \(R\)**. This is a concrete kinetic payment of the retained band's metric coercivity. Its constants grow with \(R\); no uniform full-space comparison follows from CA13.

The actual cutoff defect is still present. In its native weighted topology it has the explicit bound

\[
\|\delta_{R,h}\|_2
\le\frac{2R^{5/2}K}{\sqrt{10}\pi}\|(1-\Pi_R)h\|_2,
\]

\[
\int_Iz^2\|\delta_{R,Y}\|_2^2
\le\frac{2R^5K^2}{5\pi^2}
\int_Iz^2\|(1-\Pi_R)Y\|_2^2
\le\frac{2R^5K^2}{5\pi^2}
\left(C_W+\frac{K^2}{2\nu A_0^2}\right).
\tag{CA14}
\]

Indeed \(L_uh=\mathbb P\operatorname{div}(u\otimes h+h\otimes u)\) for each solenoidal row, and \(\|\Pi_R\mathbb P\operatorname{div}T\|_2\le R^{5/2}\|T\|_1/(\sqrt{10}\pi)\). This preserves both ordered parents and the pressure completion. The weighted bundle lies in \(L^2(I,z^2dt;\mathscr H^4)\), since its temporal part is paid by CA11 and its spatial parts obey \(\int z^2Y_s\le K^2/(2\nu A_0^2)\). Consequently its **unmultiplied** weighted high-frequency tail tends to zero. CA14's increasing \(R^5\) factor supplies no decay rate that makes the defect vanish uniformly on the whole terminal interval. The strict-prefix defect passage in CA6 remains valid independently; no unweighted whole-terminal passage is inserted here.

The weighted complete action also pays a genuine high-strain tail:

\[
\int_Iz^2\|P_{>R}S_u\|_2^2
\le\frac1{2R^2}\int_Iz^2Z_s
\le\frac{C_W}{\nu^2R^2}.
\tag{CA15}
\]

This is a weighted spatial \(L^2\) tail, whereas the normalized metric's actual drift still contains \(S_u\), not \(zS_u\). Even the exact clock change \(ds=dt/z\), with normalized velocity \(zu\), retains the comparison action \(\int\|S_u\|_\infty dt\); its viscosity becomes \(\nu z\). Thus neither normalization nor positive evolution has silently upgraded CA15 to uniform operator coercivity. The full pressure and source graphs are held throughout these transformations.

## 8. Exact outcome and causal orientation

The combined operator construction genuinely improves the original multiplication-metric attempt: it has positive terminal data, retains both complete ordered nonlinear parents in the shared linearization, cancels all three original ports, pays the full arbitrary smooth forcing, and provides CA9 for the actual unweighted \(\mathfrak R_{0,1}\) on every strict prefix. The positivity construction and the original-domain cutoff defect have been checked independently.

The metrics form a terminal-indexed family \(H_b\), defined through the actual future coefficients on \([a,b]\). They are not a datum-computable common causal metric merely because each reverse evolution is positive. Forward initial prescription reverses the positive generator direction. The full-space prefix estimate has the actual metric ratio \(M/m=e^{4J_{a,b}}\). The calculation derives no datum-only bound for that ratio uniformly as \(b\uparrow T_*<\infty\). It does derive datum-paid **fixed-band** coercivity, the complete weighted cutoff-defect bound and the weighted high-strain tail in CA13–15. The exact gauge identity CA12 explains why the supplied weighted complete action is not already an unweighted metric payment on its zero-limit branch. The paid material-path action remains exactly CA10.

Accordingly this bounded attempt establishes a new complete cancellation and a concrete prefix rectangle bound, but not an unconditional whole-terminal datum bound. It makes no claim that another original producer is absent and uses no assumed whole-terminal rectangle or new downstream criterion. The precise next mathematical work for this particular operation is payment of its actual terminal-family coercivity or of its actual signed energy identity without that uniform ratio; neither payment is asserted here.
