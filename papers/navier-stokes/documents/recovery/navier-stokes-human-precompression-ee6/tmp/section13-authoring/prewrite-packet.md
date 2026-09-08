## Target Block
- file: workspaces/VSC-workspaces/navier-stokes/Section1-Introduction/1.3-GoldStandardProof.tex
- span: entire subsection
- mode: Authorial Draft
- block_kind: exposition
- user_intent: Rewrite Section 1.3 in Thomas's voice so the Sobolev smoothness argument gives the energy estimates their destination and the calculation exposes the exact Gold burden.
- fixed_constraints: The Sobolev-to-smoothness argument is essential and cannot be removed; derivative-tower machinery belongs later; do not treat the existing assistant prose as voice evidence; retain the energy identity, the first differentiated estimate, the distinction between failure of an estimate and actual fluid blow-up, pressure recovery, and time-derivative recovery; use one TeX sentence per source line. Repeated-miss precheck: locally_fixed = the Sobolev argument is now treated as the governing destination rather than an optional insertion; still_broken = the first draft left a detachable scalar comparison inside the main thought, echoed the handwritten Silver paragraph's temptation language, did not say plainly that the \(Y\) calculation is the first rung toward a continuation-grade \(H^{s_0}\) bound, and over-summarized the landing; governing_sentence_movement = continuation demands finite strong control, Sobolev says what that control buys, the energy-to-\(Y\) calculation tests the first climb toward that control, the cubic cost stalls it before the continuation threshold, and one precise landing names the remaining Gold bound; blocker_state = none.

## Section Job
- job_statement: Let the reader discover why the Clay continuation requirement produces the Gold method, what Sobolev estimates must accomplish, and why the first natural estimate fails to complete that job.
- why_here: Section 1.2 has defined smoothness and continuation, while Section 1.4 begins from the difficulty of finding the missing Gold estimates.
- formal_boundary: State the standard local-continuation and Sobolev facts accurately, derive the energy and first-gradient estimates, and stop at the unpaid global estimate without importing the later derivative tower or claiming a proof.
- intent_state_seed: claim_id=gold-method-generated; required_next_move=carry continuation into Sobolev-measurable control, let the energy calculation expose the first unpaid cost below that threshold, then return directly to the one strong bound that unlocks the bootstrap; forbidden_detours=opening with a method label, treating one Sobolev norm as C-infinity, inserting a detachable scalar comparison, importing later tower machinery, or announcing the next section.

## Claim Ladder
1.
- claim: Standard local theory supplies a short-time smooth solution, and continuation is available while a sufficiently strong Sobolev norm remains finite.
- warrant: This is the continuation framework inherited from Section 1.2 and standard Navier--Stokes local theory.
- handoff: Global smoothness becomes the problem of obtaining a datum-and-equation bound on such a norm over every finite interval.
2.
- claim: Sobolev embedding converts finite (H^s) control into only finitely many continuous spatial derivatives, while control at every finite Sobolev order yields spatial smoothness.
- warrant: In three dimensions, (H^s\hookrightarrow C^k) for (s>k+3/2), and the intersection of all finite Sobolev orders lies in (C^\infty).
- handoff: The reader now knows what climbing estimates is supposed to buy and why one isolated estimate cannot finish the problem.
3.
- claim: The spatial Sobolev target is only the first part of the full velocity-pressure spacetime requirement, and the equations will recover the remaining pressure and time regularity once the needed spatial control is secured.
- warrant: The pressure Poisson relation and momentum equation remain available on the same solution, but their detailed recovery is earned only after the estimate has reached a usable strong bound.
- handoff: The reader knows the full destination without being pulled into a second derivation before the first estimate begins.
4.
- claim: The basic energy identity controls kinetic energy pointwise in time and the gradient only after integration in time.
- warrant: Incompressibility cancels transport and pressure in the (L^2) pairing, while viscosity leaves a nonnegative dissipation term.
- handoff: The missing pointwise gradient control forces the first differentiated estimate.
5.
- claim: Pairing with (-\Delta u) leaves a nonlinear transport cost bounded by (C\nu^{-3}Y^3), where (Y=\lVert\nabla u\rVert_2^2).
- warrant: Integration by parts, interpolation, and Young's inequality give the stated bound and allow only part of the cost to be absorbed by viscosity.
- handoff: Comparing the two estimates exposes the mismatch between the control already earned and the control newly required.
6.
- claim: Control of \(\int Y\) does not control \(\int Y^3\), and failure of this estimate does not prove fluid blow-up.
- warrant: Tall narrow spikes separate the two integrability statements, while the calculation supplies no claim that the Navier--Stokes solution forms them.
- handoff: The failed first derivative climb is placed directly against the continuation-grade Sobolev norm it has not reached.
7.
- claim: A Gold Standard Proof must derive a first global strong bound from the original data and equations so the high-order Sobolev estimates can propagate every finite order and the equations can recover pressure and time regularity.
- warrant: The high-order energy inequality closes once the gradient coefficient is integrable; Sobolev embedding then supplies every spatial derivative, the pressure relation supplies every pressure order, and repeated differentiation supplies every time order.
- handoff: The section lands on viscosity having to pay the whole nonlinear bill and the exact estimate still missing.

