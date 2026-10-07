# The published unforced argument: objects, operations, and source comparison

**Reviewed scope and currentness.** Published PDF governs proof comparison; current/generated witnesses are distinct. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only reconstruction, 6 October 2026. This document teaches the argument in the 80-page unforced publication before comparing its source witnesses. It uses the actual PDF text and original mathematical sources. Earlier audit conclusions are not premises.

## 1. Which text is being taught

The publication identified by the parent public reader is Figshare **33472627.v4**, official file **69288541**, with preceding file **68596303**. The local 80-page PDF candidate is:

`global-smoothness-unforced-navier-stokes-20260923.pdf [S080]`.

Its SHA256 is `726829ce58f71a78e82f9c81b908af284ed2c0eb1575b8b741f61920ee9738b0`; its MD5 is `5b91296901b8110725354813083139d5`. Its reader-visible text is preserved in [unforced-published-20260923-text.txt](../COVERAGE.md#A0287). Until the independently acquired official bytes are compared, this is an exact local deposited-PDF candidate, not a custody assertion based on its filename.

The current Research-Consolidation standalone TeX tree, `papers/navier-stokes/manuscript/generated`, is a **different source witness**. In particular its initial-datum theorem is not the reader-visible proof on PDF page 29. The separate `ToE/navier-stokes-public` generated tree is another witness; its current Section 3 source is also not that page-29 text. This reconstruction therefore cites PDF page/theorem/equation numbers for the published argument and physical source lines for source comparisons.

The September 15 release receipt binds an earlier PDF , its own source manifest, and a proof-spine authority identity-indexed witness. That earlier receipt does not bind the September 23 candidate. Its review opinions are not mathematical evidence here.

## 2. The single object and its coordinates

The datum is one divergence-free vector field

\[
u_0\in H^\infty_\sigma(\mathbb R^3)
:=\bigcap_{m\ge0}H^m_\sigma(\mathbb R^3),\qquad \nu>0.
\tag{UT1}
\]

This is a full Sobolev datum assumption. A pointwise smooth, finite-energy field need not belong to every Sobolev space. The paper fixes viscosity and datum throughout. There is no external force in this constituent.

The fluid is the pressure-complete maximal history `(T*,u,p)` of Definition 3.2, PDF pages 24–25. For every **strict** `T<T*` and every finite `n,m`, its actual derivatives lie in `C([0,T];H^m)`. They solve

\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\quad \nabla\cdot u=0,\quad u(0)=u_0,
\quad p=R_iR_j(u_i u_j).
\tag{UT2}
\]

The pressure representative is the `L²` Riesz representative, with `R_i=\partial_i(-\Delta)^{-1/2}`. Taking divergence gives `-Δp=∂i∂j(uiuj)`. Two `L²` representatives differ by an `L²` harmonic function and hence agree. The pressure is consequently determined by this velocity, rather than prescribed independently. The equivalent projected source is `P div(u⊗u)`; projection is a readout of the pressure-complete equation.

“Maximal” means that no pressure-complete classical history from the same datum extends this one past `T*` while agreeing on `[0,T*)`. It does not initially declare any terminal value at `T*`.

The temporal and mixed jet coordinates are

\[
V_n=\partial_t^nu,\quad Q_n=\partial_t^np,
\quad J_{n,\alpha}=\partial_t^n\partial_x^\alpha u,
\quad \Pi_{n,\alpha}=\partial_t^n\partial_x^\alpha p.
\tag{UT3}
\]

Every entry is a derivative of the same history. A high temporal row is not a later fluid configuration, an independently selected solution, or a new datum. Temporal derivatives are Eulerian derivatives at fixed spatial coordinates; material derivatives are different operations.

Proposition 3.4, PDF pages 25–26, is the full Leibniz operation:

\[
\begin{aligned}
Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j,\\
V_{n+1}&=\nu\Delta V_n-
 \sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}-\nabla Q_n,\\
\Pi_{n,\alpha}&=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 J_{a,\beta,i}J_{n-a,\alpha-\beta,j},\\
J_{n+1,\alpha}&+\sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha}=\nu\Delta J_{n,\alpha},\\
\nabla\cdot J_{n,\alpha}&=0.
\end{aligned}
\tag{UT4}
\]

