# Executed datum-to-local-rectangles and continuation composition

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Square feedback and negative-trace limits concern the tested bounds; they do not reject other original operations. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


2026-10-06. This record executes the local producing operations and overlap iteration in the actual source, then attempts promotion using its kinetic, Gram and complete momentum rows. It extends reciprocal-columns.md and endpoint.md.

The governing passages are [sequential conversion F49–F57](../SOURCES.md#S154), lines 602–799, and [native assembly L1–L4, D1–D8](../SOURCES.md#S152), lines 534–737. Complete height/Gram identities are in [unified framework 24–32](../SOURCES.md#S162). Auxiliary weighted estimates below are explicitly identified as an independent calculation, not substituted for the original construction.

**Checked outcome:** the datum directly generates one unique, pressure-complete history, all finite rectangles and their mixed intersection on a common local interval. Overlap iteration produces their compatible union on the entire maximal classical interval and pays every finite norm on every strict compact part of that interval. The quantitative durations supplied by these local operations are not shown to cover an arbitrary finite horizon. The attempted promotion below identifies the precise remaining norm and signed Gram interactions, while also deriving useful whole-interval terminal information from the datum.

## 1. Initial datum really produces the initial jet

Let $\nu>0$, $u_0\in H^\infty_\sigma(\mathbb R^3)$ and prescribe $f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))$. Define $F_n=\partial_t^nf$, $G_n=\mathbb PF_n$. Starting at $A_0=u_0$, the source operation is

\[
 A_{n+1}=\nu\Delta A_n-\mathbb P
   \sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}+G_n(0).
 \tag{F49}
\]

For $q\ge3$, inputs $u_0\in H^{q+M+2N}$ and $F_j(0)\in H^{q+M+2(N-1-j)}$, $j<N$, give $A_n\in H^{q+M+2(N-n)}$, $n\le N$. Each Laplacian consumes two spatial orders, each transport product consumes one, and all products are above the spatial algebra threshold. Thus this is a finite triangular construction at each retained order; restrictions agree because they retain the same recursively determined coordinates.

Normalized pressure uses the original unprojected force:

\[
 Q_n(0)=R_iR_j\sum_{a=0}^n\binom naA_{a,i}A_{n-a,j}
                -(-\Delta)^{-1}\nabla\cdot F_n(0).
\]

These are not independent initial conditions for separate fluids. The full prescribed function $f(t)$ is kept in the evolution, beyond its initial Taylor jet.

## 2. One low-order fixed point produces all finite coordinates on the same interval

At initial time $s$ and datum $a=u(s)$, use the shifted source $f(s+r)$ in the native mild map:

\[
 \Phi(v)(t)=e^{\nu(t-s)\Delta}a
 +\int_s^te^{\nu(t-r)\Delta}\mathbb Pf(r)\,dr
 -\int_s^te^{\nu(t-r)\Delta}\mathbb P\nabla\cdot(v\otimes v)(r)\,dr .
\]

Let $X_\delta=C H^3_\sigma\cap L^2H^4_\sigma$, with $v_t\in L^2H^2_\sigma$, and

\[
 \|v\|_X=\|v\|_{C H^3}+\|v\|_{L^2H^4}+\|v_t\|_{L^2H^2}.
\]

The source's Fourier/energy calculation gives

\[
 \|z\|_X\le L_\nu(\|a\|_{H^3}+\|h\|_{L^2H^2}),\qquad
 L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2}.
\]

The complete quadratic term satisfies

\[
 \|\mathbb P\nabla\cdot(v\otimes w)\|_{L^2H^2}
 \le C_q\sqrt\delta\,\|v\|_{C H^3}\|w\|_{C H^3},
 \qquad C_q=\sqrt3\,C_3^{\rm alg}.
\]

Set

\[
 M_s=\sup_{[s,s+1]}\|\mathbb Pf\|_{H^2},\quad
 B_s=1+\|a\|_{H^3}+M_s,\quad
 R_s=2L_\nu B_s,\quad
 c_\nu=(8C_qL_\nu^2)^{-2}.
\]

For

\[
 0<\delta_s\le\min\{1,c_\nu B_s^{-2}\},
\]

the affine heat/source trajectory lies in the closed radius-$R_s$ ball with trace $a$. The nonlinear map preserves that ball and satisfies

