# Native unforced producer witnesses: the exact supplied operations

**Reviewed scope and currentness.** Author-final erratum corrects NW2; primary source and NW6 already correct. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This is a fresh, read-only mathematical comparison. It does not use earlier audit conclusions as premises and gives no global validity verdict. The exact producer claim, the operations actually worked out around it, and their time domains are separated below. Lack of an archived publication hash does not prevent reading or executing the recovered mathematics.

The full relevant original passages are reproduced with physical LF numbers in [mathematical-source-excerpts.md](A0500-mathematical-source-excerpts.md). The mathematical-only Section 5 diff is [section5-mathematical-diff.txt](../COVERAGE.md#A0506). A reader does not need access to the original Mac paths to examine those passages.

## 1. Witness identity and date evidence

| Witness | SHA256 | Date evidence and scope |
|---|---|---|
| Current TC `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md` | `2b3821c4ae91cb8843f3192196dcbb2a7c67cfeb7814e2e04611a924c85e90a4` | Filename's nominal August 3 date; filesystem modification September 16, 2026. The present bytes, not that filename date, govern this reading. |
| `thomas-proof-spine-source-export-20260917.txt` | Same `2b3821c…` | Modification September 17; byte-identical to current TC. It is not another mathematical version. |
| Complete September 18 source snapshot `source-snapshots/08-thomas-one-fluid-reversible-intersection-proof-spine-20260803.md` | Same `2b3821c…` | Modification September 18; direct complete-byte comparison agrees with current TC. It adds preservation evidence, not a new proof. |
| Publication-package `voice-refinement-2026-08-23/source/proof-authority/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md` | `1d188b224d268bb79f215c47a177ee5a44e6af0b1f0bd726b32c963ee79d3194` | Archive path and modification August 23. It is a complete earlier mathematical witness, 1874LF versus current1962LF. |
| September 15 release receipt's authority entry | Records `ffae335e7a34379d806eb1a1b70a6926699daf8d6168141c7170f157a7057324` | Receipt candidate ID is `ns-ai-20260915T021417Z-dea771a1b3928eca`; it binds its earlier79-page PDF and that authority hash. The authority bytes at this hash are not one of the recovered complete copies. |

Filesystem dates are preservation metadata, not proof of an author's revision date. The release receipt independently binds a particular prior candidate; its review opinions are not used here. The exact September 23 reference-3 byte version remains unbound, but every mathematical inference below is checked against the recovered complete sources and the actual page-29 PDF text.

## 2. The physical object, governing graph, and complete nonlinear operation

Fix one solenoidal `u₀∈H∞=⋂mH^m(ℝ³)` and `ν>0`. The original unforced history solves

\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\qquad p=R_iR_j(u_i u_j).
\tag{NW1}
\]

Pressure is the normalized `L²` Riesz representative. It is not a free scalar row. Incompressibility supplies its Poisson equation and the equivalent full projected source `P div(u⊗u)`.

Both TIR witnesses have the complete mixed equation, TIR.3–TIR.6, LF130–181:

\[
\begin{aligned}
J_{n,\alpha}&=\partial_t^n\partial_x^\alpha u,
\quad \Pi_{n,\alpha}=\partial_t^n\partial_x^\alpha p,\\
J_{n+1,\alpha}&+
 \sum_{a=0}^n\sum_{\beta\le\alpha}
 \binom na\binom\alpha\beta
 (J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
 +\nabla\Pi_{n,\alpha}=\nu\Delta J_{n,\alpha},\\
-\Delta\Pi_{n,\alpha}
&=\partial_i\partial_j\partial_t^n\partial_x^\alpha(u_i u_j),
\qquad \nabla\cdot J_{n,\alpha}=0.
\end{aligned}
\tag{NW2}
\]

Every ordered parent and every temporal/spatial product allocation is present. The pure temporal rows `V_n=∂t^nu`, `P_n=∂t^np` satisfy

\[
V_{n+1}+\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}
+\nabla P_n=\nu\Delta V_n.
\tag{NW3}
\]

