# MPP Clay Breakdown Preterminal Reflection Proof Attempt

Date: 2026-05-24

Status: invalid bridge attempt; no live theorem promotion.

Proof mode: CM contrapositive class exit.

## Claim Tested

```text
ClayBreakdownPreterminalReflection.A:
ClayAdmissibleFiniteBreakdown(W_*)
=> exists still-live preterminal Q_pre with Exit(Q_pre).
```

The role-typed input is already fixed:

```text
alleged finite Clay breakdown object W_*
=> CM-test-admissible terminal object
=> derived Pack/Part/Field face failure
=> Exit(Q_*):=not Member(Q_*).
```

The object of this note was the proposed reflection step from terminal
class-exit diagnosis to still-live preterminal class-exit. That proposal is now
recorded as an invalid bridge attempt.

## Checked Inputs

1. `ClayAdmissibleFiniteBreakdown.A` places the finite same-surface Clay
   breakdown object inside the CM test grammar.

2. `ClayFiniteFailureTypeCMExhaustion.A` and
   `ClayCMContrapositiveEmbedding.A` derive a terminal face failure and read
   that face failure as `Exit(Q_*):=not Member(Q_*)`.

3. `SLC.A / CMW.A` prove that every still-live classical preterminal window
   is a class member:

   ```text
   classical still-live Q_pre => Member(Q_pre), hence not Exit(Q_pre).
   ```

4. Existing Part closedness notes prove only a conditional row: retained
   positive Field scale, tower-amplitude control, and preterminal Part imply
   terminal Part. They do not supply the missing retained positive Field scale.

5. Existing terminal packet notes record the same pressure points: Pack needs a
   terminal strain/carrier ledger, Part needs terminal tower and readout
   closedness, and Field is the positive-scale coherence/readout problem after
   participation has been licensed.

## Method Attempt Now Rejected

Use a contradiction/minimal-first-loss skeleton. Assume a finite Clay breakdown
object produces terminal `Exit(Q_*)`, and assume every same-fluid still-live
preterminal window remains class-member by `SLC.A / CMW.A`. Then the terminal
face failure must first appear only at `T_*`.

This reasoning is the invalid step. It treats terminal class-exit as something
that must be reflected backward before it can serve the CM contrapositive. That
changes the proof program. In the CM contrapositive, the terminal face failure
is the witness of `Exit(Q_*):=not Member(Q_*)`; it becomes an earlier still-live
member-window defect only after a backward-reflection theorem.

### Pack Face

Terminal Pack failure means:

```text
not Pack_Q_*
```

Every compact preterminal window has a Pack witness by `SLC.A`, but the scale
and carrier data may depend on the chosen preterminal window. Reflection would
need a theorem saying that the same-fluid carrier service cannot keep appearing
on all compact preterminal windows and then lose Pack only in the terminal
limit.

That theorem is not installed by preterminal smoothness alone. The obstruction
is a zero-radius or terminal-carrier collapse: the Pack predicate may hold on
each fixed preterminal window while the available Pack radius or deformation
ledger degenerates along the terminal approach.

The proposed Pack branch was:

```text
PackNoFirstTerminalLoss.A:
preterminal same-fluid Pack witnesses on a canonical terminal tail
=> terminal-only not Pack_Q is impossible.
```

This is not promoted. It requires an additional same-packet persistence theorem
that is not supplied by the terminal CM classification.

### Part Face

Terminal Part failure means:

```text
not Part_{N,Q_*}
```

The existing Part closedness row proves persistence under retained positive
Field scale and tower-amplitude control. That is a real partial bridge, but it
is conditional on inputs that are not automatic in the terminal Part-failure
branch.

Using that conditional row as the full reflection theorem smuggles in a
retained Field-scale premise. The proposed stronger theorem was:

```text
PartNoFirstTerminalLoss.A:
preterminal same-fluid Part witnesses on a canonical terminal tail
=> terminal-only not Part_{N,Q_*} is impossible,
or else the loss has already produced Pack or Field preterminal exit.
```

This is not promoted. The current Part-terminal-closedness notes cover the
retained-positive-scale subcase only.

### Field Face

Terminal Field failure means:

```text
forall r>0 not Field_{N,r,Q_*}
```

Every still-live preterminal window has some positive scale `r_Q>0` by `SLC.A`.
That statement has the quantifier form `for each Q, there exists r_Q`. The
attempt incorrectly treated the possible loss of one terminally retained scale
as a reason to force a prior still-live Field failure.

That is not licensed. A shrinking-scale terminal extraction would have to be
proved as canonical before it could guide the proof. It cannot be chosen by the
argument and then used as the remaining theorem burden.

The proposed Field branch was:

```text
FieldNoFirstTerminalLoss.A:
preterminal same-fluid Field witnesses on a canonical terminal tail
=> terminal-only forall r>0 not Field_{N,r,Q_*} is impossible,
or else a preterminal Field-face exit is already present.
```

This is not promoted. Existing cover-degeneration notes classify terminal
positive-scale loss as a Field/Jump face; they do not force that face failure to
occur on a still-live preterminal member window.

## Result

This attempt does not prove `ClayBreakdownPreterminalReflection.A`.

It also does not prove a valid reduction to `CMFaceNoFirstTerminalLoss.A`.

The failed inference is:

```text
terminal derived face failure
=> earlier still-live face failure.
```

That inference would contradict `SLC.A / CMW.A`, but it is not part of the
installed CM contrapositive. The installed CM
contrapositive uses the terminal face failure itself as the witness of
`Exit(Q_*):=not Member(Q_*)`.

## Boundary

This note is retained only as a quarantine record for an invalid bridge
promotion. `CMFaceNoFirstTerminalLoss.A`, `PackNoFirstTerminalLoss.A`,
`PartNoFirstTerminalLoss.A`, and `FieldNoFirstTerminalLoss.A` are not live
Navier-Stokes CM burdens from this attempt.

The live installed Clay-facing CM chain remains:

```text
ClayAdmissibleFiniteBreakdown.A
+ ClayTerminalWitnessCMEntry.A
+ ClayFiniteFailureTypeCMExhaustion.A
+ ClayCMContrapositiveEmbedding.A
=> derived Pack/Part/Field face failure
=> Exit(Q_*):=not Member(Q_*).
```
