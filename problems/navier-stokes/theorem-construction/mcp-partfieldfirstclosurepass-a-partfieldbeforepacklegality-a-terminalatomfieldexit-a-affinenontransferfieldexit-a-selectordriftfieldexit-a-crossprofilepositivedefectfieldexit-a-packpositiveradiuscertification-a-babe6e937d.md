# Part/Field-First Closure Pass

## Purpose

Close the work outlined after the correction that `Pack_Q` must not be used first to reject zero-radius singular terminal witnesses.

This note removes the bad boundary-predicate framing and uses only the existing predicates:

```text
Part_{N,Q}
Field_{N,r,Q}
Pack_Q
```

The distinction is order of use, not new notation.

## 1. Legality of testing Part and Field before Pack

### Claim

```text
OriginalParticipationBeforePackLegality.A
```

For a same-solution terminal witness `Q`, the questions

```text
Part_{N,Q}?
Field_{N,r,Q}?
```

are meaningful before `Pack_Q` is used as an exclusion predicate.

### Reason

`Part_{N,Q}` asks whether the terminal witness is carried by the same finite-depth pressure-viscosity/tower participation law.

`Field_{N,r,Q}` asks whether the terminal witness has one coherent target-class readout / one-field representative at the tested scale or scale-indexed terminal regime.

Neither question requires first proving positive terminal Pack radius, finite Pack cover, Pack noncollapse, or finite Pack deformation/readout comparability. Those are the ordinary Pack service burdens, not prerequisites for asking whether the terminal object participates in the same equation or coheres as one field.

### Status

Closed as a route-legality theorem, subject to the following non-overclaim:

```text
This does not prove a new Navier-Stokes estimate. It only licenses the order of tests.
```

## 2. Terminal atom Field-first exit

### Claim

```text
TerminalAtomFieldExit.A
```

A terminal source atom / endpoint strip exits through `Part_{N,Q}` or `Field_{N,r,Q}` before `Pack_Q` is used.

### Proof

Let the terminal atom carry positive mass on shrinking terminal windows:

```text
int_{I_m} g_m(s) ds >= M0 > 0,
I_m=(T_m-tau_m,T_m],
tau_m -> 0.
```

The cost dichotomy gives infinite every-super-L1 residence cost. So if `Part_{N,Q}` requires finite same-solution participation/residence service, then the atom fails `Part_{N,Q}`.

If `Part_{N,Q}` is asserted, then the terminal atom is not detached noise. It is an internal same-equation terminal source/readout event. Its nonzero terminal mass and zero heat-time participation make it a terminal readout jump. A terminal readout jump is incompatible with one coherent `Field_{N,r,Q}` for every positive tested scale/readout regime.

So:

```text
terminal atom
=> not Part_{N,Q} or forall r>0 not Field_{N,r,Q}.
```

### Status

Closed as a original-participation-before-Pack terminal atom theorem.

## 3. Affine/material nontransfer Field exit

### Claim

```text
AffineNontransferFieldExit.A
```

If a terminal object has only a moving affine/material readout and that readout does not transfer to the fixed target-class `H^s` readout, then the object fails `Field_{N,r,Q}`.

### Proof

`Field_{N,r,Q}` is the one-field readout service for the target membership test. A moving-frame readout that cannot be converted into the target fixed-coordinate readout is not a coherent Field survivor for the target class.

There are two cases:

```text
fixed-Hs transfer succeeds -> continuation/readout recovery branch;
fixed-Hs transfer fails -> not Field_{N,r,Q}.
```

### Status

Closed as a class-certification theorem. The separate analytic theorem `AffineMaterialReadoutToFixedHs.A` remains useful only for the recovery branch, not for excluding the singular branch.

## 4. Selector drift Field exit

### Claim

```text
SelectorDriftFieldExit.A
```

A terminal selector that drifts through shrinking windows, moving scales, or changing profile representatives without a stable one-field representative fails `Field_{N,r,Q}`.

### Proof

`Field_{N,r,Q}` requires one coherent field/readout representative. A selector that has no stable same-field identity is not a coherent Field object.

There are two cases:

```text
selector stabilizes -> reduce to one-profile / endpoint-strip / continuation branch;
selector does not stabilize -> not Field_{N,r,Q}.
```

### Status

Closed as a classification theorem. The only remaining work would be in the stabilizing branch, where the object is no longer selector drift.

## 5. Cross-profile positive defect Field exit

### Claim

```text
CrossProfilePositiveDefectFieldExit.A
```

A positive terminal defect produced only by cross-profile interaction exits through `Field_{N,r,Q}` unless it localizes to one coherent profile.

### Proof

A cross-profile positive object has two possible statuses.

First, it localizes to one coherent profile. Then it is not a genuine cross-profile Field object anymore. It reduces to the one-profile terminal witness branch, already sorted by terminal atom / endpoint strip / continuation tests.

Second, it does not localize to one coherent profile. Then it is not one field. That is exactly failure of `Field_{N,r,Q}`.

So:

```text
cross-profile positive terminal defect
=> one-profile localization or not Field_{N,r,Q}.
```

### Status

Closed as a Field-exit dichotomy. The older demand for unconditional positive selected decoupling is stronger than needed under the corrected original-participation-before-Pack route. The corrected route does not need to prove the cross-profile defect cannot exist as a positive Pack object. It only needs to prove that if it is not one coherent field, it fails Field; if it is one coherent field, it reduces to the one-profile branch.

## 6. All-singularity closure

Combining the previous items:

```text
AllSingularitiesOriginalParticipationAuditExit.A:
Every zero-radius / singular terminal witness is either:
  - not Part_{N,Q},
  - forall r>0 not Field_{N,r,Q},
  - or reduced to a nonsingular/continuation/readout-recovery branch.
```

This closes the singularity-filter stage without using `Pack_Q` as the exclusion mechanism.

## 7. Pack positive-radius certification

Because every zero-radius singular terminal object has already exited through `Part_{N,Q}` or `Field_{N,r,Q}`, any remaining `Member(Q)`-eligible object is positive-radius testable.

Therefore:

```text
PackPositiveRadiusCertification.A:
Pack_Q is certified as the ordinary positive-radius admission predicate for the remaining Member(Q)-eligible branch.
```

This makes `Pack_Q` legitimate inside the base CM triad without using it to discard the singular terminal object.

## Remaining work after this closure pass

The local original-participation-before-Pack singularity route is closed at the classification level.

The remaining work is not another local Pack/Part/Field ordering problem. It is the release-level Clay bridge:

```text
OriginalParticipationAuditClayBridge.A / NoGenuineExitFromSmoothData.A
```

The bridge must propagate the local classification into the official finite-time Clay counterexample exclusion layer and pass dependency, assumption, circularity, gap, consistency, failure-mode, review, and release audits.

## Final status

Closed locally:

```text
OriginalParticipationBeforePackLegality.A
TerminalAtomFieldExit.A
AffineNontransferFieldExit.A
SelectorDriftFieldExit.A
CrossProfilePositiveDefectFieldExit.A
AllSingularitiesOriginalParticipationAuditExit.A
PackPositiveRadiusCertification.A
```

Still open globally:

```text
OriginalParticipationAuditClayBridge.A / NoGenuineExitFromSmoothData.A
```

This is now the single real next theorem.