## Paragraph Movement Map
1.
- role: orient
- core_move: Begin from short-time existence and continuation, then let the all-time requirement create the demand for an a priori bound.
- hinge_question: n/a
- reader_in: The reader knows what smoothness and continuation mean.
- pressure: The reader does not yet know why those definitions produce a particular proof method.
- reader_out: The reader sees that global smoothness can be won by keeping one sufficiently strong regularity norm finite on every finite interval.
- next_need: The reader needs to know what such a norm would buy.
- must_keep: Same solution, original initial data, original equations, every finite time.
- avoid: Opening by defining Gold from outside the reasoning or claiming the equations already keep the fluid smooth.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
2.
- role: mechanism
- core_move: Translate the smoothness requirement into the finite Sobolev estimates the equations can be asked to produce.
- hinge_question: n/a
- reader_in: The reader understands why a strong bound is needed.
- pressure: The phrase strong bound has no mathematical destination yet.
- reader_out: The reader knows exactly how many continuous derivatives one (H^s) bound buys and why all finite orders are required for spatial smoothness.
- next_need: The velocity-only spatial statement must reach the velocity-pressure spacetime pair defined above.
- must_keep: (H^s\hookrightarrow C^k) for (s>k+3/2); (s>5/2) gives (C^1); one (H^s) is not (C^\infty); (H^\infty\subset C^\infty).
- avoid: A detached theorem citation, a glossary tone, or the later mixed-derivative tower.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
3.
- role: bridge
- core_move: Fix the full velocity-pressure spacetime destination in ordinary language, while reserving the detailed recovery for the point where a strong spatial bound has actually been secured.
- hinge_question: n/a
- reader_in: The reader knows what the spatial Sobolev orders buy for velocity.
- pressure: Section 1.2 defined smoothness for both fields and for space and time.
- reader_out: The reader knows that the spatial estimates are aimed at the full definition and that the equations themselves must complete pressure and time regularity.
- next_need: The actual equations must now be tested for the first required control.
- must_keep: The velocity-pressure spacetime scope and an explicit promise inside the argument that pressure and time recovery will be accounted for once the spatial estimate is closed.
- avoid: Claiming pressure or time regularity appears automatically, displaying the pressure formula before it is earned, or expanding into later formal machinery.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
4.
- role: setup
- core_move: Let the basic (L^2) pairing show why the direct strategy is attractive and what viscosity pays immediately.
- hinge_question: n/a
- reader_in: The reader knows the destination of the estimates.
- pressure: No actual estimate has yet been obtained from the equation.
- reader_out: The reader has the exact energy identity and understands the roles of transport, pressure, incompressibility, and viscosity in it.
- next_need: The accumulated gradient control must be compared with the pointwise control needed to climb.
- must_keep: Both domains, the cancellation mechanism, the signed viscous term, and the integrated identity.
- avoid: Three disconnected calculation displays or an unmotivated derivation dump.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
5.
- role: consequence
- core_move: Name (Y), state precisely what the energy identity controls, and expose why the next derivative is needed.
- hinge_question: n/a
- reader_in: The reader has the energy identity.
- pressure: The identity controls the gradient only after time integration.
- reader_out: The reader sees the exact missing pointwise quantity.
- next_need: The equations must be raised one derivative to test whether they supply it.
- must_keep: (Y=\lVert\nabla u\rVert_2^2), control of \(\int Y\), and no pointwise (Y(t)) conclusion.
- avoid: Saying the energy estimate is useless or claiming it nearly proves smoothness.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
6.
- role: mechanism
- core_move: Carry the reader through the first differentiated estimate until viscosity absorbs one part and the cubic (Y^3) cost remains.
- hinge_question: n/a
- reader_in: The reader knows why the gradient estimate is the next act.
- pressure: It is unknown whether the earlier control can pay for the new estimate.
- reader_out: The reader sees the exact inequality and the source of the cubic cost.
- next_need: The earned and demanded integrals must be compared directly.
- must_keep: Pairing with (-\Delta u), pressure cancellation, interpolation, Young absorption, and the resulting differential and integrated inequalities.
- avoid: Letting indices or algebra obscure the movement from transport to nonlinear cost.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
7.
- role: consequence
- core_move: Put \(\int Y\) beside \(\int Y^3\), explain the spike gap, and keep failure of the estimate separate from actual fluid blow-up.
- hinge_question: n/a
- reader_in: The reader has both estimates.
- pressure: The mathematical obstruction needs an ordinary meaning and an honest status.
- reader_out: The reader understands exactly what the energy estimate fails to rule out and what has not been proved about the fluid.
- next_need: The failed first derivative climb must be placed back inside the full Sobolev method.
- must_keep: Tall narrow spikes as an illustration; no claim that Navier--Stokes forms them.
- avoid: Overexplaining function-space pathology or adding a second centre after the decisive gap is already clear.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
8.
- role: landing
- core_move: State that the first differentiated estimate has stalled below the continuation threshold, generalize one secured base bound to the high-order estimate, complete the pressure and time recovery, name the Gold method only after the reader has performed it, and land once on the missing bound.
- hinge_question: n/a
- reader_in: The reader has experienced one estimate succeeding and the next demanding more.
- pressure: The example must be tied explicitly to the continuation-grade \(H^{s_0}\) target rather than left as an isolated calculation.
- reader_out: The reader knows what a successful Gold proof must control, why viscosity is the recurring candidate payment, and exactly where the demonstrated calculation stops.
- next_need: n/a
- must_keep: An explicit first-rung-to-\(H^{s_0}\) connection, the standard \(H^s\) inequality, the role of \(\lVert\nabla u\rVert_\infty\), all finite Sobolev orders, the normalized pressure relation, differentiated recovery of time derivatives, the phrase viscosity can pay the whole bill, and the unpaid \(Y^3\) cost as one demonstrated gap rather than a compulsory route.
- avoid: A paper-navigation sentence, a claim of proof, a four-sentence summary, or an abstract method definition detached from the calculation.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a

