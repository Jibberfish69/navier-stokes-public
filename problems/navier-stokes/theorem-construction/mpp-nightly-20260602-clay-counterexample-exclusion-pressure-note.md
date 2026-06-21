# MPP Nightly Clay Counterexample Exclusion Pressure Note

Date: 2026-06-02

Status: bounded nightly proof-pressure note, not Clay closure.

## Target

The current CM referee gate names the live boundary as:

```text
the CM route classifies admitted finite terminal breakdown objects
as Part/Field Exit(Q), but does not yet prove that such classified exit
is inadmissible as the actual Clay finite-breakdown counterexample.
```

This note keeps that boundary inside Thomas's CM contrapositive program:

```text
Exit(Q):=not Member(Q)
through Pack_Q, Part_{N,Q}, Field_{N,r,Q}.
```

It does not replace the boundary with `OriginalSmoothData => no genuine
finite-time CM exit`, and it does not reopen source-pulse deletion,
SourcePulseExclusion.A, NativeSourceAC.A, or any positive no-pulse supplier.

## Checked Inputs

1. `cm-contrapositive-referee-audit.yaml` records the current blocking gap as
   `clay-counterexample-exclusion-bridge`.
2. `live-theorem-edge.yaml` installs the Clay-facing target family
   `ClayTerminalWitnessCMEntry.A / ClayFiniteFailureTypeCMExhaustion.A /
   ClayCMContrapositiveEmbedding.A`.
3. `mpp-positive-obstruction-pass-exit-cm-engine-20260525.md` installs the
   pass/fail engine: the pass side is the `Member(Q)` continuation side, and
   the fail side earns `Exit(Q)` only through CM-test entry plus a concrete
   Part/Field Part/Field failure.
4. `mpp-no-third-branch-clay-closure-audit-20260525.md` rules out an in-class
   branch that both keeps `Member(Q)` and carries the derived Part/Field failure.
5. `mpp-clay-terminal-witness-invalidation-20260523.md` proves that a
   CM-test-admissible Clay terminal object enters the same-fluid CM terminal
   packet tree and is exhausted by a first Part/Field Part/Field failure.

## Pressure Test

Let `W_*` be offered as the finite-time Clay breakdown witness for the same
original smooth Navier-Stokes datum on the active periodic surface.

There are only two relevant roles.

The pass role is:

```text
the obstruction retains the same-fluid services
=> Member(Q)
=> smooth continuation.
```

The fail role is:

```text
the terminal obstruction is CM-test-admissible
=> first failed Part/Field face
=> Exit(Q):=not Member(Q).
```

The wrong bridge would say:

```text
Exit(Q) is inadmissible as a Clay breakdown witness by definition.
```

That sentence is too strong. A Clay breakdown witness is not supposed to be a
smooth continuation witness. The useful theorem cannot be a bare definitional
ban on class exit.

The smaller, noncircular bridge is:

```text
If W_* is the actual Clay finite-breakdown witness, then W_* must be a
same-equation, same-fluid terminal obstruction produced by the original
preterminal smooth solution.

The installed CM entry/exhaustion chain already says every such admitted W_*
declares a first failed Part/Field service.

Therefore W_* can only be used against smooth continuation by showing that this
Part/Field failure is a genuine terminal obstruction, not by treating it as a legal
third in-class branch.
```

This turns the active boundary into a referee-facing typing problem:

```text
Clay breakdown witness
=> same-fluid terminal obstruction under the CM test
=> concrete Part/Field failure
=> not a Member(Q) continuation branch.
```

The remaining question is not a positive proof that no terminal exit exists.
The remaining question is whether the Clay problem statement allows a finite
breakdown counterexample whose entire mechanism has been reclassified as
failure of the same-fluid continuation services. That question must be answered
in the manuscript as target fidelity, not as a new source-control estimate.

## Result

This note narrows the nightly theorem target to:

```text
ClayCounterexampleExclusionBridge.A:
  a CM-test-admissible Clay finite-breakdown witness whose first failed
  Part/Field face is derived cannot also serve as a legal in-class
  continuation branch; the manuscript must state why this exhausts the Clay
  finite-breakdown alternative on the active periodic surface.
```

This is not a proof of `ClayCounterexampleExclusionBridge.A`. It is the exact
noncircular local burden left by the installed CM surfaces.

## Next Proof Pressure

The next bounded proof action should write `ClayCounterexampleExclusionBridge.A`
directly, with three clauses:

1. Clay target-fidelity clause: the witness is a same-solution finite terminal
   obstruction, not an external bad object.
2. CM exhaustion clause: the witness enters the same-fluid terminal tree and
   declares its first Part/Field Part/Field failure.
3. Alternative-exhaustion clause: after Part/Field failure, the object is not a
   legal `Member(Q)` continuation branch; the pass branch is the only in-class
   continuation branch.

Any proof attempt that replaces clause 3 with a theorem-sized positive
no-exit statement repeats the drift this note is meant to block.

## Evidence

- `problems/navier-stokes/cm-contrapositive-referee-audit.yaml`
- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/theorem-construction/mpp-positive-obstruction-pass-exit-cm-engine-20260525.md`
- `problems/navier-stokes/theorem-construction/mpp-no-third-branch-clay-closure-audit-20260525.md`
- `problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md`
