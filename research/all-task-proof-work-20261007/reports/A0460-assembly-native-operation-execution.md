# Native finite-block assembly: exact producing operations and domains

**Reviewed scope and currentness.** Bounded assembly§§1–8; no claim of full§13 thirty-field verification. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only mathematical execution, 6 October 2026. This note reconstructs the mathematical §§1–8 of the 14 September native assembly, the directly cited source compensation and column calculations, and PROOF-PROGRAM §§6–7. Private provenance claims supply no mathematical premise here. No earlier audit is used as proof evidence.

The assembly supplies a concrete positive, source-compensated **finite spatial ladder**, an explicit common-interval local datum-to-mixed-family construction, and a finite reverse temporal-to-spatial construction. These are stronger and more explicit operations than simply naming compatible rows. Their time domains differ: the datum construction supplies a common positive local interval; the reverse construction consumes a whole-interval temporal prefix; the positive ladder retains the complete signed nonlinear production. The calculations below preserve those domains.

## 1. Source custody and exact coverage

| Witness | Mathematical coverage in this execution | SHA256 prefix |
|---|---|---|
| [14 September native assembly](../SOURCES.md#S152) | §§1–8, LF16–1059; particularly C1–C9 LF214–390, D1–D8 LF601–738, R1–R10 LF787–935 | `15d1102d14887595` |
| [PROOF-PROGRAM](../SOURCES.md#S146) | §§6–7, LF214–268 | `ffab442e463a8a5b` |
| [Original force-compensated rows](../SOURCES.md#S151) | §L, M31–M37, LF1104–1284 | `a565feb2b2a5f66e` |
| [Direct source primitives](../SOURCES.md#S012) | §§4–7, equations13–36, LF161–449; named mathematical operations rederived below | `92c0b8a0c5ee8799` |
| [Reverse-column precursor](../SOURCES.md#S013) | Complete 153-line mathematical calculation | `9a0699ebf307b6cf` |
| [Nonlinear current contraction](../SOURCES.md#S156) | LF1–151,205–374,579–884: full nonlinear allocation, force lift, same-interval rectangle consumer, prescribed weights and material-metric identities | `e028e4717136dca9` |
| [Unified framework](../SOURCES.md#S162) | §§5,7–8, LF275–421,508–644: relationship identities, finite norm substitution, precise interval-domain conversion | `a269e5bf10e85086` |
| [Native unforced setting witness](../SOURCES.md#S104) | LF360–532: datum finite-block theorem, its proof and first consumers | `ddcbeeadae80911b` |

This is bounded source coverage. It does not claim execution of every later section of the assembly, every section of the September 11 file, or the entire unforced theorem corpus. The assembly's §9 provenance is excluded from the mathematical chain. Diagnostic test families in the current-contraction source are not used as counterexamples to a theorem or as evidence about the actual history.

## 2. The same physical history throughout

**AP1.** Assembly §1, LF16–71, fixes admitted smooth datum/force and the actual classical incompressible history. Let

\[
V_r=\partial_t^ru,\quad F_r=\partial_t^rf,\quad G_r=\mathbb PF_r,
\qquad B_r=\sum_{a=0}^r\binom ra(V_a\cdot\nabla)V_{r-a}.
\]

Every row satisfies

\[
V_{r+1}+B_r+\nabla Q_r=\nu\Delta V_r+F_r,\qquad
\nabla Q_r=(I-\mathbb P)(F_r-B_r).
\]

The full mixed spatial row additionally sums over every derivative allocation \(\beta\le\alpha\), with coefficient \(\binom ra\binom\alpha\beta\). The initial rows are generated, not chosen independently:

\[
A_0=u_0,\qquad
A_{r+1}=\nu\Delta A_r-\mathbb P\sum_{a=0}^r\binom ra(A_a\cdot\nabla)A_{r-a}+G_r(0).
\]

Pressure has the normalized scalar formula

\[
Q_r=R_iR_j\sum_{a=0}^r\binom raV_{a,i}V_{r-a,j}
-(-\Delta)^{-1}\operatorname{div}F_r.
\]

The force potential is retained. Its low-frequency squared multiplier is of order \(|\xi|^{-2}\), integrable in three dimensions when \(F_r\in L^1_x\); high frequencies use the prescribed Sobolev norms. This explains the actual decay hypothesis needed for scalar pressure, separately from the bounded Leray projection in the velocity equation.

**AP2.** For \(E_{r,s}=\frac12\|\Lambda^sV_r\|_2^2\), put

\[
P_{r,s}=-\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sB_r\rangle,
\qquad W_{r,s}=\operatorname{Re}\langle V_r,\Lambda^{2s}G_r\rangle.
\]

The global pairing with the solenoidal Eulerian row removes its gradient pressure pairing, giving
\(E'_{r,s}+2\nu E_{r,s+1}=P_{r,s}+W_{r,s}\).
Pressure remains in AP1; this is not a local or matrix-weighted pressure cancellation. Repeated substitution gives assembly (7), with every differentiated \(P+W\) retained. These are finite identities on strict classical prefixes.

## 3. What the force compensation actually constructs

**AP3.** The directly cited September 11 M31–M35 calculation, LF1104–1228, defines

\[
C_{r,s}=\sum_{j=0}^{r-1}(-1)^j
\operatorname{Re}\langle V_{r-1-j},\Lambda^{2s}G_{r+j}\rangle,
\quad C_{0,s}=0.
\]

Differentiating both factors cancels adjacent terms and leaves
\(C'_{r,s}=W_{r,s}+(-1)^{r-1}\langle u,\Lambda^{2s}G_{2r}\rangle\).
Therefore

\[
(E_{r,s}-C_{r,s})'+2\nu E_{r,s+1}
=P_{r,s}+(-1)^r\langle u,\Lambda^{2s}G_{2r}\rangle.
\]

On a fixed finite horizon the last pairing has a datum-and-force budget using
\(K_T=\|u_0\|_2+\|G_0\|_{L^1(0,T;L^2)}\).
No unknown \(V_r\) norm is needed to pay this residual source, for any fixed \(r,s\), and no amplitude restriction is imposed on the admitted force. Grouping a finite weighted block makes a positive quadratic expression after a force-only shift. The full weighted nonlinear current remains in M35.

**AP4.** Assembly LF214–286 strengthens this by closing the compensation under the **same spatial ladder**. The operator
\(M=\partial_t+2\nu\Lambda^2\) acts on prescribed fields, not on \(u\). Define

\[
\widetilde C_{r,s}=\sum_{j<r}(-1)^j
\operatorname{Re}\langle V_{r-1-j},\Lambda^{2s}M^jG_r\rangle.
\]

For a prescribed field \(H\), direct differentiation gives

\[
\partial_t\langle V_k,\Lambda^{2s}H\rangle
+2\nu\langle V_k,\Lambda^{2s+2}H\rangle
=\langle V_{k+1},\Lambda^{2s}H\rangle
+\langle V_k,\Lambda^{2s}MH\rangle.
\]

Telescoping therefore proves exactly C2:

\[
(E_{r,s}-\widetilde C_{r,s})'
+2\nu(E_{r,s+1}-\widetilde C_{r,s+1})
=P_{r,s}+(-1)^r\operatorname{Re}\langle u,\Lambda^{2s}M^rG_r\rangle.
\]

Here \(M^jG_r=\sum_{\ell\le j}\binom j\ell(2\nu)^\ell\Lambda^{2\ell}G_{r+j-\ell}\). Every term is a known finite force derivative. The sign of the nonlinear production is preserved.

**AP5.** Fix finite \(R,K\), \(\tau>0\), \(s\ge0\), \(T<\infty\). Put

\[
\mathcal E_{R,s}=\sum_{r=0}^R\tau^{2r}E_{r,s},\quad
X_k=\tau^k\Lambda^sV_k,
\]

\[
H_{k,s}=\sum_{r=k+1}^R(-1)^{r-1-k}\tau^{2r-k}
\Lambda^sM^{r-1-k}G_r,
\qquad \Psi_s^*=\sup_{[0,T]}\sum_{k<R}\|H_{k,s}\|_2^2.
\]

The exact force-cross-pair sum is
\(\sum_r\tau^{2r}\widetilde C_{r,s}=\sum_{k<R}\operatorname{Re}\langle X_k,H_{k,s}\rangle\).
Consequently the source-shifted block \(Z_s=\mathcal E_{R,s}-\sum_r\tau^{2r}\widetilde C_{r,s}+\Psi_s^*\) has the exact completion

\[
Z_s=\tfrac12\|X_R\|^2+\tfrac14\sum_{k<R}\|X_k\|^2
+\tfrac14\sum_{k<R}\|X_k-2H_{k,s}\|^2
+\Psi_s^*-\sum_{k<R}\|H_{k,s}\|^2.
\]

Thus \(\frac12\mathcal E_{R,s}\le Z_s\le\frac32\mathcal E_{R,s}+2\Psi_s^*\), without controlling lower velocity rows in advance. This is an actual coercive finite block, not a claim that a signed anti-diagonal itself is positive.

**AP6.** Assembly C4–C9, LF287–390, now makes a positive finite ladder. For \(h_j=s+j\), let

\[
L_j=\sum_{r=0}^R(-1)^r\tau^{2r}\operatorname{Re}
\langle u,\Lambda^{2h_j}M^rG_r\rangle,
\quad
\beta_j=K_T\sum_r\tau^{2r}\sup_{[0,T]}\|\Lambda^{2h_j}M^rG_r\|_2.
\]

Known backward polynomials
\(a_K=\Psi_{h_K}^*\) and
\(a_j(t)=\Psi_{h_j}^*+\int_t^T(\beta_j+2\nu a_{j+1})\)
satisfy \(a_j\ge\Psi_{h_j}^*\). With
\(Y_j=\mathcal E_{R,h_j}-\sum_r\tau^{2r}\widetilde C_{r,h_j}+a_j\),
\(d_j=\beta_j-L_j\), one obtains

\[
\tfrac12\mathcal E_{R,h_j}\le Y_j
\le\tfrac32\mathcal E_{R,h_j}+\Psi_{h_j}^*+a_j,
\qquad 0\le d_j\le2\beta_j,
\]

\[
Y_j'+2\nu Y_{j+1}=\sum_r\tau^{2r}P_{r,h_j}-d_j
\quad(j<K),
\]

\[
Y_j(t)+2\nu\int_0^tY_{j+1}+\int_0^td_j
=Y_j(0)+\int_0^t\sum_r\tau^{2r}P_{r,h_j}.
\tag{AP6}
\]

Every displayed initial value is evaluated from the finite initial jet in AP1 and prescribed force norms. For \(k\le K-j\), differentiation retains the complete row

\[
\partial_t^kY_j=(-2\nu)^kY_{j+k}
+\sum_{\ell<k}(-2\nu)^\ell\partial_t^{k-1-\ell}
\left(\sum_r\tau^{2r}P_{r,h_{j+\ell}}-d_{j+\ell}\right).
\]

The derivatives of \(d\) are not assigned a favorable sign: they contain the complete differentiated pairing with \(u\). For each fixed ladder, the bounded force polynomials imply equivalence between any finite \(L^p\) membership of \(Y_j\) and that of its physical block \(\mathcal E_{R,h_j}\). No uniform constant across all orders is used. Most decisively, assembly LF378–383 expressly states that this equivalence does not assert either membership from the identity alone. AP6 pays all explicit force work but leaves the actual signed nonlinear primitive.

## 4. Independent check of the complete nonlinear and Gram rows

**AP7.** The directly cited current-contraction LF14–151 derives, for solenoidal \(a\),

\[
T_s(a,b,c)+T_s(a,c,b)
=\langle[\Lambda^{2s},a\cdot\nabla]b,c\rangle.
\]

The full derivative allocations have symmetric coefficients under \(b\leftrightarrow c\), hence

\[
\partial_t^kP_{0,s}
=-\frac12\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\langle[\Lambda^{2s},V_a\cdot\nabla]V_b,V_c\rangle.
\]

This gives exact cancellation at \(s=0\). At \(s=1/2\), the complete \([\Lambda,V_a\cdot\nabla]\) expression remains. The temporal Gram anti-diagonal is
\(\partial_t^kE_{0,s}=\frac12\sum_{a=0}^k\binom ka\langle\Lambda^sV_a,\Lambda^sV_{k-a}\rangle\), with the displayed signed cross-pairings. A finite Gram matrix is PSD; that fact does not identify an anti-diagonal contraction with one positive diagonal.

The source's estimate (8) has the exact antecedent
\(R=\mathfrak R_{k,2}(I)<\infty\), on the same interval:
\(\int_I|\partial_t^kP_{0,1/2}|\le C3^k\sqrt{I_k+R}\,R\).
Estimate (8a) similarly consumes a sufficiently tall actual \(\mathfrak R_{N,M}(I)\); its complete coefficient sums are \(2^r3^\ell\) for nonlinear work and \(2^\ell\) for force work. Thus this operation controls full production **once its actual finite rectangle is supplied**, preserving the source's original proof order. It does not require a new later criterion in addition to that rectangle.

Prescribed temporal weights are checked with all endpoint terms in source (34)–(39), LF601–678. The first-row stretching current is \(-2(\alpha-\beta)\langle(v\cdot\nabla)u,v\rangle\). Setting \(\alpha=\beta\) also removes the two positive interior temporal squares. General anti-diagonal weighted sums integrate to the stated single spatial-energy term and endpoints. This is the exact scope of that cancellation.

The material-metric extension (41)–(45),(49)–(52), LF697–752,803–884, cancels stretching simultaneously for \(v=u_t\) and \(A_j=\partial_ju\), with \(D_tH=A^TH+HA\). Its adjoining-row identity retains

\[
\frac\nu2\int\left(v^T\Delta H\,v+\sum_jA_j^T\Delta H\,A_j\right),
\quad\int\left(Q_1\operatorname{div}(Hv)+\sum_j\partial_jp\,\operatorname{div}(HA_j)\right),
\]

and all \(HF_1,H\partial_jf\) terms. The weight is positive on strict prefixes, with coercivity \(e^{-2\int\|S\|_\infty}\); its force correction retains \(H_t\) and \(\nabla H\). No prescribed-matrix force payment is substituted for these history-dependent terms. These exact ports prevent incorrectly declaring all nonlinearity removed by the stretching cancellation alone.

## 5. The explicit datum-to-history operation

**AP8.** Assembly §6, LF534–738, constructs an actual member on one common local interval. In \(C([0,h];H^3_\sigma)\), the full mild map is

\[
\mathcal T_f(v)=e^{\nu t\Delta}u_0
+\int_0^te^{\nu(t-r)\Delta}G_0(r)\,dr
-\int_0^te^{\nu(t-r)\Delta}\mathbb P\operatorname{div}(v\otimes v)(r)\,dr.
\]

The heat derivative bound and \(H^3\) multiplication give the specified bilinear estimate \(C_3\sqrt{h/\nu}\|v\|_{CH^3}\|w\|_{CH^3}\). Taking \(a_h=\|u_0\|_{H^3}+\|G_0\|_{L^1(0,h;H^3)}\) and \(C_3\sqrt{h/\nu}a_h\le1/8\) makes the ball of radius \(2a_h\) invariant and the Lipschitz constant at most \(1/2\). This uses the full nonlinear projected momentum equation, including its pressure reconstruction in AP1.

All higher spatial orders persist on this same \(h\), by the cutoff-tame energy estimate actually stated in L3 and the finite \(\|\nabla u\|_\infty\) bound supplied by this \(H^3\) history. D1–D5 give explicit finite polynomials \(P_{n,m}\) for integers \(m\ge3\), with lower orders following by inclusion:

\[
P_{0,m}(x)=x,\quad
P_{n+1,m}(x)=\nu P_{n,m+2}(x)
+C_m\sum_{a=0}^n\binom naP_{a,m+1}(x)P_{n-a,m+1}(x)+x,
\]

and prescribed finite arguments built from the local \(U_{m+2n}\) and force jets. They bound actual initial and evolving \(V_n\), so \(\|u\|_{H^r(0,h;H^m)}^2\le h\sum_{n\le r}P_{n,m}(d_{n,m})^2\). Pressure is reconstructed concurrently by D6–D8. Restrictions identify the same rows, rather than independent finite-order solutions requiring an unproved common intersection time.

This is a verified datum-generated compatible mixed family on \([0,h]\). Assembly LF726–738 explicitly distinguishes the locally continued union on \([0,T_*)\) from a uniform finite bound as strict prefixes approach a finite \(T_*\). The displayed constructor itself supplies no such uniformity. Its L5–L6 weak temporal bounds retain the actual kinetic domain and are not labeled positive whole-terminal temporal-row membership.

## 6. Finite reverse reconstruction and interval substitution

**AP9.** The precursor and assembly R1–R10 verify a different producing operation with an explicit input: for \(N\ge1\),
\(u\in H^{N+1}(0,T;L^2)\) on the **whole fixed interval** yields
\(V_j\in C([0,T];H^{2(N-j)})\), \(0\le j\le N\). The proof does not start with scalar height alone.

The supplied temporal prefix first gives \(b_j=\sup\|V_j\|_2\le T^{-1/2}\|V_j\|_{L^2L^2}+\sqrt T\|V_{j+1}\|_{L^2L^2}\). Native kinetic cancellation gives \(\nu\|\nabla u\|^2=\langle G_0-V_1,u\rangle\), followed by the full momentum estimate
\(\nu\|\Delta u\|\le b_1+d_0+C\|\nabla u\|^{3/2}\|\Delta u\|^{1/2}\).
Young's inequality gives uniform \(H^2\) for \(u\).

Each differentiated row retains both outer interactions and every interior allocation:

\[
\nu\Delta V_r=V_{r+1}+\mathbb P[(u\cdot\nabla)V_r+(V_r\cdot\nabla)u]
+\mathbb P\sum_{a=1}^{r-1}\binom ra(V_a\cdot\nabla)V_{r-a}-G_r.
\]

In its energy pairing only advecting-\(u\) transport vanishes. The receiving strain interaction is bounded using the already reconstructed \(\nabla u\in L^\infty_tL^3_x\), not discarded. This yields uniform \(H^2\) through \(V_{N-1}\). Two elliptic passes improve a prefix \(V_0,\ldots,V_K\in H^m\) to \(V_0,\ldots,V_{K-1}\in H^{m+2}\), keeping the adjacent top row. Iterating gives the claimed finite ladder. Descending endpoint continuity uses slightly lower spatial interpolation, the continuous adjacent row, the complete products, and the low-frequency-complete elliptic difference estimate. Pressure keeps the scalar force potential and both endpoint products. No infinite norm sum or order-uniform constant is assumed.

**AP10.** Framework (43)–(47), LF540–591, verifies the finite norm substitution on any matched interval \(I\):

\[
R=\mathfrak R_{n-1,m+2}(I)<\infty
\Longrightarrow
\mathfrak R_{n,m}(I)
\le(2+3\nu^2)R+3C_m^24^n(I_0+R)R
+3\|\mathbb PF_n\|_{L^2(I;H^{m-1})}^2.
\]

The trace bound uses the paired \(H^{m+3}/H^{m+1}\) entries before taking products; all endpoint allocations involving \(V_n\) use the supplied next-time entry. Hence \(\mathfrak R_{0,M+2N}(I)\Rightarrow\mathfrak R_{N,M}(I)\) is a genuine finite calculation with the full force and pressure graph. On the local interval AP8 supplies its base; on a whole-terminal interval this exact base is its antecedent. Compatibility does not alter that antecedent's interval.

Framework (48a), LF603–613, is also lawful: a supplied whole-interval complete spatial \(L^2\) column gives \(u_t\in L^1H^m\) from the complete equation; integrating gives all spatial suprema and then all temporal rows. The complete-height representation supplies the same spatial column only when its readouts have their actual \(L^1(I)\) domain, as explicitly stated at LF626.

## 7. Source primitives, endpoints and actual proof order

**AP11.** The directly linked source-primitives equations13–36 independently pay the force without imposing a bound on all nonlinear work. For prescribed solenoidal \(g\),

\[
\frac d{dt}\langle u,g\rangle
=\langle u,(\partial_t+\nu\Delta)g\rangle
+\int u_i u_j(\operatorname{Sym}\nabla g)_{ij}+\langle f,g\rangle.
\]

Both \(\langle u,g\rangle\) and its first derivative are bounded by kinetic and prescribed-force norms. The exact binomial transfer
\(W_{r,s}=\sum_{b=0}^r(-1)^b\binom rb\partial_t^{r-b}M_{s,r+b}\)
leaves all initial Taylor polynomials. This proves bounded \(I^{\max(n+r-2,0)}\mathcal F_{r,s,n}\), retaining the displayed integration order. A bound after two or more integrations gives a terminally weighted integral, not automatically the unweighted completed-height domain.

At \(r=0,1,2\), the first force-work primitives are bounded, so the full energy identity gives exactly the equivalence between the positive pair \(E_{r,s}\in L^\infty\), \(E_{r,s+1}\in L^1\) and a bounded-above **signed** primitive of the actual \(P_{r,s}\). For higher rows the analogous first-primitive estimate explicitly uses the lower temporal row bounds in (34). This calculation supplies force payment and an exact domain characterization, rather than silently assuming absolute nonlinear integrability.

**AP12.** Assembly §4 is downstream of its displayed whole-interval mixed-intersection premise (16). It then calculates all finite Sobolev suprema, the exact pressure potential, compatible terminal jets and local restart. §5's explicit rest-datum critical and velocity bounds consume \(\mathfrak R_{0,1}\) and \(\mathfrak R_{0,2}\) on that interval. Thus these are consequences of actual membership in the assembly's own order.

The independently read native unforced setting witness states the datum-generated whole-terminal theorem at LF404–439. Its proof at LF445–449 says that the “datum-generated whole-terminal construction gives these actual rows the memberships”; the remainder proves the norm extraction, full pressure, compatibility and mixed exhaustion from that output. This is a specific named construction dependency at that point; it is not supplied by the local constructor or the finite force-compensated identity merely by relabeling their time domain.

PROOF-PROGRAM PP20, LF235–253, preserves the intended order
\(u_0\to\{\mathcal R_{N,M}[u_0]\}\to\mathcal I\to\mathscr S_0\to u_*\to\text{actual endpoint jet}\to\text{restart}\).
Its §6 consumes \(u_*\in H^\infty\), constructs the usual same-datum local restart and joins it by uniqueness. Its §7 records an ordering/finalization rule; it contributes no additional mathematical derivation of the initial rectangle arrow.

## 8. Exact outcome of this bounded witness comparison

The new finite spatial-ladder compensation AP4–AP6 is a substantive verified improvement over the earlier isolated temporal-row correction. It constructs positive corrected block coordinates, known force budgets and nonnegative defects on each fixed finite ladder, with no force smallness and no order-uniform assumptions. AP8 independently constructs the actual full mixed local family from datum and force. AP9 and AP10 execute the reverse-column and finite rectangle producing operations when their stated whole-interval inputs are supplied. These are actual proof operations, not publication-identity obstacles.

The exact remaining handoff in these inspected sources is the datum-to-whole-terminal input: the local bounds in AP8 must hold on the proposed whole terminal interval, or an actual whole-terminal base/prefix must be independently supplied before AP9/AP10 are applied. AP6 does not replace that handoff, because it retains the complete signed nonlinear primitive and explicitly characterizes rather than asserts its finite-block membership. No downstream source-action criterion is substituted here. This result is limited to the identified witness operations; it is not a verdict about every other original construction.