## Concept Introduction Ledger
1.
- concept: a priori estimate
- earned_by: The continuation requirement has created a need for a bound determined before the later solution behavior is known.
- introduced_at: Paragraph 1 after the direct burden is stated.
- immediate_job: Name the kind of control the Gold method seeks.
2.
- concept: Sobolev embedding
- earned_by: The reader needs to know how a norm bound can imply the continuous derivatives required by smoothness.
- introduced_at: Paragraph 2.
- immediate_job: Measure how many continuous spatial derivatives a finite Sobolev order buys.
3.
- concept: (H^\infty)
- earned_by: One (H^s) controls only finitely many derivatives.
- introduced_at: Paragraph 2 after the finite-order limitation.
- immediate_job: State the all-spatial-orders target without importing derivative-tower machinery.
4.
- concept: pressure Poisson relation
- earned_by: Spatial regularity for velocity alone does not satisfy the velocity-pressure definition of smoothness.
- introduced_at: Paragraph 8, after the high-order estimate has shown how the spatial control propagates.
- immediate_job: Recover pressure spatial regularity and enable time-derivative recovery.
5.
- concept: (Y(t))
- earned_by: The energy identity contains the gradient quantity whose pointwise control is missing.
- introduced_at: Paragraph 5 immediately after the energy identity.
- immediate_job: Make the mismatch between the first and second estimates readable.
6.
- concept: Gold Standard Proof
- earned_by: The reader has followed the continuation-to-Sobolev-to-estimate method and has seen its first unpaid cost.
- introduced_at: Paragraph 8.
- immediate_job: Name the proof method and its complete burden after the reasoning is already understood.

## Lexicon Lock
- must_use: smoothness; continuation; same solution; original equations; a priori estimate; Sobolev; viscosity; nonlinear transport; pay the whole bill; (Y(t)); every finite interval.
- must_not_substitute: forward-positive strategy; estimate architecture; regularity pipeline; analytic hierarchy as a managerial label; derivative tower; proof program; comparison blow-up as fluid blow-up.
- deferred_terms: Gold Standard Proof until the final movement; Sobolev bootstrap until the high-order estimate has shown what is being repeated; property of the original equations until the successful burden is stated conditionally at the landing.
- tone_keys: candid; conversational; direct; causal; mathematically serious; plain before technical.

