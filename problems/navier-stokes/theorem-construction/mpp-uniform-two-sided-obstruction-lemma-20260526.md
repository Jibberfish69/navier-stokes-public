# MPP Uniform Two-Sided Obstruction Lemma

Date: 2026-05-26

Status: theorem-facing assembly lemma for the Navier-Stokes CM contrapositive
program.

Theorem labels:

```text
UniformTwoSidedObstructionLemma.A
SameObstructionPassNonvacuity.A
ObstructionFailFaceExit.A
ObstructionPassFailExhaustion.A
```

## Purpose

For every concrete obstruction reached by the ordinary positive
Navier-Stokes proof program, use one reusable two-sided interface:

```text
pass side: a simplest lawful smooth / Member(Q) witness exists for that same obstruction;
fail side: every nonsmooth-capable realization enters the CM test and breaks Part or Field.
```

The pass side supplies non-vacuity. The fail side supplies the CM
contrapositive work. The proof does not require solving the full positive
forward bootstrap program for the obstruction.

## Definitions

Let `O` be a same-solution obstruction on a terminal window `Q`.

`Pass_O(Q)` means:

1. `O` has a lawful smooth realization for the same obstruction field;
2. that realization keeps the same-fluid continuation services needed for the
   CM witness record;
3. by the installed membership readout, it gives

```text
Member(Q; O_NS^work)
```

and hence smooth continuation on the pass branch.

`Fail_O(Q)` means:

1. the obstruction realization is being offered as a finite nonsmooth terminal
   event;
2. the terminal object is CM-test-admissible for the same original solution;
3. its first failed service is one of

```text
not Pack_Q,
not Part_{N,Q},
Part_{N,Q} + forall r>0 not Field_{N,r,Q}.
```

The pass witness is a non-vacuity witness for the branch split. It is not a
demand to prove one chosen positive estimate as the global smoothness
mechanism.

## Theorem `UniformTwoSidedObstructionLemma.A`

Assume a same-solution obstruction `O` admits the following four facts:

```text
(H1) Pass_O(Q) is nonempty by the simplest lawful smooth / Member(Q) witness.
(H2) Every nonsmooth-capable realization of O is CM-test-admissible.
(H3) Every CM-test-admissible fail realization of O has a first failed
     Part/Field face.
(H4) The obstruction has no third branch: a realization cannot be both an
     in-class continuation branch and the derived Part/Field-failure branch.
```

Then `O` is resolved by the CM pass/fail engine:

```text
Pass_O(Q) => Member(Q; O_NS^work) => smooth continuation.
Fail_O(Q) => Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

Consequently, `O` has no legal in-class nonsmooth branch.

## Proof

Start with a same-solution obstruction `O` on `Q`.

By `(H1)`, the pass branch is nonempty. Its simplest lawful witness keeps the
same-fluid continuation services. By the installed membership readout,
retained continuation services give `Member(Q; O_NS^work)`, and the installed
classical continuation readout gives smooth continuation on the pass branch.

Now take any realization of `O` that is capable of serving as a finite
nonsmooth terminal event. By `(H2)`, it enters the CM terminal test for the
same original solution. By `(H3)`, its first failed service is a Pack, Part, or
Field Part/Field failure. By `ClayCMContrapositiveEmbedding.A`, that Part/Field failure
supports

```text
Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

By `(H4)`, the face-failed realization cannot also be the in-class continuation
branch. Thus the branch field for `O` is exhausted:

```text
smooth / Member(Q) pass branch
or
Part/Field face-failed exit branch.
```

There is no third branch that remains in class while carrying the finite
nonsmooth terminal failure.

## Uniformity

The proof uses only the four interface facts `(H1)`--`(H4)`. It does not depend
on whether `O` is a source-control wall, packet-carrier wall, participation
tower wall, coherence/readout wall, donor-reserve wall, signed-current wall, or
another same-solution terminal obstruction.

For each obstruction type, the local job is therefore:

```text
1. give the simplest lawful same-obstruction pass witness;
2. prove fail-branch CM-test admission;
3. derive the first Part/Field Part/Field failure;
4. verify no third in-class nonsmooth branch survives.
```

Once those four rows are present for every terminal witness case in the Clay
finite-breakdown exhaustion, the Navier-Stokes CM contrapositive proof has the
needed obstruction-by-obstruction assembly.

## Clay Use

The Clay-facing theorem family supplies the terminal witness side:

```text
ClayTerminalWitnessCMEntry.A
+ ClayFiniteFailureTypeCMExhaustion.A
+ ClayCMContrapositiveEmbedding.A
```

This lemma supplies the obstruction-row assembly rule. It says exactly how an
individual obstruction row contributes to the final proof:

```text
same-obstruction pass witness
+ fail-branch Part/Field Part/Field failure
=> no legal in-class nonsmooth branch for that obstruction.
```

## Failure Modes

The lemma rejects two errors.

First, an obstruction row is incomplete when it classifies every realization as
outside CM while supplying no same-obstruction pass witness. That is an empty
branch split, not a proof of smoothness.

Second, an obstruction row is misdirected when it replaces the pass witness by
the whole positive forward bootstrap program. The pass-side burden is
non-vacuity for the branch split; the fail side carries the CM proof pressure.

