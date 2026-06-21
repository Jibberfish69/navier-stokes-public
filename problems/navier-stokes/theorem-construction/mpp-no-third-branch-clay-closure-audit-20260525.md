# MPP No-Third-Branch Clay Closure Audit

Date: 2026-05-25

Status: corrected referee-facing branch-law audit. This note is support for
Thomas's pass/fail CM engine, not a standalone Clay closure theorem.

## Thomas Pass/Fail Engine

Follow the ordinary positive proof program until it reaches a real obstruction.
At that obstruction there are two proof branches:

```text
O_pass: the obstruction passes and the same solution continues smoothly.
O_fail: the obstruction fails in a way offered as the nonsmooth terminal event.
```

The CM contrapositive move is role-typed:

```text
O_fail
=> CM-test-admissible terminal obstruction
=> derived first Part/Field failure
=> Exit(Q):=not Member(Q).
```

The phrase "capable of nonsmoothness" is not itself a proof of `Exit(Q)`. It is
only the reason the failure branch must be tested against the CM witnesses.
The exit conclusion is earned only after the Part/Field failure has
actually been derived.

The complementary branch is:

```text
O_pass
=> retained continuation services
=> Member(Q)
=> smooth continuation.
```

## Theorem `PositiveObstructionNoThirdBranchClassLaw.A`

There is no terminal branch that is simultaneously:

1. a same-solution in-class continuation branch; and
2. a derived Part/Field Part/Field-failure branch used as a finite nonsmoothness
   witness.

Equivalently:

```text
Member(Q; O_NS^work) + continuation readout
=> smooth continuation,
```

while a mechanism-derived failure has the form:

```text
CM-test-admissible terminal obstruction
=> first failed Part/Field face
=> Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

So the branch field has no third legal in-class case:

```text
in-class + face-failed + terminally noncontinuable.
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
`Member(Q; O_NS^work)` and gives the displayed continuation criterion

```math
\sup_{t<T_Q}\|u(t)\|_{H^s}<\infty,
\qquad
s>\frac52.
```

The `H^s` Navier-Stokes local theory gives a lifespan depending only on
`\nu`, `s`, and this bound; restarting the same solution at times
`t_j\uparrow T_Q` therefore extends it past the alleged terminal time.
Therefore a pass branch cannot also be the finite nonsmooth obstruction.

If `O` is on the fail branch, the audit may not jump from "bad enough to be
nonsmooth" to `Exit(Q)`. The branch must first be entered into the CM terminal
test by a Clay-facing entry theorem such as `ClayAdmissibleFiniteBreakdown.A`
and `CanonicalTerminalPacketCapture.A`, and then its first failed service must
be derived by a Field-certification exhaustion theorem such as
`AnyFiniteFailureWitnessCMExit.A`:

```text
not Pack_Q,
or Pack_Q + not Part_{N_s,Q},
or Part_{N_s,Q} plus Field-window evidence + forall r>0 not Field_{N_s,r,Q}.
```

Only after that Part/Field failure is derived may `ClayCMContrapositiveEmbedding.A`
support the class-exit primitive:

```text
Exit(Q; O_NS^work):=not Member(Q; O_NS^work).
```

Thus a mechanism-derived fail branch is not an in-class continuation branch. It
is a classified class-exit branch.

The branch law is therefore:

```text
pass => Member(Q) => smooth continuation,
mechanism-derived fail => Exit(Q) => not an in-class continuation branch.
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

1. remains a legal same-solution continuation branch; and
2. carries the derived Part/Field failure used as the finite
   nonsmoothness witness.

### Proof

By `Legal_NS(Q)=>Member(Q;O_NS^work)`, every legal same-solution continuation
branch is a member branch. By `PositiveObstructionNoThirdBranchClassLaw.A`,
every mechanism-derived finite nonsmoothness branch is an exit branch:

```text
Exit(Q;O_NS^work):=not Member(Q;O_NS^work).
```

The two predicates are incompatible. Therefore no legal in-class continuation
branch can also be a finite nonsmoothness witness.

This corollary is not allowed to describe the alleged Clay breakdown object as
a continuation candidate. The alleged breakdown object is the terminal
obstruction under test; the continuation candidate is the pass branch that
retains the readout services.

## What This Proves

This proves that a referee cannot demand a third object of the following form:

```text
a terminal same-solution branch that remains inside Member(Q)
but also carries the Part/Field failure used to block continuation.
```

Such an object is ruled out by the membership readout on the pass side and by
the derived Pack/that Part/Field failure classification on the fail side.

## What This Does Not Prove By Itself

This note does not prove the Navier-Stokes MPP, and it does not license the
following shortcut:

```text
bad enough to be nonsmooth => Exit(Q).
```

It also does not turn the whole problem into the local burden:

```text
OriginalSmoothData => not GenuineCMExit(T_*).
```

That phrase names the whole positive no-exit theorem in different words. It is
too large to serve as the next local proof obligation for this branch-law note.

## Correct Noncircular Use

For each concrete obstruction `O` reached by the positive program, the local
work is:

```text
1. identify O as a real same-solution obstruction, not a generated label;
2. prove CM-test entry for that O without assuming continuation or Member(Q);
3. derive the first failed Part/Field face for the fail branch;
4. read the pass branch through retained continuation services and Member(Q).
```

That is Thomas's pass/fail engine in a referee-usable form. It avoids forcing
one favorite positive estimate to be the unique smoothness mechanism, while
also avoiding the cheap move where any bad branch is called `Exit(Q)` before
its witness mechanism is proved.

## Drift Veto

Do not replace the corrected branch law with:

```text
O_fail capable of nonsmoothness => Exit(Q).
```

Do not describe the alleged Clay breakdown witness as a legal continuation
candidate. It is the terminal obstruction under test.

Do not name

```text
OriginalSmoothData => not GenuineCMExit(T_*)
```

as this note's remaining burden. Use concrete obstruction-by-obstruction CM
entry plus Part/Field Part/Field derivation instead.

Do not treat CM as a positive regularity class that a smooth solution must be
proved to preserve. In this note, CM is the class-membership and witness
grammar used to separate pass-as-continuation from fail-as-exit.
