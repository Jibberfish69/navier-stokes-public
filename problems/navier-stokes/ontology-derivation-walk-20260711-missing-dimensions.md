# Participation-first completion walk: the seven missing dimensions

**Date:** 2026-07-11
**Method:** `ontology-generative-method.md`, corrected three-class output
(deleted freedom / surviving freedom / generic-provenance identity).
**Seed:** the canonical F1–F7 census at ontology sha256
`e3341af522cce1fd344abdbfe5e9dda2964aff712fca3db4f334808651d7eeb7`.
**Task:** generate the questions the seven facts have not answered along the
dimensions object identity and surface, material persistence, dependency and
part–whole, representation versus model, lawful transformations, possible and
terminal histories, and participation versus class membership; audit each
against the repo; falsify and scope; return candidates for the promotion
pipeline. This file promotes nothing.

## D1. Object identity and surface

**Question F1–F7 do not answer.** The Root says every fact expresses one
datum-anchored history, and every proof surface says "the same solution." No
installed fact states that the datum anchors exactly one smooth history. If
two same-law smooth histories could branch from one datum, "the same
solution," "same-history," and every retained-record argument would lose
their referent.

**Dependency chain.** P0 participation → F1.1 one momentum law + F1.2
pressure slaving → same-datum difference field → uniqueness.

**Exact derivation (native statement).** Let \(u_1,u_2\) be smooth same-law
histories on \([0,T]\) on the declared decaying \(\mathbb R^3\) or periodic
\(\mathbb T^3\) surface with one datum \(u_0\) and gauge-fixed pressures.
Set \(w=u_1-u_2\), \(q=p_1-p_2\). Subtracting the two laws,

\[
\partial_tw+(u_1\cdot\nabla)w+(w\cdot\nabla)u_2+\nabla q=\nu\Delta w,
\qquad
\nabla\cdot w=0,
\qquad
w(0)=0.
\tag{MD.1}
\]

Pairing with \(w\): the transport term vanishes because \(u_1\) is
divergence-free and boundary terms vanish on the declared surface; the
pressure term vanishes because \(w\) is divergence-free (the same Helmholtz
orthogonality used in F6.3); therefore

\[
\frac{d}{dt}\frac12\|w\|_2^2+\nu\|\nabla w\|_2^2
=-\left\langle(w\cdot\nabla)u_2,w\right\rangle
\le\|\nabla u_2(t)\|_\infty\|w\|_2^2.
\tag{MD.2}
\]

Since \(u_2\) is smooth on \([0,T]\) with the declared decay,
\(\int_0^T\|\nabla u_2\|_\infty\,dt<\infty\), and Grönwall from \(w(0)=0\)
gives \(w\equiv0\) on \([0,T]\). Uniqueness glues smooth extensions, so the
set of smooth same-law extensions of one datum is totally ordered by
restriction and has one maximal element: one datum, one smooth history, one
maximal lifespan \(T_*(u_0)\in(0,\infty]\).

**Falsification pass.** (i) The claim is smooth-class only; weak-class
uniqueness is excluded by the installed hard boundary and is not asserted.
(ii) The pressure gauge drops out of \(\langle\nabla q,w\rangle=0\), so the
statement is gauge-stable. (iii) On \(\mathbb R^3\) the integrations by parts
use the declared decay; without decay the argument is out of scope.
(iv) Local existence of at least one smooth history from a smooth datum is
classical (Leray 1934; Fujita–Kato 1964) and enters as a proved-in-literature
input for the nonemptiness of the extension set; the uniqueness calculation
above is self-contained.

**Classification.** Deleted freedom: a freely posed pair of fields may branch
from one datum; participation with one pressure closure deletes smooth-class
branching.

