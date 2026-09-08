## Target Block
- file: Section1-Introduction/1.6-AComparisonWithEuler.tex
- span: opening through the local class verdict, including both figures
- mode: Explanatory Expansion
- block_kind: exposition
- user_intent: Recover one imagined fluid packet as the object in both scenarios; treat every enclosing line as an observation frame; compare continuous Couette-like shear with a board-like tangential jump; derive smoothness and local Euler/Navier--Stokes class membership for each.
- fixed_constraints: Preserve the subsection heading, label, placement, two-figure count, later distributional calculation, dynamic smoothing, and full-membership caveat; do not depict literal boards, plates, walls, or separate bodies; use the same one-fluid packet in both figures; keep the approved Section 1 organization unchanged.

## Section Job
- job_statement: Let the reader imagine the same packet of fluid taking on two different internal velocity relations, then let smoothness and the governing equations classify each relation.
- why_here: Section 1.5 has made participation a relation among neighbouring parts of one fluid, and Section 1.6 must now show how continuous participation and a tangential break differ without changing the fluid object.
- formal_boundary: The subsection establishes local equation admission for two planar fields; it does not turn either schematic packet into a whole-space finite-energy continuation or alter the settled later closure.
- intent_state_seed: claim_id=section16_one_packet_two_behaviours; required_next_move=one imaginary packet -> continuous Couette-like profile -> local overlap verdict -> same packet with board-like jump -> Euler-only verdict -> viscous smoothing -> exact global caveat -> higher-derivative handoff; forbidden_detours=literal solids, literal plates in the proposed object, two fluids, separate physical systems, visual classification without equation tests, or full Member(Q) claims from a local packet.

## Claim Ladder
1.
- claim: Both drawings enclose one packet of one fluid, and every line around it is an imaginary observation frame rather than a wall or solid body.
- warrant: The thought experiment changes only how velocity varies inside the packet; it does not change the matter being described or add boundary forcing to the proposed field.
- handoff: The same top and bottom tangential readings can now be joined in two different ways inside the same object.
2.
- claim: In the Couette-like case, every intermediate layer takes an intermediate tangential speed, producing a continuous linear profile.
- warrant: The Couette profile interpolates between the two sampled speeds and transfers velocity continuously across neighbouring layers.
- handoff: Smoothness is visible, but equation-class membership still has to be checked.
3.
- claim: The linear shear is divergence-free and has zero nonlinear transport and zero Laplacian, so with constant pressure it satisfies both local Euler and fixed-viscosity Navier--Stokes laws.
- warrant: The velocity is tangent, varies only normally, and is linear in the normal coordinate.
- handoff: The smooth case lies in the local overlap of the two equation classes rather than identifying viscosity by appearance alone.
4.
- claim: In the board-like case, the same packet keeps the same two sampled speeds but removes every intermediate speed, so adjacent parts of one fluid meet across an abrupt tangential jump.
- warrant: Board-like describes the imagined relation between the two fluid regions; no boards or independent bodies exist in the object.
- handoff: The jump is visibly nonsmooth, and the shared Euler/Navier--Stokes terms must be tested before viscosity can separate the laws.
5.
- claim: The tangential jump remains incompressible and creates no nonlinear normal momentum flux, so constant pressure completes the local distributional Euler balance.
- warrant: The jump has no normal component and the velocity on both sides is tangent to the interface.
- handoff: Positive viscosity is the one remaining equation property.
6.
- claim: The stationary jump fails the fixed-viscosity Navier--Stokes law because its Laplacian is a nonzero derivative of the interface measure that pressure cannot cancel.
- warrant: The viscous distribution has nonzero curl while a pressure gradient has zero curl.
- handoff: The two scenarios now have exact smoothness and local class verdicts.
7.
- claim: Positive-viscosity evolution replaces the stationary jump with a smooth transition whose thickness grows like the square root of viscosity times time.
- warrant: Under the planar shear ansatz, Navier--Stokes reduces to one-dimensional heat flow while Euler freezes the profile.
- handoff: The local comparison can be scoped honestly before moving to subtler higher-rung failures.
8.
- claim: The finite packet drawings and infinite planar formulas teach local behaviour and equation membership only; full continuation membership still requires the fixed history, decay, finite energy, and the manuscript's global conditions.
- warrant: A drawn packet is not a boundary-value problem or an independently realized whole-space solution.
- handoff: The visible velocity jump becomes the lowest rung from which the derivative-tower discussion can rise.

