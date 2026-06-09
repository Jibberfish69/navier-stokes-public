---
ns_viewer:
  theorem_id: rendered-referee-reread-clay-exclusion-bridge-reentry-20260609
  status: active-cmi-finality-blocker
  proof_role: rendered_referee_reread
  logical_landing_node: clay_counterexample_exclusion_bridge
  edge_effect: "Reopens the rendered compact-paper finality claim: the paper still uses no-third-in-class-branch support as if it were standalone Clay counterexample exclusion."
  upstream_origin:
    - papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf
    - problems/navier-stokes/theorem-construction/mpp-clay-counterexample-exclusion-gap-audit-20260601.md
    - problems/navier-stokes/theorem-construction/mpp-no-third-branch-clay-closure-audit-20260525.md
    - problems/navier-stokes/theorem-construction/mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md
    - problems/navier-stokes/theorem-construction/mpp-clay-bridge-reconciled-by-finite-obstruction-inventory-20260608.md
  downstream_consequence: "The compact manuscript must stop claiming finite Clay smoothness exclusion from class exit alone, and the active loop must keep proof work on the real bridge or on a verified finite-obstruction inventory exhaustion."
---

# MPP Rendered Referee Reread Clay Exclusion Bridge Reentry

Date: 2026-06-09

Status: active blocker; compact manuscript repaired for claim honesty, not final
Clay closure.

## Referee reread finding

The current rendered compact paper still makes the Clay-finality jump too early.
The paper correctly separates pass and fail branches in many places, but its
closing language still says that the fail branch contradicts counterexample
legality and that finite-time loss of smoothness is excluded.

The checked repo state does not justify that final sentence.

## Checked sources

1. `mpp-no-third-branch-clay-closure-audit-20260525.md` says its theorem is a
   branch-law audit, not a standalone Clay closure theorem.

2. `mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md` says the
   row audit narrows the finite-obstruction inventory burden without claiming
   Clay closure, and explicitly says it does not prove
   `ClayCounterexampleExclusionBridge.A`.

3. `mpp-clay-counterexample-exclusion-gap-audit-20260601.md` records the
   original gap: a classified `Exit(Q)` branch is not automatically a
   contradiction with a finite Clay breakdown witness, because the Clay negation
   is failure of classical continuation.

4. `mpp-clay-bridge-reconciled-by-finite-obstruction-inventory-20260608.md`
   demotes the old generic "Exit itself is inadmissible" demand, but it relies
   on finite-obstruction inventory coverage and no-third-in-class-branch support.
   That is valid route control only after the rendered paper has actually paid
   the inventory and bridge in referee-facing form.

## Exact paper defect

The compact manuscript still presents this structure as final:

```text
finite Clay terminal counterexample
=> same-solution terminal record
=> pass branch continues or fail branch exits
=> finite-time loss of smoothness is excluded.
```

The unsupported step is the last implication. From checked notes, the honest
current theorem is:

```text
admitted terminal record
=> pass-side continuation readout
   or first Pack/Part/Field face failure supporting Exit(Q).
```

That is terminal obstruction classification. It becomes Clay exclusion only
when the paper also proves that every finite Clay terminal obstruction is
exhausted by that admitted inventory and that no support-only row can remain as
the actual finite breakdown witness.

## Required repair

The compact manuscript must stop using no-third-in-class-branch as final Clay
smoothness. It must state the current result as terminal obstruction
classification unless and until the missing bridge is paid in the paper.

The active proof loop remains on one of these theorem jobs:

```text
ClayCounterexampleExclusionBridge.A
```

or the more concrete inventory form:

```text
finite Clay terminal obstruction
=> CM-test entry
=> first Pack/Part/Field face
=> no support-only terminal row remains outside the inventory.
```

## Result of this pass

This pass does not close the PDFs. It prevents another false finality state and
turns the rendered-paper defect into a concrete manuscript repair and continued
proof target.
