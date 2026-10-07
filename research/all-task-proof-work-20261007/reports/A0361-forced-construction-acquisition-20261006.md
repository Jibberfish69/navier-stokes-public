# Forced construction: acquired operations and verification

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Native N11a/v3 LF649-657 is the original whole-I construction invocation. Force adaptation retains the original conditional framework. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a mathematical analysis record of the actual forced construction, read in its source order. It is not a manuscript rewrite. The direct compatible intersection and the finite relationship rectangles are independent constructions from the same forced mixed jet. The implications below preserve both entries. A condition used in one entry is not imposed on the other.

## Source identities and coverage

- [Native custody source](../SOURCES.md#S153): first-hand read LF1–571, including complete §6 (LF150–231), initial/local realization, base, graph/height relationships, endpoint and restart. Later native sections are not part of this additional reading coverage.
- [Whole-argument assembly](../SOURCES.md#S155): first-hand read LF1–910 and LF1340–1390. This is the source of W6g, W13, W16–W19a and W20–W24; it is distinct from `forced-native-assembly-20260914.md`.
- [Sequential conversion](../SOURCES.md#S154): first-hand read LF579–1083 and LF1590–1633, including F49–F65 and F87.
- [Recovered v3 forced manuscript](../COVERAGE.md#A0651): full mixed-jet source was inspected in the preceding forced audit; LF497–709 and the force-payment/pressure passages were reread here. Source history and baseline are in `forced.md` and `forced-source-baseline.json`.

The v3 source explicitly retains the inhomogeneous lower-order remainder at LF633–640. This repairs the older wording that the entire inhomogeneous H^{M+1} term is absorbed by viscosity. No conclusion below treats that repaired wording as a v3 defect.

## 1. The actual datum, equations, and initial face

The prescribed triple is

\[
u_0\in H^\infty_\sigma(\mathbb R^3),\qquad\nu>0,\qquad
f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3)).
\]

Put V_n=∂_t^n u, Q_n=∂_t^n p, F_n=∂_t^n f. Native N5–N7 retain the complete graph:

\[
V_{n+1}+B_n+\nabla Q_n-\nu\Delta V_n=F_n,\quad\nabla\cdot V_n=0,
\qquad B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},
\]
\[
Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
       -(-\Delta)^{-1}\nabla\cdot F_n.
\]

The initial face is A_0=u_0 and

\[
A_{n+1}=\nu\Delta A_n-\mathbb P\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}
        +\mathbb PF_n(0). \tag{N8/F49}
\]

This triangular recurrence is verified: Laplacian, multiplication and bounded Leray projection preserve H^∞ at each fixed finite step. It produces compatible initial velocity and pressure jets; it does not evolve independent fluids. Sequential F50–F51 give an explicit finite budget: for q≥3, u_0∈H^{q+M+2N} and F_j(0)∈H^{q+M+2(N−1−j)} (j<N) give A_n∈H^{q+M+2(N−n)} (n≤N). Using N+1 supplies pressure rows through N. The whole prescribed function f, rather than only its time-zero Taylor jet, is retained in evolution.

## 2. One common local realization

Sequential F52 is the full forced mild equation

\[
u(t)=e^{\nu t\Delta}u_0-
\int_0^t e^{\nu(t-s)\Delta}\mathbb P\nabla\cdot(u\otimes u)(s)ds+
\int_0^t e^{\nu(t-s)\Delta}\mathbb Pf(s)ds.
\]

F53–F54d use X_δ=CH^3_σ∩L^2H^4_σ with u_t∈L^2H^2_σ, C_q=√3 C_3^alg and L_ν=4(1+ν+ν^{−1})e^{(ν+ν^{−1})/2}. The displayed estimates are

\[
\|z\|_{X_\delta}\le L_\nu(\|a\|_{H^3}+\|g\|_{L^2H^2}),\quad
\|\mathbb P\nabla\cdot(v\otimes w)\|_{L^2H^2}
\le C_q\sqrt\delta\|v\|_{CH^3}\|w\|_{CH^3}.
\]

