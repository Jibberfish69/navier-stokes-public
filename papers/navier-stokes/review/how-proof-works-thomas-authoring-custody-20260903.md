# How the Proof Works — Thomas Authoring Custody

Date: 2026-09-03
Purpose: preserve Thomas's own wording, beat order, authorial frame, connection logic, and placement instructions for rewriting “How the Proof Works.”

This note separates direct Thomas wording from synthesis. Direct wording is preserved as given, including informal phrasing, capitalization, punctuation, and typos where recovered verbatim. The synthesis below exists only to place those instructions together; it must never outrank or silently rewrite the quoted source language.

## 1. What the writing is supposed to be

### Thomas — direct wording

> “the idea is to write without using the math. the idea is to actually write MY IDEAS in MY VOICE, using MY LAYOUT, MY BEATS. try again.”

> “how does it sound though? how does you voice sound? what is the frame of the author? how is the author speaking to the reader?
>
> is this how you want to sound when you read it back to yourself?
>
> what are you going to do to fix this problem?”

The section therefore has to carry the thought in the order Thomas discovered and connected it. Topic coverage, theorem inventory, technical correctness, and clean exposition do not by themselves satisfy the authoring goal.

## 2. The opening: from the physical vortex to the infinitesimal scaling point

### September 2 — Thomas, direct wording

> “i thought the idea was to motivate the physical picture from a thinning vortex, down to the infinitesimal scaling point ... like isn't that the whole idea? to motivate why we use rescaling in the first place?”

> “isn't the point to paint a picture here from the physical vortex, follow the continued problem to it's smallest point, rescale, derive critical height, explain what "s" means, show what happens on either side of s=1/2, show what happens at exactly s=1/2 (viscosity and nonlinear transport balance out all the way down, so the motion can keep getting faster while the total energy can go to zero)?”

> “so that it goes from "the problem is a vortex" to "velocity, acceleration, jerk, and so on and so on"?”

### August 28 — Thomas, direct wording

> “Take a vortex for example, as it stretches and thins, its inner radius speeds up faster and faster”

> “this leads to the zeno cascade, where energy can remain finite, but smaller and smaller * can have blow up gradients”

### Custody consequence

The opening is one continuous physical-to-analytic journey:

- begin with the vortex as the problem;
- follow the vortex as it stretches and thins;
- follow that continued problem toward its smallest / infinitesimal scale;
- let that physical movement motivate why rescaling is introduced;
- rescale;
- derive the critical height;
- explain what the Sobolev exponent `s` means;
- show what happens on either side of `s=1/2`;
- show what happens exactly at `s=1/2`;
- bring out the critical fact Thomas specified: viscosity and nonlinear transport remain balanced all the way down, while the motion can keep getting faster and the total energy can go to zero;
- this yields the Zeno picture in which energy can stay finite while increasingly small scales carry blow-up gradients;
- carry that picture directly into “velocity, acceleration, jerk, and so on and so on.”

Rescaling therefore appears because the reader has followed the physical vortex far enough to need it. The prose should not introduce scaling as an isolated PDE property or prepared lesson.

## 3. Velocity, acceleration, jerk

### August 28 — Thomas, direct wording

> “in order for a singularity to form / happen, velocity has to blow up.”

> “in order for that to happen, its acceleration would also have to blow up, which means its jerk ahs to blow up, and so on and so on”

### August 26 — Thomas, direct wording

> “the core idea of this proof: in order for blow up to occur from initial datum u_0 , the velocity AND its derivatives all have to tend toward infinity (u, du/dt, d^2 u/dt^2, ... etc)->inf, in finite time T_*<inf. going higher up in the time-derivaitives means going higher up in the sobolev spatial embeddings. in the limit of this pattern, you reach the intersection between time derivatives and spatial deriviatves, and you get smoothness and continuation form the sobolev theorem saying so. viscosity then gives you relationship between the rows/rungs, and you can use this to then get the estimates you need to bound the fluid for any case.”

### Custody consequence

The derivative tower is the destination of the physical/scaling opening. The prose reaches it by carrying the vortex / critical-height / Zeno problem all the way to what finite-time singularity would require of the evolving velocity.

