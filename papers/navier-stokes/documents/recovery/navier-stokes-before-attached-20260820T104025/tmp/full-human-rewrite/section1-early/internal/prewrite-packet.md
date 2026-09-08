## Target Block
- file: workspaces/VSC-workspaces/navier-stokes/tmp/full-human-rewrite/section1-early/index.tex and 1.1 through 1.4.
- span: Section 1 opening through the end of Silver Standard Proof.
- mode: Authorial Draft.
- block_kind: exposition.
- user_intent: Rebuild every early movement so the reader receives the exact problem, understands where prior estimates leave it, sees Gold's missing estimate, and discovers Silver from the reversed implication.
- fixed_constraints: Temporary files only; preserve the subsection order and titles; use the approved opening exactly; 1.1 contains only the problem and the definitions needed to understand smoothness and maximal time; finite energy is developed in Leray; 1.2 is selected by relevance; 1.3 is an overview with no arbitrary scalar proxy; 1.4 preserves Thomas's thought order and is the only positive voice anchor; no NBB construction, roadmap, invented helper term, or robotic process diction.

## Section Job
- job_statement: Give the reader the ordinary regularity problem, narrow it through the estimates that matter here, state the direct proof in one exact bound, and let the difficulty of that bound generate the Silver reversal.
- why_here: The reader must know what smoothness and a finite maximal time mean before any historical estimate or proof route has a purpose.
- formal_boundary: Formalize the governing equations, smoothness, maximal time, the estimates that locate the public frontier, and the Gold and Silver implications; leave class membership and participation to subsection 1.5.
- intent_state_seed: claim_id=early-section; required_next_move=problem to historical narrowing to Gold to Silver; forbidden_detours=roadmap prose, equation glossary, generic regularity glossary, standalone finite-energy definition, full Gold derivation, later class machinery, theorem-status discussion; governing_sentence_movement=each mathematical fact answers a pressure already present and leaves the next exact need.

## Claim Ladder
1.
- claim: The regularity problem asks whether the maximal classical solution from one smooth divergence-free finite-energy datum can have a finite last smooth time.
- warrant: This is the Clay problem's positive existence-and-smoothness formulation and the approved opening.
- handoff: A reader can now ask which available estimates prevent or permit a finite endpoint.
2.
- claim: Leray's energy identity controls kinetic energy at every time and the time integral of enstrophy, while three-dimensional vortex stretching leaves instantaneous derivative growth unresolved.
- warrant: The energy cancellation and vorticity equation display both facts directly.
- handoff: The reader needs to know how much derivative control would actually continue the solution.
3.
- claim: A uniform \(H^s\) bound with \(s>5/2\) gives a late-slice restart, propagates every fixed higher Sobolev order from smooth data, and recovers the \(C^\infty\) velocity--pressure pair.
- warrant: Sobolev embedding, differentiated energy estimates, the pressure Poisson equation, and local uniqueness supply the chain.
- handoff: The problem becomes the search for one continuation-grade a priori estimate.
4.
- claim: Critical continuation and partial-regularity results force any finite failure into increasingly concentrated spatial and temporal behaviour.
- warrant: Ladyzhenskaya--Prodi--Serrin, Caffarelli--Kohn--Nirenberg, Escauriaza--Seregin--Sverak, Seregin, and Tao each constrain a different necessary feature of such a failure.
- handoff: Scaling and parabolic timing explain why energy alone leaves this concentrated alternative open.
5.
- claim: Gold would finish the proof by deriving one fixed continuation-grade Sobolev bound from the datum, viscosity, and equations for every finite horizon.
- warrant: The continuation chain has already shown exactly why that estimate forces \(T_*=\infty\).
- handoff: The gap between energy-level control and this bound explains why the direct route has resisted closure.
6.
- claim: Silver writes the same universal smoothness statement as a contrapositive and asks whether a proposed nonsmooth outcome can still satisfy the original fluid requirements.
- warrant: Thomas's handwritten Silver movement supplies the thought experiment and its logical compression.
- handoff: The apparent many-case problem creates the need for class membership and one common principle in subsection 1.5.