Let M_f=sup_{[0,1]}||Pf||_{H²}, B_f=1+||u_0||_{H³}+M_f, R=2L_νB_f and δ_f=min{1,(8C_qL_ν²B_f)^{−2}}. These estimates give an invariant radius-R ball and contraction on δ≤δ_f. F54g/F56 higher-order persistence keeps this same interval for every m, with an order-dependent finite bound

\[
\sup_{t\le\delta}\|u(t)\|_{H^m}\le
(\|u_0\|_{H^m}+\|f\|_{L^1H^m})
\exp(C_m\int_0^\delta\|\nabla u\|_\infty dt).
\]

Fourier cutoff convergence and weak compactness identify all higher-order limits with this fixed point. Induction through the complete recurrence gives actual V_n,Q_n∈C([0,δ];H^m) for all fixed n,m, with the initial N8 face. Uniqueness joins overlaps. Thus F57/W6f realize all finite coordinates on every strict T<T_*. This is a fully acquired local construction; its common δ depends on the low-order datum and force, not on the chosen derivative order.

## 3. The finite dependency cover and source execution

For each selected (n,α), v3 LF578–615 retains J_{n+1,α}, every J_{n,α+2e_ℓ}, Π_{n,α+e_ℓ}, F_{n,α}, and, for a≤n and β≤α, both nonlinear factors J_{a,β,i}, J_{n−a,α−β+e_i}. Pressure-product factors are retained also for γ∈{α,α+e_ℓ}, including the matching F_{n,γ}. The exact retained equation is

\[
J_{n+1,\alpha}+\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}-F_{n,\alpha}=0.
\]

This is a finite cover of the selected equations' dependencies. It is not presented as an autonomous truncated flow. All entries are derivatives of one forced history. P and I−P read respectively its solenoidal equation and its normalized pressure equation. The graph remains nonlinear in velocity; the prescribed force is an additional known affine coordinate.

The force pairing N11b/v3 LF628–640 follows exactly from weighted Fourier Cauchy–Schwarz and Young:

\[
2|\langle F_n,V_n\rangle_{H^M}|
\le\nu\|V_n\|_{H^{M+1}}^2+\nu^{-1}\|F_n\|_{H^{M-1}}^2,
\quad
\|V_n\|_{H^{M+1}}^2=\|\nabla V_n\|_{H^M}^2+\|V_n\|_{H^M}^2.
\]

The integrated strict-row energy implication consequently retains

\[
\|V_n(S)\|_{H^M}^2+\nu\int_0^S\|\nabla V_n\|_{H^M}^2dt
\le\|A_n\|_{H^M}^2+\int_0^S
\left(\nu\|V_n\|_{H^M}^2+\nu^{-1}\|F_n\|_{H^{M-1}}^2
-2\operatorname{Re}\langle B_n,V_n\rangle_{H^M}\right)dt.
\]

This states what the source payment accomplishes without deleting nonlinear work. Pressure pairing with a solenoidal row cancels, while its full coordinate is retained separately.

For q_F=(−Δ)^{−1}div F, Fourier splitting proves

\[
\|q_F\|_{H^m}\le c_m(\|F\|_1+\|F\|_{H^m}).
\]

At |ξ|≤1 the squared multiplier is bounded by |ξ|^{−2} and ∫_{|ξ|≤1}|ξ|^{−2}dξ=4π; at |ξ|≥1 it is bounded by one. Its gradient is an order-zero multiplier. Every F_{n,α} has the required finite seminorms uniformly on compact absolute-time intervals because f is smooth into Schwartz space. This verifies the finite source-induced pressure budgets N11c. Riesz transforms and product estimates supply the velocity pressure part once the indicated velocity memberships are available. No scalar-pressure low-frequency assumption on an arbitrary H^m vector field is inserted.

## 4. The direct intersection as invoked, and its exact equivalent readings

Native §6 LF153–165 applies the unforced *finite-row construction method* to the full forced graph N5–N7 and its initial N8 face. Its claimed output, before norms, traces or restart, is

