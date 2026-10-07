# Completed heights, compatible rectangles and matrix forms

**Reviewed scope and currentness.** Same-I domains explicit; use later FN15/NP17 for inhomogeneous source absorption wording. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only reconstruction of the combined Navier–Stokes source, 6 October 2026. This note explains the operations in both lanes' `02-compatible-rectangles.tex`, `03-matrix-forms.tex` and `03-quantitative-consequences.tex`, with their directly necessary mixed-jet and intersection definitions. Equations labeled PRH use unified notation or expand the printed operations. The finite-order lifting in §4 is explicitly a worked consequence, rather than a replacement for the publication's native construction.

The governing local source is `unified-unforced-forced-openai-refutation-20260924`. Exact pre-read identities, physical LF counts and SHA256 values are in [producer-source-before.json](../COVERAGE.md#A0227) and [producer-extra-source-before.json](../COVERAGE.md#A0225). The source locations below refer to those files. Public version matching and the directly cited native producer are separate verification tasks. No source or earlier artifact was changed.

## 1. Objects and order of operations

Fix one viscosity \(\nu>0\), one divergence-free datum \(u_0\in H^\infty_\sigma(\mathbb R^3)=\bigcap_{m\ge0}H^m_\sigma\), and its one pressure-normalized maximal history \((T_*,u,p)\). The forced lane also fixes one prescribed \(f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3))\), without amplitude smallness. Set \(f=0\) for the unforced formulas. On the proposed finite-terminal branch, \(I=(0,T_*)\); its strict restrictions \((0,S)\), \(S<T_*\), remain distinct domains.

| Object | Mathematical type and meaning | Physical reading |
|---|---|---|
| \(V_n=\partial_t^nu\) | A derivative of this history | Velocity and successive temporal rates |
| \(Q_n=\partial_t^np\) | A scalar pressure derivative | Pressure enforcing incompressibility at that row |
| \(F_n=\partial_t^nf\) | A prescribed force derivative | The corresponding external forcing rate |
| \(J_{n,\alpha}=\partial_x^\alpha V_n\), \(\Pi_{n,\alpha}=\partial_x^\alpha Q_n\) | Mixed jet fields | Space-time gradients of the same velocity and pressure |
| \(B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}\) | Complete differentiated convection | Every allocation between advecting and advected fields |
| \(\Lambda=(-\Delta)^{1/2}\) | Homogeneous Fourier differentiation | Resolution of spatial variation by frequency |
| \(E_{r,s}=\frac12\|\Lambda^sV_r\|_2^2\) | Nonnegative spatial energy in temporal row \(r\) | Weighted amount of that velocity variation |
| \(\mathcal P_{r,s}\), \(\mathcal W_{r,s}\) | Signed nonlinear production and force work | Transfer between scales and external work |
| \(R_k\) | A completed height coordinate | Higher spatial energy recovered from the full temporal balance |
| \(\mathcal R_{N,M}\), \(\mathfrak R_{N,M}\) | A finite field record and its velocity norm sum | A collection of flow coordinates and its size on its time domain |

The pressure scalar \(Q_n\) here is not a vector-valued nonlinear source called \(Q\) in other notes. Likewise the nonlinear field \(B_n\), the positive norm majorant \(\mathfrak B_{N,M}\), and the completed coordinate \(R_k\) have different types.

The complete rows are

\[
\begin{aligned}
V_{n+1}+B_n+\nabla Q_n&=\nu\Delta V_n+F_n,\\
V_{n+1}&=\nu\Delta V_n-\mathbb P B_n+\mathbb P F_n,\\
\nabla Q_n&=(1-\mathbb P)(F_n-B_n),\\
Q_n&=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}-\Phi_n,
\qquad\Phi_n=(-\Delta)^{-1}\nabla\cdot F_n .
\end{aligned}\tag{PRH1}
\]

