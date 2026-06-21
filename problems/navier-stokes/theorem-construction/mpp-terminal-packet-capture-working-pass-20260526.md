# MPP Terminal Packet Capture Working Pass

Date: 2026-05-26

Worker: A

Status: working/referee proof attempt for
`clay-terminal-packet-capture-referee-proof`.

## Target

Attempt the actual CM-contrapositive math:

```text
Clay finite breakdown witness
=> same-fluid finite terminal CM participation-field record object
=> primitive failure service exhausted by Pack_Q, Part_{N,Q}, Field_{N,r,Q}
=> Exit(Q):=not Member(Q).
```

This pass holds the governing program fixed:

```text
Exit(Q):=not Member(Q)
```

through the Field-certification witness tree

```text
Pack_Q,
Part_{N,Q},
Field_{N,r,Q}.
```

It does not replace the target by a positive theorem saying that smooth data
never exits CM, and it does not count a bad terminal branch as `Exit(Q)` before
a Part/Field failure is derived.

## Sources Inspected

- `problems/navier-stokes/target-operating-contract.yaml`
- `problems/navier-stokes/cm-contrapositive-referee-audit.yaml`
- `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/source-frontier.yaml`
- `problems/navier-stokes/theorem-construction/mpp-canonical-terminal-packet-capture-20260522.md`
- `problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md`
- `problems/navier-stokes/theorem-construction/mpp-clay-admissible-breakdown-cm-lawfulness-test-20260524.md`
- `problems/navier-stokes/theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md`
- `problems/navier-stokes/theorem-construction/mpp-positive-obstruction-pass-exit-cm-engine-20260525.md`
- `problems/navier-stokes/theorem-construction/mpp-no-third-branch-clay-closure-audit-20260525.md`
- `problems/navier-stokes/theorem-construction/mpp-cm-completion-claim-adversarial-audit-20260525.md`
- `problems/navier-stokes/theorem-construction/mpp-continuation-packet-generated-cm-contrapositive-20260514.md`
- `problems/navier-stokes/theorem-construction/mpp-genuine-cm-exit-equivalence-20260521.md`
- `problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md`

## Role-Typed Setup

Let `(u,p)` be the maximal classical Navier-Stokes solution from the original
smooth datum on `[0,T_*)`, with `T_*<infty` assumed for contradiction.

The alleged Clay breakdown witness is the same original solution stopped at
`T_*`. It is not a class member. It is the bad object under test.

Fix `s>5/2` and a continuation depth `N_s` high enough for the installed
classical continuation readout.

A terminal CM participation-field record record is a same-fluid terminal tail

```text
Q_* = (u_0, nu, u, p, Phi, T_*, N_s)
```

together with the three continuation services on one record:

```text
Pack_Q,
Part_{N_s,Q},
Field_{N_s,r,Q}.
```

`Pack_Q` is the carrier/cover slot. `Part_{N_s,Q}` is the same
pressure-viscosity participation tower through depth `N_s`.
`Field_{N_s,r,Q}` is positive-scale one-field coherence for that same tower.

## Lemma 1: Conditional Terminal Packet Exhaustion

Assume that the Clay finite breakdown witness has already supplied a
same-fluid terminal packet record `Q_*` satisfying these two referee
admissibility clauses:

1. `Q_*` is selected from the same preterminal smooth solution and keeps the
   original datum, pressure, viscosity, velocity, and transported carrier
   family until the first failed service is declared.
2. The continuation-complete CM participation-field record on `Q_*` is exactly the three-service
   packet

   ```text
   Pack_Q + Part_{N_s,Q} + Field_{N_s,r,Q}
   ```

   together with the installed `H^s`, `s>5/2`, readout bridge.

Then the terminal packet is exhausted by the Pack-out-of-CM audited face split:

```text
not Pack_Q
or
Pack_Q + not Part_{N_s,Q}
or
Pack_Q + Part_{N_s,Q} + forall r>0 not Field_{N_s,r,Q}.
```

### Proof

Ask first whether the terminal tail has the same-fluid carrier service.

If it does not, the first failed service is

```text
not Pack_Q.
```

Assume now that `Pack_Q` survives. Ask whether the selected carrier still
carries the same differentiated pressure-viscosity Navier-Stokes tower through
depth `N_s`.

If it does not, the first failed service is

```text
Pack_Q + not Part_{N_s,Q}.
```

Assume now that both `Pack_Q` and `Part_{N_s,Q}` survive. Suppose some
positive scale `r>0` also satisfies `Field_{N_s,r,Q}`. Then the selected
terminal record carries the full continuation-complete CM witness

```text
Pack_Q + Part_{N_s,Q} + Field_{N_s,r,Q}.
```

By the installed continuation readout, this gives a finite `H^s`, `s>5/2`,
continuation norm for the same Navier-Stokes solution near `T_*`. Classical
local theory relaunches the solution past `T_*`, contradicting the terminal
role of the Clay breakdown witness.

Therefore no positive field scale survives:

```text
Pack_Q + Part_{N_s,Q} + forall r>0 not Field_{N_s,r,Q}.
```

The three cases are ordered by the first surviving question in the same
record. This proves the conditional Field-certification exhaustion.

## What Lemma 1 Actually Proves

Lemma 1 proves the CM trichotomy once the terminal packet record is genuinely
admitted. It is real math, because the Field case uses the classical
continuation criterion to force contradiction.

