## Target Block
- file: workspaces/VSC-workspaces/navier-stokes/Section1-Introduction/1.1-ClayRequirements.tex
- span: Definitions divider through end of subsection
- mode: Explanatory Expansion
- block_kind: definition
- user_intent: Read the definitions as a referee and repair both their mathematical precision and their explanatory force.
- fixed_constraints: Preserve Smoothness, Continuation, Regularity in that order; retain the formal environments and labels; apply every term to the Clay requirement; remove the sterile closing formulation; make only a local block edit.

## Section Job
- job_statement: Give the reader a precise hierarchy among continuity, finite regularity, smoothness, and continuation, then state what a finite loss of that required regularity means.
- why_here: The Clay statement has already required a smooth solution on every finite interval, so the reader now needs the words used to describe that demand and its failure.
- formal_boundary: Formalize only the three definitions and the endpoint loss they describe; defer named failure types, historical estimate routes, and later proof architecture.
- intent_state_seed: claim_id=definitions-hierarchy; required_next_move=define each term in a way that creates its relationship as it arrives; forbidden_detours=taxonomy, historical survey, proof machinery, same-history rhetoric.

## Claim Ladder
- claim: Smoothness through `T` means that every finite mixed derivative exists and is continuous through `T`, equivalently the pair lies in `C^\infty` on the space-time slab.
- warrant: This is the regularity class already required in the displayed Clay condition.
- handoff: Once the required class is fixed, the reader can ask what extending the solution in that class means.
- claim: Continuation past `T` extends the solution for a positive amount of time, solves the same equations, retains the chosen class, and agrees on the original interval.
- warrant: An arbitrary function extension would not continue the Navier--Stokes solution.
- handoff: The class `X` now needs an internal scale so the reader can see why `C^\infty` is the Clay level.
- claim: Regularity records the order through which mixed derivatives exist and are continuous; `C^0` is continuity, `C^k` covers all derivatives through order `k`, and smoothness is the all-orders case.
- warrant: This supplies the hierarchy missing from the current three isolated definitions.
- handoff: The reader can now describe failure at a particular finite order and see its effect on smooth continuation.
- claim: Loss of `C^k` regularity at `T` means that the solution on `[0,T)` has no `C^k` extension through the endpoint.
- warrant: This is the direct negation of the definition, stated without an exhaustive pathology claim.
- handoff: Any such loss at a finite order prevents continuation in `C^\infty`, leaving Section 1.2 to ask what existing estimates control.

## Paragraph Movement Map
- role: setup
- reader_in: The reader has seen the Clay demand `u,p\in C^\infty` on every finite interval.
- pressure: The symbol is exact but the reader still needs to know what it requires of the velocity and pressure at a finite endpoint.
- core_move: Define smoothness through the derivatives themselves, give the equivalent `C^\infty` notation, and extend the definition to all time.
- hinge_question: n/a
- reader_out: The reader knows the full all-orders demand carried by smoothness.
- next_need: The reader needs the precise meaning of carrying that demand past an endpoint.
- must_keep: every finite mixed spatial and temporal derivative; continuity through `T`; every finite `T` for all-time smoothness.
- avoid: a generic class placeholder before `C^\infty` is made explicit.
- role: mechanism
- reader_in: The reader knows which class must survive.
- pressure: Extending the functions is insufficient unless the extension remains the same equation solution in the required class.
- core_move: Define continuation by the larger time interval, the same equations and data, agreement on the original interval, and membership in `X`, then set `X=C^\infty` here.
- hinge_question: n/a
- reader_out: The reader knows exactly what smooth continuation past `T` requires.
- next_need: The reader needs to understand how `C^\infty` relates to ordinary continuity and finite differentiability.
- must_keep: positive `\varepsilon`; same spatial domain; agreement on `[0,T]`; Clay specialization.
- avoid: treating agreement or gluing as the conceptual centre of Section 1.
- role: consequence
- reader_in: The reader has encountered a general class `X` and the specific Clay class `C^\infty`.
- pressure: The current prose still leaves regularity, continuity, and smoothness sounding like separate ingredients.
- core_move: Present regularity as the scale that starts at `C^0`, rises through `C^k`, and reaches smoothness when every finite order is included.
- hinge_question: n/a
- reader_out: The reader can place continuity and smoothness on one regularity scale and keep continuation as the separate time operation.
- next_need: The hierarchy now makes finite loss of regularity definable without named pathology classes.
- must_keep: `j+|\alpha|\leq k`; both `u` and `p`; `C^0`; `C^\infty` as all finite `k`.
- avoid: the phrase that regularity is something the solution simply has; a recap that first creates the hierarchy.
- role: landing
- reader_in: The reader knows both the regularity scale and the operation of continuation.
- pressure: The reader needs to see how a finite endpoint can defeat the Clay demand without receiving a premature failure taxonomy.
- core_move: Define loss of `C^k` regularity as failure of endpoint extension, give unbounded growth and bounded nonconvergence as examples, and state that failure at one finite order blocks `C^\infty` continuation.
- hinge_question: n/a
- reader_out: The reader can recognize the exact endpoint obstruction that historical estimates must prevent.
- next_need: Existing estimates can now be read according to which level of this scale they control.
- must_keep: examples are illustrative; endpoint extension is the definition; one finite-order failure is enough.
- avoid: Dead/Jump/Blown labels; claims that every failure is a blow-up; section-navigation prose.