\[
 \|\Phi(v)-\Phi(w)\|_X
 \le2L_\nu C_q\sqrt{\delta_s}R_s\|v-w\|_X
 \le\tfrac12\|v-w\|_X.
\]

This constructs the unique fixed point; it covers rest datum with nonzero force. The original pressure is reconstructed by its exact Riesz formula and force potential. The force potential is bounded at low frequency by its spatial $L^1$ norm and at high frequency by Sobolev norms, as in the earlier audits.

Higher orders use Fourier cutoffs of this same map, not independent fixed points on progressively shorter intervals. The contraction bound is uniform in cutoff. The complete differentiated transport commutator, with pressure and leading transport pairing canceled by incompressibility, yields

\[
 \sup_{t\in[s,s+\delta_s]}
 \left(\|u^{(k)}(t)\|_{H^m}^2+
 2\nu\int_s^t\|\nabla u^{(k)}\|_{H^m}^2\,dr\right)
 \le
 \left[(\|a\|_{H^m}+\|f\|_{L^1H^m})
       e^{K_m C_{\nabla,3}\delta_s R_s}\right]^2.
\]

At each fixed $m$ this is uniform in cutoff, on the same $\delta_s$. Contraction convergence identifies the higher-order weak limits with the already constructed $H^3$ solution; the adjacent-row trace supplies its $C H^m$ representative. All finite temporal rows then follow by the exact differentiated momentum recurrence and normalized pressure formula. The source force derivatives are retained separately in each finite row.

## 3. Explicit finite norm output of this constructed history

On $J_s=[s,s+\delta_s]$, let

\[
 U_m=(\|a\|_{H^m}+\|f\|_{L^1(J_s;H^m)})
                        e^{K_m C_{\nabla,3}\delta_sR_s},\qquad m\ge3.
\]

The source recurrence produces finite bounds by

\[
 A_{0,m}^{\,s}=U_m,
\]
\[
 A_{n+1,m}^{\,s}
 =\nu A_{n,m+2}^{\,s}
 +C_m\sum_{a=0}^n\binom na
         A_{a,m+1}^{\,s}A_{n-a,m+1}^{\,s}
 +\sup_{J_s}\|G_n\|_{H^m}.
\]

The product estimate is the source's full $H^{m+1}\times H^{m+1}\to H^m$ transport estimate. It proves $\sup_{J_s}\|V_n\|_{H^m}\le A_{n,m}^{\,s}$. Orders below three use Sobolev nesting. Thus each selected rectangle has the direct, finite bound

\[
 \mathfrak R_{N,M}(J_s)
 \le\delta_s\sum_{n=0}^N
 \left((A_{n,\max\{M+1,3\}}^{\,s})^2+
       (A_{n+1,\max\{M-1,3\}}^{\,s})^2\right)<\infty.
\]

Pressure bounds use the same finite velocity factors and the corresponding $F_n$. Consequently every finite mixed norm exists on $J_s$ and the constructed jet belongs to the full mixed intersection there. This implication has been executed from the datum; it is not merely an invocation of terminal membership.

## 4. Quantitative overlap iteration and its exact domain

Fix a desired finite horizon $H$ and put

\[
 M_H=\sup_{[0,H+1]}\|\mathbb Pf(t)\|_{H^2}<\infty,\qquad
 B_k=1+\|u(t_k)\|_{H^3}+M_H .
\]

As long as $t_k<H$, choose the guaranteed duration and advance half of it:

\[
 t_0=0,\qquad
 \delta_k=\min\{1,c_\nu B_k^{-2}\},\qquad
 t_{k+1}=t_k+\delta_k/2 .
\]

The source radius bound gives a unique full-pressure local solution through $t_k+\delta_k$. Its overlap with the previously constructed interval has positive length. Splitting Duhamel's formula and uniqueness in the full shifted mild class identify both velocities and their normalized pressures. The prescribed force remains $f(t)$ at absolute time throughout.

Let $\kappa_\nu=2L_\nu+1$. Then the exact available bounds imply

\[
 B_{k+1}\le1+2L_\nu B_k+M_H\le\kappa_\nu B_k,\qquad
 B_k\le\kappa_\nu^kB_0 .
\]