Both ordered nonlinear parents, all binomial coefficients, pressure, and viscosity remain. For example the second temporal transport derivative is `(V₂·∇)u+2(V₁·∇)V₁+(u·∇)V₂`, rather than just its outer two terms.

The initial jet is constructive: set `V₀⁰=u₀`, use the first formula of UT4 to determine `Q_n⁰`, and then the second to determine `V_(n+1)⁰`. At each finite step all parents have already been determined. Sobolev multiplication, spatial differentiation, and Riesz boundedness preserve each required finite order because `u₀` has arbitrarily high finite orders. This is Lemma 3.7, PDF page 27; current RC standalone `01-setting-mixed-jet.tex` LF258–307. It establishes the complete initial face, not a terminal trace.

## 3. What is actually constructed locally

Theorem 2.11, PDF pages 20–23, supplies a positive common interval by a fixed point. Its pressure-normalized mild class consists of a velocity in `C([s,b];H³σ)`, its Riesz pressure in `C([s,b];H³)`, and the shifted Duhamel identity

\[
w(t)=e^{\nu(t-s)\Delta}a-
 \int_s^t e^{\nu(t-r)\Delta}\mathbb P\nabla\cdot(w\otimes w)(r)\,dr.
\tag{UT5}
\]

The entire projected quadratic source is retained in the fixed point. The current RC analytic source spells out its estimates at LF662–1018. With

\[
\begin{aligned}
L_\nu&=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\qquad
C_q=\sqrt3 C_3^{\rm alg},\\
c_\nu&=(8C_qL_\nu^2)^{-2},\qquad
\delta_\nu(a)=\min\{1,c_\nu(1+\|a\|_{H^3})^{-2}\},
\end{aligned}
\tag{UT6}
\]

the construction works on every `0<δ≤δν(a)`. Its Banach norm is

\[
\|w\|_{X_\delta}=\|w\|_{CH^3}+\|w\|_{L^2H^4}
 +\|w_t\|_{L^2H^2}.
\]

The linear solve costs at most `Lν(||a||H³+||F||L²H²)`; the quadratic source satisfies `||P div(v⊗z)||H²≤Cq||v||H³||z||H³`. The radius `R=2Lν||a||H³` and UT6 give contraction factor at most `1/2`. Thus the fixed point actually supplies these three finite norms on `[s,s+δ]`.

Higher Sobolev persistence uses Fourier-truncated approximations on **this same δ**. Their `H³` bound controls `∫||∇w||∞`; the complete transport commutator and Gronwall give, for each fixed `m≥3`,

\[
\sup_{0\le t\le\delta}
\left(\|w^{(k)}(t)\|_{H^m}^2+
 2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\right)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2.
\tag{UT7}
\]

The approximants converge to the same fixed point in `Xδ`. Weak limits and the adjacent-row trace give `CH^m`, `L²H^(m+1)`, and `w_t∈L²H^(m−1)` on that common interval. The UT4 recurrence then identifies all its smooth temporal and pressure rows. Uniqueness in the full shifted mild class makes overlapping local solutions agree; their union gives the maximal history. These are concrete local construction and compatibility operations with explicitly stated time domains.

## 4. The datum theorem used by the published proof

On PDF page 29, Theorem 3.9 is titled **Established datum-generated compatible finite blocks**. It takes UT1 and the already defined maximal history; under the proposed finite endpoint `T*<∞`, put `I=(0,T*)`. Its conclusion is

\[
V_n\in L^2(I;H^{m+1}),\qquad
V_{n+1}\in L^2(I;H^{m-1})
\quad(n,m\in\mathbb N_0),
\tag{UT8}
\]

with actual distributional derivatives, every finite mixed velocity coordinate in `L²(I;H^m)`, each mixed pressure coordinate in `L¹(I;H^m)`, and compatibility under enlargement.

The proof's exact order matters. It applies the whole-terminal datum theorem recorded in reference [3], Section 5, equations **TIR.11a-pre–TIR.11a**, **before restriction in time**. Its finite output, published equation (58), is