These identities unfold the derivatives of the same history. On an open maximal interval they hold distributionally by testing on compact interior subintervals; this fact does not require already finite whole-terminal Sobolev integrals.

The initial face is genuinely recursive. Let `A₀=u₀`; form

\[
P_n^0=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j,
\quad
A_{n+1}=\nu\Delta A_n-
\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n^0.
\tag{NW4}
\]

At step `n`, only already fixed temporal rows occur. Because the datum has every finite spatial order, multiplication, Riesz transforms, and differentiation give all required finite initial mixed coordinates. This is combined unforced `01` LF457–477 and its original initial-jet lemma. It is an initial-face construction, not an assumed endpoint jet.

## 3. The strongest explicit combined finite graph

The combined unforced proof spells out more graph detail than either TIR Section 5. Its `01-setting-mixed-jet.tex` LF479–519 retains, for each selected equation `(n,α)`:

* `J_(n+1,α)` and `J_(n,α+2eℓ)` for viscosity;
* `Π_(n,α+eℓ)` for each pressure-gradient coordinate;
* for every `a≤n,β≤α,i`, both `J_(a,β,i)` and `J_(n−a,α−β+ei)` in transport;
* for `γ∈{α,α+e₁,α+e₂,α+e₃}`, both pressure-product factors at every temporal and spatial allocation.

Its normalized pressure coordinate is

\[
\Pi_{n,\gamma}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\gamma}
\binom na\binom\gamma\beta
J_{a,\beta,i}J_{n-a,\gamma-\beta,j}.
\tag{NW5}
\]

The retained equation graph, its displayed `finite-equation-graph`, is

\[
\mathscr E_{n,\alpha}
:=J_{n+1,\alpha}+
\sum_{a,\beta}\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
+\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}=0.
\tag{NW6}
\]

There are finitely many coordinates for fixed selected equations. The source explicitly treats them as the derivatives of the original history, not a closed autonomous truncation. Applying `P` reads the solenoidal evolution; applying `I−P` reads the complementary pressure relation. Thus neither pressure nor a nonlinear parent has disappeared.

The next exact source sentence is LF521:

> The datum-generated columnwise construction now acts on this one complete finite record.

LF522–527 then says it supplies, for each `0≤n≤N`,

\[
V_n\in L^2((0,T_*);H^{M+1}),\qquad
V_{n+1}\in L^2((0,T_*);H^{M-1}).
\tag{NW7}
\]

This is the source's whole-terminal output and exact handoff location. Its proof subsequently forms the finite defining norm sum at LF533–543 and only then restricts/uses monotone convergence at LF544–555. The graph before LF521 establishes the complete equations and common-coordinate identity. The source-specific question at this point is the operation supplying NW7, not whether the preceding graph omitted a term.

## 4. Strongest independently worked nonlinear realization: one common local interval

The linked analytic framework contains an actual nonlinear fixed-point calculation, not just a name for the graph. It is the quantitative local theorem at LF662–1018, whose main calculations are reproduced in the source excerpts. Its input is an initial `a∈H³σ`, and its output is on a prescribed **local interval** of length `δ`.

For the linear equation `z_t−νΔz=F`, with `F∈L²H²`, the source proves

\[
\|z\|_{CH^3}+\|z\|_{L^2H^4}+\|z_t\|_{L^2H^2}
\le L_\nu(\|a\|_{H^3}+\|F\|_{L^2H^2}),
\quad
L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2}.
\tag{NW8}
\]

The full source product and difference estimates are

\[
\begin{aligned}
\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}
&\le C_q\|v\|_{H^3}\|z\|_{H^3},\qquad C_q=\sqrt3C_3^{\rm alg},\\
\|\mathbb P\nabla\cdot(v\otimes v-z\otimes z)\|_{H^2}
&\le C_q(\|v\|_{H^3}+\|z\|_{H^3})\|v-z\|_{H^3}.
\end{aligned}
\tag{NW9}
\]