## Concept Introduction Ledger
- concept: smoothness through a finite endpoint
- earned_by: the displayed Clay requirement of `C^\infty` on every finite interval
- introduced_at: Smoothness definition
- immediate_job: translate `C^\infty` into a direct condition on every finite mixed derivative
- concept: continuation
- earned_by: smoothness has been fixed as the class that must survive at `T`
- introduced_at: Continuation definition
- immediate_job: distinguish extending the Navier--Stokes solution from extending arbitrary functions
- concept: `C^k` regularity scale
- earned_by: continuation uses a class `X`, and the Clay choice `C^\infty` needs to be related to continuity and finite differentiability
- introduced_at: Regularity definition
- immediate_job: place continuity, finite differentiability, and smoothness on one ordered scale
- concept: finite loss of regularity
- earned_by: the scale now identifies what has to survive through `T`
- introduced_at: closing paragraph
- immediate_job: state the endpoint obstruction without a named taxonomy

## Lexicon Lock
- must_use: smoothness; continuation; regularity; continuity; every finite order; `C^\infty`; through time `T`
- must_not_substitute: finite history record; bookkeeping; carrier; gluing principle; failure taxonomy
- deferred_terms: Dead; Jump; Blown; Gold; Silver; response tower; critical height; compatible intersection
- tone_keys: plain; direct; exact; reader-led; low-friction

## Cadence Target
- anchor_choice: Anchor 1: Section 1.4, Silver Standard Proof, lines 7--46
- match_reason: The approved anchor explains the operative idea in ordinary causal sentences before compressing it; this block needs the same reader ownership while keeping formal definitions concise.
- sentence_motion: direct definition, one clarifying consequence, then the next need; use short sentences only at real conceptual turns.

## Formal Handoff
- formal_entry_point: the existing Smoothness definition
- required_formal_elements: three definition environments in the fixed order with their existing labels; no new theorem, lemma, display, or numbered equation
- crossref_plan: Preserve all three definition labels without adding new `\cref` uses; the preceding equation reference remains outside the edited span.

## Reader-Value Gate
- duh_factor_check: The block tells the reader exactly what the Clay demand measures, what all-orders smoothness adds, and what must survive at a finite endpoint.
- strawman_risk: no -- the definitions serve terms already used by the governing problem statement.
- effort_to_yield: low
- nonstarter_filter: Each formal entry changes the reader's understanding and the closing lines add the endpoint obstruction.

## Risks and Countermoves
- risk: The summary repeats the definitions and creates their relationship too late.
- countermove: Build the hierarchy inside Regularity and let the following prose state the Clay consequence only.
- risk: Unboundedness is stated as a necessary feature of every regularity failure.
- countermove: Define failure through lack of a `C^k` endpoint extension and present unboundedness as one example.
- risk: Continuation becomes a larger same-object philosophy.
- countermove: Keep agreement on the old interval as one formal clause and move directly to the `C^\infty` requirement.
- risk: The formal definitions remain sterile.
- countermove: Give each entry one immediate explanatory sentence that changes what the reader knows.

## Draft Acceptance Test
- pass_if: Every definition is mathematically usable on first read; `C^0`, `C^k`, and `C^\infty` form one visible scale; continuation is clearly an extension in time; the Clay class is stated; endpoint loss is defined before examples; the last line hands into the historical control problem without naming the next section; all existing labels remain; source uses one sentence per line.
- fail_if: The relationship among the terms first appears in a closing recap; the text implies regularity is continuity plus smoothness; the prose treats unboundedness as the only possible loss; a named later concept appears; any definition is left at an unspecified class with no Clay specialization.
- closing_deletion_test: pass -- deleting the closing loss paragraph leaves the meaning and relationship of all three definitions intact; that paragraph adds the distinct endpoint consequence.