\[
P_{N,M}[u_0,\nu;I]
=\sum_{n=0}^N\left(
 \|V_n\|_{L^2(I;H^{M+1})}^2+
 \|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right)<\infty.
\tag{UT9}
\]

The initial jet fixes the initial face; UT4 fixes the interior rows. Selecting `N≥n,M=m` gives UT8. Taking a higher spatial order gives the mixed rows. The finite-row pressure theorem gives

\[
\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}
\le C_M^{\rm p}\sum_{a=0}^n\binom na
 \|V_a\|_{L^2H^{M+1}}\|V_{n-a}\|_{L^2H^{M+1}},
\tag{UT10}
\]

where `C_M^p≤2C_M^alg`. The same formula with both Leibniz indices gives the mixed pressure estimate. The `M=0` pressure-gradient space is `H^(-1)`, and the tensor/divergence form retains this endpoint.

The published proof says explicitly that restriction and monotone exhaustion are readouts of its already finite whole-terminal output. They are not the operation that first creates UT8. There is no requirement of one constant common to all temporal and spatial orders. A separate finite constant for each pair suffices.

The mathematical meaning of membership in UT8 is finiteness of the defining norm integral on **all of I**, including integrable approach to its endpoint. It does not mean only that each strict window has a finite norm, nor that the field solves its differentiated equation pointwise in the interior.

## 5. What a finite rectangle records

A rectangle retains the tuple

\[
\mathcal R_{N,M}[u_0;T_*]
=((V_n)_{n=0}^N,(V_{n+1})_{n=0}^N;(Q_n)_{n=0}^N)
\tag{UT11}
\]

in its declared Sobolev spaces and with the equation graph UT4. It is a finite selection of coordinates of the actual history. A larger rectangle restricts by deleting temporal coordinates and applying canonical Sobolev embeddings. Common coordinates agree as distributions.

Definitions 4.5 and Theorem 4.6, PDF page 34, attach the strict-window norm

\[
\mathfrak R_{N,M}(u;T)=\sum_{n=0}^N
\left(\|V_n\|_{L^2(0,T;H^{M+1})}^2+
\|V_{n+1}\|_{L^2(0,T;H^{M-1})}^2\right).
\]

Its finite supremum and terminal realization are

\[
\mathfrak R^*_{N,M}
:=\sup_{0<T<T_*}\mathfrak R_{N,M}(u;T)
=\mathfrak R_{N,M}(u;T_*)=P_{N,M}[u_0,\nu;I]<\infty.
\tag{UT12}
\]

Restriction proves the upper inequality. Monotone convergence of finitely many nonnegative integrals gives equality. Conversely, a finite strict-cutoff supremum yields UT8 by the same monotone convergence. This is Proposition 4.7, PDF page 35. The equivalence is an exact functional-analytic operation; the source of finiteness is the datum theorem used in Section 4 above.

The pressure norm is the finite sum of `||Q_n||L¹H^M+||∇Q_n||L¹H^(M−1)`. UT10 gives its complete bound `C_M^p(2^(N+1)−1)R*_(N,M)` (Proposition 4.9). No pressure parent is discarded to make the block finite.

## 6. First exhaustion: mixed indices

Fix a desired finite temporal order `r` and spatial order `m`. A sufficiently deep rectangle contains `V₀,…,V_r` in `L²(I;H^m)`. UT4 identifies them as weak derivatives, so the derivative-sum Sobolev norm is

\[
\|u\|_{H_t^r(I;H_x^m)}^2
=\sum_{n=0}^r\|V_n\|_{L^2(I;H^m)}^2<\infty.
\tag{UT13}
\]

Letting each finite pair be chosen gives

\[
u\in\mathcal X_\infty(I)
:=\bigcap_{r,m\ge0}H_t^r(I;H_x^m).
\tag{UT14}
\]

This is Corollary 3.10, published equations (59)–(60), and Theorem 5.2, equations (90)–(93). An intersection requires each finite-order membership. It contains no infinite sum of all orders and introduces no uniform tower radius.