\[
\mathfrak P^f_{N,M}(I):=\sum_{n=0}^N
\left(\|V_n\|_{L^2(I;H^{M+1})}^2+
\|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty,
\qquad I=(0,T_*). \tag{N11a}
\]

The v3 manuscript invokes that operation at LF649–657 after constructing its input and paying source/pressure terms. Neither invocation imports an unforced velocity or an unforced norm. The acquired text supplies this output by application of the named construction. The verified input preparation and source pairings are described above; identifying them is not a separate derivation of the whole-terminal output.

The consequences of this output execute as follows. For any fixed r,m≥0, choose N=r and M=max{m−1,0}. N11a gives V_0,…,V_r∈L²(I;H^m). Their already identified distributional derivative identities imply u∈H^r(I;H^m). Conversely, from the full mixed intersection choose r=N+1 and spatial order M+1; inclusion into H^{M−1} gives every summand of N11a. Thus

\[
(\forall N,M\;\mathrm{N11a})
\Longleftrightarrow u\in\bigcap_{r,m\ge0}H^r(0,T_*;H^m_\sigma)
\Longleftrightarrow
\forall r,m:\sup_{S<T_*}\sum_{n=0}^r\int_0^S\|V_n\|_{H^m}^2dt<\infty.
\]

The last equivalence is monotone convergence on each fixed finite nonnegative sum. It needs no bound uniform in r or m. It is native N11e, assembly W6g (LF203–207), and sequential F87 (LF1603–1607). W6g and F87 state the whole-terminal estimate in their respective earlier constructions; they are not additional proofs of N11a. The direct native claim is later and stronger than their strict-interval realization. This version/order distinction is preserved.

The records' restrictions delete outer temporal indices and lower retained Sobolev orders. Complete recurrence, spatial Leibniz rule, pressure normalization and the fixed force jet commute with restriction. Once memberships on I are supplied, all coordinates form one compatible inverse limit (N11d–N11). Since each record consists of derivatives of the same fixed history, restriction identification is literal. This is a verified compatibility operation; it is not an existence assertion for unrelated arbitrary finite tuples.

## 5. Execute the independent relationship entry: one nonzero rectangle to all

The following calculation belongs to the assembly's independent finite-relationship construction. It does not impose its entry on the direct N11a construction.

On a finite T≤T_*, set g=Pf,

\[
K_T=\|u_0\|_2+\int_0^T\|g\|_2dt,\quad
G_T=\int_0^T\|g\|_2^2dt,\quad Q_T=\int_0^T\|u_t\|_2^2dt.
\]

W6 (LF89–103) gives sup||u||₂≤K_T and ∫||∇u||₂²≤K_T²/(2ν). The exact kinetic Gram off-diagonal is

\[
\langle u,u_t\rangle=-\nu\|\nabla u\|_2^2+\langle u,g\rangle.
\]

For y=||∇u||₂², Gram Cauchy–Schwarz gives νy≤K_T(||g||₂+||u_t||₂). Hence if Q_T<∞,

\[
L_T:=\int_0^T y^2dt\le2\nu^{-2}K_T^2(G_T+Q_T). \tag{W16; LF677–689}
\]

Pairing the full momentum with −Δu retains convection and force. The three-dimensional interpolation ||u||₆||∇u||₃||Δu||₂≤C y^{3/4}||Δu||₂^{3/2}, followed by Young, gives

\[
y'+\nu\|\Delta u\|_2^2\le C\nu^{-3}y^3+C\nu^{-1}\|g\|_2^2.
\]

Use the already finite ∫y² as the coefficient integral multiplying y. Gronwall gives

\[
Y_T:=\sup_{t<T}y(t)\le(y(0)+C\nu^{-1}G_T)e^{C\nu^{-3}L_T},\qquad
\nu\int_0^T\|\Delta u\|_2^2dt\le y(0)+C\nu^{-3}Y_TL_T+C\nu^{-1}G_T.
\tag{W17; LF691–704}
\]

Fourier (1+|ξ|²)²≤2(1+|ξ|⁴) therefore gives

\[
S_T:=\int_0^T\|u\|_{H^2}^2dt
\le2TK_T^2+\frac2\nu\bigl(y(0)+C\nu^{-3}Y_TL_T+C\nu^{-1}G_T\bigr)<\infty.
\]

W12 uses the entire tensor via ||u⊗u||_{H^m}≤L_m||u||∞||u||_{H^m}, with X_m=||u||_{H^m}² and D_m=||∇u||_{H^m}²:

\[
X_m'+\nu D_m\le(L_m^2/\nu)\|u\|_\infty^2X_m+2\|g\|_{H^m}\sqrt{X_m}.
\]

Set E_m=X_m+ν∫D_m. Its square-root inequality and ||u||∞≤c₂||u||H² give

\[
U_m=(\|u_0\|_{H^m}+\int_0^T\|g\|_{H^m}dt)
e^{L_m^2c_2^2S_T/(2\nu)},\quad
\|u(t)\|_{H^m}^2+\nu\int_0^tD_mds\le U_m^2,\quad
\int_0^T\|u\|_{H^m}^2dt\le TU_m^2.
\tag{W13–W15; LF627–667}
\]

These inequalities are first established on strict classical subintervals and have a bound independent of that strict cutoff, so their whole-T conclusions follow by monotone convergence. Every chosen m has its own finite U_m.

Sequential F64 (LF1059–1068) is the *full numerical rectangle*, distinct from native N11a's velocity-only norm:

\[
\mathfrak R^f_{N,M}(T)=\sum_{n=0}^N
\left(\|V_n\|_{L^2H^{M+1}}^2+\|V_{n+1}\|_{L^2H^{M-1}}^2
+\|Q_n\|_{L^1H^M}^2+\|F_n\|_{L^2H^{M-1}}^2\right).
\]

If M≥1 its adjacent row n=0 contains ||u_t||_{L²L²}²; if M=0 and N≥1 its n=1 velocity row contains ||u_t||_{L²H¹}². Consequently

\[
N+M\ge1\implies Q_T\le\mathfrak R^f_{N,M}(T). \tag{W19a; LF802–818}
\]

For any established whole-terminal finite such rectangle ρ, use Q_T≤ρ in W16, then W17 and W13. There is no second inserted terminal-membership premise. This produces every spatial norm; W20–W23 below produce every other finite rectangle. The (0,0) rectangle alone is not asserted sufficient by W19a.

Another independent entry is the critical action A_T=∫||Λ^{3/2}u||₂²<∞ (W18). Its full enstrophy pairing gives y'+νD≤Cν^{−1}||Λ^{3/2}u||₂²y+Cν^{−1}||g||₂², so Y_T≤(y0+Cν^{−1}G_T)e^{CA_T/ν} and ν∫D≤y0+Cν^{−1}A_TY_T+Cν^{−1}G_T (W19, LF763–800). It feeds the same S_T and all-order reconstruction, with no smallness needed for this implication.

## 6. Execute spatial-to-mixed completion and absolute-time restart

For any acquired whole-T spatial column C_m=||u||_{L²H^m}<∞, the complete equation gives

\[
\|u_t\|_{L^1H^m}\le\nu\sqrt T C_{m+2}+C_m^{prod}C_{m+2}^2+\|Pf\|_{L^1H^m},
\quad\|u\|_{L^1H^m}\le\sqrt T C_m. \tag{F59}
\]

Thus u∈W^{1,1}(0,T;H^m) has an absolutely continuous endpoint representative in every m. Starting with its finite sup bounds M_{0,m}, temporal recursion supplies

\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m^{prod}\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
+\sup_{[0,T]}\|PF_n\|_{H^m}, \tag{W20/F60c}
\]