Pressure has been included in this complete solenoidal source and is recovered by NW1. Set

\[
X_\delta=CH^3\cap L^2H^4\cap\{w:w_t\in L^2H^2\},
\quad R=2L_\nu\|a\|_{H^3},
\]

\[
0<\delta\le\min\{1,(8C_qL_\nu^2)^{-2}(1+\|a\|_{H^3})^{-2}\}.
\tag{NW10}
\]

The Duhamel map retains the full quadratic tensor:

\[
\Phi(v)(t)=e^{\nu t\Delta}a-
\int_0^t e^{\nu(t-s)\Delta}\mathbb P\nabla\cdot(v\otimes v)(s)\,ds.
\]

NW8–NW10 give a self-map on the closed radius-`R` ball and contraction factor at most `1/2`; the actual fixed point satisfies `||w||Xδ≤R`. The zero datum has the zero fixed point. In particular the **same local construction pays** the low rectangle

\[
\mathfrak R_{0,1}(w;\delta)
=\|w\|_{L^2(0,\delta;H^2)}^2+
\|w_t\|_{L^2(0,\delta;L^2)}^2
\le R^2=4L_\nu^2\|a\|_{H^3}^2.
\tag{NW11}
\]

NW11 is a direct norm readout of the displayed local fixed point: `H⁴↪H²`, `H²↪L²`, and the sum of two squared component norms is bounded by the square of the `Xδ` sum norm. It is not a new regularity criterion.

For `a∈H∞`, higher persistence is worked out on **that same δ**, not on a separate vanishing interval for each order. Fourier cutoffs have `||w^(k)||Xδ≤R`. The complete integer transport commutator, after the undifferentiated solenoidal transport cancellation, gives

\[
\tfrac12\partial_t\|w^{(k)}\|_{H^m}^2+
\nu\|\nabla w^{(k)}\|_{H^m}^2
\le K_m\|\nabla w^{(k)}\|_\infty\|w^{(k)}\|_{H^m}^2.
\]

The fixed `H³` bound pays the Lipschitz action on this interval. Gronwall yields

\[
\sup_{0\le t\le\delta}
\left(\|w^{(k)}(t)\|_{H^m}^2+
2\nu\int_0^t\|\nabla w^{(k)}\|_{H^m}^2\right)
\le e^{2K_mC_{\nabla,3}\delta R}\|a\|_{H^m}^2.
\tag{NW12}
\]

The cutoff fixed points converge to the original one in `Xδ`. Their higher weak limits are consequently that same velocity. Adjacent traces give `CH^m`; full pressure/binomial recurrences identify all temporal derivatives in every fixed Sobolev space. Hence every finite rectangle has a finite norm on this one local interval, with order-dependent constants.

Restriction and local uniqueness join compatible solutions into a maximal history. Every closed strict interval `[0,S]`, `S<T*`, has every finite derivative norm. The worked fixed-point/persistence formulas retain the local or strict-window domain. They do not themselves set `δ=T*` in NW11–NW12 or attach a terminal-integral value to the compatible union.

## 5. Exact side-by-side Section 5 producer passage

Put `I=(0,T*)`, with `0<T*<∞`. Both complete witnesses start Section 5's mathematical passage by placing the adjacent memberships on **all of I**:

\[
(MR)_{N,m}:\quad
V_N\in L^2(I;H^{m+1}),\qquad
V_{N+1}\in L^2(I;H^{m-1}),
\quad N,m\in\mathbb N_0.
\tag{NW13}
\]