Definition 5.1, equations (87)–(88), calls the compatible family an inverse limit: a tuple of finite records whose restrictions agree. For this datum-generated family, projecting the common record gives exactly UT11. Its reconstruction is of the one actual history; the proof is not solving independent truncated fluids and then guessing that their limits coincide.

## 7. Second exhaustion: completed critical heights

The base critical energy is a scalar readout

\[
E_s=\tfrac12\|\Lambda^su\|_2^2,\qquad H=E_{1/2},
\qquad \Lambda=(-\Delta)^{1/2}.
\]

For any temporal row the paper retains its complete signed transfer

\[
\begin{aligned}
E_{r,s}&=\tfrac12\|\Lambda^sV_r\|_2^2,\\
\mathcal P_{r,s}&=-\operatorname{Re}\left\langle
\Lambda^sV_r,\Lambda^s\left[
\sum_{a=0}^r\binom ra(V_a\cdot\nabla)V_{r-a}+\nabla Q_r
\right]\right\rangle.
\end{aligned}
\tag{UT15}
\]

Pairing the full row gives

\[
\partial_tE_{r,s}=\mathcal P_{r,s}-2\nu E_{r,s+1},
\quad
\partial_t^kE_{r,s}=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{r,s+j}.
\tag{UT16}
\]

The induction differentiates the previous identity and substitutes the energy identity at the newly exposed spatial order. It holds on every strict classical interval. It includes every differentiated transport parent. The pressure pairing has its canonical solenoidal representation; the pressure graph still determines the rows.

The completed coordinate, Proposition 4.3 and Definition 4.4, equations (69)–(73), is

\[
R_0=H,\qquad
R_k=\frac{H^{(k)}-
 \sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{j+1/2}}
 {(-2\nu)^k}
=\tfrac12\|\Lambda^{k+1/2}u\|_2^2.
\tag{UT17}
\]

Here `H^(k)` is the derivative of a quadratic energy, not the energy of `V_k`. Its own binomial cross-pairing is `½Σ_a binom(k,a)⟨Λ^.5V_a,Λ^.5V_(k−a)⟩`. Scalar smoothness of `H` without its compatible complete transfers would not be UT17.

The already available finite rectangle at `(0,k)` makes each completed coordinate integrable:

\[
\|R_k\|_{L^1(I)}=\tfrac12\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\tfrac12\mathfrak R^*_{0,k}.
\tag{UT18}
\]

This is the published Corollary 4.8, equation (79). The kinetic-energy identity separately controls the low frequency carrier. Splitting `|ξ|≤1` and `|ξ|>1` gives

\[
\|u\|_{L^2(I;H^m)}^2
\le2^m\left(T_*\|u_0\|_2^2+2\|R_m\|_{L^1(I)}\right).
\tag{UT19}
\]

Consequently all finite completed heights recover the complete spatial row `S₀(I)=⋂mL²(I;H^m)`. They are another exhaustion of the **same** finite-block family, not another datum-to-history existence argument.

Proposition 3.11, PDF pages 30–31, then returns from this spatial row to UT14. For each `m`, the full projected product bound and finite `T*` give

\[
\|\mathbb P\nabla\cdot(u\otimes u)\|_{L^1H^m}
\le C_m\|u\|_{L^2H^{m+2}}^2,\quad
\|\Delta u\|_{L^1H^m}\le\sqrt{T_*}\|u\|_{L^2H^{m+2}}.
\tag{UT20}
\]

Hence `u_t∈L¹H^m`, `u∈W^(1,1)(I;H^m)`, and `u` has a continuous representative on the **closed** finite interval. Induction in UT4, using sufficiently high available spatial orders, makes each next temporal and pressure row continuous in every prescribed `H^m`. They equal the actual derivatives on the interior; their integral identities extend to the endpoints by continuity. Finite `T*` gives their `L²` memberships and UT13. This is a finite induction at each requested order; no analytic generating radius is required.

## 8. What “column” and “reversible intersection” mean in the cited spine witnesses

The two recovered spine versions retain the same full pressure-explicit tower UT4 and the signed height identity UT17. Their word “column” describes which coordinate index of the one history is exhausted. Their mathematical columns are:

| Column | Exact mathematical object | Its own smoothness implication |
|---|---|---|
| Half-integer spatial | `S∞½=L²_x∩⋂n dotH_x^(n+½)=⋂mH_x^m` | For each derivative choose an exponent above its order plus `3/2` |
| Temporal critical height | `H∞(I)=⋂rH_t^r(I)` with compatible pressure/transfer graph | One-dimensional Sobolev embedding at each temporal order |
| Velocity time, fixed spatial order | `V∞,m(I)=⋂rH_t^r(I;H_x^m)` | `C_t^∞(I;H_x^m)` |
| Full pressure-complete jet | `(u,p)∈X∞×X∞`, all actual mixed derivatives and full NS rows | Successive time and space embeddings give joint smoothness |

The spine's mathematical diagram TIR.2 places the original pressure-complete mixed jet, velocity-time column, critical-height/VPI column, and spatial Sobolev column along compatible two-way arrows. Current mathematical explanatory text LF120–128 says the arrows are simultaneous readouts of one solution, rather than successive fluid states. It also says explicitly that a scalar height/VPI readout is **not an injective reconstruction of the velocity field**: compatibility is supplied by the original pressure-explicit jet, and an individual arrow does not supply the datum-to-intersection implication.

Accordingly, the reversible operation used here is recurrence/complete-height substitution on that compatible same-history graph. It exposes the spatial coordinate and, given the actual spatial history, reconstructs its temporal/pressure coordinates as in Proposition 3.11. Each column has its own all-orders embedding argument, rather than reserving “smoothness” for just the spatial column. Incompressibility enters the full equation graph and fixes normalized pressure. It does not create a different fluid or remove the higher-order transport transfers.

The older Silver ontology note, `mpp-silver-participation-complement-contrapositive-repair-20260722.md` LF8–37 and56–78, defines `Member(Q)` as a smooth continuation-class predicate and distinguishes interior classical participation from terminal participation. This explains that older vocabulary; it is **not** imposed as a status or premise on later TIR or the published theorem. Later TIR replaces a bare predicate with explicit compatible whole-interval Sobolev coordinates and an endpoint/restart composition. These are distinct statements with distinct supplied inputs.

### Exact recovered spine version comparison

The archived publication-package copy is

`documents/manuscripts/voice-refinement-2026-08-23/source/proof-authority/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`, .

Its Section 5, LF275–315, states `(MR)_(N,m)` as the established whole-terminal theorem, displays finite-cutoff boundedness as TIR.11a-pre, and records the compatible intersection as TIR.11a. LF345–365 defines `Dom_comp(R_n;I)` to include the same-history full height graph **and** `R_n∈L¹(I)`; its projection gives the spatial column. LF418–435 states rectangles→intersection→four embeddings→endpoint/restart as the proof order.

The current TC copy and `thomas-proof-spine-source-export-20260917.txt` are byte-identical, . Current §5 LF281–348 explicitly starts from the supplied `(MR)` memberships, defines their finite squared-norm sum, and uses restriction plus monotone convergence for TIR.11a-pre. It distinguishes the ambient `X∞` from the datum-generated record `I[u₀]`, and spells out the derivative-sum derivation of TIR.11a. LF350–362 adds its own row trace estimate. LF383–405 derives the scalar height Sobolev memberships from the bounded mixed rows. LF411–425 replaces the older unrestricted-looking graph-projection notation with the explicit same-admitted-history equivalence

\[
[R_n=E_{n+1/2}\in L^1(I)\ \forall n]
\Longleftrightarrow
u\in L^2_tL^2_x\cap\bigcap_nL^2_t\dot H_x^{n+1/2}.
\tag{UT21}
\]

Its LF461–522 separately completes the pressure and states the full compatible solution class. These are substantive clarification differences, not byte-identical historical custody.

The published reference [3] on page 80 gives author, title, year, and Section 5, with no source hash or linked archived version. The September 15 receipt's `ffae335e…` authority bytes have not been recovered in the bounded search. Thus neither the older `1d188b…` copy nor the current/export `2b3821…` copy is asserted to be **the exact reference-3 version used for this September 23 PDF**. The mathematical sections above are verified qualified witnesses, while the published page-29 application is exact. This version qualification is independent of assessing any proof claim.

