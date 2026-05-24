# MPP Clay Breakdown Preterminal Reflection Proof Attempt

Date: 2026-05-24

Status: bounded proof attempt; reduction to a no-first-terminal-loss theorem.

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

The object of this note is only the reflection step from terminal class-exit
diagnosis to still-live preterminal class-exit. It does not try to prove a
positive packet-survival theorem.

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

## Method Attempt

Use a contradiction/minimal-first-loss skeleton. Assume a finite Clay breakdown
object produces terminal `Exit(Q_*)`, and assume every same-fluid still-live
preterminal window remains class-member by `SLC.A / CMW.A`. Then the terminal
face failure must first appear only at `T_*`.

To prove the reflection theorem, each possible terminal face failure must be
closed against first appearance at `T_*`.

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

The Pack branch therefore reduces to:

```text
PackNoFirstTerminalLoss.A:
preterminal same-fluid Pack witnesses on a canonical terminal tail
=> terminal-only not Pack_Q is impossible.
```

### Part Face

Terminal Part failure means:

```text
not Part_{N,Q_*}
```

The existing Part closedness row proves persistence under retained positive
Field scale and tower-amplitude control. That is a real partial bridge, but it
is conditional on inputs that are not automatic in the terminal Part-failure
branch.

Using that conditional row as the full reflection theorem would smuggle in a
retained Field-scale premise. The exact missing theorem is stronger:

```text
PartNoFirstTerminalLoss.A:
preterminal same-fluid Part witnesses on a canonical terminal tail
=> terminal-only not Part_{N,Q_*} is impossible,
or else the loss has already produced Pack or Field preterminal exit.
```

So Part reflection is not closed by the current Part-terminal-closedness notes;
they cover the retained-positive-scale subcase only.

### Field Face

Terminal Field failure means:

```text
forall r>0 not Field_{N,r,Q_*}
```

Every still-live preterminal window has some positive scale `r_Q>0` by `SLC.A`.
That does not give one terminally retained positive scale. The available
preterminal scales may shrink to zero as the windows approach `T_*`.

This is the hardest reflection branch. It is not a request to delete the bad
field object. It is a request to show that zero terminal Field scale cannot be
only terminal while every preterminal window remains a member.

The Field branch therefore reduces to:

```text
FieldNoFirstTerminalLoss.A:
preterminal same-fluid Field witnesses on a canonical terminal tail
=> terminal-only forall r>0 not Field_{N,r,Q_*} is impossible,
or else a preterminal Field-face exit is already present.
```

Existing cover-degeneration notes classify loss of positive terminal scale as a
Field/Jump face. They do not by themselves force that face failure to occur on
a still-live preterminal window.

## Result

This attempt does not prove `ClayBreakdownPreterminalReflection.A`.

It proves the exact reduction:

```text
ClayBreakdownPreterminalReflection.A
<= CMFaceNoFirstTerminalLoss.A
<= PackNoFirstTerminalLoss.A
   + PartNoFirstTerminalLoss.A
   + FieldNoFirstTerminalLoss.A.
```

Here `CMFaceNoFirstTerminalLoss.A` is the missing non-positive bridge:

```text
Any derived terminal Pack/Part/Field face failure from a finite same-surface
Clay breakdown object reflects to a still-live preterminal face failure.
```

Once this bridge is proved, `SLC.A / CMW.A` gives the contradiction because a
still-live preterminal window is a class member and therefore cannot satisfy
`Exit(Q_pre):=not Member(Q_pre)`.

## Boundary

This is not `TerminalCMNoExit.A / NoGenuineCMExit.A`. It does not try to prove
positive packet survival at the terminal endpoint.

The next object-level theorem is `CMFaceNoFirstTerminalLoss.A`, preferably
attacked face by face with a minimal-first-loss or closedness argument. The
Field branch carries the visible radius-degeneration obstruction.
