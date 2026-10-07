# Navier–Stokes proof audit

**Reviewed scope and currentness.** Access recovery superseded explicitly at LF3; later native/constituent records refine producing domains. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This earlier audit is superseded for source recovery and executed producing operations by [source-proof-composition.md](A0609-source-proof-composition.md). The short “Derive from u_0” original has since been recovered and checked. Its former access boundary below is historical.

6 October 2026. This is a bounded mathematical verification of the main unforced and forced global-smoothness argument, including its recovered original construction dependencies. It follows the supplied method. It is not a manuscript revision or a determination that the theorem is false.

**Result:** the complete jet algebra, finite-coordinate relationships, conditional intersection/endpoint construction, and same-history restart are verified. The inspected argument does not establish its decisive datum-to-whole-terminal membership implication. Consequently this audit does not certify the unconditional global-smoothness conclusion. The outstanding mathematical step is not a pressure normalization problem or a requirement for bounds uniform over all derivative orders. One additionally referenced short source remains unavailable, as specified under coverage below.

## Sources and versions

The governing current source is [the combined paper](../SOURCES.md#S113). Its current title is **Global Smoothness for the Three-Dimensional Incompressible Navier–Stokes Equations, with a Refutation of OpenAI's Finite-Time Blowup Claim**.

| Local artifact | Pages / bytes | SHA-256 |
|---|---|---|
| Current combined PDF | 229 / 7,228,017 | `9f8c7708b1c205dd102067953a72e638b8267c69210bcebf6f5230b390214b94` |
| Separate local release build v1 | 228 / 4,415,341 | `9ef37c33dec6bc4e890b19b80c4e4392a3b1fd9652dd6510937cb63c56138193` |
| Separate local release build v3 | 228 / 4,416,045 | `a3e8e728d54ab54c125db8e3605f795bd574bb08bd2123ff3c9dc3ce2b760a5a` |

The 228-page builds retain the earlier title including “Unforced and Forced”. They are not automatically identical to [Figshare v1](https://doi.org/10.6084/m9.figshare.34005666.v1). PDF byte identity with the public release was not claimed by this local audit. The current PDF was extracted and its decisive unforced producing page was visually inspected against the TeX source.

All 41 non-main current TeX inputs equal the staged local release source inputs. Compared with the separately recovered v3 bundle, the mathematical body differs only in forced `01-setting-mixed-jet.tex`: v3 correctly retains the inhomogeneous lower-order remainder after source absorption. The v3 main also changes its abstract's datum clause to `u_0 in H^infinity_sigma`, removes `inputenc`, and retains the earlier title. The current title was preserved. Exact differences are in [current-to-v3.diff](../COVERAGE.md#A0325).

The governing theorem class is `u_0 in H^infinity_sigma(R^3)`, viscosity `nu>0`, and, in the forced case, prescribed `f in C^infinity([0,infinity);S(R^3;R^3))`. The forcing may have arbitrary amplitude and no common bound over all time, but the stated theorem is not about every spatially nondecaying smooth force.

## Proof map and verification

Source locations below are physical LF lines relative to the combined source root. PDF locations refer to the current 229-page PDF.

| Source location | Producing operation | Audit result |
|---|---|---|
| Unforced `00-analytic-framework`, product/multiplier/trace/local-theory lemmas; forced counterpart | Sobolev algebra, normalized pressure, short-time nonlinear solution, fixed-order persistence and uniqueness | Verified at the stated inputs |
| Unforced `01-setting-mixed-jet:111–376`; forced `:116–399` | Complete binomial jet, initial-face induction, finite-row pressure integration | Verified; time-integrated pressure keeps the velocity memberships as premises |
| Unforced `01:411–579`, Theorem 3.9, pp. 30–31 | Datum to adjacent rows on `I=(0,T_*)` | Essential production is invoked at `:521–527`, not established by the inspected construction |
| Forced `01:497–692`, Theorem 13.10, pp. 102–104 | Prescribed triple and complete forced graph to the same whole-terminal rows | Essential production is invoked at `:642–650`; v3 `:649–657` preserves that invocation |
| Unforced/forced `02-compatible-rectangles`, `03-matrix-forms` | Critical heights, viscous square, pressure completion, restriction and exact weighted norms | Verified; terminal finiteness consumes the preceding supplier |
| Unforced `01:624–714`; forced `02:508–570` | Whole-terminal complete spatial column to all temporal and pressure rows | Verified conditionally on the displayed spatial-column input |
| Unforced/forced `04-intersection-endpoint-restart` | Finite blocks to compatible intersection, common endpoint, full pressure jet, same-history restart and maximality contradiction | Verified conditionally on whole-terminal memberships |

The recovered original finite-rectangle transfer and Gram construction were also checked. They are real components of this method, not replaced by schematic estimates.

## Verified chains

For the one history, write `V_n=partial_t^n u`, `Q_n=partial_t^n p`, `F_n=partial_t^n f`, and

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The complete forced rows are

\[
V_{n+1}=\nu\Delta V_n-B_n-\nabla Q_n+F_n,
\qquad
Q_n=R_iR_j\sum_{a=0}^n\binom naV_{a,i}V_{n-a,j}
-(-\Delta)^{-1}\operatorname{div}F_n.
\]

Set every force coordinate to zero in the unforced case. The full spatial Leibniz allocations, normalized pressure, and divergence identities are retained. Schwartz forcing pays the low-frequency pressure potential: its squared singularity is `|xi|^{-2}`, integrable over the three-dimensional unit ball; its high frequencies are bounded by the prescribed Sobolev norms.

The source's positive viscous square is exact:

\[
\|\Lambda^sV_{n+1}\|_2^2+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\]

The critical-height recurrence retains every differentiated nonlinear and work term. The Gram derivative likewise retains both transport pairings and, when forced, both source pairings. Pressure vanishes only in the global solenoidal pairing; the local flux retains pressure explicitly. These strict-time identities do not independently assert finite terminal integrals.

The original `unified-forced-unforced-framework-20260912.md:542–591`, equations (43)–(47), gives a valid same-interval transfer. With `R=R_{n-1,m+2}(I)` and `I_0=sum_{j<n}||V_j(0)||^2_{H^{m+2}}`, adjacent trace and full binomial multiplication give

\[
\|\mathbb PB_n\|_{L^2H^{m-1}}
\le C_m2^n\sqrt{(I_0+R)R},
\]
\[
R_{n,m}(I)\le(2+3\nu^2)R
+3C_m^24^n(I_0+R)R.
\]

Iteration proves `R_{0,M+2N}(I) -> R_{N,M}(I)` whenever the starting rectangle is finite on that **same** interval. It is not an interval-extension operation. No bound uniform over `N,M` is required.

Once whole-terminal rows are supplied, the source's downstream conclusion follows:

\[
\text{whole-terminal rectangles}
\Longrightarrow\bigcap_{r,m}H^r(I;H^m_\sigma)
\Longrightarrow\text{one complete endpoint jet}
\Longrightarrow\text{same-history restart}
\Longrightarrow T_*=\infty.
\]

The adjacent trace lemma uses exactly `V_n in L^2H^{m+1}`, `V_{n+1} in L^2H^{m-1}`. Alternatively, the supplied complete spatial column and full PDE yield `u_t in L^1H^m`, hence `u in W^{1,1}H^m` through the endpoint. These are independent valid consumers. The forced endpoint recurrence retains `F_n(T_*)` and the pressure potential. Local theory restarts with `f(T_*+r)` in translated coordinates. All steps use finitely many selected orders.

## First undischarged implication

At [unforced `01:521`](../SOURCES.md#S139), immediately after the complete finite equation graph (61), the proof invokes the datum-generated columnwise construction to supply

\[
V_n\in L^2((0,T_*);H^{M+1}),\qquad
V_{n+1}\in L^2((0,T_*);H^{M-1}).
\]

The following finite sum (62) and monotone realization (63) are valid consequences **of those memberships**. They do not produce them. The analogous invocation is [forced `01:642`](../SOURCES.md#S117), after graph (388) and source pairing (389).

This boundary was tested against actual alternate constructions and their exact domains, not inferred from a missing inline citation:

- The referenced reversible-intersection spine's section 5 consumes the whole-terminal adjacent memberships and then forms their norms and intersections.
- The native nonlinear contraction constructs the history on one positive interval `[0,h]`; higher-order persistence uses that same interval. Its union produces the classical maximal history with all derivatives on strict compact windows. It explicitly does not turn `h` into a whole-terminal estimate.
- The native temporal-to-spatial reverse gain preserves its supplied interval and requires the displayed temporal `H^{N+1}_tL^2_x` input. The verified rectangle transfer likewise preserves its input interval.
- The prescribed Stokes linear graph is surjective in `X_T=intersection_{r,m}H^r(0,T;H^m_sigma)`. The exact nonlinear use is the fixed-point equation `w=G_z^{-1}(u_0,-N(z)-N(w))`. Construction and continuity of this map do not establish existence of its whole-terminal nonlinear fixed point.
- Time-domain gluing proves `p_{r,m;T}^2=sup_j p_{r,m;S_j}^2` with values in `[0,infinity]`. Thus compatible strict-horizon histories belong to `X_T` precisely when every fixed-coordinate supremum is finite. This is an exact domain characterization, not a new all-order common-bound requirement.
- The recovered compactness realization proves membership if actual approximants have bounds uniform in the approximation index at each selected whole-terminal seminorm. Those are its displayed hypotheses; compatibility and prescribed-source finiteness do not themselves supply them.

The inhomogeneous absorption error in the current forced source is separately corrected in v3:

\[
\|V_n\|_{H^{M+1}}^2=\|\nabla V_n\|_{H^M}^2+\|V_n\|_{H^M}^2.
\]

The corrected full row retains the lower-order energy and signed complete nonlinear production. This repair removes that local error but does not establish the columnwise producing step. It is not the basis for rejecting the global claim.

## Coverage and deliverables

The bounded main-proof dependency chain has been followed from datum and local existence through the asserted supplier and all subsequent endpoint/restart steps. The proof as exhibited has an undischarged terminal-membership producer; the theorem's falsity has not been shown. This is not a claim that no other proof exists outside the inspected sources.

An additional original source locator names the short Library compilation `Pasted text(20260805-224941).txt`, opening “Derive from u_0”. This source was not independently recovered. An exact title search and simpler title variant did not resolve it, and a direct read of its recorded file reference returned that the file was not currently visible. Its contents and older summaries were excluded from the mathematical evidence. This is a precise remaining source-access boundary; a separately supplied derivation in that file has not been ruled out.

The refutation's full localization formula, conditional finite-jet/Borel force extension, Stokes-lift estimate, source-work integrations and spatial-domain propagation were checked at their explicit inputs. Its external candidate's entire construction and the full quantitative/application catalogues were not independently verified here. Its application of the forced global theorem therefore remains conditional on the same unresolved producer.

Detailed supporting derivations: [primitives](A0533-primitives.md), [rectangles and heights](A0538-rectangles.md), [endpoint and restart](A0356-endpoint.md), [forcing](A0368-forced.md), and [original producer dependencies](A0535-producer.md). The [source baseline](../COVERAGE.md#A0608) and [proof map](../COVERAGE.md#A0536) preserve exact identities and locators.
