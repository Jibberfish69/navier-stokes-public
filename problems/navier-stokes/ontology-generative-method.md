# Generative method: participation-first derivation walk

**Type:** operating method (choice tier). Sharpens gate section V
(GENERATE ONTOLOGY FROM MATHEMATICS). Not a second ontology; carries no
premise weight. Canonical facts remain in `ontology.md`; attempt records in
`ontology-feedback.yaml`.

**Origin:** 2026-07-10 typing audit of the F6.3 multiplier promotion, which
was proved but redundant as physics — a recombination of installed
orthogonalities. This method states how to generate ontology instead of
recombining it.

## The generative question

Fix the counterfactual: an arbitrary free vector field carrying the same
readouts but no VPI coupling. Compare every proposed consequence with that
counterfactual and classify the result before calling it ontology:

- a **deleted freedom** that the free field keeps and participation forbids;
- a **surviving freedom or boundary fact** proved by participant-side examples;
- a **generic identity or provenance relation** that does not distinguish the
  participant from the counterfactual.

The generative question at every node is: *what does being one participant
force, forbid, or leave free here, and which part is specific to the coupled
fluid rather than generic calculus?*

## The participation question hierarchy

Participation generates questions in a fixed order.  The order prevents a
later proof label from deciding what the physical object was in the first
place.

1. **Object identity and surface.** What makes this description the same
   datum-anchored participant: domain, boundary or decay condition, forcing,
   viscosity, time interval, pressure gauge, solution concept, and ancestry
   from (u,p)?
2. **Material persistence.** Which parts of that history persist under the
   material flow, and which remain mutable through stress, pressure flux,
   viscosity, or boundary exchange?
3. **Dependency and part–whole relation.** Is a derivative, mode, packet,
   localization, or region a view of the whole field with an induced equation,
   or has an independent row been silently invented?
4. **Representation versus model.** Is the object an exact coordinate or
   reconstruction of the participant, an approximation with an error term, or
   a different evolution equation that needs a bridge back to Navier–Stokes?
5. **Lawful transformations.** Which changes preserve the declared equation,
   which preserve the declared surface and datum, and which instead create a
   new participant or only a transformed readout?
6. **Possible and terminal histories.** Which competing signs, geometries, and
   histories have exact participant-side examples; which terminal behavior is
   ruled out by a continuation theorem; and which terminal mechanism remains
   open?
7. **Participation and class membership.** After the same-solution object is
   physically admitted, what extra proof-grammar conditions are required for
   class membership or a Part/Field class-exit landing? This last question is
   proof grammar, never a new physical fact.

For every generated question, record the parent fact chain, its native
mathematical signature, the decisive participant-side and counterfactual-side
test, and one status: installed fact, audited proved survivor, counterexample
boundary, open frontier, or proof grammar. An audited survivor may guide this
method, but carries no canonical premise weight until the separate promotion
procedure succeeds.

The current audited map is
`ontology-participation-hierarchy-20260711.md`. It is a question and status
map, not a replacement for `ontology.md` or for any candidate record in the
feedback ledger.

Installed deleted-freedom examples:

- F1.2 — the free field may pose a pressure; the participant may only read
  the one the whole configuration forces. (Independent pressure ownership is
  deleted; a universal favorable sign is not created.)
- F1.3 — the free deformation may grow in all directions; `det F = 1` forces
  simultaneous compression. (Volume freedom deleted.)
- F2.1 — strain and vorticity may be posed independently for a free pair;
  one velocity deletes that independence.
- F2.4 — a generic far field influences at cubic order; divergence-free
  compact vorticity forces quartic decay. (Slow far-field influence deleted.)
- F6.2 — zero-mean pressure source and Betchov merge what a free field keeps
  as independent production accounts.
- F7.1 — a free tensor may be isotropic; nonzero trace-free strain cannot.

## The walk

1. **ROOT.** Start at F1 (participation). Every candidate hangs somewhere
   under it.
2. **GENERATE.** At each installed fact, enumerate the freedoms that remain —
   the ontology's own hard-boundary list *is* this enumeration (no pointwise
   pressure sign, no transfer direction, no frame-turning sense, no packet
   closure, no alignment persistence). For each remaining freedom, ask
   whether participation deletes it, preserves it, or leaves it open. Form the
   exact mathematical signature (gate V) and attempt the derivation at its
   true scope.
   Run the participation question hierarchy above before choosing that
   signature: identity and surface first, then material persistence,
   part–whole dependence, representation/model status, lawful
   transformations, possible/terminal histories, and finally any
   class-membership use.
3. **ORGANIZE BY DEPENDENCY.** A candidate hangs under the *deepest* fact its
   derivation actually uses. If the derivation uses only shallower facts, it
   is a recombination: file it as a provenance annotation on the existing
   node, not as a new fact. (This is the exact test the F6.3 multiplier
   delta fails: it hangs off F1.2 + F2.2 alone and deletes no freedom not
   already deleted at the root.)
4. **TRUTH-TEST, TWO-SIDED.**
   - *Participant side:* the structural falsification battery of gate II.D
     (planar and shear classes, scaling, symmetry, degenerate eigenframes,
     minimal support, conservation, localization, finite-energy).
   - *Counterfactual side:* for a deleted-freedom claim, exhibit a
     non-participating field that violates the candidate. F1.3 has one (any
     `det F ≠ 1` deformation); F2.4 has one (an unconstrained vector source
     with nonzero mean retains the raw cubic far field). For a surviving-
     freedom claim, exhibit participants realizing the competing outcomes;
     opposite-helicity Beltrami modes do this for F5.4. If neither test
     distinguishes the participant, file the statement as generic calculus or
     provenance rather than ontology growth.
5. **RECORD.** Every candidate, promoted or not, returns through the gate's
   four fields into `ontology-feedback.yaml`, with the dependency node and
   the witness (or its absence) stated.

## Where the walk points

The largest unresolved freedoms concentrate at the signed/history nodes (F4
tower evolution, F7 relational geometry, and the material-time history law):
whether one finite-energy same-field history can hold an alignment, and with
what sign the slaved off-frame pressure–viscous response answers. This is a
research-pressure map, not an exclusivity claim. Shallower nodes can still
yield exact scope refinements, interface identities, compactness no-go facts,
or domain-specific consequences; they must pass the same classification and
truth tests.