## Paragraph Movement Map
1.
- role: orient
- reader_in: The reader knows participation means neighbouring parts remain within one coupled fluid response.
- pressure: The comparison must hold that one-fluid object fixed before changing its internal velocity relation.
- core_move: Draw one imaginary rectangle around one packet of fluid, state that its lines are not physical boundaries, and prescribe two tangential velocity readings on two sampled horizontal slices.
- hinge_question: How can the same fluid join those two readings?
- reader_out: The reader sees one packet and one pair of sampled speeds, with no plates, boards, or walls added.
- next_need: Two possible ways of filling the velocity between those samples must be imagined.
- must_keep: one packet; same fluid; imaginary frame; top and bottom sampled speeds; no physical boundary.
- avoid: solid bodies; separate systems; boundary forcing; using the drawing as proof.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
2.
- role: mechanism
- reader_in: The reader has one packet and two endpoint velocity readings.
- pressure: Couette must be taught as a velocity relation inside the imagined packet, not turned into literal laboratory hardware.
- core_move: Fill the packet with a continuous linear Couette-like profile and explain neighbouring layers taking every intermediate speed.
- hinge_question: Is this smooth shape admitted by one equation class or both?
- reader_out: The reader understands continuous shear as one possible behaviour of the same fluid.
- next_need: The governing terms must classify it.
- must_keep: Couette name; usual laboratory origin stated briefly; borrowed profile; no plates in the proposed packet; continuous linear interpolation.
- avoid: grey plate graphics; calling this exclusively Navier--Stokes before calculating; treating zero Laplacian as zero shear.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
3.
- role: consequence
- reader_in: The reader sees smooth Couette-like shear but has no class verdict.
- pressure: Visual smoothness alone cannot decide governing-law membership.
- core_move: Calculate divergence, transport, and Laplacian for the linear profile and state that it is smooth and lies in the local Euler/Navier--Stokes overlap.
- hinge_question: What changes if the same fluid refuses every intermediate speed?
- reader_out: The reader knows exactly why the continuous profile passes both local laws.
- next_need: A second behaviour of the same packet must make viscosity active.
- must_keep: local overlap; constant pressure; nonzero shear; zero bulk Laplacian; equation-derived verdict.
- avoid: full whole-space membership; exclusive Navier--Stokes classification; claiming viscosity is absent.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
4.
- role: setup
- reader_in: The reader has already seen the same packet join its velocity readings smoothly.
- pressure: Board-like must describe only the motion assigned to fluid regions, never literal boards or separate matter.
- core_move: Return to the same packet and imagine a board-like internal relation: one speed below the middle slice and the other above, with no intermediate values.
- hinge_question: Can one fluid carry that abrupt tangential break under each law?
- reader_out: The reader sees one fluid with a tangential discontinuity and no normal crossing.
- next_need: The shared equation properties must be checked.
- must_keep: same packet; same two readings; abrupt jump; no intermediate speeds; no normal crossing.
- avoid: two bodies; wooden textures; external surfaces; automatic Euler label.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
5.
- role: mechanism
- reader_in: The reader can picture the discontinuity but has not classified it.
- pressure: The shared laws must pass before their difference can matter.
- core_move: Define the planar step and derive incompressibility, zero nonlinear momentum-flux divergence, and constant-pressure Euler admission.
- hinge_question: What does fixed positive viscosity read at the jump?
- reader_out: The reader knows why the jump is a local distributional Euler solution.
- next_need: The viscous term must test the exact same field.
- must_keep: one field; tangential jump; divergence form; local distributional scope.
- avoid: pointwise nonlinear products at the interface; global counterexample language; new physical object.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
6.
- role: consequence
- reader_in: Every shared term has passed for the jump.
- pressure: Viscosity must create a concrete residual rather than remain a label.
- core_move: Restore positive viscosity, derive the interface-supported Laplacian, rule out pressure repair, and state the Euler-only local verdict for the jump.
- hinge_question: What would the viscous evolution do instead of preserving the step?
- reader_out: The reader can state why the same nonsmooth field exits the local fixed-viscosity law.
- next_need: The static mismatch should be returned to fluid behaviour.
- must_keep: ν>0; distributional Laplacian; curl obstruction; same field; local verdict.
- avoid: claiming every Euler solution fails Navier--Stokes; turning the local verdict into full Member(Q).
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
7.
- role: landing
- reader_in: The reader has classified both imagined behaviours of the same packet.
- pressure: The comparison must explain what viscosity does and then stop before overclaiming.
- core_move: Show heat-flow smoothing, state the exact local/global boundary, and hand the reader from a visible jump in velocity to failures hidden higher in the same fluid response.
- hinge_question: n/a
- reader_out: The reader knows that the continuous case is smooth and locally shared, the jump case is nonsmooth and locally Euler-only, and full history membership is a later/global test.
- next_need: Follow the response above visible velocity.
- must_keep: heat equation; smoothing scale; local overlap versus Euler-only; full-membership caveat; higher derivative landing.
- avoid: administrative summary; theorem-status language; new reorganization; claiming the packet drawings are solutions by themselves.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a

