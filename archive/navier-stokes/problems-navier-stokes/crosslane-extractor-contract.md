# Cross-Lane Extractor Contract

This note defines the live extraction role of `chat2` inside the Navier-Stokes
lane.

## Scope

`chat2` does not write `system/**`, the V6 monograph tree, or other problem
folders. Its extraction role is Navier-Stokes-local:

- read Marvin / Chat Y / V6 / NS working notes,
- extract Navier-Stokes-relevant route content,
- mirror that content into `problems/navier-stokes/**`,
- and let the Navier-Stokes automation loop keep working on those mirrored
  notes.

## Purpose

The goal is not to wait for a finished theorem packet elsewhere. The goal is to
keep the Navier-Stokes folder synchronized with the evolving tandem program so
the local lane always has the newest four-bridge route, source anchors, and
loop-closure notes available for theorem search, packetization, and prose.

## Authority Rule

Cross-lane imports enter the Navier-Stokes lane in three tiers:

1. **Route authority**
   Valid for bridge ordering, loop shape, terminology, and working-note drafting.

2. **Local derivation authority**
   Valid once the Navier-Stokes lane has localized the import into a theorem
   packet, dependency edge, or bridge memo and tied it to existing source
   anchors.

3. **Proof authority**
   Valid only after the claim is independently grounded by authoritative
   Navier-Stokes theorem surfaces or discharged locally in the Navier-Stokes
   lane.

No Marvin / Chat Y / V6 import may jump directly from route authority to proof
authority.

## Automation Rule

The Navier-Stokes daemon should treat mirrored cross-lane notes as normal local
workboard inputs. That means:

- ingest new notes through `debt-extract`, `dependency-discharge`, or
  `object-formalization`,
- localize them into theorem packets or bridge notes,
- write unresolved imports as Navier-Stokes working notes instead of blocking,
- and continue the loop unless a precise local math blocker remains after
  bounded local exhaustion.

## Current Live Imports

- Shared spectral-gap invariant:
  [crosslane-spectral-gap.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/crosslane-spectral-gap.md)
- NS continuum stack:
  [continuum-stack.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/continuum-stack.yaml)
- Authoritative proof pack:
  [proof-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/proof-source-pack.md)
- Source-grounded loop map:
  [source-grounded-framework-map.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-grounded-framework-map.md)
- Marvin/V6 adaptation layer:
  [marvin-adaptation-notes.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/marvin-adaptation-notes.md)
- Chat Y / V6 source note:
  [v6-four-bridge-source-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/v6-four-bridge-source-note.md)
- Tandem crosswalk:
  [monograph-V6-tandem-crosswalk.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/monograph-V6-tandem-crosswalk.yaml)

## Operating Principle

The Navier-Stokes lane now works in tandem with the broader NS / YMG / Hodge /
V6 program by continuous local extraction. It does not pause theorem work while
holding cross-lane queries in reserve. If a new upstream note sharpens the
route, the local lane should mirror it and keep going.
