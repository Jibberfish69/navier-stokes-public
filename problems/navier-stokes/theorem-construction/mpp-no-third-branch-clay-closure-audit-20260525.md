# MPP No-Third-Branch Clay Closure Audit

Date: 2026-05-25

Status: referee-facing theorem audit; proves the in-class no-third-branch
claim and isolates the exact Clay-level closure burden.

## Thomas Pass/Fail Engine

Follow the ordinary positive proof program until it reaches a real obstruction.
At that obstruction there are two proof branches:

```text
O_pass: the obstruction passes and the same solution continues smoothly.
O_fail: the obstruction fails in a way capable of producing nonsmoothness.
```

The CM contrapositive move is:

```text
O_fail capable of nonsmoothness
=> outside the class membership object
=> Exit(Q):=not Member(Q).
```

The complementary branch is:

```text
O_pass
=> inside the class membership object
=> Member(Q)
=> smooth continuation.
```

## Theorem `PositiveObstructionNoThirdBranchClassLaw.A`

There is no terminal branch that is simultaneously:

1. a same-solution in-class continuation branch;
2. capable of blocking smooth continuation at a finite Clay time.

Equivalently:

```text
Member(Q; O_NS^work) + continuation readout
=> smooth continuation,
```

while

```text
finite nonsmooth obstruction branch
=> Pack/Part/Field face failure
=> Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

So the branch field has no third legal in-class case:

```text
in-class + nonsmooth + terminally noncontinuable.
```

## Proof

Let `(u,p)` be the maximal smooth Navier-Stokes solution from the original
smooth datum on `[0,T_*)`, and let `O` be an obstruction reached by the positive
program on a terminal tail.

If `O` is on the pass branch, it retains the continuation services in the same
fluid packet:

```text
Pack_Q,
Part_{N_s,Q},
Field_{N_s,r,Q}
```

at a depth `N_s` high enough for the installed `H^s`, `s>5/2`, continuation
readout. By `CMW.A` and the continuation packet readout, the branch is
`Member(Q; O_NS^work)` and gives the usual classical continuation norm. Local
Navier-Stokes theory then extends the same solution past the alleged terminal
time. Therefore a pass branch cannot be a finite nonsmooth obstruction.

If `O` is on the fail branch and is capable of nonsmoothness, then it is the
same-solution terminal obstruction described by
`ClayAdmissibleFiniteBreakdown.A` and `CanonicalTerminalPacketCapture.A`.
By `AnyFiniteFailureWitnessCMExit.A`, the obstruction has a first failed
Pack/Part/Field service:

```text
not Pack_Q,
or Pack_Q + not Part_{N_s,Q},
or Pack_Q + Part_{N_s,Q} + forall r>0 not Field_{N_s,r,Q}.
```

By `ClayCMContrapositiveEmbedding.A` and `GenuineCMExit.Equiv.A`, that face
failure supports the class-exit primitive:

```text
Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

Thus the fail branch is not an in-class continuation branch. It is a classified
class-exit branch.

The two branches therefore exhaust the CM decision:

```text
pass => Member(Q) => smooth continuation,
fail => Exit(Q)  => not an in-class continuation branch.
```

This proves the branch-law theorem:

```text
PositiveObstructionNoThirdBranchClassLaw.A
```

The shorter alias is:

```text
NoThirdInClassBranch.A
```

## Corollary `NoLegalNonsmoothContinuationCandidate.A`

There is no branch which both:

1. remains a legal same-solution Clay continuation candidate; and
2. witnesses finite nonsmoothness.

### Proof

By `Legal_NS(Q)=>Member(Q;O_NS^work)`, every legal same-solution Clay
continuation candidate is a member branch. By
`PositiveObstructionNoThirdBranchClassLaw.A`, every finite nonsmoothness branch
is an exit branch:

```text
Exit(Q;O_NS^work):=not Member(Q;O_NS^work).
```

The two predicates are incompatible. Therefore no legal in-class continuation
candidate can also be a finite nonsmoothness witness.

## What This Proves

This proves that a referee cannot demand a third object of the following form:

```text
a terminal same-solution branch that remains inside Member(Q)
but still blocks smooth continuation.
```

Such an object is ruled out by the membership readout on the pass side and by
Pack/Part/Field exit classification on the fail side.

## What This Does Not Prove By Itself

This does not yet prove, in standard Clay language, that no finite breakdown
counterexample exists.

A Clay counterexample is allowed to be the assertion that the maximal smooth
solution exits classical smoothness at finite time. Therefore the sentence

```text
the fail branch is Exit(Q)
```

is a classification of the counterexample branch, not by itself a contradiction
of the counterexample branch.

The Clay-ready closure needs one more referee-facing principle:

```text
ClassLawLegality.A:
Every branch admissible as the continuation of the Clay solution from smooth
data must be an in-class Member(Q) branch; a classified Exit(Q) branch is not a
valid continuation candidate for the Clay solution.
```

That principle is true as a definition of admissible smooth continuation. It is
not by itself a proof that the maximal smooth solution never exits at finite
time.

Therefore the exact remaining mathematical burden is:

```text
OriginalSmoothData
=> no finite terminal branch from the maximal solution realizes genuine CM exit.
```

In the repo vocabulary this is the no-genuine-exit theorem:

```text
OriginalSmoothData
=> not GenuineCMExit(T_*)
```

or equivalently the `TerminalCMNoExit.A / NoGenuineCMExit.A` content, now read
through Thomas's pass/fail engine rather than as a demand to prove one favorite
positive estimate.

## Referee-Ready Form Of The Remaining Burden

The strongest non-drifting target is:

```text
NoGenuineExitFromSmoothData.A:
For the maximal smooth Navier-Stokes solution generated by smooth divergence-free
data, every obstruction branch reached by the positive program is either:

1. a pass branch with Member(Q) and the installed continuation readout; or
2. a fail branch that would be genuine CM exit, but such an exit cannot be
   realized as the terminal limit of the same smooth-data solution.
```

The first clause is installed by the membership readout.

The second clause is the real Clay-level theorem. It cannot be replaced by the
mere statement that a fail branch is outside `Member(Q)`, because that is exactly
how a finite breakdown branch presents itself.

## Drift Veto

Do not replace this burden with:

```text
prove a particular positive estimate directly.
```

Also do not replace it with:

```text
classifying failure as Exit(Q) already contradicts Clay breakdown.
```

The proof has to show that smooth initial Navier-Stokes data cannot produce a
genuine CM exit at finite time. Thomas's pass/fail engine supplies the right
shape of the proof; the no-genuine-exit theorem supplies the missing closing
force.
