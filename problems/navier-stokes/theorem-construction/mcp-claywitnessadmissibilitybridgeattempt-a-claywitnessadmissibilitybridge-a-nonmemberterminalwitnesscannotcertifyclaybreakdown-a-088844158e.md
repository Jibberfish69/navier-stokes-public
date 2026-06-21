# ClayWitnessAdmissibilityBridge.A Attempt After Original-Participation Audit

## Target

Test the checker-language replacement for terminal-closedness language:

```text
ClayWitnessAdmissibilityBridge.A
```

Candidate statement:

```text
A terminal object that fails Member(Q), Part_{N,Q}, or Field_{N,r,Q} cannot certify a genuine Clay finite-time breakdown counterexample witness.
```

The motivation was to avoid the forward-positive phrase:

```text
terminal closedness from smooth data.
```

## Existing repo warning

The repo already contains the relevant failed shortcut in:

```text
mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md
```

That surface tested essentially the same target:

```text
derived Part/Field Part/Field failure supporting Exit(Q):=not Member(Q)
cannot be a valid Clay breakdown counterexample witness.
```

It failed for a precise reason.

## Failure of the admissibility shortcut

A Clay smooth solution witness must remain smooth. For such a witness, class exit is inadmissible.

But a Clay breakdown counterexample witness is not required, by the target statement alone, to remain `Member(Q)` at the terminal time. It is precisely a witness to the failure of global smooth continuation.

Therefore:

```text
Exit(Q) disqualifies ClaySmoothSolution(u,p),
but Exit(Q) does not by itself disqualify ClayAdmissibleFiniteBreakdown(W_*).
```

Equivalently, the statement

```text
every valid Clay breakdown counterexample witness must remain Member(Q)
```

would beg the question. It would redefine a breakdown witness as a surviving in-class terminal object, while the breakdown alternative is exactly that no such smooth terminal continuation exists.

## What remains valid

The original-participation-before-Pack closure still matters. It proves a classification:

```text
same-solution terminal singular witness
=> not Part_{N,Q} or forall r>0 not Field_{N,r,Q},
```

and it proves the corrected order:

```text
the original NS participation law audits singular objects before Pack-local disposal.
```

This closes the local CM Part/Field-classification problem.

But it does not, by itself, prove that a Clay counterexample is impossible.

## Corrected bridge status

The witness-admissibility bridge only proves:

```text
if a terminal object is meant to witness smooth continuation, then that Part/Field failure invalidates it as a smooth-solution witness.
```

It does not prove:

```text
if a terminal object is meant to witness breakdown, then that Part/Field failure invalidates it as a breakdown witness.
```

So `ClayWitnessAdmissibilityBridge.A` is not a full Clay-closing bridge.

## Actual remaining burden

The remaining burden cannot be erased by checker-language alone.

One must prove one of the following:

```text
1. a genuine finite-time Clay breakdown witness cannot be merely a CM class-exit object;
```

or

```text
2. every same-solution terminal CM class exit from smooth data is impossible by a noncircular law/obstruction theorem;
```

or

```text
3. the CM target is explicitly defined so that a terminal class-exit object is not an admissible finite-time breakdown witness, without making that definition equivalent to assuming regularity.
```

The previous repo attempt says option 3 failed as a pure target-fidelity shortcut.

## Verdict

`ClayWitnessAdmissibilityBridge.A` is not proved.

It is the same failed shortcut as the older class-exit inadmissibility attempt, unless a new noncircular admissibility rule is supplied.

## Correct final blocker

The honest remaining blocker is:

```text
ClayClosingBridgeWithoutForwardSmuggling.A
```

or, more explicitly:

```text
NoncircularFiniteBreakdownExclusion.A
```

This theorem must explain why the CM-class-exit classification of every terminal singular witness actually excludes the Clay counterexample, without simply assuming that breakdown witnesses must already be smooth / Member(Q) at the terminal time.

## Route state

Closed locally:

```text
original-participation-before-Pack singularity classification;
Pack positive-radius admission after original participation audit;
local CM Part/Field classification.
```

Still open globally:

```text
noncircular bridge from terminal CM class-exit classification to no finite-time Clay counterexample.
```

This replaces the misleading phrase `terminal closedness from smooth data` with the sharper and honest blocker:

```text
NoncircularFiniteBreakdownExclusion.A.
```