The movement Thomas gave is:

`velocity -> acceleration -> jerk -> and so on and so on`

and then:

`higher time derivatives -> higher Sobolev spatial embeddings -> in the limit, the intersection between time derivatives and spatial derivatives -> smoothness and continuation from Sobolev.`

The prose must bring out this insight before burying the reader in the machinery used to formalize it.

## 4. The intersection insight

### Thomas — direct wording

> “going higher up in the time-derivaitives means going higher up in the sobolev spatial embeddings. in the limit of this pattern, you reach the intersection between time derivatives and spatial deriviatves, and you get smoothness and continuation form the sobolev theorem saying so.”

The intersection belongs here as the central insight the reader is supposed to see.

This is the reader-facing insight. Later formal machinery may construct or realize the intersection rigorously; that later formalization must feel like the proof making good on the idea the reader already understands.

## 5. Immediately after the intersection: the expected singularity pattern

### Thomas — direct wording and placement corrections, September 3

> “you're missing "what you'd expect to see, if a singularity were to form..." bit that i already wrote enough times”

> “that beat belongs immediately after the intersection insight”

### Custody consequence

Immediately after the reader sees the intersection insight, the prose turns to the hypothetical singularity and asks / states what one would expect to see if a singularity were actually forming.

This beat is not part of the opening vortex discussion and it is not to be delayed until after the finite rectangle machinery. Its placement is immediately after the intersection insight.

The point is to let the newly understood intersection provide the lens through which the candidate singularity is examined before the paper enters the formal construction.

## 6. “From that point onward” is only the later half of the movement

### Thomas — direct wording, September 3

> “the written movement is that FROM THAT POINT ONWARD sure... that's NOT the whole thing though EXCEPT, "derive the finite estimates, and use them" should probably go last as the result of the formalization don't you think?”

### Custody consequence

The post-intersection sequence cannot be treated as the whole section. The entire physical/scaling opening that carries the reader from “the problem is a vortex” to “velocity, acceleration, jerk, and so on and so on” is essential.

From the intersection and expected-singularity beats onward, the prose moves into the formalization of the already-understood idea.

## 7. Formalization

### Thomas — direct wording

> “viscosity then gives you relationship between the rows/rungs, and you can use this to then get the estimates you need to bound the fluid for any case.”

The exact differentiated Navier–Stokes machinery belongs here because the reader now knows what structure it is supposed to establish.

The formalization includes, in the established proof language:

- the actual differentiated velocity / pressure structure;
- the first temporal responses before compressed notation where useful;
- the binomial recurrence;
- pressure traveling with the temporal structure through incompressibility;
- the row / rung relations;
- datum-generated finite-order control;
- finite rectangles;
- compatibility of those finite rectangles because they belong to one history;
- the formal compatible intersection `I[u_0]`;
- the complete zeroth spatial row `S_0`;
- the common smooth endpoint;
- endpoint jet;
- restart and uniqueness;
- global continuation / `T_*=infinity`.

This machinery formalizes the insight already given to the reader. It must not become a second conceptual opening.

## 8. The formal proof pipeline Thomas repeatedly used

### Thomas — direct compressed wording

> “datum -> derivative structure -> finite rectangles -> intersection -> smooth endpoint -> restart -> global smoothness.”

This is the formal dependency compression. It is distinct from the reader-facing discovery order that begins with the vortex and critical-height picture.

The two levels must remain distinguishable:

1. Reader-facing discovery: physical vortex -> infinitesimal scaling point -> critical height -> Zeno -> velocity / acceleration / jerk -> higher temporal derivatives / higher Sobolev spatial embeddings -> intersection insight -> expected singularity behavior.

2. Formal proof realization: datum -> derivative structure -> finite rectangles -> formal compatible intersection -> complete spatial row / smooth endpoint -> endpoint jet -> restart -> global smoothness.

The formal realization returns the reader to the intersection that was conceptually understood earlier.

## 9. Estimates belong last as the result of the formalization

### August 26 — Thomas, direct wording

> “so the estimates themselves are derived from intial datum through the intersection. not the other way around.”

### September 3 — Thomas, direct wording

> “derive the finite estimates, and use them”

and the placement instruction:

> “should probably go last as the result of the formalization don't you think?”

### Custody consequence

The familiar finite estimates are the payoff / readout of the completed formal structure.

The prose must therefore avoid making the estimates look like the conceptual producer of the intersection. The reader first sees the proof idea, then watches it formalized and closed, then sees the finite estimates derived from the initial datum through the completed intersection and used as required.

This is one of the most important dependency corrections Thomas repeatedly made to AI drafts.

## 10. Complete reader-facing movement

The following is synthesis only. It is subordinate to every direct quotation above.

The section should carry one continuous reader movement:

1. The problem is a vortex.
2. Follow a vortex as it stretches and thins; its inner radius speeds up faster and faster.
3. Follow that continued physical problem toward its smallest / infinitesimal scale.
4. At that point the reader needs rescaling, which is why rescaling is introduced.
5. Rescale the flow and derive the critical Sobolev height.
6. Explain what `s` means rather than dropping it into the prose as a technical label.
7. Walk the reader through `s<1/2`, `s>1/2`, and exactly `s=1/2`.
8. At exactly the critical height, bring out Thomas's point: viscosity and nonlinear transport balance all the way down; the motion can keep becoming faster while total energy can go to zero.
9. Carry this into the Zeno cascade: finite energy can coexist with smaller and smaller scales carrying blow-up gradients, with the scale changes fitting into finite time.
10. The physical/scaling picture now reaches Thomas's velocity / acceleration / jerk statement.
11. A finite-time singularity requires velocity and its successive temporal derivatives to be driven toward blow-up.
12. Going higher in those temporal derivatives means going higher in the Sobolev spatial embeddings.
13. In the limit of that pattern, reach the intersection between time derivatives and spatial derivatives.
14. Bring out immediately that the intersection gives smoothness and continuation through Sobolev.
15. Immediately after that insight, give the beat: “what you'd expect to see, if a singularity were to form...”
16. Use that expected singular pattern as the lens for what the formal proof must rule out.
17. Only now enter the formal Navier–Stokes construction: differentiated equations, pressure, recurrence, row/rung relations, datum-generated finite pieces, rectangles, compatibility, formal intersection, complete spatial row, endpoint, endpoint jet, restart, uniqueness, global continuation.
18. Close the proof.
19. Last, derive the finite estimates from the completed formalization / intersection and use them.

## 11. Authorial-frame test

Thomas's repeated review questions remain part of the acceptance test:

> “how does it sound though? how does you voice sound? what is the frame of the author? how is the author speaking to the reader?
>
> is this how you want to sound when you read it back to yourself?”

The prose should sound like the author is actually showing another capable person the idea as it develops. The connection itself should carry the reader forward. The author should not stand outside the argument announcing topics, manufacturing rhetorical questions to introduce each subject, or presenting a prepared sequence of mini-lessons.

## 12. Anti-drift rules established by Thomas's corrections

- Preserve the physical vortex-to-infinitesimal-scale journey; it motivates rescaling.
- Explain `s` and the three regimes around `s=1/2`.
- Preserve the exact critical-height insight about viscosity / nonlinear transport balance and motion becoming faster while energy can go to zero.
- Let Zeno carry the physical/scaling problem into the finite-time danger.
- Let the whole opening arrive at velocity / acceleration / jerk.
- Preserve Thomas's velocity / acceleration / jerk language and causal cadence.
- Bring out higher temporal derivatives -> higher spatial Sobolev embeddings -> intersection as the central proof insight.
- Put “what you'd expect to see, if a singularity were to form...” immediately after that intersection insight.
- Treat everything after that as the later formalization, rather than mistaking it for the whole section.
- Preserve the formal datum -> derivative structure -> finite rectangles -> formal intersection -> smooth endpoint -> restart -> global smoothness dependency.
- Put “derive the finite estimates, and use them” last as the result of the formalization.
- Preserve the statement that the estimates are derived from initial datum through the intersection.
- Never replace Thomas's discovery order with a generic lecturer-style objection/answer sequence.
- Never infer a new placement for intersection, Zeno, viscosity, rectangles, or estimates from generic PDE pedagogy when Thomas has supplied the placement directly.
