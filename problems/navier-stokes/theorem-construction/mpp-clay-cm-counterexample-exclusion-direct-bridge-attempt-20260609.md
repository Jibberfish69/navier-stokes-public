---
ns_viewer:
  theorem_id: clay-cm-counterexample-exclusion-direct-bridge-attempt-20260609
  status: failed-reduced-to-no-genuine-exit
  proof_role: public_clay_finality_bridge_attempt
  logical_landing_node: no_genuine_exit_from_smooth_data
  edge_effect: "Tests the direct bridge from classified CM Part/Field exit to Clay counterexample exclusion. The bridge is not proved: a finite Clay counterexample is not required to remain a class member at the terminal time, so face-derived Exit(Q) is classification unless a no-genuine-exit theorem rules out the first Part/Field from original smooth data."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-pdf-cmi-bridge-arbitration-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-pdf-cmi-proof-core-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-finite-obstruction-inventory-finality-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-no-proof-bearing-first-Part/Field-failure-target-audit-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-public-finality-first-exit-pack-wall-reentry-20260609.md
  downstream_consequence: "The direct CMI bridge is unavailable from installed inputs. The active theorem target remains NoGenuineExitFromSmoothData.A, first at OriginalSmoothDataPackSurvival.A / ScaleCriticalTreeCarleson.A; both PDFs remain nonfinal."
---

# MPP ClayCMCounterexampleExclusion.A Direct Bridge Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The arbitration pass left two honest routes. This pass tests the shorter route:

```text
ClayCMCounterexampleExclusion.A:
finite Clay negation
=> same-solution terminal record Q,
and classified face-derived Exit(Q)
=> no valid finite Clay counterexample.
```

The desired bridge must prove more than terminal obstruction classification. It
must show that the first Part/Field failure invalidates the alleged
finite Clay counterexample itself.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: direct Clay counterexample exclusion after CM Part/Field classification.

Logical skeleton: contradiction from finite Clay negation plus classified
terminal face exit.

Mechanism tested: use the official finite-breakdown object, the same-solution
terminal record, the Part/Field exhaustion, and the no-third-branch law to
derive a contradiction without proving a separate no-genuine-exit theorem.

## What The Installed Classification Proves

The installed chain gives:

```text
finite maximal classical breakdown
=> same original datum and same original branch
=> continuation-readout failure at finite terminal time
=> CM-test-admissible terminal record Q
=> first failed Part/Field face
=> Exit(Q):=not Member(Q).
```

This is a real theorem-grade classification. It closes the outside-CM loophole:
the terminal object is not an untyped fourth thing.

## Direct Contradiction Test

The official finite Clay negation is a smooth solution on a finite preterminal
interval that cannot be continued classically past the terminal time. It is not
required to supply a terminal object that already remains in the continuation
class.

So the implication

```text
first Part/Field failure => Exit(Q)
```

does not contradict the negation by itself. It describes how the alleged
finite breakdown appears at the terminal edge.

The pass branch is contradiction-bearing:

```text
Pack_Q + Part_{N,Q} + Field_{N,r,Q}
=> Member(Q)
=> H^s readout
=> same-solution continuation.
```

The fail branch is classification-bearing:

```text
not Pack_Q
or Pack_Q and not Part_{N,Q}
or Pack_Q and Part_{N,Q} and forall r>0 not Field_{N,r,Q}
=> Exit(Q).
```

The fail branch becomes Clay exclusion only after an additional theorem says
that original smooth data cannot realize that first terminal face.

## Circular Shortcut Rejected

One could try to define a valid finite Clay counterexample as an object that
must retain Part and Field at the terminal edge. That would make the
bridge automatic, but it would bake the desired continuation conclusion into
the definition of counterexample.

The current terminal-record entry surfaces do not do that. They supply the same
datum, same branch, finite terminal time, preterminal smooth approach, and
continuation-readout failure. They do not supply `Member(Q)` or terminal Pack,
Part, and Field as counterexample-validity assumptions.

## No-Third-Branch And Inventory Test

The no-third-branch law is useful:

```text
Q cannot be both an in-class nonsmooth terminal member and a face-derived exit.
```

The finite-obstruction inventory is useful:

```text
every promoted terminal obstruction row must enter the CM test and name a first
Part/Field face.
```

Together they block support-only rows and hidden untyped terminal objects. They
do not prove that the proof-bearing same-solution terminal record cannot be the
first Part/Field failure.

## Result

`ClayCMCounterexampleExclusion.A` is not proved by the installed classification,
inventory, and no-third-branch inputs.

The direct bridge route reduces back to:

```text
NoGenuineExitFromSmoothData.A:
original smooth data cannot produce a genuine finite terminal CM exit.
```

The first concrete executable child remains:

```text
OriginalSmoothDataPackSurvival.A / ScaleCriticalTreeCarleson.A.
```

Equivalent useful routes are:

```text
RetainedPositiveScaleNativeReserveBirthCharge.A,
material-collar or fixed-coordinate terminal Pack survival,
a direct theorem excluding the produced source atom as first Pack exit,
or a genuinely new first-face theorem feeding NoGenuineExitFromSmoothData.A.
```

Until one of those lands and both rendered PDFs pass fresh final rereads,
`pdfs_final` remains false.

## New Live Criticism

`NS-LIVE-20260609-180`: the direct bridge from classified CM Part/Field exit to public
Clay counterexample exclusion is not proved. A finite Clay counterexample is not
required to remain a class member at the terminal time, so a face-derived
`Exit(Q):=not Member(Q)` can be exactly the alleged terminal breakdown unless a
separate theorem rules out genuine first Pack/that Part/Field failure from original
smooth data. The active loop must keep working on
`NoGenuineExitFromSmoothData.A`, first through
`OriginalSmoothDataPackSurvival.A / ScaleCriticalTreeCarleson.A`, or install an
equivalent noncircular Clay-closing bridge before the CMI final gate can close.