and the normalized pressure formula gives

\[
P_{n,m}\le C_m^{prod}\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
+c_m\sup_{[0,T]}(\|F_n\|_1+\|F_n\|_{H^m}). \tag{W22}
\]

Actual interior derivative identities identify these continuous rows with ∂_t^n u and ∂_t^n p; integrating and extending to the endpoints verifies their one-sided derivative identities. Then ||u||_{H^rH^m}²≤TΣ_{n≤r}M_{n,m}², and for M_−=max(M−1,0),

\[
\mathfrak R^f_{N,M}(T)\le\sum_{n=0}^N
\left(TM_{n,M+1}^2+TM_{n+1,M_-}^2+T^2P_{n,M}^2
+\int_0^T\|F_n\|_{H^{M-1}}^2dt\right)<\infty. \tag{W23}
\]

This executes the source's first-rectangle → every-rectangle branch, as well as the all-spatial → all-mixed equivalence. It retains all nonlinear allocations, force derivatives and force pressure.

At T=T_*, the joint compatible endpoint is u(T_*)∈H^∞_σ with all pressure and temporal rows. The local construction is restarted with future force f_{T_*}(s)=f(T_*+s), not with f(s) reset to zero time. Its initial recursion agrees with the endpoint recurrence, and uniqueness on overlap glues the same forced history. This contradicts finite maximality once a whole-terminal entry has been produced.

