## Target Block
- file: /Users/thomasbirnie/Workspace/ToE/Research-Consolidation/workspaces/VSC-workspaces/navier-stokes/Section1-Introduction/1.1-ClayRequirements.tex
- span: Definitions divider through end of file
- mode: Explanatory Expansion
- block_kind: definition
- user_intent: Make the generic definitions state their direct relation to the Clay C-infinity requirement and replace the faulty endpoint sentence with a complete grammatical statement.
- fixed_constraints: Keep the Definitions divider, the order Smoothness--Continuation--Regularity, the three definition environments and labels, one sentence per source line, and the existing Section 1 structure; introduce no failure taxonomy or later proof machinery.

## Section Job
- job_statement: Give the three terms already used by the Clay requirement a precise and usable meaning, then combine them into the exact finite-endpoint obstruction relevant here.
- why_here: The reader has just seen the displayed requirement \(u,p\in C^\infty\) on every finite interval and now needs to know what that requires and what could prevent it.
- formal_boundary: Define the terms and their immediate Clay specialization; do not introduce continuation criteria, failure classifications, or proof machinery.
- intent_state_seed: claim_id=definitions-clay-application; required_next_move=make C-infinity explicit inside the definitions and state the endpoint obstruction with a complete grammatical subject; forbidden_detours=historical estimates, Dead/Jump/Blown, tower, Section 3 gluing.

## Claim Ladder
1.
- claim: Smoothness through \(T\) is exactly \(C^\infty\) regularity on the space--time domain through \(T\).
- warrant: The displayed Clay requirement has already named \(C^\infty\) as the live class.
- handoff: The reader can now ask what it means to carry that class past an endpoint.
2.
- claim: Continuation past \(T\) extends the same solution to \(T+\varepsilon\) while retaining the specified class, which is \(C^\infty\) in this problem.
- warrant: The local solution has to be extended rather than replaced, and the Clay condition fixes the class that must survive.
- handoff: The reader now needs the relation between finite \(C^k\) regularity and all-orders smoothness.
3.
- claim: \(C^k\) records derivatives only through finite order \(k\), while \(C^\infty\) requires the \(C^k\) condition for every finite \(k\).
- warrant: The generic definition of regularity must explain why smoothness is the all-orders demand rather than a floating stronger label.
- handoff: The three terms can now be combined into the finite-time obstruction.
4.
- claim: A finite endpoint obstructs smooth continuation when the pair or a required mixed derivative becomes unbounded or lacks a continuous extension to \(T\).
- warrant: Either event violates the just-defined \(C^\infty\) requirement at the endpoint.
- handoff: Section 1.2 can begin from a precise continuation burden.

## Paragraph Movement Map
1.
- role: setup
- reader_in: The reader has seen \(C^\infty\) in the Clay requirement but has not yet been told its derivative-level meaning.
- pressure: Smoothness must be defined in the same class the problem actually requires.
- core_move: Identify smoothness with \(C^\infty\), then explain that this means every finite mixed spatial and temporal derivative exists and remains continuous through \(T\).
- hinge_question: n/a
- reader_out: The reader can translate the Clay display into its all-orders derivative content.
- next_need: State what it means to carry that content past a finite endpoint.
- must_keep: The distinction between smooth through one finite \(T\) and smooth for every finite \(T\).
- avoid: A generic definition that postpones the symbol \(C^\infty\).
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
2.
- role: mechanism
- reader_in: The reader knows exactly what smoothness through \(T\) contains.
- pressure: Global smoothness asks whether that same solution can be taken beyond every finite \(T\) without losing the class.
- core_move: Define continuation in a general class \(X\), then say directly that the Clay problem takes \(X=C^\infty\).
- hinge_question: n/a
- reader_out: The reader understands continuation as extension plus preservation of the required class.
- next_need: Relate finite regularity to the all-orders class.
- must_keep: Agreement on \([0,T]\), the same spatial domain, and some \(\varepsilon>0\).
- avoid: Making \(X\) look like an unspecified class that will never be chosen.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
3.
- role: consequence
- reader_in: The reader knows which class continuation must preserve.
- pressure: The generic \(C^k\) scale still needs to show how it reaches the Clay demand.
- core_move: Define finite \(C^k\) regularity and identify smoothness as the condition that this finite-order statement holds for every finite \(k\).
- hinge_question: n/a
- reader_out: The reader understands regularity as degree of control and smoothness as its all-orders case.
- next_need: Combine all three definitions at a finite endpoint.
- must_keep: Mixed spatial and temporal derivatives of total order at most \(k\).
- avoid: Leaving \(C^k\) as an isolated generic scale.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a
4.
- role: landing
- reader_in: The reader can distinguish regularity, smoothness, and continuation.
- pressure: The definitions must now state the exact obstruction the Clay problem has to exclude.
- core_move: Compress the relation once in ordinary language, then state that the pair or a required mixed derivative can obstruct \(C^\infty\) continuation by becoming unbounded or failing to extend continuously to \(T\).
- hinge_question: n/a
- reader_out: The reader can state exactly what must fail at a finite endpoint to prevent smooth continuation.
- next_need: Historical estimates can be judged by whether their control reaches this burden.
- must_keep: The user-supplied sentence beginning ``In short'' and a new paragraph for endpoint failure.
- avoid: The faulty list ``\(u\), \(p\), or ...'', abstract retrospective summary, and later failure types.
- partition_question: n/a
- classification_movement: n/a
- case_source: n/a
- case_consequence: n/a
- cumulative_conclusion: n/a
- exhaustiveness_status: n/a