## Cadence Target
- anchor_choice: Anchor 1: Section 1.4, Silver Standard Proof.
- match_reason: The approved anchor develops a proof method from the human and logical pressure that creates it, carries each consequence visibly into the next, and names the formal method only after the reader has already performed the reasoning.
- sentence_motion: Use short standalone sentences at genuine turns, medium causal sentences for mechanisms, functional repetition of the same object and bill, and formal displays only after their ordinary-language job is clear.

## Formal Handoff
- formal_entry_point: The first display enters only after the prose explains how Sobolev control answers the smoothness requirement.
- required_formal_elements: Sobolev embedding; all-orders Sobolev intersection; energy identity; definition of \(Y\); first differentiated energy identity; interpolation and Young estimate; integrated \(Y^3\) inequality; high-order Sobolev inequality; pressure Poisson relation.
- crossref_plan: No expository \(\cref\) is required. The section may refer to the smoothness definition in plain language. Prior failure already fixed: the Sobolev argument remains essential. Remaining failure prevented by the governing movement: no formal display may arrive before the reader knows what it is trying to buy, and no later display may become a detached legend.

## Reader-Value Gate
- duh_factor_check: The section is worth formalizing because it explains why the standard estimate method follows from the problem's own continuation requirement and pinpoints the first exact place the available control fails to pay for the next step.
- strawman_risk: no; the energy-to-enstrophy calculation is a real standard estimate, while the prose will state that failure of this estimate is not failure of every possible Gold approach.
- effort_to_yield: medium.
- nonstarter_filter: A competent reader should leave knowing both the destination of the estimates and the exact status of the (Y^3) obstruction; if either is missing, the section must be reframed before drafting.

## Risks and Countermoves
1.
- risk: The Sobolev statement reads like an inserted textbook note.
- countermove: Make it answer the continuation burden before any energy calculation begins, and return to it at the high-order landing.
2.
- risk: The energy derivation takes over the section.
- countermove: Give every display an ordinary-language job and return immediately to the control it earns or demands.
3.
- risk: The prose surface-copies Section 1.4 instead of transferring Thomas's movement.
- countermove: Preserve causal dependency and candid presence while using Gold-specific sentences, notation, and pacing rather than copying exact connective sequences or phrases.
4.
- risk: One strong Sobolev norm is described as full smoothness.
- countermove: State explicitly that one (H^s) buys only finitely many continuous derivatives and that all finite orders are needed for (C^\infty).
5.
- risk: Pressure and time derivatives are hand-waved.
- countermove: Display the normalized pressure relation and describe the alternating differentiated recovery through the two equations.
6.
- risk: The ending summarizes instead of changing the reader's understanding.
- countermove: Name the Gold method once, state how the demonstrated \(Y^3\) gap sits below the continuation threshold, and stop on the still-unproved datum-to-global-strong-bound burden.

## Draft Acceptance Test
- pass_if: The opening lets continuation generate the method; Sobolev embedding appears before the energy example and says what finite and all-orders control buy; pressure and time recovery are explicit; every display has an adjacent plain-language job; the energy identity earns \(\int Y\); the differentiated estimate demands \(\int Y^3\); the spike passage distinguishes estimate failure from fluid blow-up; the prose states that this first differentiated estimate has stalled below the continuation-grade \(H^{s_0}\) target; the high-order estimate returns the example to the full smoothness burden; the final sentence names the unpaid Gold payload without making this particular \(Y^3\) route compulsory; every TeX source line contains at most one prose sentence; the last live miss-class is cleared because the Sobolev argument governs the section rather than arriving retroactively; no floating notation appears at first use; no later paragraph turns a glossed symbol into a diagram legend.
- fail_if: Gold is defined before the requirements produce it; the Sobolev argument is cut, delayed, or treated as optional; one \(H^s\) bound is equated with \(C^\infty\); pressure or time regularity is asserted without a recovery mechanism; failure of the estimate is called fluid blow-up; the scalar comparison interrupts the main thought; the \(Y\) calculation is left unconnected to the \(H^{s_0}\) continuation threshold; the derivation becomes the section's architecture; the ending announces Section 1.4; the prose copies the anchor's exact subject language or substitutes polished summary for developed reasoning.