## Paragraph Movement Map
1.
- role: orient.
- reader_in: The reader knows the paper concerns three-dimensional Navier--Stokes regularity.
- pressure: The exact datum, solution, interval, and target have not yet been fixed.
- core_move: State the approved opening, display the governing system, and end with \(T_*=\infty\).
- hinge_question: n/a.
- reader_out: The reader knows the one solution and the exact finite-time question.
- next_need: Smoothness and maximal time need precise local meanings.
- must_keep: Exact approved opening; fixed \(u_0\); fixed \(\nu>0\); maximal classical pair \((u,p)\); no-force system.
- avoid: Roadmap, physical term glossary, tower language, class language, and future proof machinery.
2.
- role: setup.
- reader_in: The reader has the maximal classical solution and the target \(T_*=\infty\).
- pressure: The words smooth and maximal determine what a finite endpoint would mean.
- core_move: Define smoothness through \(T\), then define \(T_*\) as the supremum of smooth continuation times and state the immediate finite-endpoint consequence.
- hinge_question: n/a.
- reader_out: A finite \(T_*\) means the velocity--pressure pair cannot extend smoothly through that time.
- next_need: The reader can now judge what historical estimates do and do not control.
- must_keep: Every finite mixed derivative; pressure included; admissible whole-space or periodic datum; finite energy mentioned only with the datum.
- avoid: All-orders slogan, regularity glossary, standalone finite-energy divider, and speculative failure types.
3.
- role: mechanism.
- reader_in: A finite endpoint requires loss of smooth continuation.
- pressure: The first available invariant must be tested against that endpoint.
- core_move: Derive the energy cancellations and show that Leray's global weak solution controls \(u\) in \(L^\infty_tL^2_x\cap L^2_tH^1_x\).
- hinge_question: n/a.
- reader_out: Finite energy persists globally at the weak level, while derivative control is integrated in time.
- next_need: Three dimensions still permit instantaneous derivative growth.
- must_keep: Transport and pressure cancellations; viscous dissipation; Leray citation; clear distinction between pointwise-in-time velocity energy and time-integrated gradient energy.
- avoid: Calling energy physical finiteness, recapping 1.1, or presenting Leray as an equal theorem capsule.
4.
- role: mechanism.
- reader_in: The energy law permits short intervals of large gradient activity.
- pressure: The source of that derivative growth in three dimensions needs to be visible.
- core_move: Introduce vorticity through enstrophy and display the vortex-stretching term whose sign the energy identity does not control.
- hinge_question: n/a.
- reader_out: The unresolved motion sits in derivative concentration created by stretching against diffusion.
- next_need: A continuation threshold must be identified.
- must_keep: \(\omega=\nabla\times u\); enstrophy balance; no claim that a singularity is physically realized.
- avoid: Anthropomorphizing viscosity or turning a permissive estimate into an actual fluid scenario.
5.
- role: setup.
- reader_in: The reader sees why energy-level control leaves derivatives exposed.
- pressure: The phrase continuation-grade control still needs mathematical content.
- core_move: Define the \(H^m\) norm and explain the three-dimensional Sobolev embedding \(H^s\hookrightarrow C^k\) for \(s>k+3/2\), with \(s>5/2\) giving \(W^{1,\infty}\).
- hinge_question: n/a.
- reader_out: The reader knows how integral derivative control becomes ordinary bounded continuous derivatives.
- next_need: The fixed low Sobolev bound must be connected to every higher order and to crossing the endpoint.
- must_keep: Exact embedding threshold; one fixed finite order at a time; plain explanation of what \(H^m\) measures.
- avoid: Generic norm glossary, uniform-in-order language, or a false claim that one finite Sobolev space equals \(C^\infty\).
6.
- role: consequence.
- reader_in: A uniform \(H^s\) bound with \(s>5/2\) controls the velocity gradient.
- pressure: The reader still needs the actual continuation to \(C^\infty\).
- core_move: Use the differentiated estimate to propagate each fixed \(H^m\), recover pressure and time derivatives, and restart from a late slice with lifespan controlled by the uniform \(H^s\) bound.
- hinge_question: n/a.
- reader_out: Any finite \(T_*\) forces every continuation-grade Sobolev norm to diverge.
- next_need: The historical frontier can be expressed at critical scale.
- must_keep: Smooth initial datum; \(C_m\) may depend on \(m\); pressure Poisson equation; overlap uniqueness; actual \(t_0<T\).
- avoid: Importing Section 3 endpoint compatibility or claiming a bound at the endpoint before it is earned.
7.
- role: mechanism.
- reader_in: The reader knows which strong norm would continue the solution.
- pressure: Strong subcritical norms do not describe the smallest scale-invariant obstruction.
- core_move: Introduce the Navier--Stokes scaling and let the Ladyzhenskaya--Prodi--Serrin conditions show how spatial intensity and temporal persistence balance at criticality.
- hinge_question: n/a.
- reader_out: A finite failure must escape every critical continuation criterion.
- next_need: Endpoint \(L^3\) and local concentration make that escape concrete.
- must_keep: \(2/p+3/q\leq1\), \(q>3\); \(L^3\) scale invariance; mechanism rather than theorem list.
- avoid: Full interpolation derivation and publication chronology as organizing principle.
8.
- role: consequence.
- reader_in: Critical quantities measure concentration without weakening under rescaling.
- pressure: A reader needs to know what a singular point must look like locally.
- core_move: Use Caffarelli--Kohn--Nirenberg to show that every shrinking parabolic cylinder around a singular point retains definite scale-invariant concentration.
- hinge_question: n/a.
- reader_out: Failure cannot disappear upon inspection at a sufficiently small scale.
- next_need: The critical \(L^3\) endpoint sharpens the time behaviour of the concentration.
- must_keep: \(Q_r(z_0)=B_r(x_0)\times(t_0-r^2,t_0)\); epsilon regularity; singular set is small but one point is enough.
- avoid: Claiming that partial regularity proves the form of every classical blow-up profile.
9.
- role: consequence.
- reader_in: A singular point requires concentration at every small parabolic scale.
- pressure: The time trace of a critical norm near a first singular time remains unclear.
- core_move: Present the endpoint \(L^\infty_tL^3_x\) regularity theorem, Seregin's full \(L^3\) divergence, and Tao's quantitative lower growth as progressively sharper restrictions on finite failure.
- hinge_question: n/a.
- reader_out: A critical norm must eventually exceed every fixed level, with known quantitative growth still far below a power law.
- next_need: Scaling must explain how this can coexist with finite energy and finite time.
- must_keep: Whole-space scope where required; primary citations; no statement stronger than each cited theorem.
- avoid: Equal-sized theorem summaries and transferring whole-space endpoint results silently to the torus.
10.
- role: landing.
- reader_in: Finite failure requires persistent critical concentration and diverging continuation norms.
- pressure: The energy estimate still appears strong until its scaling weakness is shown.
- core_move: Compare \(L^3\) and \(L^2\) scaling, then use geometrically shrinking parabolic times to state the Zeno-cascade threat as a heuristic permitted by known estimates.
- hinge_question: n/a.
- reader_out: The reader has a clear present frontier: energy stays finite, critical and continuation norms must diverge, concentration survives at every scale, and no known datum-level estimate excludes the finite-time accumulation.
- next_need: The direct proof can now be written as one missing estimate.
- must_keep: \(L^3\) invariant; \(L^2\) energy decreases under concentration; \(\sum4^{-n}<\infty\); heuristic status explicit.
- avoid: Claiming that a Zeno cascade is a constructed Navier--Stokes solution or that scaling causes one.
11.
- role: setup.
- reader_in: The public frontier has isolated the missing direct estimate.
- pressure: The reader needs the exact shape of a completed direct proof.
- core_move: State the Gold estimate for one \(s_0>5/2\) and every finite horizon, then carry it briefly through embedding, higher orders, pressure, and restart.
- hinge_question: n/a.
- reader_out: The entire Gold proof is visible without a full derivation.
- next_need: The exact reason existing energy control does not supply that estimate remains to be stated.
- must_keep: \(\sup_{t<\min\{T,T_*\}}\lVert u(t)\rVert_{H^{s_0}}\leq C_{s_0}(u_0,\nu,T)\); no arbitrary proxy; constants may depend on finite derivative order.
- avoid: Repeating the entire Sobolev argument, arbitrary \(Y\), process words, or theorem-status claims.
12.
- role: landing.
- reader_in: One continuation-grade estimate would finish Gold.
- pressure: The obstacle should be concrete enough to explain a century of failure.
- core_move: Place the energy-level second-power time control beside the sixth-power term in the first differentiated estimate and identify the missing bridge.
- hinge_question: n/a.
- reader_out: Gold is easy to state and unresolved at one precise nonlinear estimate.
- next_need: The difficulty itself makes another logical direction attractive.
- must_keep: \(\frac{d}{dt}\lVert\nabla u\rVert_2^2\lesssim_\nu\lVert\nabla u\rVert_2^6\); energy controls only \(\int\lVert\nabla u\rVert_2^2\); permissive peaks are estimate tests, not realized failures.
- avoid: Full interpolation derivation, fake mystery, and saying that all researchers use one identical method.
13.
- role: orient.
- reader_in: The reader sees exactly why Gold has resisted completion.
- pressure: A human mathematician naturally looks for another direction once the direct estimate remains inaccessible.
- core_move: Begin from that difficulty and ask the reader to assume Gold has already succeeded.
- hinge_question: n/a.
- reader_out: The reader enters Silver from inside the consequence of Gold rather than through a method label.
- next_need: Follow what universal smoothness would say about a nonsmooth outcome.
- must_keep: Candid difficulty; dig your teeth into the problem; assume Gold for a moment.
- avoid: Replacing the authored movement with abstract logic or managerial prose.
14.
- role: mechanism.
- reader_in: Gold has been assumed true for the thought experiment.
- pressure: A nonsmooth outcome must be compared with the properties of the original fluid.
- core_move: Carry the implication through velocity, pressure, viscosity, incompressibility, and nonlinear transport until the imagined outcome ceases to describe the original problem.
- hinge_question: n/a.
- reader_out: The reader has already performed the contrapositive reasoning in ordinary language.
- next_need: Compress the reasoning into logic and name the method.
- must_keep: One original fluid; every defining requirement remains in force; no later class predicate.
- avoid: Claiming the thought experiment proves the implication or inventing a physical failure mechanism.
15.
- role: landing.
- reader_in: The reader understands why a nonsmooth object would have to leave the original equation-defined class if Gold were true.
- pressure: The logical form and the cost of proving it directly need exact names.
- core_move: Display the implication and its contrapositive, name the Silver Standard, and end with the need for one principle that handles every nonsmooth case.
- hinge_question: n/a.
- reader_out: The reader knows exactly what Silver must prove and why class membership is the next necessary subject.
- next_need: Subsection 1.5 can define the boundary from both Gold and Silver sides.
- must_keep: Ordinary-language compression before notation; contrapositive name after the idea; simpler question and exhaustive difficulty.
- avoid: NBB phrasing, document navigation, process vocabulary, and pretending the many-case problem is solved.

