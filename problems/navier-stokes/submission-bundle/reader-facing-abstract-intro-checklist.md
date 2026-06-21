# Reader-Facing Abstract, Introduction, And Review Checklist

## Abstract

We present the Navier--Stokes proof as a class-membership contrapositive. The
forward-positive program is followed until it reaches a genuine same-solution
obstruction. At that obstruction the proof separates the pass branch from the
fail branch. The pass branch gives a lawful `Member(Q)` continuation and reads
out to the usual smooth continuation bound. The fail branch is admitted to the
same-fluid CM terminal participation-field tree, exhausted as a Part or Field finite
failure type, and embedded as `Exit(Q):=not Member(Q)`.

The Clay-facing chain is:

```text
finite Clay breakdown witness
  -> CM-test entry
  -> Part/Field finite failure type
  -> Exit(Q):=not Member(Q).
```

The only current reopening tests are a genuine in-class nonsmooth third branch
or a failure of terminal CM entry, finite-failure type exhaustion, or
contrapositive embedding.

## Introduction

The proof opens dependency-forward. It gives the Clay target, the classical
continuation norm, one concrete positive attempt, the terminal branch left by a
failed source absorption attempt, and then the class object that tests that
branch. Positive estimates, source-reserve notes, signed-pair/no-free-sink
attempts, no-pulse arguments, and terminal packet survival attempts serve as
support or pressure tests. They become live CM proof authority only when they
attack the terminal witness chain or produce a genuine third branch.

The release scope is the CM contrapositive proof of global regularity for the
three-dimensional incompressible Navier--Stokes problem from smooth
divergence-free data.

## External-review checklist

1. Verify that the manuscript states the governing primitive as `Exit(Q):=not Member(Q)`.
2. Verify that `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}` are witnesses, while `Member(Q)` is the downstream class-membership predicate.
3. Verify finite Clay witness entry into the same-fluid CM terminal participation-field tree.
4. Verify finite failure type exhaustion by Part and Field.
5. Verify that the derived Part/Field failure embeds as `Exit(Q):=not Member(Q)`.
6. Verify pass-side non-vacuity by a lawful smooth / `Member(Q)` witness for each obstruction split.
7. Verify the no-third-branch law: no branch is both an in-class continuation and the terminal nonsmooth failure witness.
8. Verify that positive no-exit, source-reserve, no-free-sink, and no-pulse surfaces are treated as support unless they satisfy one reopening test.
9. Verify that every relevant surface entering the proof program is expanded into mathematical branch/support/family obligations rather than cited as a filename or removed from the manuscript.
10. Verify that the rendered PDF contains mathematical argument only: no internal paths, filenames, generated-surface labels, coverage ledgers, build records, status surfaces, audit rows, or provenance inventories.
11. Verify the PDF hygiene command: `ruby problems/navier-stokes/tools/check_pdf_argument_hygiene.rb`.