## Verification coverage of the producing invocation

The acquired and executed chain is: compatible initial face → common local full-forced realization; complete finite equation cover plus verified source/pressure payments; the exact native invocation of whole-terminal N11a; N11a ↔ whole mixed intersection ↔ W6g/F87; literal restriction and inverse-limit identification; whole-terminal projection → complete endpoint and same absolute-time force restart. The independent relationship entries Q_T, a full nonzero rectangle, S_T, and A_T have also been executed through all mixed rows.

This reading verifies the stated input preparations, equivalent formulations, independent entry implications, and consumers. Native §6 and v3 LF649–657 apply a named whole-terminal construction; W6g and F87 are the exact corresponding estimate formulations in their earlier sources. This record does not count any of those invocations as a new derivation from finite source seminorms alone. Verification of the imported finite-row producing operation belongs to acquisition of its original unforced datum theorem, together with the operation-by-operation forced adaptation. No conclusion about unread sources or a different producer is asserted here.

## 7. Original prescribed-jet adaptation: execute its commutation operation

[Original forcing attachment](../SOURCES.md#S292), was read in full in the previous acquisition; its LF85–330 were reread first-hand here. It defines the forced compatible graph by replacing the complete homogeneous residual row with residual=F_n, then prolongs that identity in time and space. The requested adaptation operation can be checked exactly.

For temporal prolongation, expand the full nonlinear row:

\[
\partial_t B_n=
\sum_{a=0}^n\binom na
\left[(V_{a+1}\cdot\nabla)V_{n-a}+(V_a\cdot\nabla)V_{n-a+1}\right]
=B_{n+1}.
\]

The equality follows by reindexing the first sum and Pascal's identity, including both endpoint summands. Bounded Riesz multipliers commute with differentiation, so the complete pressure row prolongs to Q_{n+1} with its −(−Δ)^{−1}div F_{n+1} term. Thus differentiating N5 gives N5 at n+1, with ∂_tF_n=F_{n+1}; no pressure or nonlinear summand is dropped. Spatial prolongation applies the multi-index Leibniz identity to every product; grouping the resulting terms with the multi-index binomial convolution gives exactly the row indexed (n,α+β). Its source coordinate is F_{n,α+β}. Force restriction squares commute because every retained source coordinate is a derivative/restriction of the same prescribed f.

The attachment's height-coordinate operation also commutes. If W_s=Re⟨Λ^su,Λ^sf⟩, then

\[
\partial_t^\ell W_s=
\sum_{a=0}^{\ell}\binom\ell a
\operatorname{Re}\langle\Lambda^sV_a,\Lambda^sF_{\ell-a}\rangle.
\]

This verifies its exact LF214–225 formula. Each prescribed force factor is known at every selected order; the companion velocity factor remains a coordinate of the one forced history. The completed-height identity at LF180–207 follows by iterating E_s′=−2νE_{s+1}+P_s+W_s. It is a valid coordinate identity with both full work terms retained; it does not remove them by an estimate.

These calculations verify the original attachment's prolongation and restriction commutation in the intended order. At LF250–262 it formulates stability of the compatible-intersection construction under addition of a complete prescribed jet as the proposition to establish. At LF318–330 it asks whether the unforced producing theorem uses only this compatibility/prolongation, or also a quantitative homogeneous identity. The conditional wording belongs to the original source. The calculations establish the commuting maps it requests. They do not establish that every resulting whole-terminal graph has a realized member in all the asserted spaces; that additional scope must come from the actual producing theorem being adapted. This is a distinction between the acquired operation and its quantified output, not a replacement by a different a priori method.

The native, assembly, sequential, and original forcing-attachment hashes above were rechecked after this additional acquisition and were unchanged.