## Concept Introduction Ledger
1.
- concept: Maximal classical solution and \(T_*\).
- earned_by: The regularity problem asks whether one local solution has a finite last smooth time.
- introduced_at: Opening paragraph of 1.1.
- immediate_job: Fix the one solution and turn global smoothness into \(T_*=\infty\).
2.
- concept: Smoothness through a finite time.
- earned_by: The word smooth is part of the formal target.
- introduced_at: Definition in 1.1.
- immediate_job: State the exact extension property at a candidate endpoint.
3.
- concept: Energy identity and Leray energy class.
- earned_by: Finite energy is part of the datum and supplies the first global a priori control.
- introduced_at: First historical movement in 1.2.
- immediate_job: Show exactly what remains bounded globally and what is only time-integrated.
4.
- concept: Vorticity and enstrophy.
- earned_by: Energy leaves gradient activity unresolved in three dimensions.
- introduced_at: After the energy identity.
- immediate_job: Expose vortex stretching as the uncontrolled derivative interaction.
5.
- concept: Sobolev continuation threshold.
- earned_by: The reader needs a norm strong enough to cross a finite endpoint.
- introduced_at: Middle of 1.2.
- immediate_job: Connect integral derivative control to bounded classical derivatives and local restart.
6.
- concept: Critical scaling and critical norms.
- earned_by: Continuation criteria must be tested against smaller and faster concentration.
- introduced_at: After Sobolev continuation.
- immediate_job: Measure concentration at a strength unchanged by Navier--Stokes rescaling.
7.
- concept: Parabolic cylinder and epsilon regularity.
- earned_by: The reader needs a local picture of what a singular point must retain at every scale.
- introduced_at: CKN movement.
- immediate_job: Turn singularity into persistent scale-invariant concentration.
8.
- concept: Zeno-cascade picture.
- earned_by: Parabolic time scales shrink quadratically with spatial scales and known estimates do not give a minimum duration.
- introduced_at: Final historical movement.
- immediate_job: Make finite-time scale accumulation intelligible while preserving its heuristic status.
9.
- concept: Gold Standard.
- earned_by: The continuation-grade estimate has been identified before the method is named.
- introduced_at: 1.3.
- immediate_job: Compress the direct proof into one exact missing bound.
10.
- concept: Silver Standard and contrapositive.
- earned_by: The Gold thought experiment has already shown what universal smoothness implies about any nonsmooth outcome.
- introduced_at: End of 1.4.
- immediate_job: Name the reversed proof direction the reader has just followed.