It follows that

\[
 \delta_k\ge
 \kappa_\nu^{-2k}\min\{1,c_\nu B_0^{-2}\}.
\]

This certifies every finite iteration. Its supplied lower bounds have finite geometric total, so they do not certify that the iteration reaches every $H$. This is a limitation of the actual duration estimates, not an example of a different fluid or a claim that the actual durations must have finite total.

Their compatible union is the unique maximal $H^3$ history. The iteration cannot accumulate strictly inside the domain of another same-datum classical continuation: on a compact neighborhood of such an accumulation, that history has bounded $H^3$ norm, the force has bounded $H^2$ norm, and the guaranteed durations have a positive lower bound. Hence the construction covers every strict compact part of the actual maximal history. Higher-order persistence and the finite-coordinate bounds above then prove F57 on each such compact part.

At a finite maximal endpoint $T_*$, maximality and the same overlap uniqueness imply, for every $s<T_*$,

\[
 \min\{1,c_\nu(1+\|u(s)\|_{H^3}+M_{T_*})^{-2}\}\le T_*-s.
\]

Otherwise the constructed restart from that late slice continues the original history beyond $T_*$. When $T_*-s<1$, the quantitative consequence is

\[
 \|u(s)\|_{H^3}\ge
 \frac{\sqrt{c_\nu}}{\sqrt{T_*-s}}-1-M_{T_*}.
\]

Thus a datum bound for this $H^3$ norm on finite horizons prevents duration accumulation. More generally, the source's own persistence estimate gives

\[
 \|u(t)\|_{H^m}
 \le(\|u_0\|_{H^m}+\|f\|_{L^1(0,t;H^m)})
       e^{K_m\int_0^t\|\nabla u\|_\infty\,dr}.
\]

A finite datum-controlled bound on that displayed integral through a proposed finite endpoint would give uniform $H^3$, prevent accumulation, and produce all fixed-order whole-interval bounds. This is a sufficient promotion in this operation. It does not introduce an order-uniform norm or declare that every proof route must use this integral.

## 5. Independent attempt to seed the reciprocal temporal tower

The actual kinetic identity, including force work, gives on the entire proposed finite interval

\[
 K_T=\|u_0\|_2+\int_0^T\|\mathbb Pf\|_2\,dt,\qquad
 \sup_{t<T}\|u(t)\|_2\le K_T,\qquad
 \int_0^T\|\nabla u\|_2^2\,dt\le D_E:=K_T^2/(2\nu).
\]

Its complete transport bound gives $u_t\in L^{4/3}_tH^{-1}_x$, and the dual derivative embedding also gives $u_t\in L^2_tH^{-3/2}_x$. These are useful positive time derivative statements in negative spatial spaces; they are not R1's $H^{N+1}_tL^2_x$ prefix.

To seek the first $L^2_x$ temporal row, square the original, unprojected equation and retain pressure:

\[
 V_1-\nu\Delta u+\nabla p=f-B,\qquad B=(u\cdot\nabla)u .
\]

Because $V_1-\nu\Delta u$ is solenoidal, the exact completion is

\[
 \nu\frac{d}{dt}\|\nabla u\|_2^2
 +\|V_1\|_2^2+\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2
 =\|f-B\|_2^2 .
\]

The pressure identity is $\nabla p=(I-\mathbb P)(f-B)$. Thus the projected equivalent has right side $\|\mathbb Pf-\mathbb PB\|_2^2$, with the original pressure norm accounted for exactly in the orthogonal completion.

The full transport bound available from the previous kinetic norms is

\[
 \|B\|_2^2\le C\|\nabla u\|_2^3\|\Delta u\|_2.
\]

Young absorption of part of the viscous square gives, on every strict $[0,S]$,

\[
 \int_0^S\|V_1\|_2^2\,dt+
 \frac{\nu^2}{2}\int_0^S\|\Delta u\|_2^2\,dt
 \le\nu\|\nabla u_0\|_2^2
 +2\int_0^S\|\mathbb Pf\|_2^2\,dt
 +C\nu^{-2}\int_0^S\|\nabla u\|_2^6\,dt .
\]