| Operation | Archived mathematical source | Current/export mathematical source | Actual change |
|---|---|---|---|
| Datum and whole-I input | LF275–283 calls MR the established whole-terminal theorem | LF275–289 additionally fixes `T*<∞`, `u₀∈H∞σ`, `ν>0` and calls MR the established unforced input | More explicit input/domain; same positive adjacent-row output |
| Finite norm | LF285–294 displays finite strict-cutoff supremum TIR.11a-pre | LF291–317 defines its squared-norm sum, names the finite terminal value, and proves restriction/monotone equality | A new explicit functional derivation **from** MR; not a new nonlinear supplying operation |
| Mixed intersection | LF296–315 states compatibility gives TIR.11a | LF319–348 proves the finite derivative-sum norm and distinguishes `X∞` from the datum-selected record `I[u₀]` | More complete construction of representation and weak-derivative membership |
| Row trace | Not worked out inside this section | LF350–362 proves TIR.11b by choosing a quadratic-mean time and integrating the next row | A genuine additional downstream trace derivation |
| Scalar height temporal membership | LF335–343 defines its intersection/embedding | LF383–405 displays every binomial cross-pairing and bounds all factors by row traces | A genuine derivation of height Sobolev membership using supplied mixed rows |
| Height/spatial domain | LF345–361 displays a projection equality for `Dom_comp(R_n;I)` | LF406–425 states an equivalence for the admitted same history and proves the quadratic integral identity | A substantive quantifier/scope correction, not merely wording |
| Pressure completion | LF394–412 defines the complete pressure-explicit solution class | LF460–503 additionally derives all pressure `L²H^m` rows from full binomial/Riesz products and `L∞×L²` row estimates | A genuine additional downstream pressure-membership derivation |

The archived source's exact supplying text, LF312–313, says the established datum theorem supplies TIR.11a-pre, while the pressure-explicit recurrence constructs finite coordinates and overlap compatibility. The current source's LF281–289 says that the established unforced input supplies MR. Neither of these Section 5 passages names a more precise upstream producer filename or theorem number at that handoff.

They do not replace this input with scalar height smoothness, an odd-prefix assumption, or an arithmetic all-order sum. The archive mentions BPF.24 only as a later alternate readout at LF314–315. The current §7 expressly places the signed-prefix equivalence after the original mixed-tower construction. Those later interfaces are therefore not used here to change the native premise.

## 6. Execute the current finite derivation at its supplied domain

Assume the source input NW13 on `I`. For any fixed `N,m`, define

\[
C_{N,m}[u_0,\nu;I]
=\sum_{j=0}^N\left(
\|V_j\|_{L^2(I;H^{m+1})}^2+
\|V_{j+1}\|_{L^2(I;H^{m-1})}^2\right).
\tag{NW14}
\]

Each membership in NW13 means precisely that its norm integral is finite. NW14 contains finitely many terms; hence it is finite. Restriction gives `R_(N,m)(u;S)≤C_(N,m)` for every `S<T*`, and monotone convergence yields

\[
\sup_{0<S<T_*}\mathfrak R_{N,m}(u;S)
=\mathfrak R_{N,m}(u;T_*)=C_{N,m}<\infty.
\tag{NW15}
\]

This is the current TIR.11a-pre calculation. Its first finiteness input is NW13, not the later equality.

For requested finite `r,M`, select finite rectangles putting `V₀,…,V_r` in `L²(I;H^M)`. NW2–NW3 identify their actual weak derivatives, so

\[
\|u\|_{H_t^r(I;H_x^M)}^2
=\sum_{j=0}^r\|V_j\|_{L^2(I;H^M)}^2<\infty.
\tag{NW16}
\]

All finite selections agree as derivatives of the same history. This is TIR.11a, with ambient space `X∞=⋂_(r,M)H_t^rH_x^M` and datum-generated record `I[u₀]`. Taking the intersection retains every finite membership; it never asks for an infinite sum of all order norms.

For each fixed row/order, sufficiently high supplied rectangles give `V_j,V_(j+1)∈L²(I;H^m)`. Choosing a time at which the first norm does not exceed its quadratic mean and integrating `∂tV_j=V_(j+1)` gives the explicit current TIR.11b:

\[
\|V_j\|_{L^\infty(I;H^m)}
\le T_*^{-1/2}\|V_j\|_{L^2H^m}
+T_*^{1/2}\|V_{j+1}\|_{L^2H^m}.
\tag{NW17}
\]