## 9. Terminal trace, jet, and same-history restart

After either exhaustion, Theorem 5.2 puts the actual history in UT14 and gives `Σ_(j≤r)||V_j||L²H^m²≤R*_(r,m)`. Proposition 5.3 uses UT20 to obtain one common endpoint `u*∈H∞σ`. Compatibility means that a higher-Sobolev continuous representative embeds into the lower one and agrees with the preterminal history; hence its endpoint values agree as well. No endpoint is assumed at the start.

The more quantitative Theorem 5.5, PDF pages 40–41, uses the adjacent Hilbert pair

\[
V_n\in L^2H^{m+1},\qquad \partial_tV_n=V_{n+1}\in L^2H^{m-1}.
\]

The cutoff-justified quadratic identity is

\[
\frac d{dt}\|V_n\|_{H^m}^2
=2\operatorname{Re}\langle A^{m-1}V_{n+1},A^{m+1}V_n\rangle,
\qquad A=(1-\Delta)^{1/2}.
\]

It yields the closed-interval representative and

\[
\|V_n\|_{C([0,T_*];H^m)}\le
E_{N,m}:=\sqrt{1+T_*^{-1}}\sqrt{\mathfrak R^*_{N,m}}
\quad(0\le n\le N).
\tag{UT22}
\]

The next bounded continuous row, at its own finite rectangle, gives the terminal modulus

\[
\|V_n(t)-V_n^*\|_{H^m}\le(T_*-t)E_{n+1,m}.
\tag{UT23}
\]

Theorem 5.6 passes the full pressure products to these limits:

\[
Q_n^*=R_iR_j\sum_{a=0}^n\binom na(V_a^*)_i(V_{n-a}^*)_j,
\quad
V_{n+1}^*=\nu\Delta V_n^*-
 \sum_{a=0}^n\binom na(V_a^*\cdot\nabla)V_{n-a}^*-
 \nabla Q_n^*.
\tag{UT24}
\]

All equalities hold in every fixed sufficiently low finite Sobolev space, using convergence in the higher spaces needed for products and derivatives. The recurrence uniquely determines the normalized endpoint jet from `V₀*=u*`. The pressure itself has the corresponding closed-interval smooth temporal representatives.

Let `δ₀=min{1,cν(1+E₀,₃)^(-2)}>0`. A late slice `t₀>T*−δ₀/2` and `u*` each admit the UT5 local class for time `δ₀`. Restriction and uniqueness identify the late-slice solution with the original history before `T*`; continuity makes its value at `T*` equal `u*`; uniqueness on the right overlap identifies it with the restart from `u*`. Theorems 5.7–5.8 therefore glue one local classical history across the endpoint. Its full one-sided jet agrees by UT24. This proves a pressure-complete extension past `T*`, contradicting maximality. The published Corollary 5.9 and Theorem 5.10 state the resulting global conclusion.

## 10. Matrices, quantitative bounds, and applications

The separate detailed reconstruction is [unforced-matrix-quantitative-teaching.md](A0283-unforced-matrix-quantitative-teaching.md). The role of these sections is precise:

* Section 6 reorganizes already completed finite rows. Its lower-triangular coefficient array has finite support in each block row. Factorial normalization turns binomial coefficients into ordinary finite convolution coefficients. It is not an infinite operator-norm estimate or a diagonalization that separately creates membership.
* The velocity/adjacent-row/pressure arrays have a Frobenius norm that equals the finite rectangle norm with the stated Sobolev multinomial weights. Their whole-interval estimate uses the already supplied finite rectangle norms.
* Section 7 defines canonical coordinates and finite majorants for the selected actual history. Trace bounds, higher temporal recurrences, source and pressure estimates, tail bounds, and quantitative restart radii are consequences of those finite norms. General-data `R*_(N,M)` is the exact history supremum, rather than a newly derived finite formula in a fixed number of datum norms.
* Section 8.1 contains an actual separate small-critical-data construction and nonlinear absorption. At `||u₀||dotH^.5<√2πν`, the complete source inequality `||P div(u⊗u)||dotH^(-.5)≤(√2π)^(-1)||u||dotH^.5||u||dotH^1.5` creates a positive dissipative margin. Its first-exit and higher-order commutator estimates produce uniform fixed-order bounds and restart. This restricted result is taught on its own hypothesis, not used as the general datum theorem.
* The later scale-local, vorticity, material-flow, relative-energy, and Leray–Hopf consequences explicitly take the earlier global strong history or its finite rectangle bounds as input. Their mathematical applications do not silently become a new prerequisite for that history.