The kinetic datum bound pays $\int\|\nabla u\|_2^2$, while this actual attempt retains $\int\|\nabla u\|_2^6$. This calculation therefore does not produce a whole-interval $V_1\in L^2_x$ seed; it makes no assertion that a different signed operation cannot do so. R1 with $N=1$ would additionally need the next temporal row $V_2\in L^2(I;L^2)$. That whole-prefix hypothesis is sufficient for R1; it is not necessary for the entire source method. Section 7 checks the smaller, single-entry sufficient input.

The full Gram identity exposes that next dependence without removing it. For $C_{a,b;0}=\operatorname{Re}\langle V_a,V_b\rangle$,

\[
 E_0''=C_{1,1;0}+C_{0,2;0}.
\]

Differentiating the actual kinetic identity computes this complete signed anti-diagonal, including the differentiated force work. Positivity of the Gram matrix gives

\[
 |C_{0,2;0}|\le\sqrt{C_{0,0;0}C_{2,2;0}},
\]

which still carries the higher temporal diagonal. Thus neither the differentiated kinetic scalar nor Gram positivity alone supplies the missing temporal square at the recovered norm indices. All entries remain the actual same-history derivatives.

## 6. A stronger whole-interval datum consequence does follow

An independent exact weighted enstrophy calculation supplies a real terminal trace, rather than only a failed promotion. It is displayed in [auxiliary recovery equations F57a–F57y](../SOURCES.md#S310), and was checked here through its deriving equations.

Let $y_1=\|\nabla u\|_2^2$, $y_2=\|\Delta u\|_2^2$, and $\Psi_1=2K_T\|\Lambda^2f\|_2$. Spatial self-adjointness puts those derivatives on the prescribed force. The complete enstrophy pairing and Young's inequality give

\[
 y_1'+\nu y_2\le C\nu^{-3}y_1^3+\Psi_1.
\]

Dividing by $(1+y_1)^2$ before integrating preserves the exact derivative boundary and yields

\[
 \int_I\frac{y_2}{(1+y_1)^2}\,dt
 \le A_1:=\nu^{-1}
       \left(1+C\nu^{-3}D_E+\int_I\Psi_1\,dt\right)<\infty.
\]

Hölder then gives

\[
 \int_I y_2^{1/3}\,dt
 \le A_1^{1/3}(T+D_E)^{2/3}.
\]

Fourier interpolation gives $\|\Lambda^{3/2}u\|_2\le y_1^{1/4}y_2^{1/4}$, so

\[
 \|\Lambda^{3/2}u\|_{L^1(I;L^2)}
 \le D_E^{1/4}A_1^{1/4}(T+D_E)^{1/2}.
\]

The actual advective term pairs with $\phi\in H^{1/2}\hookrightarrow L^3$ as

\[
 |\langle B,\phi\rangle|
 \le\|u\|_6\|\nabla u\|_2\|\phi\|_3
 \le Cy_1\|\phi\|_{H^{1/2}} .
\]

Consequently, retaining viscosity, projected force and the exact original pressure,

\[
 u_t\in L^1(I;H^{-1/2}),\qquad
 \nabla p\in L^1(I;H^{-1/2}),\qquad
 p\in L^1(I;H^{1/2}).
\]

The pressure uses its Riesz quadratic part and the low-frequency-complete unprojected force potential. The Banach fundamental identity constructs an absolutely continuous $H^{-1/2}$ velocity representative and a common strong terminal trace there. The kinetic bound gives a weak $L^2_\sigma$ trace with norm at most $K_T$. Interpolation with the bounded $L^2$ norm makes convergence strong in every fixed negative Sobolev order. This is a substantive datum-generated whole-interval result, but its actual spatial order does not permit the source's $H^3$ restart.

## 7. Testing every single-entry sufficient input

This section applies the following independently derived reduction and checks its operators directly. The original high-frequency finite antiderivative is [cofinal composition MC9–MC13](../SOURCES.md#S177), lines 124–169. The exact differentiated spatial bootstrap is [first signed prefix BPF.10–BPF.13](../SOURCES.md#S316), lines 105–237. Only these mathematical source sections, not the adjacent history or status claims, are evidence here.

Let one actual coordinate on the same whole interval satisfy

\[
 J_{q,s}:=\int_I\|\Lambda^sV_q\|_2^2\,dt<\infty,
 \qquad q\ge0,\quad s\ge3/2 .
\]

Write $\Pi_{\rm hi}$ for the original Fourier projection onto $|\xi|>1$. The exact source antiderivative, with its datum-generated initial jet, is

\[
 \Pi_{\rm hi}u(t)
 =\sum_{a=0}^{q-1}\frac{t^a}{a!}\Pi_{\rm hi}A_a
 +\frac1{(q-1)!}\int_0^t(t-r)^{q-1}\Pi_{\rm hi}V_q(r)\,dr .
\]

It initially holds on each strict interval by the actual derivative relation. The assumed square membership makes its remainder integrable on the whole interval. Applying $\Lambda^{3/2}$, using $s\ge3/2$ on the high-frequency projection and the source's $L^1$ kernel norm, gives

\[
 D_T^{1/2}:=\|\Lambda^{3/2}u\|_{L^2(I;L^2)}
 \le\sqrt T K_T+
 \sum_{a=0}^{q-1}\frac{T^{a+1/2}}{a!\sqrt{2a+1}}
       \|\Lambda^{3/2}\Pi_{\rm hi}A_a\|_2
 +\frac{T^q}{q!}\sqrt{J_{q,s}} .
\]

For $q=0$ the polynomial sum is empty and the last coefficient is one. The kinetic bound pays the low frequencies. Thus any one indicated square entry produces $D_T<\infty$; no spatially cofinal family or full temporal prefix is required after this input.

For every fixed integer $m\ge1$, the full differentiated transport allocation, with $\beta=0$ and pressure canceled only in the solenoidal pairing, gives

\[
 |\mathcal P_m|
 \le K_m\|\Lambda^{3/2}u\|_2
             \|\Lambda^{m+1}u\|_2\|\Lambda^mu\|_2 .
\]

This is obtained by the exact multinomial spatial sum and the interpolation of the two nonleading factors between $\nabla u\in L^3$ and $\nabla^mu\in L^6$. For the prescribed force its complete work is bounded independently by

\[
 2|\langle\Lambda^m f,\Lambda^mu\rangle|
 =2|\langle\Lambda^{2m}f,u\rangle|
 \le\Psi_m:=2K_T\|\Lambda^{2m}f\|_2 .
\]

Putting $y_m=\|\Lambda^mu\|_2^2$ in the exact momentum pairing, Young and Gronwall give

\[
 y_m'+\nu y_{m+1}
 \le\frac{K_m^2}{\nu}\|\Lambda^{3/2}u\|_2^2y_m+\Psi_m,
\qquad
 \sup_I y_m
 \le\left(y_m(0)+\int_I\Psi_m\right)
                 e^{K_m^2D_T/\nu}<\infty .
\]

The integrated same inequality pays $\int_Iy_{m+1}$ at each fixed $m$. Kinetic low frequencies complete the inhomogeneous norms. The complete recurrence then supplies every temporal and pressure row on the same whole interval, and the common endpoint and restart already verified in endpoint.md follow. This explicitly verifies the smaller sufficient interface.

The recovered weighted outputs must therefore be tested against any such one coordinate, not only against an infinite tower. Equations [F57l–F57o](../SOURCES.md#S310), lines 500–549, give

\[
 Z_{q,m}:=\|\Lambda^mV_q\|_2,\qquad
 Z_{q,m}\in L^{p_{q,m}}(I),\qquad
 \frac1{p_{q,m}}=2q+m-\frac12 ,
 \quad 2q+m\ge1 .
\]

The full transport factor with $a+b=q$, and every spatial allocation $0\le j\le m$, is bounded by

\[
 Z_{a,j+1}\,Z_{b,m+1-j}^{1/2}\,Z_{b,m+2-j}^{1/2}.
\]

Its time Hölder budget is exactly

\[
 \frac1{p_{a,j+1}}+
 \frac1{2p_{b,m+1-j}}+
 \frac1{2p_{b,m+2-j}}
 =2q+m+\frac32
 =\frac1{p_{q+1,m}}.
\]

The Laplacian uses $p_{q,m+2}=p_{q+1,m}$; prescribed force rows are bounded. This verifies all binomial terms without dropping a temporal allocation. Pressure gradients obey the same next-row budget through $(I-\mathbb P)(F_q-B_q)$, and normalized pressure keeps its low-frequency force potential.

Spatial interpolation at fixed $q$ between any retained integer orders gives

\[
 \frac1{p_{q,s}}=2q+s-\frac12.
\]

For $q=0$, inclusion of the kinetic $L^\infty_tL^2_x$ row in a finite spatial interpolation can only increase the reciprocal exponent: with its weight $\theta_0$,

\[
 \frac1p=s-\frac12+\frac{\theta_0}{2}
 \ge s-\frac12.
\]

At every $s\ge3/2$, the resulting exponent is at most one, and is strictly below one when $q\ge1$. At the first critical face it is exactly $p_{0,3/2}=1$. Thus the weighted operation reaches $\Lambda^{3/2}u\in L^1_tL^2_x$, while its sufficient single-entry square asks for $L^2_tL^2_x$. Selecting a larger spatial or temporal order among these actual outputs does not pay any single sufficient square entry.

The source antiderivative operator also works from $L^1_tH^s_x$ for $q\ge1$: its finite kernel belongs to $L^2(0,T)$ and Young gives a square-integrable primitive. None of the weighted $q\ge1,s\ge3/2$ outputs has that $L^1$ time membership. For their $p<1$ exponents, integrability of the $p$-th power does not bound the kernel's absolute integral, so the original convolution step cannot simply be reapplied. At $q=0$ the critical $L^1$ output has no temporal antiderivative to apply.

The additionally constructed rows $u_t\in L^1H^{-1/2}$ and $u_t\in L^2H^{-3/2}$ have time exponents sufficient for integration, but the antiderivative retains their negative spatial orders. The low-frequency kinetic estimate does not improve their high-frequency spatial weights. The source's elliptic reverse step requires its adjacent temporal rows in the stated $L^2$ or continuous spatial norms; it cannot replace them with these lower spatial rows while retaining the claimed two-order gain. Substitution of the recovered positive weighted rows follows the exact exponent-preserving identity above. This is the precise failure of this attempted promotion, not a claim about what other signed uses of the complete jet might prove.

## 8. Complete composition and its remaining quantitative promotion

The executed producer chain is

\[
 (u_0,\nu,f)\longmapsto
 \text{initial complete jet}\longmapsto
 \text{one common local fixed point}\longmapsto
 \text{all local finite rectangles and their intersection}
 \longmapsto
 \text{unique compatible maximal history}.
\]

Every strict compact interval has the full mixed intersection. The datum also pays the whole-interval kinetic/negative-spatial rows and terminal trace derived above. The source's explicit local duration and high-order persistence formulas have not been promoted here to an arbitrary finite time horizon: their unresolved quantitative factor is the possible growth of the actual $H^3$ trace and its complete nonlinear/Gram interactions.

If the original datum producer supplies any one whole-interval square coordinate $J_{q,s}$ above, or another equivalent output such as the whole-interval temporal tower or spatial column, the operations checked here and in reciprocal-columns.md give all whole-interval rectangles, complete mixed intersection, compatible $H^\infty$ velocity/pressure endpoint, and the same-force restart checked in endpoint.md. No further order-uniform bound or full prefix is needed after that output.

This is a precise limitation of the executed local/kinetic promotion, not an absence-only finding about the original proof as a whole. The original independent producer and other source-derived signed operations remain subject to their own verification.

Source hashes at acquisition:

| Source | SHA-256 |
|---|---|
| Sequential conversion | a36a74ac23dce9a0385b2ae006be3a42b7356b58c0a198a9497e138d04ba791f |
| Native forced assembly | 15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5 |
| Unified forced/unforced framework | a269e5bf10e85086a8f52833a368e84043140a5f1c9b932e6b0887a12bcf378e |
| Auxiliary recovery calculations | 29468a5a3cfd09aaf7fff7380ac342ba91a9688f3a1da7ae14f1dda924390dcb |
| Mixed-column cofinal composition | cb75c056930342710f5c0760d2eea2e783238bc848e6a59bdd8f4a201bfaf745 |
| First signed prefix bootstrap | 2d9dae4ad91b5e9bf934aeed82a9d5acf82d79d3f69a1d26fb88089278e89901 |