The same `H¹_tH^m_x` membership supplies the bounded continuous representatives.

Pressure completion is a full nonlinear estimate:

\[
\|P_r\|_{L^2(I;H^m)}
\le C_m\sum_{a=0}^r\binom ra
\|V_a\|_{L^\infty(I;H^{m+2})}
\|V_{r-a}\|_{L^2(I;H^{m+2})}<\infty.
\tag{NW18}
\]

Every factor is supplied by NW16–NW17. Differentiating the full product identifies all pressure temporal rows. Thus the pressure-complete class retains `u,p∈X∞`, divergence-free velocity, canonical pressure, all actual mixed derivatives, and every full mixed equation.

The exact low output of NW13 is obtained at `(N,m)=(0,1)`:

\[
u\in L^2((0,T_*);H^2),\qquad u_t\in L^2((0,T_*);L^2).
\tag{NW19}
\]

This is already the whole-terminal low rectangle. It has no source-square or selected high-parent criterion appended to it in this reconstruction.

## 7. Completed heights and the ontology of reversible columns

The original TIR.8–TIR.11, both witnesses LF203–266, retain the complete signed transport-pressure pairing

\[
E_s'= -2\nu E_{s+1}+\mathcal P_s,
\quad
\mathcal P_s=-\langle\Lambda^su,
 \Lambda^s[(u\cdot\nabla)u+\nabla p]\rangle.
\tag{NW20}
\]

The full projected pairing is equal by incompressibility and the canonical pressure equation. Repeated differentiation/substitution gives

\[
H^{(n)}=(-2\nu)^nE_{n+1/2}+
\sum_{j=0}^{n-1}(-2\nu)^j\partial_t^{n-1-j}\mathcal P_{j+1/2},
\quad H=E_{1/2}.
\tag{NW21}
\]

Subtracting the complete current sum and dividing by `(-2ν)^n` gives `R_n=E_(n+1/2)`. It is an exact spatial readout of the same velocity, not the energy of `V_n`. The scalar temporal derivatives have full cross-pairings

\[
H^{(r)}=\tfrac12\sum_{a=0}^r\binom ra
\langle\Lambda^{1/2}V_a,\Lambda^{1/2}V_{r-a}\rangle.
\tag{NW22}
\]

Current §5 bounds every factor using NW17 and thereby proves `H∈⋂rH_t^r(I)`. Its corrected TIR.13a says, **for the admitted same history with its kinetic component retained**,

\[
[R_n=E_{n+1/2}\in L^1(I)\ \forall n]
\Longleftrightarrow
u\in L^2_tL^2_x\cap\bigcap_nL^2_t\dot H_x^{n+1/2},
\tag{NW23}
\]

because `∫R_n=½||Λ^(n+½)u||L²²`. The older source instead writes this as projection of compatible graph domains onto a spatial function class. The new wording explicitly limits the equivalence to actual admitted histories; it does not assert that every Sobolev function is a solution.

The four column embeddings are spatial half-integer intersection, scalar temporal height intersection with full graph, velocity-time intersection at each spatial order, and the complete pressure-normalized mixed solution class. Each uses arbitrarily high **finite** orders for its own smoothness implication. These are coordinates/readouts of one history.

Current TIR.2 LF123–128 explicitly says its arrows are simultaneous compatible readouts, not fluid states; a scalar height/VPI readout is not injective velocity reconstruction; and an individual compatibility arrow does not supply datum→intersection. Given the actual all-spatial velocity history, the original full equation reconstructs its temporal and pressure rows. That is the mathematical reversibility being used, without inventing an inverse map from one scalar to the whole field.

The separately named July22 ontology source defines `Member(Q)` as a smooth continuation-class predicate (LF8–37), and distinguishes interior participation from terminal participation (LF56–78). Its classification language is contextual, not a status premise imposed on these later TIR constructions. Later TIR supplies explicit function-space domains and trace/restart operations; it is a different mathematical claim from merely naming membership of a terminal object.