It also exposes the exact referee burden: the proof is only as strong as the
admission of `Q_*` and the readout completeness of the chosen packet.

## Attempted Derivation Of The Terminal Packet From Clay Breakdown

Start with the finite Clay breakdown assumption. For every `epsilon>0`, the
solution is classical on `[0,T_* - epsilon]`. The still-live smooth-window
surfaces give local Part/Field packets on each compact preterminal window.

The natural construction is:

1. choose times `t_j upward T_*` on which the continuation norm approaches its
   terminal obstruction;
2. choose packet records `Q_j` from the same transported preterminal family;
3. pass to a terminal tail `Q_*`;
4. declare the first failed terminal service in the Pack-out-of-CM audited order.

This construction is valid as a proof scheme, but the inspected sources do not
yet supply the referee theorem that makes step 3 canonical and complete.

The missing theorem is not a positive no-exit theorem. It is a terminal
selection/completeness theorem:

```text
TerminalSelectionCompleteness.A:
Every finite Clay breakdown witness has a same-fluid terminal packet tail Q_*
such that all obstruction-bearing terminal mass is either:
  (a) carried by Q_* and tested by Part/Field,
  (b) removed as legal loss, readout-only residue, non-selected branch, or paid
      finite term,
  (c) or itself counted as the Pack-side failure of finite same-fluid packet
      selection.
```

Without this theorem, the current text moves too quickly from "pass to a
terminal subsequence" to "the remaining services are exactly Pack, Part, and
Field."

## Exact Obstruction Found

The current repo proves the conditional trichotomy:

```text
CM-test-admissible terminal packet
=> first failed Part/Field service
=> Exit(Q):=not Member(Q).
```

The current repo does not yet prove, at referee threshold, the unconditional
capture step:

```text
Clay finite breakdown witness
=> canonical same-fluid finite terminal packet object Q_*
```

with the additional guarantee that the selected packet is readout-complete for
the original solution rather than merely a local diagnostic packet.

Three precise sub-obstructions remain.

### 1. Canonical packet selection

The notes use phrases such as "pass to a terminal subsequence" and "selected
terminal packet." They do not yet give a compactness/selection lemma proving
that a finite-time Clay breakdown witness produces a canonical same-fluid
packet record whose failure captures the actual obstruction.

The possible escape modes are:

- the obstruction fragments over infinitely many terminal packets;
- the selected packet carries only a diagnostic subbranch and not the
  continuation obstruction;
- terminal scale degenerates in a way that must be typed first under pointwise
  original-NS participation, giving true `not Pack_Q` only when the
  record/carrier/readout is absent and otherwise landing in Part;
- on noncompact variants, terminal mass may escape unless the torus-first
  setting or a tightness hypothesis is explicitly fixed.

The repo's `source-frontier.yaml` currently states a torus-first theorem
surface, which removes spatial escape for that surface, but it does not remove
scale fragmentation or readout incompleteness.

### 2. Readout completeness of the selected packet

The Field case proves contradiction only when

```text
Pack_Q + Part_{N_s,Q} + Field_{N_s,r,Q}
```

controls the continuation criterion for the same original solution. The
submission text asserts that finite cover plus local bounds sum to the global
`H^s` norm. The referee version still needs the exact bridge:

```text
SelectedPacketReadoutCompleteness.A:
the selected terminal packet and its finite cover include every obstruction
component needed for the same-solution H^s continuation readout.
```

Otherwise `Field_{N_s,r,Q}` may only prove that one local packet is controlled,
while the real blowup sits outside the selected record.

### 3. Pack definition alignment

The inspected sources use two nearby Pack readings.

The submission text describes `Pack_Q` as a finite transported carrier family
with positive lower carrier scale. The exact class-membership witness note
also uses bounded deformation gauge for the flow map on the window.

For a referee proof these have to be unified:

```text
PackDefinitionUnification.A:
the Pack predicate used in terminal capture is the same predicate used in the
H^s continuation readout, and failure of terminal packet selection lands in
that Pack predicate rather than in an unnamed fourth loss.
```

Without this alignment, one reading can make Pack almost topological/covering,
while the other makes Pack a quantitative bounded-deformation service.

## Working Result

The working pass proves:

```text
Terminal packet admitted + readout-complete
=> primitive failure service exhausted by Pack_Q, Part_{N_s,Q}, Field_{N_s,r,Q}
=> Exit(Q):=not Member(Q).
```

The pass does not prove:

```text
Clay finite breakdown witness
=> admitted readout-complete terminal packet Q_*
```

at referee threshold.

## What This Means For The CM Program

The obstruction is inside the CM route, not a relapse into the positive
smoothness program. The missing work is to make terminal packet capture honest:
construct the terminal packet, prove it is readout-complete, and show every
failure of that construction is itself Pack-side rather than a fourth
primitive service.

So the next mathematical atom is:

```text
TerminalSelectionCompleteness.A
+ SelectedPacketReadoutCompleteness.A
+ PackDefinitionUnification.A
```

Once those are proved, the inspected Field-certification trichotomy supplies the
desired CM exit result.

If one of these three atoms turns out impossible, that is an authentic logical
blocker for the current CM formulation. It should not be hidden by saying
"terminal subsequence" or "selected packet" more forcefully.