## Concept Introduction Ledger
1.
- concept: \(C^\infty\) as the live continuation class.
- earned_by: The earlier displayed Clay smoothness requirement already requires \(u,p\in C^\infty\) on every finite interval.
- introduced_at: The Smoothness definition and then the Clay application sentence in the Continuation definition.
- immediate_job: Tie the generic meanings of smoothness and continuation to the exact class at issue.
2.
- concept: finite \(C^k\) regularity as the scale whose all-orders case is smoothness.
- earned_by: The term regularity needs to distinguish degrees of derivative control from the specific all-orders demand.
- introduced_at: The Regularity definition.
- immediate_job: Make the relation between \(C^k\) and \(C^\infty\) explicit.

## Lexicon Lock
- must_use: regularity; smoothness; continuation; \(C^k\); \(C^\infty\); every finite \(T\); mixed spatial and temporal derivative; In short, regularity is what the solution has, smoothness is the all-orders regularity required here, and continuation is carrying that solution forward in time.
- must_not_substitute: solution history; record; gluing; hierarchy; failure taxonomy.
- deferred_terms: Dead; Jump; Blown; tower; critical height; singularity; VPI.
- tone_keys: plain; direct; concept-building; one complete thought per sentence; low diction.

## Cadence Target
- anchor_choice: anchor-1-silver-standard-proof
- match_reason: The approved anchor develops a concept in ordinary language, compresses it only after the reader understands it, and keeps later machinery out of the local explanation.
- sentence_motion: Medium declarative definitions followed by short direct application sentences; each sentence spends the meaning established immediately before it.

## Formal Handoff
- formal_entry_point: The existing three definition environments.
- required_formal_elements: Preserve all three labels and the notation \(X\), \(C^k\), \(C^\infty\), \(T\), and \(\varepsilon\); add no new display.
- crossref_plan: No new \(\cref\) is needed in this local block; preserve existing labels unchanged.

## Reader-Value Gate
- duh_factor_check: These definitions are worth stating only if they let the reader read the Clay display as a precise continuation problem, which the C-infinity application and endpoint sentence now do.
- strawman_risk: no -- the block defines the exact terms used in the stated problem.
- effort_to_yield: low
- nonstarter_filter: Pass only if a reader can explain why generic \(X\) and finite \(C^k\) matter to this particular problem before reaching Section 1.2.

## Risks and Countermoves
1.
- risk: The generic definitions still float even after extra prose is added.
- countermove: Put the C-infinity relation inside the definitions where \(X\) and \(C^k\) first appear.
2.
- risk: The closing sentence repeats the opening requirement without sharpening the endpoint obstruction.
- countermove: Give the close one new job: state the two ways endpoint regularity can fail and the exact class that can no longer be continued.
3.
- risk: The grammatical repair keeps a subject list whose number and ownership remain unclear.
- countermove: Use ``the velocity--pressure pair or one of its required mixed derivatives'' as the complete grammatical subject.

## Draft Acceptance Test
- pass_if: Smoothness explicitly names \(C^\infty\); continuation explicitly specializes \(X\) to \(C^\infty\) for Clay; regularity explicitly connects every finite \(C^k\) to smoothness; the close uses a complete grammatical subject and states the endpoint obstruction; all existing labels and section structure remain unchanged; no floating notation appears.
- fail_if: Any definition leaves its live Clay meaning to retrospective inference; the old ``\(u\), \(p\), or ...'' construction remains; a new failure taxonomy or later proof concept appears; one-sentence-per-line or the project style rules fail.
- closing_deletion_test: pass -- deleting the final two-sentence endpoint paragraph still leaves the purpose and C-infinity application of each individual definition legible; the close adds the newly earned obstruction rather than supplying their first relevance.
