## Target Block
- file: workspaces/VSC-workspaces/navier-stokes/Section1-Introduction/1.6-AComparisonWithEuler.tex
- span: entire subsection
- mode: Explanatory Expansion
- block_kind: exposition
- user_intent: Choose the strongest layout for teaching Couette flow and the wooden-board hypothetical, then let the shared Euler/Navier--Stokes membership tests reveal viscosity as the deciding property for this field.
- fixed_constraints: Preserve the subsection heading, label, and placement; open from the concrete wooden-board image; explicitly ask the reader to imagine one fluid taking on that board-like behaviour; bring in Couette as the real viscous comparison and explain what it is; hold the same imagined field through the Euler and fixed-viscosity tests; develop the physical and mathematical richness; preserve the local and infinite-energy caveats; land on the possibility that smoothness can fail above velocity itself.

## Section Job
- job_statement: Let the reader discover, through one physical thought experiment and its exact planar calculation, why a tangential slip can satisfy the local incompressible Euler law while failing the fixed-viscosity Navier--Stokes law.
- why_here: Section 1.5 has made class membership physical through participation and Couette flow, so this is the first place where changing one constitutive property can make the same proposed field pass one governing law and fail the other.
- formal_boundary: The subsection must derive the local planar Euler and Navier--Stokes verdicts exactly, while leaving full whole-space membership, any exhaustive classification of nonsmooth outcomes, and any global finite-energy conclusion outside its claim.
- intent_state_seed: claim_id=section16_membership_split; required_next_move=wooden-board image -> one-fluid hypothetical -> Couette comparison -> shared-property tests -> viscosity verdict -> dynamic smoothing -> exact caveats -> hidden higher failure; forbidden_detours=opening from the finished vortex-sheet label, treating the boards as an actual fluid, announcing viscosity before the shared tests earn it, calling local equation admission full Euler membership, turning the local sheet into a Millennium counterexample, or replacing the thought with a distributional ledger.

## Claim Ladder
1.
- claim: Two wooden boards can slide tangentially along a common face at different speeds without either board crossing the interface.
- warrant: The solid boards supply an ordinary picture in which no normal crossing and abrupt tangential mismatch coexist without contradiction.
- handoff: Asking one fluid to take on that behaviour turns the image into a proposed velocity field rather than an analogy left outside the mathematics.
2.
- claim: Couette flow shows what a real viscous fluid ordinarily does instead: a moving plate communicates tangential momentum through neighbouring fluid layers and produces a smooth shear profile.
- warrant: Section 1.5 has supplied the plate geometry, linear profile, viscous shear, and the distinction between nonzero stress and zero bulk Laplacian.
- handoff: The contrast isolates the exact imagined change -- neighbouring fluid regions cease to share tangential momentum across one surface -- so the proposed field can now be tested against the two equations.
3.
- claim: Euler and Navier--Stokes share velocity, pressure, incompressibility, and nonlinear momentum transport, so those common requirements must be tested before viscosity can distinguish their local laws.
- warrant: The two momentum equations differ by the fixed positive viscous term for the local comparison being made.
- handoff: A planar tangential slip makes each shared test explicit.
4.
- claim: The planar piecewise-constant tangential field is divergence-free and has no nonlinear momentum-flux or pressure imbalance across the interface.
- warrant: The velocity jump is tangent to the plane, the field depends only on the normal coordinate, the velocity itself is tangent, and the pressure is constant.
- handoff: All shared requirements pass, so the local Euler verdict is earned.
5.
- claim: The same field is a stationary local distributional Euler solution whose finite velocity hides a surface-measure shear at the interface.
- warrant: The normal momentum flux agrees across the plane and the curl is the tangential jump multiplied by the surface delta.
- handoff: Restoring positive viscosity tests the one equation property not yet used.
6.
- claim: The stationary sheet fails the fixed-viscosity Navier--Stokes momentum law because its Laplacian is a derivative of the surface measure that no pressure gradient can cancel.
- warrant: The stationary and momentum-flux terms vanish, while the viscous distribution has nonzero curl and every pressure gradient has zero curl.
- handoff: The static residual has a dynamic interpretation that makes the physical difference visible.
7.
- claim: For the same planar-shear ansatz, Euler freezes the profile while Navier--Stokes evolves it by one-dimensional heat flow and rounds a sharp jump over a layer of width comparable to \(\sqrt{\nu t}\).
- warrant: Substitution reduces the Euler equation to \(\partial_tU=0\) and the Navier--Stokes equation to \(\partial_tU=\nu\partial_3^2U\).
- handoff: The reader can now state what viscosity does rather than treating it as a label on the equation.
8.
- claim: This exact local comparison does not give the sheet full whole-space membership and the infinite sheet is not a finite-energy Millennium counterexample; it reveals that an obvious velocity jump is only the lowest visible place where smoothness can fail.
- warrant: The planar construction neither decays nor has finite whole-space kinetic energy, it is outside \(H^1\), and its singularity is concentrated in the base velocity trace.
- handoff: A field may preserve finite continuous velocity while losing smoothness in a gradient, acceleration, jerk, or higher mixed derivative.