## 11. What changes in the combined source

Compare the **reader-visible published proof**, the current RC standalone source, and the combined part; these are three distinct objects.

| Operation | Published 80-page PDF | Current RC standalone | Combined unforced part |
|---|---|---|---|
| Initial-datum theorem | 3.9, p29; imports [3,§5,TIR.11a-pre–11a], then (58) finite output | `01` LF404–475; states whole-terminal rectangles and directly invokes datum-generated whole-terminal construction at LF447–449 | `01` LF411–579; expands initial jet, full finite dependency cover/equation graph, then invokes columnwise membership construction at LF521–527 |
| Full nonlinear parents and pressure | Proposition 3.4 and3.8; all mixed Leibniz/Riesz terms | Same full recurrence and product operations | Same full recurrence; additionally enumerated finite dependency cover |
| Restriction/monotone step | (58) before restriction;4.6–4.7 give finite norm/equality | Same membership→finite sum→restriction order | Explicitly writes finite C_NM and cutoff equality after supplied membership |
| Two exhaustions | 3.10 mixed;4.8 heights followed by3.11 spatial reconstruction | Same mathematical routes | Same mathematical routes |
| Endpoint and restart | 5.2–5.10, pp38–44 | Current RC04 normalized labels byte-identical combined04 | Same RC source formulas after `u:` label prefix removal |

The combined finite-cover expansion retains the adjacent temporal coordinate, three viscous spatial coordinates, pressure-gradient coordinates, both ordered transport factors, and both normalized-pressure product parents at every selected mixed equation. It explicitly says this is not an autonomous truncated fluid: every coordinate is a derivative of the actual history. This adds equation-graph detail to the proof interface. Its membership sentence is still located after that initial-face and graph construction and before its norm/restriction/trace readouts.

For the current RC source pair, removal of only the `u:` namespace prefix makes `02-compatible-rectangles.tex`, `03-matrix-forms.tex`, `04-intersection-endpoint-restart.tex`, and `06-conclusion.tex` identical. The other section differences apart from `01` are the recorded minor macro/title/punctuation changes in the fresh `unforced-diff-*.txt` files. This does **not** assert that the current standalone RC source is the September 23 deposited source: its theorem proof and some published titles/conclusion wording already differ.

## 12. The exact dependency boundary, after understanding the argument

The published global composition has an explicit input: Theorem 3.9 applies the cited whole-terminal finite-block theorem. If that input is supplied, the finite norm evaluation, two exhaustions, pressure completion, common endpoint, complete jet, uniqueness overlap, and restart described above have the displayed finite-order derivations. No downstream source-square or two-high response criterion is introduced by this reconstruction.

The local fixed point and initial jet are also concrete, independently reconstructed operations, with their local and strict-window domains. In the current/export spine witness, TIR.11a-pre starts from supplied whole-terminal MR memberships; in the older archived witness it states that established theorem more tersely. In the combined proof the complete initial graph is followed by the sentence supplying those memberships. These observations locate the original input and proof order; they do not prove that the method is impossible, that nonlinearity was omitted, or that a subsequently selected scalar criterion was its original premise.

The remaining version-custody question is exactly whether the reference-3 version actually used for the published page-29 theorem contains a preceding operation supplying UT8/UT9 beyond the qualified recovered witnesses. Its title alone, or the difference of archive hashes, cannot answer that mathematical question. No unrelated source graph is exhausted by this bounded reconstruction.
