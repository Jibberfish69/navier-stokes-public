# Graph-First Structural Upgrade Spec

## Purpose

This note records the structural changes required if the Navier-Stokes lane is
supposed to function as a true thinking substrate for the model rather than as a
file pile plus a narrow authority ledger.

The goal is:

```text
exploration in,
graph-wide synthesis out.
```

That requires a different lane structure, not just better summaries.

## Core diagnosis

Right now the lane is still too file-first.

That creates four recurring failures:

1. **latest-note wins drift**
   - whichever surface was touched most recently gets overweighted.
2. **file-level flattening**
   - whole notes are treated as units even when they contain several distinct
     theorem objects.
3. **authority / exploration confusion**
   - builder surfaces, sidecars, and speculative branches keep leaking back into
     theorem truth.
4. **poor neighborhood retrieval**
   - the model does not begin each turn with the live frontier and its adjacent
     graph neighborhood already in view.

So the structural fix has to be:

```math
\boxed{
\text{graph-first storage, graph-first retrieval, graph-first projection.}
}
```

## Required structural changes

## 1. Separate the two graph roles permanently

This split is non-negotiable.

### A. Exploration graph

Wide topic graph for thinking.

It must preserve:

- theorem-primary route,
- live survivor,
- modernization overlays,
- sidecars,
- failed reductions,
- objections,
- route pivots,
- speculative branches.

### B. Authority projection

Narrow theorem-truth cut.

It must preserve only:

- theorem target,
- route lock,
- release/review truth,
- source-grounded body jobs,
- theorem-primary live route,
- exact live survivor on that route.

The structural rule is:

```math
\boxed{
\text{authority projection is generated from the exploration graph;}
\text{it must not replace it.}
}
```

## 2. Change the primary unit from files to theorem objects

The graph must stop treating whole files as the first-class unit.

The correct first-class units are:

- bridge objects,
- survivor objects,
- burdens,
- reductions,
- theorem packets,
- exact upgrade candidates,
- conflicts,
- route pivots.

For example, instead of one undifferentiated file node, we need separate nodes
such as:

- `Body I scale barrier`
- `Q(t) bridge`
- `compactness carrier`
- `closed-loop warrant`
- `lifted high-side remainder`
- `tail leakage face`
- `tower flux/debt face`
- `geometry commutator face`
- `stronger Body I lifted-band theorem`
- `deformation-geometry drain law target`
- `D.2 bilinear hinge`

Files should become:

```text
support surfaces attached to object nodes,
not the primary ontology.
```

## 3. Add a fixed node schema

Every serious theorem node needs the same structural fields.

Minimum schema:

```yaml
node_id:
label:
kind:
cluster:
status:
authority_level:
theorem_surface_role:
source_grounded:
active_frontier:
owner_surfaces:
source_anchors:
adjacent_nodes:
```

The key status split should be explicit:

- `authoritative`
- `live-authority`
- `live-frontier`
- `candidate-upgrade`
- `support-only`
- `exploration-only`
- `lagging`

Without this, the graph cannot separate truth from possibility cleanly enough.

## 4. Add a fixed edge schema

Edges must also be typed.

Minimum edge families:

- `feeds`
- `enables`
- `supports`
- `same-burden-as`
- `normal-form-of`
- `candidate-upgrade-for`
- `shadow-of`
- `parallel-analogue-of`
- `conflicts-with`
- `overstates-relative-to`
- `under-describes`
- `historical-precursor-of`
- `blocked-by`

This is what lets the model search for real mathematical connections instead of
mere co-location.

## 5. Make the live frontier a pinned neighborhood, not just a label

The system needs a pinned frontier neighborhood.

That means:

- one canonical `live_frontier_node_set`,
- one canonical `adjacent_authority_neighbors`,
- one canonical `adjacent_exploration_neighbors`,
- one canonical `known-failed-reduction neighborhood`.

For NS right now, that pinned set should be centered on:

- `lifted high-side remainder`
- `stronger Body I lifted-band theorem`
- `tail leakage face`
- `tower flux/debt face`
- `geometry commutator face`
- `Route B / C3 packet`
- `deformation-geometry drain law target`

This is the structural precondition for graph-first retrieval.

## 6. Change retrieval behavior from file bundles to graph neighborhoods

The model should not begin turns by loading random nearby notes.

It should begin from:

1. authority cut,
2. live frontier neighborhood,
3. adjacent exploration branches,
4. only then supporting files.

So structurally the lane needs a canonical retrieval surface of the form:

```yaml
turn_boot_packet:
  authority_cut:
  live_frontier_nodes:
  adjacent_authority_nodes:
  adjacent_exploration_nodes:
  stale-conflict nodes:
```

Without this, the graph exists but does not change behavior.

## 7. Turn builders into projections, not independent truth engines

Right now some generated surfaces overstate closure or re-import stale route
language.

That means builders are behaving like shadow authorities.

Structurally, these surfaces should be downstream projections only:

- `theorem-packet.yaml`
- `proof-assembly.yaml`
- `source-frontier.yaml`
- `debt-map.yaml`
- `route-hypothesis.yaml`

They should be generated from:

- the authority projection,
- the exploration graph,
- the pinned frontier neighborhood,

and never invent a more advanced truth posture than the release/review layer.

## 8. Preserve failed branches as graph-visible, not prose-lost

A serious failed attempt should not disappear into a paragraph summary.

It should remain as a graph-visible node or subgraph:

- what object it attacked,
- what transformation it attempted,
- what survivor it left,
- whether it reduced codimension or only renamed the burden.

This is exactly how the model gains analogical intelligence from past failure.

## 9. Distinguish same-burden equivalence from mere thematic similarity

The graph must explicitly support:

- `same survivor family`
- `parallel analogue`
- `historical precursor`
- `same proof job`

These are different.

For NS right now, the most important same-burden equivalence is:

```math
\text{lifted high-side remainder}
\leftrightarrow_{\mathrm{same\ burden}}
\text{stronger Body I lifted-band theorem burden}
\leftrightarrow_{\mathrm{same\ burden}}
\text{tower flux/debt face}
\leftrightarrow_{\mathrm{same\ burden}}
\text{geometry commutator face}.
```

That equivalence should be graph-native, not merely described in prose.

## 10. Add an explicit operator-behavior surface

If the graph is meant to change the model's intelligence, the lane needs a
machine-readable operator contract.

That contract should specify:

- graph-first over file-first,
- hold authority and exploration simultaneously,
- refine exploratory user input into theorem objects,
- search for same-burden reformulations and route upgrades,
- report judgments by node/edge provenance rather than by file tour.

This has now begun in:

- [exploration-graph.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/exploration-graph.yaml)
- [ns-exploration-graph.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-exploration-graph.md)

But the retrieval layer still has to consume it.

## Concrete repo changes required

For the NS lane specifically, the structural upgrade path is:

1. keep
   - [exploration-graph.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/exploration-graph.yaml)
   - [ns-exploration-graph.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-exploration-graph.md)
   as the wide thinking surfaces;
2. keep
   - [layered-route-graph.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/layered-route-graph.yaml)
   - [ns-layered-route-graph.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-layered-route-graph.md)
   as the authority cut;
3. add a second-pass object graph that atomizes the serious theorem-construction
   notes into theorem objects rather than file nodes;
4. add a pinned frontier-neighborhood boot packet for the live survivor family;
5. refit builder surfaces so they project from these graph layers instead of
   drifting independently;
6. treat exploration branches and failed reductions as preserved graph structure,
   not merely archived prose.

## Recommendation

The next structural step should be:

```math
\boxed{
\text{build the frontier-centered object graph for the serious theorem objects first.}
}
```

Not every file.
Not every sentence.

The correct atomization level is:

```text
theorem object / burden / bridge / survivor / reduction / conflict.
```

That is the structure that would actually make the model smarter instead of
just making the repo more organized.