## Concept Introduction Ledger
1.
- concept: imaginary fluid-packet frame
- earned_by: The comparison needs one object held fixed while only its internal velocity relation changes.
- introduced_at: Opening sentence and both figure captions.
- immediate_job: Prevent the diagram boundary from becoming a wall, plate, board, or second physical system.
2.
- concept: Couette-like continuous shear
- earned_by: The same two sampled tangential speeds need one smooth way of being joined inside the packet.
- introduced_at: First scenario.
- immediate_job: Supply the smooth case and reveal the local equation-class overlap.
3.
- concept: board-like tangential slip
- earned_by: The comparison needs the same packet with all intermediate velocities removed.
- introduced_at: Second scenario after the smooth verdict.
- immediate_job: Supply a nonsmooth case whose shared terms pass and whose viscous term fails.
4.
- concept: local equation-class overlap and separation
- earned_by: Both exact profiles have been substituted into the common and viscous terms.
- introduced_at: Immediately after each calculation.
- immediate_job: Answer which law admits each imagined behaviour without confusing a local model with full continuation membership.

## Lexicon Lock
- must_use: one packet of fluid; same fluid; imaginary lines; observation frame; imagine the fluid behaved; Couette-like; neighbouring layers; intermediate speeds; board-like; tangential jump; smooth; local equation class; Euler; Navier--Stokes; viscosity.
- must_not_substitute: literal wooden boards; upper board; lower board; moving plate as part of the proposed packet; fixed plate as part of the proposed packet; two bodies; two fluids; real viscous comparison; walls around the packet; boxes as matter; slaved pressure; proof ledger; mechanism inventory.
- deferred_terms: vortex sheet until the step field has passed the shared local laws; class verdict until the governing terms are calculated; full Member(Q) until the local/global distinction is explicit.
- tone_keys: physically awake; candid; teachable; causal; conversational; mathematically exact.

## Cadence Target
- anchor_choice: anchor-1-section-1-4-silver-standard-proof
- match_reason: Section 1.4 fixes one imagined object, develops its consequences in ordinary language, and allows the formal implication to arrive only after the reader understands the thought.
- sentence_motion: Begin with the concrete act of drawing an imaginary frame, use repeated returns to "the same packet" to preserve identity, place short verdict sentences after each calculation, and let the two cases accumulate rather than appear as a symmetric inventory.

## Formal Handoff
- formal_entry_point: After the reader can distinguish the imaginary packet frame from a physical boundary and can picture the continuous Couette-like profile.
- required_formal_elements: Unnumbered displays for the linear shear, its local governing terms, the step field, divergence and flux tests, vorticity measure, viscous residual, reduced Euler/heat equations, and the smoothed profile; every display receives an adjacent physical purpose and readout.
- crossref_plan: Preserve the subsection label and two figure labels; number no equations; refer to the figures as two behaviours of the same kind of imagined packet; do not introduce new global class symbols.

## Reader-Value Gate
- duh_factor_check: The block is valuable because it makes the reader hold one fluid object fixed and watch continuity, viscosity, and local class membership change solely with the relation among neighbouring velocities.
- strawman_risk: no -- the continuous linear shear and discontinuous planar shear are exact local fields whose equation terms can be checked directly.
- effort_to_yield: medium -- the two figures and calculations answer the physical and class questions together.
- nonstarter_filter: The figures do not claim a finite packet solves a boundary-value problem or that either schematic is a whole-space Millennium continuation.

## Risks and Countermoves
1.
- risk: The dashed outline is still read as a container wall.
- countermove: Label it "imaginary frame around one fluid packet" inside both figures and state in prose that no boundary condition or forcing is attached to it.
2.
- risk: The phrase Couette flow silently imports literal plates.
- countermove: Mention the standard laboratory origin once, then say explicitly that the thought experiment borrows only its continuous velocity profile.
3.
- risk: The smooth profile is mislabeled as Navier--Stokes-only.
- countermove: Calculate its zero bulk Laplacian and state the local Euler/Navier--Stokes overlap.
4.
- risk: Board-like is again mistaken for two solids.
- countermove: Use identical fluid fill and packet geometry in both figures, label the two regions as the same fluid, and describe board-like only as the assigned tangential relation.
5.
- risk: Local equation admission is confused with full continuation membership.
- countermove: State the history, decay, energy, and whole-space boundary after the local verdicts, without weakening those exact verdicts.

## Draft Acceptance Test
- pass_if: A cold reader can say that both figures depict one packet of one fluid inside an imaginary observation frame; explain the continuous and abrupt ways the same two velocity readings can be joined; identify the continuous profile as smooth and locally admitted by both Euler and Navier--Stokes; identify the abrupt profile as nonsmooth, locally admitted by Euler, and rejected by fixed positive viscosity; distinguish local law admission from full Member(Q); and follow the result into viscous smoothing and higher derivatives.
- fail_if: Any line is presented as a literal wall, plate, board, or second body; the cases use different fluid objects; Couette is classified before its terms are calculated; the jump is called Eulerian before the shared laws pass; or the local diagrams are treated as full continuation members.
- closing_deletion_test: pass -- deleting the final paragraph leaves the identity of the packet, both behaviours, and both local class verdicts fully earned where they occur.