Thus projection retains a concurrent pressure-completion equation, including the gradient force. Spatial derivatives use the entire multi-index Leibniz sum. The force pressure-source budget is explicitly defined at [forced mixed jets, LF275](../SOURCES.md#S117): it includes \(\Phi_n\)'s \(L^1H^M\) norm and its gradient's \(L^1H^{M-1}\) norm. The prescribed Schwartz class supplies the stated finite potential norms, including the low-frequency part.

The paper's order is: mixed jets state the datum-generated whole-terminal adjacent memberships; rectangles evaluate their norms, complete the heights and recover the spatial column; matrices rewrite those same records; the intersection identifies the all-orders space and common endpoint; quantitative consequences estimate its coordinates. The unforced whole-terminal theorem begins at [mixed jets, LF411](../SOURCES.md#S139), with its construction paragraph at LF521–527. The forced construction paragraph is at [mixed jets, LF642](../SOURCES.md#S117). This note keeps the memberships as that preceding theorem's output. The downstream identities do not add a selected-source criterion as a prerequisite for the native construction.

The supplied datum first generates the initial jet. Writing \(A_n=V_n(0)\), \(P_n=Q_n(0)\), the actual initial recurrence is

\[
A_0=u_0,\qquad
P_n=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j-\Phi_n(0),\qquad
A_{n+1}=\nu\Delta A_n-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n+F_n(0).
\tag{PRH1a}
\]

Every required initial row has every finite Sobolev order by the product/multiplier lemmas and induction. For a selected mixed equation \((n,\alpha)\), its finite dependency cover includes the next temporal coordinate, each viscous \(J_{n,\alpha+2e_\ell}\), each pressure \(\Pi_{n,\alpha+e_\ell}\), the source \(F_{n,\alpha}\), and both transport factors \(J_{a,\beta,i}\), \(J_{n-a,\alpha-\beta+e_i}\) for every allocation. Pressure completion also retains the full products at \(\gamma\in\{\alpha,\alpha+e_1,\alpha+e_2,\alpha+e_3\}\), together with the matching force potential. This is a dependency cover of fixed selected equations, not a separate truncated flow.

For force the printed affine payment is

\[
2|\langle F_n,V_n\rangle_{H^M}|
\le\nu\|V_n\|_{H^{M+1}}^2+\nu^{-1}\|F_n\|_{H^{M-1}}^2.
\tag{PRH1b}
\]

It uses the paired Bessel orders, so also respects \(H^{-1}\) when \(M=0\). The first term is assigned to the viscous row; the second and the force-pressure potential budget are finite prescribed inputs. The construction paragraph then applies the forced columnwise construction to this initial face and complete graph and states the whole-terminal adjacent memberships before terminal trace or restart. That is the original interface order. [Forced mixed jets, LF559–665](../SOURCES.md#S117). The elementary product, multiplier and adjacent-trace operations are supplied in [forced analytic framework, LF167–386](../SOURCES.md#S114).

## 2. Completing the critical heights

The kinetic row gives \(\sup\|u\|_2\le K_0=\|u_0\|_2\), \(\int\|\nabla u\|_2^2\le K_0^2/(2\nu)\) when unforced. For force, \(K_f(T)=K_0+\int_0^T\|\mathbb Pf\|_2\) replaces \(K_0\); the exact identity retains \(\int f\cdot u=\int\mathbb Pf\cdot u\). It is not an assertion that all higher production is nonpositive. [Unforced02, LF14](../SOURCES.md#S140); [forced02, LF13](../SOURCES.md#S118).

For r∈N0 and s≥0, the definitions in unified forced notation are

\[
\mathcal P_{r,s}=-\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s(B_r+\nabla Q_r)\rangle,
\qquad\mathcal W_{r,s}=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\tag{PRH2}
\]

Test the complete row against \(\Lambda^{2s}V_r\), with \(\Delta=-\Lambda^2\). This gives

\[
E'_{r,s}=\mathcal P_{r,s}+\mathcal W_{r,s}-2\nu E_{r,s+1}.
\tag{PRH3}
\]

The global pressure pairing vanishes by incompressibility and commutation with \(\Lambda\), once its stated norms justify integration. Its field remains in PRH1 and the record. This is a global contraction identity, rather than deletion of the pressure coordinate. [Unforced02, LF54–148](../SOURCES.md#S140); [forced02, LF68–163](../SOURCES.md#S118).

Differentiate PRH3 repeatedly. Induction yields the printed recurrence

\[
\partial_t^kE_{r,s}=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}
 (\mathcal P_{r,s+j}+\mathcal W_{r,s+j}).
\tag{PRH4}
\]

Differentiating the formula at \(k\) and substituting PRH3 at \((r,s+k)\) adds exactly its \(j=k\) term. Thus every spatial rise has coefficient \(-2\nu\), and every intervening production and force-work derivative remains.

Let \(H=E_{0,1/2}\), \(E_s=E_{0,s}\), \(\mathcal P_s=\mathcal P_{0,s}\), \(\mathcal W_s=\mathcal W_{0,s}\). The completed coordinate is

\[
R_k=\frac{H^{(k)}-\sum_{j<k}(-2\nu)^j\partial_t^{k-1-j}
 (\mathcal P_{j+1/2}+\mathcal W_{j+1/2})}{(-2\nu)^k}
=E_{k+1/2}=\frac12\|\Lambda^{k+1/2}u\|_2^2.
\tag{PRH5}
\]

The empty sum at \(k=0\) gives \(R_0=H\). Explicitly,

\[
\begin{aligned}
R_1&=\frac{\mathcal P_{1/2}+\mathcal W_{1/2}-H'}{2\nu},\\
R_2&=\frac{H''-(\mathcal P_{1/2}+\mathcal W_{1/2})'
 +2\nu(\mathcal P_{3/2}+\mathcal W_{3/2})}{4\nu^2},\\
R_3&=\frac{H'''-(\mathcal P_{1/2}+\mathcal W_{1/2})''
 +2\nu(\mathcal P_{3/2}+\mathcal W_{3/2})'
 -4\nu^2(\mathcal P_{5/2}+\mathcal W_{5/2})}{-8\nu^3}.
\end{aligned}\tag{PRH6}
\]

The base \(H\) is invariant under \(u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x)\); the higher heights resolve higher spatial derivatives. A raw temporal derivative is instead the signed anti-diagonal sum

\[
H^{(k)}=\frac12\sum_{a=0}^k\binom ka
\operatorname{Re}\langle\Lambda^{1/2}V_a,\Lambda^{1/2}V_{k-a}\rangle.
\tag{PRH7}
\]

It is not the positive diagonal energy \(E_{k,1/2}\). PRH5 uses the whole numerator to recover positivity. [Unforced02, LF149](../SOURCES.md#S140); [forced02, LF165](../SOURCES.md#S118).

Expanding the definition shows all complete derivative allocations:

\[
\begin{aligned}
\partial_t^\ell\mathcal P_{r,s}
={}&-\sum_{a=0}^r\binom ra\sum_{i+j+k=\ell}\frac{\ell!}{i!j!k!}
\operatorname{Re}\langle\Lambda^sV_{r+i},
 \Lambda^s((V_{a+j}\cdot\nabla)V_{r-a+k})\rangle\\
&-\sum_{i=0}^\ell\binom\ell i
\operatorname{Re}\langle\Lambda^sV_{r+i},\Lambda^s\nabla Q_{r+\ell-i}\rangle,\\
\partial_t^\ell\mathcal W_{r,s}
={}&\sum_{i=0}^\ell\binom\ell i
\operatorname{Re}\langle\Lambda^sV_{r+i},\Lambda^sF_{r+\ell-i}\rangle.
\end{aligned}\tag{PRH8}
\]

This is an unpacking of PRH2, not an assumed estimate. For \(r=0\), exchanging the first and third allocations and using divergence-free transport skewness gives the full commutator form

\[
\partial_t^\ell\mathcal P_s
=-\frac12\sum_{i+j+k=\ell}\frac{\ell!}{i!j!k!}
\operatorname{Re}\langle V_i,[\Lambda^{2s},V_j\cdot\nabla]V_k\rangle.
\tag{PRH9}
\]

No termwise absolute bound is needed for this algebra. At \(s=0\) it vanishes: kinetic convection and all its temporal derivatives cancel in the full sum. This does not assert that \(\mathcal P_{r,0}=0\) for each higher temporal-row energy.

## 3. Finite records, norms and interval realization

The record is \(\mathcal R_{N,M}=((V_n)_{n\le N},(V_{n+1})_{n\le N};(Q_n)_{n\le N};(F_n)_{n\le N})\), with force absent when unforced. Its velocity norm is

\[
\mathfrak R_{N,M}(u;S)=\sum_{n=0}^N
\left(\|V_n\|_{L^2(0,S;H^{M+1})}^2+
\|V_{n+1}\|_{L^2(0,S;H^{M-1})}^2\right).
\tag{PRH10}
\]

The spatial index chooses Sobolev spaces, not a hard Fourier cutoff. A field can occur twice in different spaces. At \(M=0\), the next-time face is \(H^{-1}\). Pressure is recorded by its \(L^1H^M\) norm and its gradient's \(L^1H^{M-1}\) norm. The forced record also includes \(F_n\)'s \(L^1H^{M-1}\) cost and its pressure-source budget. [Unforced02, LF173](../SOURCES.md#S140); [forced mixed jets, LF728](../SOURCES.md#S117).

For fixed finite \(N,M\), the preceding theorem supplies the adjacent memberships on the whole \(I\). Their finite norm is the finite sum PRH10. Restriction decreases each nonnegative integral, so monotone convergence gives

\[
\sup_{S<T_*}\mathfrak R_{N,M}(u;S)=\mathfrak R_{N,M}(u;T_*)<\infty.
\tag{PRH11}
\]

The finite constant may depend on fixed indices, datum, viscosity, horizon and the prescribed force coordinates. No all-order uniform constant is asserted. Restriction compatibility deletes exterior rows and uses canonical Sobolev embeddings; common entries are the same actual distributions. It is distinct from the whole-interval norm assertion, and the paper states both. [Unforced02, LF207–315](../SOURCES.md#S140), [LF458](../SOURCES.md#S140); [forced02, LF392](../SOURCES.md#S118), [LF658](../SOURCES.md#S118).

PRH5 evaluated on the records gives
\(\|R_k\|_{L^1(I)}=\frac12\|\Lambda^{k+1/2}u\|_{L^2L^2}^2\le\frac12\mathfrak R^*_{0,k}\).
Conversely, splitting low and high frequencies gives

\[
\|u\|_{L^2(I;H^m)}^2\le2^m\left(T_*K^2+2\|R_m\|_{L^1(I)}\right),
\qquad K=K_0\text{ or }K_f(T_*).
\tag{PRH12}
\]

Kinetic energy pays the low frequencies; a completed height pays the higher spatial norm. Each individual height belongs to \(L^1\); neither a sum over all heights nor an analytic radius is asserted. [Unforced02, LF316–393](../SOURCES.md#S140); [forced02, LF442–505](../SOURCES.md#S118).

## 4. Complete viscous cell and a worked finite-order lifting

For every finite temporal row n and s≥0 on a strict classical interval, the forced section prints an exact cell. Square
\(\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n=\Lambda^s\mathbb P(F_n-B_n)\), use \(V_{n+1}=\partial_tV_n\) for the cross term, and add the orthogonal pressure component:

\[
\|\Lambda^sV_{n+1}\|_2^2+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\tag{PRH13}
\]

Integrating to 0<S<T_* retains the terminal stock \(\nu\|\Lambda^{s+1}V_n(S)\|_2^2\), its initial value, and the full source square, including the force-nonlinearity cross term. Set \(F_n=0\) to specialize it algebraically to the unforced row. [Forced02, LF189–253](../SOURCES.md#S118).

For the printed estimate with \(M\ge2\), let \(R_v=\mathfrak R_{N,M}(u;T)\), \(I_{N,M}=\sum_{n\le N}\|V_n(0)\|_{H^M}^2\). The adjacent triple \(H^{M+1}\subset H^M\subset H^{M-1}\) gives

\[
\sum_{n\le N}\sup_{t\le T}\|V_n(t)\|_{H^M}^2\le I_{N,M}+R_v,
\qquad
\sum_{n\le N}\|B_n\|_{L^2H^{M-1}}^2
\le C_{N,M}(I_{N,M}+R_v)R_v.
\tag{PRH14}
\]

For the first bound, differentiate the squared \(H^M\) norm, pair \(\langle D\rangle^{M+1}V_n\) with \(\langle D\rangle^{M-1}V_{n+1}\), and integrate \(2ab\le a^2+b^2\). For the second, each binomial allocation has one factor in \(L^\infty H^M\) and the other in \(L^2H^{M+1}\). Sum PRH13 at \(s=M-1\), then use \(\|F_n-B_n\|^2\le2\|F_n\|^2+2\|B_n\|^2\). The pressure-complete dissipation record is bounded by
\(\nu I_{N,M}+2\sum\|F_n\|_{L^2H^{M-1}}^2+2C_{N,M}(I_{N,M}+R_v)R_v\).
It estimates the complete equation on the already supplied rectangle. [Forced02, LF309–389](../SOURCES.md#S118).

**The following lifting is a worked finite-order consequence of the printed parents, not an added producing hypothesis.** On one matched finite interval \(I=(0,S)\), let \(n\ge1\), \(m\ge0\),

\[
R=\mathfrak R_{n-1,m+2}(I),\qquad I_0=\sum_{j<n}\|V_j(0)\|_{H^{m+2}}^2.
\tag{PRH15}
\]

Its upper faces give \(V_j\in L^2H^{m+3}\), \(j<n\); its last next-time face gives \(V_n\in L^2H^{m+1}\). The adjacent triple therefore gives \(\sum_{j<n}\sup\|V_j\|_{H^{m+2}}^2\le I_0+R\).

Every ordered transport is the divergence of a tensor because its advecting factor is solenoidal. Sobolev multiplication and differentiation give

\[
\|\mathbb P\nabla\cdot(f\otimes g)\|_{H^{m-1}}
\le C_m\|f\|_{H^{m+2}}\|g\|_{H^{m+1}},
\tag{PRH16}
\]

also for the tensor with reversed factors. At \(m=0\), use \(H^2\hookrightarrow L^\infty\) to put the tensor in \(L^2\), then divergence maps it to \(H^{-1}\). Thus the next-time domain is respected at the lowest index.

For \(a=0,n\), take \(u\) in the trace space and \(V_n\) in \(L^2H^{m+1}\). For \(0<a<n\), take one lower row in its trace space and the other in \(L^2H^{m+3}\hookrightarrow L^2H^{m+1}\). This covers every allocation in \(B_n\). The total weight is \(\sum_a\binom na=2^n\), giving

\[
\begin{aligned}
\|\mathbb P B_n\|_{L^2H^{m-1}}&\le C_m2^n\sqrt{(I_0+R)R},\\
\|V_{n+1}\|_{L^2H^{m-1}}&\le\nu\sqrt R+C_m2^n\sqrt{(I_0+R)R}
+\|\mathbb PF_n\|_{L^2H^{m-1}}.
\end{aligned}\tag{PRH17}
\]

The retained smaller rectangle costs at most \(R\); the new upper face costs at most another \(R\). Squaring the last three terms gives

\[
\mathfrak R_{n,m}(I)\le(2+3\nu^2)R+3C_m^24^n(I_0+R)R
+3\|\mathbb PF_n\|_{L^2H^{m-1}}^2.
\tag{PRH18}
\]

Pressure is generated concurrently by PRH1, including the full force complement. Its scalar \(L^1H^m\) bound uses the complete products and \(\Phi_n\); its gradient also has the displayed \(L^2H^{m-1}\) control from \(F_n-B_n\). Iteration gives

\[
\mathfrak R_{0,M+2N}(I)\Rightarrow\mathfrak R_{1,M+2N-2}(I)
\Rightarrow\cdots\Rightarrow\mathfrak R_{N,M}(I).
\tag{PRH19}
\]

The finite constants depend on \(N,M,\nu\), the starting rectangle, required initial jets and force norms on this same interval. The datum/force jet recursion supplies the initial jets. The operation does not enlarge \(I\) or establish the starting whole-terminal rectangle. It is a coordinate transfer; the publication's native producing theorem remains in its original place.

## 5. Printed spatial-to-temporal reconstruction and intersection

The original all-spatial route starts with \(u\in\bigcap_mL^2(I;H^m)\). Write \(S_m=\|u\|_{L^2(I;H^m)}\). The complete projected row yields

\[
\|u_t\|_{L^1(I;H^m)}\le\nu\sqrt{T_*}\,S_{m+2}+C_mS_{m+2}^2
+\|\mathbb Pf\|_{L^1(I;H^m)}.
\tag{PRH20}
\]

Thus \(u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m)\). These representatives agree under Sobolev embeddings and give one endpoint \(u_*\in H^\infty_\sigma\). From this continuous spatial column, the *same actual* momentum recursion supplies continuous temporal rows. With \(M_{n,m}=\sup_{t\le T_*}\|V_n(t)\|_{H^m}\),

\[
M_{n+1,m}\le\nu M_{n,m+2}
+C_m\sum_{a=0}^n\binom na M_{a,m+2}M_{n-a,m+2}
+\sup_{t\le T_*}\|\mathbb PF_n(t)\|_{H^m}.
\tag{PRH21}
\]

PRH20 and the initial value give the base \(M_{0,m}\). PRH1 supplies the corresponding pressure with \(-\Phi_n\). On the interior these are the existing derivatives; their integral identities extend to one-sided endpoints. Each fixed continuous row belongs to \(L^2\) on the finite horizon. This is the printed operation in [unforced mixed jets, LF627](../SOURCES.md#S139) and [forced02, LF508–587](../SOURCES.md#S118).

The direct mixed route chooses, for each fixed \(r,m\), a finite rectangle with \(N\ge r\), \(M\ge m\). Its actual upper rows supply every term in

\[
\|u\|_{H_t^r(I;H_x^m)}^2
=\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2
\le\mathfrak R^*_{r,m}.
\tag{PRH22}
\]

Hence \(u\in\bigcap_{r,m\ge0}H_t^r(I;H_x^m)\). The inverse-system family records these same derivatives; it does not select independent solutions at each depth. Each seminorm is finite, without a sum or common bound over all orders. The completed-height/spatial route and the mixed-index route give the same membership. [Unforced04, LF10–110](../SOURCES.md#S143); [forced04, LF11–112](../SOURCES.md#S121).

The common spatial endpoint uses PRH20 at every finite order; pressure and jets retain the same equations. Later restart uses the local-history theorem, and forced restart keeps the original absolute-time force. This note works the displayed intersection/common-spatial-endpoint proof; its line-by-line coverage does not extend to the full later restart section. [Unforced04, LF112–158](../SOURCES.md#S143); [forced04, LF114](../SOURCES.md#S121).

## 6. The three matrix types

### Mixed transport operator

Let \(\Gamma=\mathbb N_0\times\mathbb N_0^3\), \(\kappa=(n,\alpha)\), \(\lambda=(a,\beta)\), and \(\lambda\preceq\kappa\) mean componentwise inclusion. The printed operator is

\[
\mathbb L(J)_{\kappa\lambda}=\begin{cases}
\binom\kappa\lambda\mathbb P[(J_{\kappa-\lambda}\cdot\nabla)\,\cdot\,],&\lambda\preceq\kappa,\\
0,&\text{otherwise}.
\end{cases}\tag{PRH23}
\]

For a fixed jet it acts linearly on its argument, but its action on \(\mathbf J\) is the full quadratic convection. Changing \(\lambda\) to \(\kappa-\lambda\) gives every ordered term with its binomial weight. The companion pressure is
\(\Pi_\kappa=R_iR_j\sum_{\lambda\preceq\kappa}\binom\kappa\lambda J_{\lambda,i}J_{\kappa-\lambda,j}-\partial_x^\alpha\Phi_n\); the velocity row includes \(\mathbb PF_{n,\alpha}\).

Each row has \((n+1)\prod_{j=1}^3(\alpha_j+1)\) supported blocks. Ordering by \(n+|\alpha|\) makes it lower triangular; the same-depth supported block is the diagonal \(\mathbb P(u\cdot\nabla)\). This records coefficient dependencies, not an autonomous truncated Navier–Stokes system obtained by discarding outside faces. [Unforced03-matrix, LF10–153](../SOURCES.md#S141); [forced03-matrix, LF13–170](../SOURCES.md#S119).

With \(\kappa!=n!\alpha!\), \(\widehat J_\kappa=J_\kappa/\kappa!\), and \(D_{\kappa\kappa}=\kappa!\),
\(\binom\kappa\lambda\lambda!(\kappa-\lambda)!=\kappa!\) proves the printed conjugacy

\[
D^{-1}\mathbb L(D\widehat J)D=\widehat{\mathbb L}(\widehat J),
\qquad\widehat{\mathbb L}_{\kappa\lambda}
=\mathbb P[(\widehat J_{\kappa-\lambda}\cdot\nabla)\,\cdot\,].
\tag{PRH24}
\]

The normalized unprojected row remains

\[
(n+1)\widehat J_{n+1,\alpha}
+\sum_{\lambda\preceq\kappa}(\widehat J_\lambda\cdot\nabla)\widehat J_{\kappa-\lambda}
+\nabla\widehat\Pi_\kappa
=\nu\Delta\widehat J_\kappa+\widehat F_\kappa.
\tag{PRH25}
\]

The factor \(n+1\) survives from normalization of the next temporal derivative. The matching pressure convolution retains the force potential. Every row is finite; factorial normalization assumes no infinite-series convergence or analytic radius.

### Field record and numerical norm table

One matrix arranges fields into rows \((V_n,V_{n+1},Q_n,F_n)\). Another arranges their numerical norms:

\[
\mathbf C_{N,M}=\begin{bmatrix}
G_{0,M+1}&G_{1,M-1}&P_{0,M}&D_{0,M}\\
\vdots&\vdots&\vdots&\vdots\\
G_{N,M+1}&G_{N+1,M-1}&P_{N,M}&D_{N,M}
\end{bmatrix},\qquad G_{n,m}=\|V_n\|_{L^2H^m}.
\tag{PRH26}
\]

Here \(P_{n,M}\) is the pressure-plus-gradient \(L^1\) cost and \(D_{n,M}\) is the force-plus-potential cost. The unforced table omits the last column. Its first two columns form \(\mathbf G\), with \(\|\mathbf G\|_F^2=\mathfrak R_{N,M}\); pressure/force column sums are their budgets. The adjacent pair \((G_{n,M+1},G_{n+1,M-1})\) gives the continuous \(H^M\) trace by the same Hilbert triple.

The exact spatial expansion is

\[
G_{n,m}^2=\sum_{|\alpha|\le m}\frac{m!}{(m-|\alpha|)!\alpha!}
\|J_{n,\alpha}\|_{L^2(I\times\mathbb R^3)}^2,
\qquad m\in\mathbb N_0,
\tag{PRH27}
\]

by expanding \((1+|\xi|^2)^m\). This identifies the finite mixed spatial record with its Bessel Sobolev norm. [Unforced03-matrix, LF155–291](../SOURCES.md#S141); [forced03-matrix, LF172–341](../SOURCES.md#S119).

These tables are not Gram matrices: entries are norms rather than pairwise inner products, and the tables are generally rectangular. Their printed \(\preceq_{\rm ent}\) is entrywise order under restriction, not Loewner PSD order. PRH24 is operator conjugacy, not Gram congruence. No causal Gram, Schur-complement coercivity or PSD assertion appears in these six sections. The positivity used here is positivity of norm squares and completed spatial heights, proving the stated finite sums and monotone restrictions. A Gram operation from another source is not imported into this explanation.

## 7. Quantitative coordinates and their dependencies

On one finite horizon \(T\le T_*\), the exact canonical coordinate is

\[
\mathfrak B_{N,M}=\sup_{S<T}\mathfrak R_{N,M}(u;S),\qquad
\mathfrak P_{N,M}=1+\mathfrak B_{N,M},\qquad
\mathfrak T_{N,M}=(1+T^{-1})^{1/2}\mathfrak P_{N,M}^{1/2}.
\tag{PRH28}
\]

The infimum of all bounding constants equals the displayed supremum. Terminal finiteness uses the whole-terminal rectangle theorem; strict-horizon finiteness uses classical persistence. It is an exact norm coordinate of this history, not a separately displayed polynomial of a small finite datum list. [Unforced quantitative, LF297–353](../SOURCES.md#S142), [LF472–588](../SOURCES.md#S142); [forced quantitative, LF346](../SOURCES.md#S120), [LF529–684](../SOURCES.md#S120).

| Majorant | It bounds | Inputs/operation |
|---|---|---|
| \(\mathfrak D_{n,m}\) | Initial jet \(\|V_n(0)\|_{H^m}\) | Full initial momentum recursion |
| \(\mathfrak Y_{n,m}\) | Pointwise velocity size | Base trace from \(\mathfrak B\), then recursion |
| \(\mathfrak X_{n,m}\) | \(L^2H^m\) size, including \(m=-1\) | Minimum of rectangle and time-length/supremum bounds |
| \(\mathfrak Z_{n,m}\) | Velocity supremum | Minimum of recursion, trace and integrated next-row bounds |
| \(\mathfrak Q^{(1),(2),(\infty)}\) | Pressure \(L^1,L^2,L^\infty\) sizes | Complete products plus force potential |
| \(\mathfrak G^{(0),(1),(2),(\infty)}\) | Initial/time norms of \(F_n\) | Prescribed force alone |
| \(\mathfrak L^{(1),(2),(\infty)}\) | Force-pressure potential costs | \(\Phi_n\) and its gradient where defined |

For the fixed product constant \(A_{m+1}\), the forced initial and pointwise recursions read

\[
\begin{aligned}
\mathfrak D_{n+1,m}&=\nu\mathfrak D_{n,m+2}
+A_{m+1}\sum_{a=0}^n\binom na\mathfrak D_{a,m+2}\mathfrak D_{n-a,m+2}
+\mathfrak G^{(0)}_{n,m},\\
\mathfrak Y_{n+1,m}&=\nu\mathfrak Y_{n,m+2}
+A_{m+1}\sum_{a=0}^n\binom na\mathfrak Y_{a,m+2}\mathfrak Y_{n-a,m+2}
+\mathfrak G^{(\infty)}_{n,m}.
\end{aligned}\tag{PRH29}
\]

Every nonlinear allocation retains both parents. Pressure uses two \(\mathfrak X\)'s for \(L^1\), one \(\mathfrak Z\) and one \(\mathfrak X\) for \(L^2\), and two \(\mathfrak Z\)'s for \(L^\infty\), with the corresponding \(\mathfrak L\) added. Pressure time differences retain both product differences and the next force-potential row. Cauchy–Schwarz in time gives a square-root modulus; a next-row supremum also gives a linear modulus. [Unforced quantitative, LF896–1095](../SOURCES.md#S142); [forced quantitative, LF1018–1231](../SOURCES.md#S120).

Height reconstruction uses \(\mathfrak H_m=\|R_m\|_{L^1(0,T)}\), \(S_m^2=2^m(TK^2+2\mathfrak H_m)\). Choose a time with \(H^m\) size at most \(T^{-1/2}S_m\) and integrate PRH20 to bound the base supremum; then apply PRH21. For a fixed target rectangle, the printed dependency list uses only height indices through \(M+2N+4\), corresponding analytic constants and finite force coordinates. No infinite sum is used to estimate a finite rectangle. [Unforced quantitative, LF698–826](../SOURCES.md#S142); [forced quantitative, LF807–946](../SOURCES.md#S120).

The remaining consequences convert these coordinates as follows:

- Mixed spatial derivatives shift the required spatial order by \(|\alpha|\). Sobolev embedding gives the printed spatial \(L^b\) sizes. Integrating the next row gives \(\sqrt{|t-s|}\,\mathfrak X\) or \(|t-s|\,\mathfrak Z\) moduli; interpolation gives intermediate regularities.
- For \(K\ge1\), \(\|P_{\ge K}v\|_{H^s}\le K^{-r}\|v\|_{H^{s+r}}\). Each requested polynomial tail uses a sufficiently high finite order; there is no common exponential tail assertion.
- Bernstein and a convergent weighted dyadic Cauchy–Schwarz sum give shell estimates for \(M>\sigma+k+3/2\), including the stated vorticity action.
- The continuation norms \(\|u\|_{L^2L^\infty}\) and \(\int\|\nabla u\|_\infty\) use \(\mathfrak X_{0,2}\) and \(\mathfrak X_{0,3}\). Sobolev growth uses the commutator estimate and Gronwall, retaining force \(L^1H^m\). These are consequences of the produced coordinate inputs.

See [unforced quantitative, LF937](../SOURCES.md#S142), [LF1165](../SOURCES.md#S142), [LF1385](../SOURCES.md#S142); [forced quantitative, LF1063](../SOURCES.md#S120), [LF1313](../SOURCES.md#S120), [LF1548](../SOURCES.md#S120).

The canonical catalogue also bounds every complete differentiated production row. Its energy derivative majorant is
\(\mathfrak E^{[1]}_{j,\ell}=\frac12\sum_{a\le\ell}\binom\ell a\mathfrak X_{a,j+1}\mathfrak X_{\ell-a,j+1}\), with the supremum version using \(\mathfrak Z\). Full force work is bounded by
\(\mathfrak W^{[1]}_{j,\ell}=\sum_{a\le\ell}\binom\ell a\mathfrak X_{a,j+1}\mathfrak G^{(2)}_{\ell-a,j+1}\).
Rearranging PRH3 gives

\[
\|\partial_t^\ell\mathcal P_{j+1/2}\|_{L^1}
\le\mathfrak E^{[1]}_{j,\ell+1}+2\nu\mathfrak E^{[1]}_{j+1,\ell}
+\mathfrak W^{[1]}_{j,\ell},
\tag{PRH30}
\]

with the matching supremum bound and zero work when unforced. Thus the complete signed terms in PRH4 have finite-order bounds after the family is available. [Unforced quantitative, LF1661–1727](../SOURCES.md#S142); [forced quantitative, LF1745–1827](../SOURCES.md#S120).

Viscosity covariance is exact: \(u(t)=\nu v(\nu t)\), \(p(t)=\nu^2q(\nu t)\), \(f(t)=\nu^2\widetilde f(\nu t)\). Hence \(V_n=\nu^{n+1}\widetilde V_n\), \(Q_n,F_n=\nu^{n+2}(\widetilde Q_n,\widetilde F_n)\). Squared velocity faces acquire \(\nu^{2n+1}\) and \(\nu^{2n+3}\); pressure \(L^1\) acquires \(\nu^{n+1}\), and height time mass acquires \(\nu\). Forced restart at \(t_0\) uses \(\widetilde f(\sigma)=\nu^{-2}f(t_0+\sigma/\nu)\). [Unforced quantitative, LF589–696](../SOURCES.md#S142); [forced quantitative, LF685–805](../SOURCES.md#S120).

## 8. The opening H1 completion uses the preceding smooth result

Although placed first in the quantitative section, the global \(H^1\) theorem invokes the earlier global \(H^\infty\) result after positive-time smoothing. Its local construction uses Friedrichs frequency projections, kinetic energy and the explicit local estimate. With \(Y=\|\nabla u\|_2^2\), \(Z=\|\Delta u\|_2^2\), \(c_1=27S_6^6/16\), the unforced inequality is \(Y'+\nu Z\le c_1\nu^{-3}Y^3\); forced it is \(Y'+(\nu/2)Z\le c_1\nu^{-3}Y^3+2\nu^{-1}\|\mathbb Pf\|_2^2\). The displayed short lifespan controls this locally. Compactness gives the local \(C H^1\cap L^2H^2\) history and its initial trace; the difference estimate supplies uniqueness.

The printed smoothing step cites Tao 2013, Theorem 5.4(ii) and Lemma 5.5. Once \(u(t_0)\in H^\infty\), \(t_0>0\), the already-established smooth global theorem is applied with the original force and uniqueness glues the histories. The local ODE is not used as an independent arbitrary-datum terminal bound. [Unforced quantitative, LF4–289](../SOURCES.md#S142); [forced quantitative, LF4–338](../SOURCES.md#S120). This note reads and explains that invocation; it does not independently reprove the external smoothing citation.

## 9. Separate context and verification coverage

The recovered [unified-forced-unforced-framework-20260912.md, LF542–591](../SOURCES.md#S162) displays the finite substitution PRH15–19 as its equations 43–47. LF591 expressly keeps the matched interval: its local starting entries come from equation 42, while another interval must supply its own input. This file is not established here as a direct citation dependency of the combined publication. It is separate context, not a main proof premise. The main account works the published adjacent trace and complete row and follows the publication's own spatial-column reconstruction.

All four rectangle/matrix files were read in full. The complete unforced quantitative file was read in physical-line order. The complete forced quantitative text was compared after normalizing only the lane-label prefix; all 159 nonmatching blocks, comprising 395 forced physical lines, were read with exact LF locations. The matching passages were the already-read same formulas and proofs. Mixed-jet and intersection inputs were read in the directly used ranges identified above. The height induction, full source cell, finite lifting, factorial conjugacy, norm identities, spatial-to-temporal reconstruction and intersection norm calculation are worked explicitly here.

This note covers these constituents and their stated theorem interfaces. It does not make a global proof-validity verdict, claim an unprinted Gram argument, or certify the native producer through a later criterion. There was no local-source access blocker.
