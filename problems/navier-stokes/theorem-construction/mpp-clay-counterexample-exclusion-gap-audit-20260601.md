# MPP Clay Counterexample-Exclusion Gap Audit

Date: 2026-06-01

Status: referee gap installed; full Clay-ready claim demoted until the bridge below is proved.

## Finding

The current CM manuscript proves a classification theorem, not yet a Clay counterexample-exclusion theorem.

What is currently installed is:

```text
ClayAdmissibleFiniteBreakdown(W_*)
=> CM-test entry
=> Pack/Part/Field first-face failure
=> Exit(Q):=not Member(Q).
```

That is valuable CM contrapositive structure. It says an alleged terminal breakdown object, once admitted to the same-fluid terminal packet test, is classified as a Pack, Part, or Field class exit.

The missing Clay-closing bridge is:

```text
ClayAdmissibleFiniteBreakdown(W_*) and classified Exit(Q)
=> contradiction with being a valid Clay finite-breakdown counterexample.
```

Equivalently, the manuscript must prove that the pass-side `Member(Q)` branch is the same original maximal solution continued past the alleged terminal time, rather than a separate lawful branch used only for comparison.

## Why This Blocks Submission Readiness

The Clay breakdown alternative is not required to remain a class-member at the terminal time. It is the allegation that the original smooth solution cannot be continued classically past that time.

Therefore the sentence

```text
Exit(Q) => the object cannot serve as the Clay breakdown witness
```

is not justified by the current installed notes. The repo already records this in:

- `mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md`
- `mpp-clay-breakdown-preterminal-reflection-proof-attempt-20260524.md`

Those notes reject the two most direct bridges:

1. terminal class-exit is inadmissible by target fidelity alone;
2. terminal class-exit must reflect backward to a still-live preterminal exit.

## Correct Current Theorem Status

The current theorem status is:

```text
CM terminal witness classification: installed.
Clay finite-breakdown exclusion: open.
Full Clay-ready Navier-Stokes proof: not established.
```

The proof can be completed only by proving the missing bridge, or by replacing the manuscript's closing argument with a different noncircular argument that excludes finite terminal breakdown for the original solution.

## Manuscript Repair

The submission manuscript must stop presenting the classified class exit as a completed proof of global regularity.

The repaired manuscript should say:

```text
The CM chain classifies every admitted finite terminal breakdown object as Pack/that face failure.
The remaining Clay-closing burden is to prove that such a classified exit cannot be the actual finite breakdown counterexample for the original smooth-data solution.
```

This is the live proof/PDF target until a new argument discharges that bridge.
