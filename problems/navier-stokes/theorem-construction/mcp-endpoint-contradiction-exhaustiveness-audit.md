# Endpoint Contradiction Exhaustiveness Audit

## Status

Closed endpoint-exhaustiveness audit.

## Four faces

The manuscript states the four primitive endpoint faces as:

```text
participation failure
packing failure
averaged tower-amplitude escape
terminal good-scale loss
```

These correspond to:

```text
Dead
packing-detached
tower-blown_avg
Jump_avg
```

## Exhaustiveness check

A first finite endpoint is a first failure of the class witness or its tower readout. The class witness components are participation, packing, and terminal field/coherence. The tower readout adds averaged tower amplitude. Thus every primitive failure enters one of the four faces.

Mixed failures are finite unions of primitive failures and are reduced by the cross row. They introduce no additional endpoint type.

## Eliminator check

The four eliminators are:

```text
participation excludes Dead
packing excludes packing-detached
averaged tower control excludes tower-blown_avg
terminal field-scale persistence excludes Jump_avg
```

## Verdict

The endpoint contradiction lemma is exactly exhaustive. It has four primitive faces, no extra face, and one eliminator per face.