## Lexicon Lock
- must_use: smooth solution; finite time; maximal classical solution; continuation; Sobolev embedding; late time slice; vortex stretching; critical \(L^3\) norm; singular point; Zeno cascade; Gold Standard; Silver Standard; same fluid; velocity, pressure, viscosity, incompressibility, nonlinear transport; contrapositive.
- must_not_substitute: proof contract; analytic room; all-orders meaning; regularity level; property list; reader map; proof payment; proof burden; readout; record; helper ontology; arbitrary \(Y\).
- deferred_terms: \(\operatorname{Member}(Q)\), \(\operatorname{Exit}(Q)\), participation, Dead, Jump, Blown, VPI law, derivative tower, compatible rectangles, projective intersection, endpoint jet.
- tone_keys: direct; conversational at conceptual turns; mathematically explicit; patient with the hard connection; brief with textbook background; ordinary causal verbs.

## Cadence Target
- anchor_choice: Section 1.4 Silver Standard Proof, promoted representative voice and reasoning anchor in ProjectInstructions/WritingAnchors.md.
- match_reason: Its candid entry, reader-led thought experiment, consequence-by-consequence movement, staged compression, and honest close match the explanatory work required here; its raw grammar and topic-specific phrases are not a template for the historical section.
- sentence_motion: Begin paragraphs with a claim a person could say aloud, let equations sharpen that claim, vary short turns with longer causal sentences, and let each consequence create the next need.

