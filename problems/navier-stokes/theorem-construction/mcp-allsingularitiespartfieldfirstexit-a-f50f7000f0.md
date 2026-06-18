# AllSingularitiesPartFieldFirstExit.A

## Target

Prove the corrected global singularity theorem as a route-level classification over the audited singular families:

```text
AllSingularitiesPartFieldFirstExit.A
```

Statement:

```text
Every zero-radius / singular terminal witness extracted from the Navier-Stokes breakdown candidate exits through Part or Field before Pack_Q is used as an exclusion test.
```

This theorem is not allowed to say:

```text
singular object has no positive radius, therefore not Pack_Q, therefore class exit.
```

It must classify each singular object by participation failure or one-field/readout failure first.

## Service tests used

`Part_{N,Q}` means finite same-solution participation service: the object is dynamically carried by the same pressure-viscosity/tower law with a finite terminal participation/residence/donor-readout budget.

`Field_{N,r,Q}` means one-field coherence service: the object admits a coherent fixed-class readout or scale-indexed one-field representative with no terminal jump/source residue after legal losses.

These are asked before ordinary Pack_Q. They use same-solution records, not positive-radius Pack admissibility.

Circularity guard:

```text
`Part_{N,Q}` must not require positive terminal Pack carrier scale.
`Field_{N,r,Q}` must not require positive terminal Pack carrier scale.
Neither test may use finite Pack cover, Pack deformation/readout comparability,
Pack noncollapse, or ordinary Pack-dependent Part/Field structure.
```

The scale language in `Field_{N,r,Q}` refers to same-solution terminal readout scales or scale-indexed limiting regimes from the same-solution tower. It does not refer to ordinary `Pack_Q` positive-radius admission.

## Case split

### 1. Terminal source atom / endpoint strip

Handled by:

```text
TerminalAtomPartFieldFirstExit.A
```

If finite participation service is absent, `Part_{N,Q}` fails.

If finite participation service is asserted, the atom is an internal terminal source/readout event. Its zero heat-time participation and nonzero terminal mass create a terminal one-field readout jump. Thus `Field_{N,r,Q}` fails.

So:

```text
terminal atom => fails `Part_{N,Q}` or `Field_{N,r,Q}`.
```

### 2. Infinite-cost endpoint strip

Handled by:

```text
LimitOfClassTerminalArtifact.A
UniformServiceTopologyCertification.A
```

The strip has finite `L1` endpoint mass and infinite every-super-`L1` residence cost. It is a weak terminal measure limit, not a uniform service-topology survivor.

Therefore it fails Part if finite residence is required; if it is treated as an internal readout, it fails Field by terminal jump/source-residue behavior.

### 3. Collar deformation / affine-material readout collapse

If the object has only a moving affine/material readout and no fixed-coordinate `Hs` transfer, then it fails Field for the Clay class.

Reason: Field is the one-field readout service for the target class. A moving-frame readout that cannot be converted to the fixed public readout is not a coherent Field survivor for the target membership test.

So:

```text
affine/material nontransfer => `Field_{N,r,Q}` fails.
```

If the transfer theorem is proved, the branch is no longer a singular Field failure; it supplies readout/continuation strength.

### 4. Selector drift

If the Pack/source selector chases terminal windows, moving scales, or drifting profiles without a stable one-field representative, then it fails Field.

Reason: Field requires one coherent readout representative, not a terminally drifting selected positive part with no stable same-field identity.

So:

```text
selector drift without stable representative => `Field_{N,r,Q}` fails.
```

If the selector stabilizes, the object reduces to either one-profile behavior or the endpoint-strip case.

### 5. Cross-profile positive defect

If a positive terminal defect is produced only by cross-profile interaction and cannot be assigned to one coherent profile/field, then it fails Field.

Reason: a cross-profile positive object with no one-field localization is not a coherent one-field readout. It is a Field failure, not a fourth primitive object.

So:

```text
cross-profile positive defect without one-profile localization => `Field_{N,r,Q}` fails.
```

If it localizes to one genuine profile, the profile-local object is passed back to the terminal atom / endpoint strip / continuation cases.

### 6. Detached or surrogate packet

If the object is not carried by the same original datum and same maximal branch, it fails Part at admissibility.

So:

```text
detached/surrogate terminal packet => `Part_{N,Q}` fails.
```

### 7. Retained Part/Field jump obstruction

If the object is already retained as an internal same-solution event and creates a terminal readout jump, it fails Field directly.

This is the retained Zeno diagnostic in Part/Field-first language.

## Theorem

For every singular terminal witness in the audited families, one of the following holds before Pack_Q is used:

```text
`Part_{N,Q}` fails,
`Field_{N,r,Q}` fails,
continuation/readout recovery,
or reduction to a previous singular family already classified by Part/Field.
```

Thus:

```text
AllSingularitiesPartFieldFirstExit.A:
zero-radius / singular terminal witness
=> fails `Part_{N,Q}` or `Field_{N,r,Q}` or continuation/readout recovery.
```

## Proof scope

This theorem is a route-level classification proof. It depends on the service-topology interpretation of Part and Field:

```text
Part requires finite same-solution participation service.
Field requires one coherent target-class readout service.
```

Under those definitions, every listed singular family exits through Part/Field first.

For the non-strip families, this note does not prove new PDE estimates such as:

```text
AffineMaterialReadoutToFixedHs.A,
PackFunctionalStabilityUnderProfileDecomposition.A,
PositivePackDefectOrthogonality.A,
SelectedPackPositivePartDecoupling.A.
```

It proves the Part/Field-first landing once the concrete witness is placed in the relevant branch:

```text
nontransferable affine/material readout => Field failure,
selector drift with no stable one-field representative => Field failure,
cross-profile positive defect with no one-profile localization => Field failure,
detached/surrogate packet => Part failure.
```

If a branch supplies fixed readout, selector stability, one-profile localization, or continuation/readout recovery, it is no longer being excluded as a zero-radius singular obstruction and must be routed through that positive/readout branch.

## Consequence

All zero-radius/singular terminal obstructions are handled before Pack_Q is used. Therefore Pack_Q can later be certified as the ordinary positive-radius admission test for the remaining Member(Q)-eligible branch.
