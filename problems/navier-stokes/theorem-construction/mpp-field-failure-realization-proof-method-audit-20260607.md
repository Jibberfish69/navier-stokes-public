# MPP Field Failure Realization Proof-Method Audit

Date: 2026-06-07

Status: proof route sharpened; direct good-scale noncollapse is
continuation-strength, while realization as a same-fluid terminal Jump is the
smaller Field-specific route.

## Target Under Audit

The Field-face working pass isolated two possible missing lemmas:

```text
ClayFieldFailureRealization.A
```

and the stronger alternate

```text
ClayRetainedPackPartGoodScaleNonCollapse.A.
```

Both start after the earlier faces are retained:

```text
Pack_Q
+ Part^{term}_{N,Q}
+ forall r>0 not Field_{N,r,Q}.
```

## Proof-Method Classification

Proof program: Navier-Stokes CM contrapositive class exit.

Target role: Field-face exclusion / retained Pack+Part endpoint bridge.

Logical skeleton: contradiction by terminal same-fluid ontology, or direct
positive-scale compactness.

Mechanisms:

- realization route: identify the all-scales Field failure as a same-fluid
  terminal Jump on the retained carrier;
- noncollapse route: prove a positive coherent Field scale survives.

Current failure mode: the noncollapse route asks for a positive readout scale,
which is essentially the endpoint continuation readout. The realization route
is smaller because it only has to prove that the all-scales Field failure is a
real terminal trace incompatibility, so the installed Field-to-Part collapse can
fire.

## Direct Good-Scale Attempt

`ClayRetainedPackPartGoodScaleNonCollapse.A` says:

```text
OriginalSmoothData
+ SameSolutionTerminalObstruction(Q)
+ Pack_Q
+ Part^{term}_{N,Q}
=> exists r_F>0 with Field_{N,r_F,Q}.
```

That is a powerful positive theorem. A positive `Field` scale at depth
`N_s`, together with retained Pack and Part, feeds the `H^s`, `s>5/2`,
continuation readout. Proving this directly from original data would be
continuation-strength unless the proof supplies a new compactness mechanism
that is strictly weaker than the final readout.

The installed sources do not supply that mechanism. Dyadic survivors can remain
at scales `r_j -> 0`; endpoint compatibility theorems apply only after a
positive readout cover exists; and downstream readout cannot be spent upstream
to create the Field predicate.

## Realization Attempt

`ClayFieldFailureRealization.A` asks for less.

It does not try to produce a positive Field scale. It asks whether the already
assumed all-scales Field failure is a realized same-fluid terminal Jump on the
retained carrier, rather than a missing support theorem or unselected readout
artifact.

If it is a realized terminal Jump, the installed collapse theorem applies:

```text
realized Jump
+ Pack_Q
+ forall r>0 not Field_{N,r,Q}
=> not Part^{term}_{N,Q}.
```

That contradicts the retained terminal Part hypothesis and excludes the
retained-Pack/retained-Part Field face without proving a full positive-scale
readout theorem.

## What Still Has To Be Proved

The realization route needs a terminal trace/ontology theorem:

```text
RetainedPackPartAllScaleFieldFailureIsJump.A:

Let Q be the canonical same-solution terminal obstruction. Assume Pack_Q and
Part^{term}_{N,Q}. If every positive Field scale fails on Q, then the failure is
a realized same-fluid terminal Jump on that same retained carrier.
```

This theorem must rule out three weaker explanations:

1. absence of an upstream support proof;
2. failure to select the right readout packet;
3. downstream endpoint-cover machinery missing before the terminal object has
   been realized.

The proof should use the retained Pack carrier and retained Part tower to force
the all-scales Field failure to be an actual incompatibility of neighboring
terminal traces on one participating field record.

## Result

The Field blocker is now ordered:

```text
Primary Field route:
  prove ClayFieldFailureRealization.A through
  RetainedPackPartAllScaleFieldFailureIsJump.A.

Stronger alternate:
  prove ClayRetainedPackPartGoodScaleNonCollapse.A, but treat it as
  continuation-strength unless a strictly weaker compactness mechanism is
  supplied.
```

This note does not close the Field face. It prevents the proof from spending
endpoint readout to manufacture the positive Field scale that endpoint readout
needs.