## Paragraph Movement Map
1.
- role: orient
- reader_in: The reader has just learned in Section 1.5 that class membership is a test of one complete proposed history.
- pressure: The Euler comparison needs a concrete proposed behaviour before either equation is allowed to classify it.
- core_move: Put two wooden boards in contact and let them slide tangentially at different speeds, then explicitly ask the reader to imagine one fluid taking on that board-like behaviour.
- hinge_question: n/a
- reader_out: The reader sees two fluid regions with equal normal velocity and an abrupt tangential velocity difference, while understanding that the boards are only the source of the hypothetical.
- next_need: A real viscous comparison must show what physical relation this imagined fluid has abandoned.
- must_keep: Two wooden boards; common face; tangential motion; no normal crossing; explicit translation from solids to one imagined fluid.
- avoid: Treating the board analogy as the proof; suggesting that a viscous fluid literally becomes wood; using the term vortex sheet before the picture is clear.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
2.
- role: setup
- reader_in: The reader can picture the proposed board-like fluid but does not yet know what distinguishes it from ordinary viscous shear.
- pressure: The example becomes physically meaningful only when the missing interaction between neighbouring fluid layers is exposed.
- core_move: Bring up Couette flow as the real viscous comparison and reconstruct the moving plate, inter-layer transfer of tangential momentum, and smooth velocity profile.
- hinge_question: n/a
- reader_out: The reader understands Couette flow and sees that the hypothetical replaces smooth viscous transfer with an abrupt tangential slip.
- next_need: This imagined behaviour still has to be admitted or rejected by an equation class.
- must_keep: Fixed and moving plates; neighbouring layers; tangential momentum; continuous linear profile; nonzero shear with zero interior Laplacian.
- avoid: Repeating every Section 1.5 formula; calling Couette a whole-space unforced flow; announcing the Euler verdict.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
3.
- role: mechanism
- reader_in: The reader can picture the board-like tangential slip as a proposed fluid field.
- pressure: Calling the field Eulerian or non-Navier--Stokes now would skip the membership reasoning the example is supposed to teach.
- core_move: Hold the imagined fluid fixed and identify the common Euler and Navier--Stokes requirements that it must satisfy before viscosity can decide the comparison.
- hinge_question: n/a
- reader_out: The reader knows that pressure, incompressibility, nonlinear momentum flux, and velocity are common tests, with viscosity still unpaid.
- next_need: The qualitative tests need one exact field on which they can be verified.
- must_keep: Same imagined field; shared properties first; viscosity last; membership vocabulary from Section 1.5.
- avoid: A symmetric inventory; a table that replaces the reasoning; saying viscosity "beats" or "wins"; treating mathematical terms as agents.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
4.
- role: mechanism
- reader_in: The reader knows why each shared property must be checked.
- pressure: The board-like picture needs a precise fluid field before equation admission has mathematical content.
- core_move: Define the planar tangential jump and derive incompressibility and vanishing momentum-flux divergence directly from its geometry.
- hinge_question: n/a
- reader_out: The reader sees why a tangential jump creates no normal mass flux and why a profile varying only normally with velocity tangent to the plane has zero nonlinear momentum-flux divergence.
- next_need: Pressure and normal momentum flux remain to complete the Euler test.
- must_keep: \(\Sigma=\{x_3=0\}\); \(u=U_-e_1\) below and \(u=U_+e_1\) above; \([u]\cdot e_3=0\); direct plain-language gloss for \(\delta_\Sigma\).
- avoid: Floating displays; unexplained distribution notation; claiming smoothness; using a formally unsafe pointwise transport product at the jump.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
5.
- role: consequence
- reader_in: The reader has already verified incompressibility and momentum-flux divergence for the exact field.
- pressure: The Euler admission verdict still needs the pressure and momentum equation.
- core_move: Complete the shared tests with constant pressure and matching normal momentum flux, name the field a stationary local Euler vortex sheet, and show its shear concentrated on the interface.
- hinge_question: n/a
- reader_out: The reader understands why the field satisfies the Euler equations distributionally even though its velocity has an abrupt tangential jump.
- next_need: The comparison now has only the fixed-viscosity requirement left to test.
- must_keep: Divergence-form momentum equation; zero normal flux; constant pressure; curl as surface measure; bounded velocity on both sides.
- avoid: Letting the formal name arrive before the verdict is understood; presenting vorticity as a second detached example; calling local equation satisfaction full energy-class membership.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
6.
- role: consequence
- reader_in: The reader has seen every shared Euler/Navier--Stokes requirement pass.
- pressure: Viscosity must now produce the equation-level class difference rather than being named as the difference in advance.
- core_move: Restore fixed positive viscosity and show that the exact same stationary field produces an unmatched distributional Laplacian, which violates the Navier--Stokes momentum requirement.
- hinge_question: n/a
- reader_out: The reader can identify the precise equation term that rejects the stationary sheet and can explain why pressure cannot repair it.
- next_need: The distributional mismatch should be read back into what a viscous evolution would physically do.
- must_keep: \(\Delta u=(U_+-U_-)e_1\delta'_\Sigma\); stationary and momentum-flux terms vanish; pressure-gradient curl argument; verdict scoped to this field and law.
- avoid: Anthropomorphizing viscosity or pressure; claiming every Euler singularity exits Navier--Stokes for the same reason; burying the verdict beneath caveats.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
7.
- role: mechanism
- reader_in: The reader knows the stationary sheet fails because positive viscosity differentiates across its sharp jump.
- pressure: A residual identifies failure, while the reader still needs to see the lawful viscous evolution that replaces the stationary slip.
- core_move: Reduce both equations under the planar-shear ansatz and let frozen Euler flow and viscous heat flow show the law split dynamically.
- hinge_question: n/a
- reader_out: The reader sees Euler preserve any tangential profile in this ansatz and Navier--Stokes spread a jump immediately for positive time.
- next_need: The exact achievement and limits of that comparison must be stated before it is carried into singularity.
- must_keep: \(u=(U(t,x_3),0,0)\); Euler \(U_t=0\); Navier--Stokes \(U_t=\nu U_{x_3x_3}\); heat-kernel or error-function smoothing; thickness scale \(\sqrt{\nu t}\); relation back to Couette.
- avoid: Turning the heat equation into a side lecture; implying the discontinuous infinite sheet is admissible Millennium initial data; claiming viscosity always makes every Euler flow different.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
8.
- role: landing
- reader_in: The reader understands the static and dynamic role of viscosity in the planar slip.
- pressure: The example must neither overclaim global significance nor end as an isolated model calculation.
- core_move: State the local equation scope and whole-space membership caveats, then use the visible base-level jump to reveal why a true smoothness failure may first appear higher than the velocity itself.
- hinge_question: n/a
- reader_out: The reader knows exactly what the comparison establishes and is ready to follow failures hidden in gradients, acceleration, jerk, and higher mixed derivatives.
- next_need: The physical derivative tower must make those hidden locations explicit.
- must_keep: Local exactness; failure of whole-space decay, finite energy, and \(H^1\); no exhaustive singularity claim; finite continuous velocity can hide derivative failure.
- avoid: Referee-report caveat lists; forward document navigation; calling the example a counterexample to global regularity; repeating the complete membership derivation.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a

## Concept Introduction Ledger
1.
- concept: board-like tangential slip
- earned_by: Two boards make tangential mismatch with no normal crossing directly visible.
- introduced_at: Paragraph 1, immediately translated from the solid image into one imagined fluid.
- immediate_job: Give the reader one concrete proposed behaviour before any equation class is named.
2.
- concept: overlapping Euler and Navier--Stokes equation requirements
- earned_by: The board-like fluid is only a proposed behaviour and has not yet been admitted by any governing equation.
- introduced_at: Paragraph 3.
- immediate_job: Fix the tests shared by both laws so viscosity can be isolated honestly.
3.
- concept: planar vortex sheet
- earned_by: The reader already understands two fluid regions sliding tangentially with no normal crossing.
- introduced_at: Paragraph 5, after the exact field has passed the common incompressibility and momentum-flux tests.
- immediate_job: Supply the accepted name for the stationary local Euler field the reader has just derived.
4.
- concept: surface delta \(\delta_\Sigma\) and its normal derivative
- earned_by: The exact piecewise-constant field changes across one plane, so its derivatives are concentrated on that plane.
- introduced_at: Paragraphs 4 through 6, adjacent to the first derivative formulas.
- immediate_job: State where the divergence, vorticity, and viscous residual live and distinguish a tangential jump from a normal flux.
5.
- concept: planar-shear reduction
- earned_by: The static Navier--Stokes residual has shown that the imagined sheet cannot remain stationary under positive viscosity.
- introduced_at: Paragraph 7.
- immediate_job: Derive the actual time evolution of the same profile under Euler and Navier--Stokes.
6.
- concept: viscous smoothing scale \(\sqrt{\nu t}\)
- earned_by: The planar Navier--Stokes profile satisfies the one-dimensional heat equation.
- introduced_at: Paragraph 7 after the reduced equations.
- immediate_job: Make the physical thickness of the rounded slip layer visible without opening a separate boundary-layer discussion.

## Lexicon Lock
- must_use: Couette flow; neighbouring layers; tangential momentum; "Let's run the thought experiment"; imagine the fluid; two wooden boards; same proposed field; pressure; incompressibility; nonlinear transport; viscosity; class membership; Euler; Navier--Stokes; stationary sheet; higher derivative.
- must_not_substitute: "the Couette picture" as an unexplained opening; boards as an actual fluid law; viscosity "beating" Euler or VPI; pressure as an independent agent; slaved pressure; proof ledger; class taxonomy; mechanism inventory; services; decisive factor announced before the tests; stationary vortex sheet as a Millennium counterexample.
- deferred_terms: "vortex sheet" until the board-like fluid is pictured; \(\delta_\Sigma\) until the planar field is defined; local Euler admission until every shared test passes; Navier--Stokes failure until the viscous residual is derived; derivative tower until the final consequence.
- tone_keys: candid; conversational; teachable; physically concrete; causally patient; mathematically exact.

## Cadence Target
- anchor_choice: anchor-1-section-1-4-silver-standard-proof
- match_reason: The approved Section 1.4 anchor also begins from a difficulty the reader can feel, invites one ordinary hypothetical, carries the reader through its consequences, compresses only after understanding, and lands on the newly exposed burden.
- sentence_motion: Begin with medium conversational sentences that hold one physical object, use a short standalone invitation at the genuine turn, let repeated causal openings preserve the same proposed field through each test, and allow the exact displays to confirm rather than replace the spoken reasoning.

## Formal Handoff
- formal_entry_point: No numbered formal environment; the first unnumbered display appears only after the board-like fluid and the common equation tests are clear.
- required_formal_elements: Unnumbered displays for the side-by-side laws, planar field, tangential jump, incompressibility test, Euler momentum balance, vorticity measure, Navier--Stokes viscous residual, reduced Euler and heat equations, and optionally the explicit smoothed profile; every display receives an adjacent purpose sentence, a derivation, and a plain-language readout.
- crossref_plan: Preserve \label{sub:AComparisonWithEuler}; introduce no new \cref; number no equation because no later source currently cites an exact row; gloss \(\Sigma\) as the interface plane, \(e_3\) as its normal, \(\delta_\Sigma\) as unit surface mass on the plane, \(U_\pm\) as the two tangential speeds, and \(U(t,x_3)\) as the planar shear profile at first use.

## Reader-Value Gate
- duh_factor_check: The comparison is worth formalizing because it lets the reader watch one proposed fluid pass every equation property shared by Euler and Navier--Stokes and then fail exactly where positive viscosity enters, turning an equation difference into a physical and membership distinction.
- strawman_risk: no -- the planar vortex sheet is an exact stationary local distributional Euler solution, and the manuscript states the precise whole-space limits of using it.
- effort_to_yield: medium -- several displays are justified by the unusually high conceptual payoff of seeing the same field pass one law and fail the other.
- nonstarter_filter: Keep the sheet as a structural and mechanism-bearing comparison only; it supports no claim that every nonsmooth Navier--Stokes proposal is Eulerian or that the infinite sheet belongs to the finite-energy Millennium data class.

## Risks and Countermoves
1.
- risk: The board opening sounds like an analogy detached from the fluid.
- countermove: Translate it immediately into one fluid with two neighbouring regions, no normal crossing, and an abrupt tangential speed difference; use Couette next to expose the missing viscous transfer.
2.
- risk: The boards remain a decorative analogy.
- countermove: Translate each board property into a fluid statement before naming the vortex sheet: tangent motion, no normal crossing, finite speeds, abrupt interface jump.
3.
- risk: Viscosity is announced as the answer before the reader tests the shared properties.
- countermove: Hold viscosity back while incompressibility, momentum flux, pressure, and normal transport are checked one by one on the same field.
4.
- risk: Distributional notation turns the passage into a textbook proof ledger.
- countermove: Give every distribution one physical sentence before its display and one equation consequence after it.
5.
- risk: The heat-flow enrichment becomes a second subsection inside the first.
- countermove: Use the reduced equations and one explicit smoothed profile only to read the static residual dynamically, then return to the local verdict.
6.
- risk: The caveats drain the ending of force.
- countermove: State the decay, energy, \(H^1\), and non-exhaustiveness limits compactly, then land on the substantive higher-derivative consequence.

## Draft Acceptance Test
- pass_if: A cold reader can picture the boards, explain exactly what it means for one fluid to take on their behaviour, explain Couette flow as the real viscous comparison, name every shared Euler/Navier--Stokes property that passes, derive the local Euler sheet and fixed-viscosity failure, read the heat-flow smoothing physically, state the whole-space limits, and see why finite continuous velocity does not exhaust smoothness failure; every display is earned, derived, and glossed; every source sentence occupies its own line; the subsection contains no floating notation, no managerial prose, no unearned theorem language, no forward section announcement, no forbidden Not-But construction, and no equation number without a later reference; the final landing states that the planar example exposes failure at velocity while the same loss can first occur in a higher derivative.
- fail_if: The opening says only "the Couette picture"; the boards remain an image with no fluid translation; Couette is named without explaining its mechanism; viscosity is declared decisive before the shared requirements are checked; local Euler or Navier--Stokes admission is asserted before its equation is paid; the sheet is implied to be a full whole-space member, finite-energy, or globally exhaustive; the smoothing paragraph overtakes the membership argument; a display lacks adjacent motivation, derivation, or plain-language consequence; or the close first supplies the reason any earlier calculation mattered.
- closing_deletion_test: pass -- deleting the close leaves the purpose of Couette, the board-like hypothetical, the common-property tests, the local Euler verdict, the viscous failure, and the heat-flow smoothing legible at the point each arrives; the close only combines those earned consequences into the higher-derivative pressure.