## 8. One directly named earlier source really does produce weaker complete rows

TIR §3 names `thomas-energy-class-reciprocal-negative-space-binomial-tower-and-first-parent-boundary-20260804.md`. Its RNT.1–RNT.15, LF23–231, is directly executed here at its own input/domain.

Kinetic identity pays `u∈L∞L²∩L²H¹` with `M≤||u₀||₂`, `D²≤||u₀||₂²/(2ν)` and `D_T²≤TM²+D²`. Interpolation, tensor product, bounded Riesz transforms, and dual Sobolev give, for `0<θ≤3/4`,

\[
u\otimes u,p\in L_t^{1/\theta}L_x^{3/(3-2\theta)},
\quad
p\in L_t^{1/\theta}H_x^{-3/2+2\theta},
\quad
\mathcal Q(u,p)=\mathbb P\nabla\cdot(u\otimes u)
\in L_t^{1/\theta}H_x^{-5/2+2\theta}.
\tag{NW24}
\]

The viscous term has the same target, giving the actual first response

\[
u_t\in L_t^{4/3}H_x^{-1}\cap L_t^2H_x^{-3/2}.
\tag{NW25}
\]

Distributional differentiation retains each deeper full binomial row as

\[
V_N\in W_t^{1-N,4/3}H_x^{-1}
\cap W_t^{1-N,2}H_x^{-3/2},
\]

\[
\mathcal Q_N=
\sum_{a=0}^N\binom Na(V_a\cdot\nabla)V_{N-a}+\nabla P_N
=\partial_t^N\mathcal Q(u,p)
\in W_t^{-N,4/3}H_x^{-1}\cap W_t^{-N,2}H_x^{-3/2}.
\tag{NW26}
\]

These are paid joined pressure-complete rows. This source explicitly distinguishes their negative-time domains from the positive temporal whole-terminal Sobolev rows. It is therefore an actual named antecedent operation at its stated strength, without being relabeled as NW13/NW19. No toy/calibration or termwise-product obstruction is used as evidence here.

## 9. Bounded dependency continuity and strongest recovered inference

The parent-named `chatgpt-direct-datum-to-whole-terminal-rectangle-derivation-audit-20260810.md` was read **only for its actual source references** at LF7–13. Its judgments are not evidence. That list points to TIR, `PROOF-PROGRAM.md`, and two policy/registry surfaces. Policy/registry assertions do not supply an additional mathematical operation.

The directly reached program's mathematical PP.6–PP.9, LF69–128, again starts with the whole-terminal rectangle and then forms its compatible intersection. Its dated source-routing text LF275–289 distinguishes direct compatible construction from height differentiation/relationship rectangles and points its unforced membership paragraph back to manuscript01→TIR§5. That closes this particular named unforced supplier chain back onto the passages compared above. Its LF295 separately names the forced native custody source; the forced witness comparison executes its `f=0` specialization and concrete local construction. The forced and unforced membership derivations remain separately identified.

The strongest explicit recovered nonlinear producing calculation in the present chain is NW8–NW12 on a common positive local interval. The full initial jet and equation graph are NW2–NW6. Whole-terminal finiteness is stated at NW7 in the combined proof and as the supplied MR input NW13 in both TIR witnesses. From that input, NW14–NW18 are complete worked finite functional derivations. The source graph fixes **which actual rows** receive the membership; the functional theorem states **their whole-I norm finiteness**. These statements are carried in the source's order rather than silently merged.

The source-specific supplying step has therefore been located precisely, without stopping at a missing publication hash and without changing it into a downstream criterion. None of the full nonlinear/pressure identities, the same-interval local persistence, or the added trace/pressure derivations is lost by the comparison. No universal claim about all Navier–Stokes sources or the ultimate possibility of the method follows from this bounded witness comparison.

Historical conversation, source provenance conversations, internal instructions, and prior-audit conclusions are excluded from the mathematical evidence and quotations.