## Formal Handoff
- formal_entry_point: The governing system and two compact definitions in 1.1; local unnumbered displays for historical derivations; one unnumbered Gold estimate; two unnumbered Silver implications.
- required_formal_elements: Definition of smoothness through \(T\); definition of maximal smooth time; energy identity; vorticity equation and enstrophy balance; Sobolev norm and embedding; continuation assumption and differentiated estimate; pressure Poisson relation; critical criteria and scaling; parabolic cylinder; Gold estimate; Silver implication and contrapositive.
- crossref_plan: Preserve existing subsection labels; use no equation number without a later exact reference; no new prose-facing cross-reference command is required in this temporary early block; every new symbol receives one adjacent first-use gloss.

## Reader-Value Gate
- duh_factor_check: The early section is worth formalizing because it converts a famous open question into the exact continuation estimate Gold lacks and the exact reversed implication Silver must establish.
- strawman_risk: no -- permissive peak and Zeno pictures remain explicitly estimate-level heuristics rather than claims about a realized fluid.
- effort_to_yield: high.
- nonstarter_filter: Remove any theorem whose only function is historical coverage and any definition that does not change the reader's ability to follow Gold or Silver.

## Risks and Countermoves
1.
- risk: The historical section becomes another theorem catalogue.
- countermove: Introduce each result only when the previous estimate leaves a pressure that result answers, and state the changed picture before moving on.
2.
- risk: The Sobolev explanation implies one finite \(H^s\) bound is literally \(C^\infty\).
- countermove: Separate the fixed continuation threshold from the propagation of each higher finite order using smooth initial data and \(m\)-dependent constants.
3.
- risk: Whole-space critical results are silently presented as periodic results.
- countermove: Mark whole-space scope at the ESS, Seregin, and Tao claims and keep the broader periodic discussion at claims shared by both settings.
4.
- risk: Gold repeats the full historical derivation.
- countermove: Keep one exact target estimate, a short sufficiency chain, and one concise display of the nonlinear gap.
5.
- risk: Silver is cleaned into neutral assistant prose.
- countermove: Preserve its difficulty-first entry, hypothetical, ordinary consequence chain, staged compression, and candid statement of the advantage and cost.
6.
- risk: The settled proof object is confused with the public historical route.
- countermove: Keep theorem status absent from these expository files and preserve the supplied compatible-intersection object without evaluation.

## Draft Acceptance Test
- pass_if: The index contains no roadmap; 1.1 contains only the exact problem and necessary definitions; finite energy first receives explanation in Leray; every historical result enters through visible pressure and changes the reader's picture; Sobolev continuation reaches \(C^\infty\) through each finite order, pressure, time derivatives, late-slice restart, and uniqueness; the current frontier states what must diverge, where concentration must persist, why energy permits it, and what estimate is missing; Gold fits on one clear proof path with no arbitrary proxy; Silver preserves Thomas's movement and lands on the need for one common principle; every display has an origin and destination; no floating notation appears; no equation is numbered without a later reference; no NBB or deferred term appears.
- fail_if: Any paragraph merely announces a section, defines a familiar word without changing the argument, treats history as equal capsules, imports later class or intersection machinery, lets an abstract noun perform the mathematics, claims a heuristic is a realized fluid failure, changes Thomas's Silver thought order, or uses the prohibited process vocabulary.
- closing_deletion_test: pass -- every named historical result receives its reason and changed picture at entry, so the final frontier paragraph combines consequences already earned rather than rescuing their relevance.