**Return.** CANDIDATE EXTENSION under F1 (new fact, "one datum owns one
smooth history and one maximal lifespan"), derivation MD.1–MD.2, with the
existence input typed proved-in-literature pending an independent primary-source
check.

## D2. Material persistence

**Question.** F1.3 posits the flow map; F5.3 uses material loops. No fact
states that material identity persists: that the trajectory map exists
uniquely, stays a diffeomorphism, and keeps distinct labels distinct for the
whole smooth lifespan.

**Dependency chain.** P0 → smoothness of \(u\) on the lifespan → ODE
uniqueness for \(\dot X=u(X,t)\) → F1.3 volume preservation → persistence.

**Exact derivation.** On any compact \([0,T]\subset[0,T_*)\), \(u\) is
smooth and (with the declared decay or periodicity) spatially Lipschitz
uniformly in \(t\). Picard–Lindelöf gives existence, uniqueness, and smooth
dependence for every label \(a\); solving the same ODE backward along the
same velocity inverts the map, so \(X(\cdot,t)\) is a \(C^\infty\)
diffeomorphism; F1.3 gives \(\det D_aX=1\). Distinct labels cannot collide
(uniqueness backward) and one label cannot split (uniqueness forward).
Material objects persist exactly through the smooth lifespan; nothing is
asserted at or beyond \(T_*\).

**Falsification pass.** A merely continuous velocity admits branching
trajectories, so the persistence is bought by the participant's smoothness,
not by incompressibility; \(\det F=1\) adds non-collapse of volume.

**Classification.** Generic-provenance identity at the ODE step (smoothness
suffices), deleted freedom at the volume step (compressible collapse is
deleted by F1.3). Causal detail, not a new label.

**Return.** CANDIDATE REFINEMENT of F1.3: add the lifespan-scoped
diffeomorphism and label-persistence sentence.

## D3. Dependency and part–whole relations

**Question.** Can a part of the fluid be an autonomous participant, and what
must a part carry to be lawful?

**Repo audit.** Already answered by the corrected PD branch: the
scalar-localizer no-go with Leray repair and pressure collar
(PD.11–PD.15, PD.13b), the scalar-view stress-pressure lock (PD.6–PD.8), and
shared-interface traction-work antisymmetry
(`20260710-participation-material-interface-work-antisymmetry` with its
scope correction). The corrected F2 candidate carries the narrowed exact
statement.

**Return.** NO NEW FACT beyond the live F2 candidate; the dimension is
covered by that candidate's exact mathematical statement. Canonical status
depends on its truth and scope, not on a separate lifecycle or turn sequence.

## D4. Representation versus model

**Question.** When is a description of the participant lossless and when is
it a different object?

**Repo audit.** F2.2 (complete decompositions are coordinates), F3.3
paragraph two (every fixed Galerkin truncation is regular), F7.4 (reduced
models lack authority), and the corrected view lock (same tensor owns the
evolution and pressure defects of a scalar view) jointly answer it:
lossless = complete decomposition of the same field with its coupled rows;
model = different evolution equation requiring a bridge.

**Return.** NO CHANGE. The dimension closes with the F2 candidate; adding a
separate representation fact would be a label, not causal detail.

## D5. Lawful transformations

**Question.** F3.1 records scaling only. What is the exact inventory of
transformations that send every same-law history to a same-law history, and
what is excluded?

**Exact derivations.**
(i) Space and time translations leave every term of the law invariant.
(ii) For \(Q\in O(3)\) (on \(\mathbb T^3\), lattice-preserving \(Q\)),

\[
u_Q(x,t)=Q^{T}u(Qx,t),
\qquad
p_Q(x,t)=p(Qx,t)
\tag{MD.3}
\]

satisfies the same law by the chain rule: each of
\(\partial_tu_Q\), \((u_Q\cdot\nabla)u_Q\), \(\nabla p_Q\),
\(\nu\Delta u_Q\) equals \(Q^{T}\) applied to the corresponding term at
\((Qx,t)\), and \(\nabla\cdot u_Q=(\nabla\cdot u)(Qx,t)=0\).
(iii) Galilean boost with constant \(c\):

\[
u_c(x,t)=u(x-ct,t)+c,
\qquad
p_c(x,t)=p(x-ct,t)
\tag{MD.4}
\]

satisfies the same law because
\(\partial_tu_c=(\partial_tu-(c\cdot\nabla)u)(x-ct,t)\) and
\((u_c\cdot\nabla)u_c=((u+c)\cdot\nabla u)(x-ct,t)\), whose sum restores the
original material derivative. Scope split: on \(\mathbb T^3\) the boost maps
the class to itself and shifts the conserved mean by \(c\); on
\(\mathbb R^3\) it leaves the decaying class unless \(c=0\), so it is a
surface-changing transformation there.
(iv) Time-parity negative fact: for \(\nu>0\),

\[
v(x,t)=-u(x,-t),
\qquad
\pi(x,t)=p(x,-t)
\tag{MD.5}
\]

satisfies \(\partial_tv+(v\cdot\nabla)v+\nabla\pi=-\nu\Delta v\): the
transport and pressure terms return with the correct sign while the viscous
term returns with the wrong sign. Time reversal is lawful only at
\(\nu=0\); at fixed positive viscosity it is a parity diagnostic, exactly as
the gate types it, and it grounds the irreversibility answers of the
fluid-field-object contract at transformation level.
(v) The pointwise-multiplication boundary (zero or identity on
\(\mathbb T^3\)) is already carried by the live F2 candidate.

**Falsification pass.** Constant flows, shear flows, and the two-mode field
test (ii)–(iv) directly; on \(\mathbb T^3\) a non-lattice rotation moves the
domain and is excluded by the stated qualifier; the boost on \(\mathbb R^3\)
is excluded from the decaying surface by the nonzero limit at infinity.

**Classification.** (i)–(iii) surviving freedoms of the law (exact
symmetries); (iv) deleted freedom: mechanical time-reversibility is deleted
by viscosity's parity.

**Return.** CANDIDATE EXTENSION under F3: one fact recording the exact
invariance inventory (translations, lattice-compatible orthogonal maps,
scaling by reference to F3.1, the scoped Galilean boost) and the exact
time-parity boundary MD.5.

## D6. Possible and terminal histories

**Question.** F4.3 gives the BKM dichotomy in the vorticity norm. Which
other exact exclusions shape the set of possible terminal histories?

**Candidates with sources.**
(i) Critical-norm endpoint: if \(T_*<\infty\) then
\(\sup_{t<T_*}\|u(t)\|_{L^3}=\infty\) on \(\mathbb R^3\); by the exact
embedding \(\dot H^{1/2}(\mathbb R^3)\hookrightarrow L^3\), also
\(\sup_{t<T_*}\|u(t)\|_{\dot H^{1/2}}=\infty\). Primary source now checked:
Escauriaza–Seregin–Šverák, Russian Math. Surveys 58:2 (2003),
mathnet.ru/eng/rm609, uniform \(L^3\) bound implies regularity; the
mean-fixed periodic analogue is cited as its standard extension and remains
on the source-check queue. This is the exact fact behind the equivalence,
recorded in `20260711-normalized-dissipation-charge-pressure-test-cycle002`,
between the finite normalized-dissipation charge and the live SHR.7 bound.
(ii) Terminal rate floors: if \(T_*<\infty\) then
\(\|\nabla u(t)\|_2\ge c\,\nu^{3/4}(T_*-t)^{-1/4}\) and
\(\|u(t)\|_\infty\ge c\,\nu^{1/2}(T_*-t)^{-1/2}\), from the classical local
existence time bounds plus maximality (Leray 1934); primary-source check
queued.
(iii) Instant analyticity: for \(0<t<T_*\) the participant is spatially
real-analytic with a quantitative radius (Foias–Temam Gevrey class on
\(\mathbb T^3\); Masuda and successors on \(\mathbb R^3\)); no possible
history maintains a genuinely non-analytic feature for positive time;
primary-source check queued.

**Falsification pass.** The 2D3C exact history of the EA note (twice
Codex-verified, independently re-derived under this session) shows positive
critical production inside a globally smooth history, so no candidate here
may assert that growth of the critical height signals a terminal history;
the candidates above are pure exclusions with explicit norms and rates,
consistent with the hard boundary.

**Return.** CANDIDATE EXTENSIONS under F4: the ESS endpoint (source
checked), the Leray rate floors (source queued), the analyticity fact
(source queued). Each adds exact causal detail to which terminal histories
are possible.

## D7. Participation versus class membership

**Question.** Should the ontology state the difference between being the
datum-anchored history and satisfying a class predicate?

**Judgment.** No. The distinction is proof grammar: the contract's CM
boundary types Member(Q)/Exit(Q) and the gate types premises. The physical
side is already the Root sentence. Installing a membership fact would be a
label without causal content and would blur the gate's typing rule that a
proof-grammar rule is never physics.

**Return.** NO CHANGE, with this reasoning recorded.

## Four-field return of this walk

- **Physical verdict:** caused for MD.1–MD.5 at their stated scopes (the
  derivations force uniqueness, persistence, the symmetry inventory, and the
  time-parity boundary); open for everything the walk leaves open; nothing
  here decides transfer sign, alignment, or the live Gold bound.
- **Scoped mathematical status:** MD.1–MD.5 proved at stated scope in this
  file; D6 items are classical proved theorems typed proved-in-literature
  with one primary source checked (ESS) and the rest queued.
- **Live-burden effect:** support only. No Gold or Silver burden moves.
- **Proposed ontology delta:** candidate extension under F1 (identity),
  candidate refinement of F1.3 (persistence), candidate extension under F3
  (lawful transformations and time parity), candidate extensions under F4
  (terminal-history exclusions); no change for D3, D4, D7 beyond the live F2
  candidate. All candidates await exact proof, scope audit, and canonical
  integration; none carries premise weight here.

## Post-walk truth-audit correction

The phrase **"exact inventory"** in D5 is too strong and is superseded for
status by `ontology-participation-hierarchy-20260711.md`. The stated list
omits the pressure gauge (p\mapsto p+C(t)), and on a fixed periodic torus it
also omits the discrete integer dilations

\[
u^{(n)}(x,t)=n u(nx,n^2t),
\qquad
p^{(n)}(x,t)=n^2p(nx,n^2t),
\qquad n\in\mathbb N.
\]

Each is an exact scope test against completeness. The individual translation,
orthogonal, Galilean, and time-parity calculations remain useful scoped
derivations. No F3 inventory candidate may be promoted from this walk. The
hierarchy retains only the scoped survivors and places the complete-inventory
claim in the counterexample boundary.
