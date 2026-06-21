# MPP PartFailureTargetFidelityBridge Reentry

Date: 2026-06-09

Status: active-completion proof attempt; target-fidelity-only bridge not proved.

## Target

This pass attacks the active loop target left by
`mpp-selected-source-ckn-split-alias-part-row-pivot-20260609.md`:

```text
PartFailureTargetFidelityBridge.A.
```

The proposed bridge is:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ not Part_{N,Q} caused by a native terminal pressure/source tower defect
=> W_* is not a valid finite Clay breakdown witness.
```

The CM primitive remains:

```text
Exit(Q):=not Member(Q)
```

through the Part/Field witness tree.  The question here is narrower:
can target fidelity alone rule out a retained-Pack Part failure as a Clay
breakdown witness?

## Checked inputs

`mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md`
already tested the target-fidelity shortcut:

```text
Exit(Q) disqualifies ClaySmoothSolution(u,p),
but does not by itself disqualify ClayAdmissibleFiniteBreakdown(W_*).
```

The reason is definition-level.  A Clay breakdown witness is used to deny
global smooth continuation.  It is not required to remain a terminal
`Member(Q)` object at the very window where breakdown is being tested.

`mpp-clay-part-face-exclusion-working-pass-20260607.md` tested the retained
Pack Part face.  Its failed implication was:

```text
same original preterminal Navier-Stokes equation
+ Pack_Q
=> terminal pressure-viscosity/source participation Part_{N,Q}.
```

The note records that weak terminal passage can leave a native defect:

```text
u_j \otimes u_j ⇀ u_* \otimes u_* + R_*.
```

The pressure can inherit that defect through the Leray projection, and the
differentiated tower can fail to remain paid on the same terminal ledger.

`mpp-retained-pack-part-survival-proof-method-audit-20260607.md` classifies the
same point:

```text
same preterminal ancestry is weaker than terminal participation.
```

The useful smaller targets isolated there are:

```text
RetainedCarrierStressStrongCompactness.A
RetainedCarrierPressureProjectionStability.A
SameLedgerTerminalSourcePayment.A
PartFailureTargetFidelityBridge.A
```

`mpp-terminal-source-residue-cm-exit-20260522.md` and
`mpp-retained-pressure-package-cm-face-placement-20260605.md` give the lawful CM
placement.  A terminal source residue or pressure package problem is not a
fourth face.  Under retained Field-window evidence, it lands at `not Part_{N,Q}` unless the
same pressure-viscosity/source tower participates on the same carrier.

## Proof attempt

Assume a finite Clay breakdown from smooth original data.  Let `(u,p)` be the
same maximal classical Navier--Stokes solution on `[0,T_*)`, and let `Q` be the
canonical same-solution terminal packet.

Assume the carrier survives:

```text
Pack_Q.
```

Assume the first surviving defect is a Part-side defect:

```text
not Part_{N,Q}.
```

The target-fidelity shortcut would have to say that this Part failure is not a
valid Clay breakdown witness because the object no longer satisfies the same
problem.

That step is not justified.  The defect being tested here is native: it is a
terminal pressure/source/tower defect produced by the same maximal preterminal
Navier--Stokes evolution.  It is not a surrogate equation, foreign forcing, a
different datum, or a generated reader artifact.  It preserves the exact
fidelity that `ClayAdmissibleFiniteBreakdown.A` requires for entry into the CM
test.

Thus the target-fidelity bridge cannot prove:

```text
Pack_Q + native terminal pressure/source Part failure
=> invalid Clay breakdown witness.
```

It proves only the CM classification already installed:

```text
Pack_Q + native terminal pressure/source Part failure
=> not Part_{N,Q}
=> Exit(Q):=not Member(Q).
```

That classification is necessary, but it is not the missing public Clay
exclusion.  A referee can still ask why the native Part failure is not exactly
the finite-time breakdown of the original solution.

## Result

`PartFailureTargetFidelityBridge.A` is not proved by target fidelity alone.

The active loop must stop using CM Part/Field classification as public Clay finality.
The retained Part row now requires a concrete no-defect theorem:

```text
RetainedCarrierStressStrongCompactness.A
/
RetainedCarrierPressureProjectionStability.A
/
SameLedgerTerminalSourcePayment.A.
```

The smallest next mathematical target is:

```text
RetainedCarrierNoDefectParticipation.A:

ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
+ retained carrier tightness strong enough for stress and pressure passage
=> Part_{N,Q}.
```

This target is smaller than the whole MPP because it attacks only the retained
Pack Part face.  It does not try to prove global smoothness directly, and it
does not delete the CM fail branch by definition.

## New live criticism

`NS-LIVE-20260609-106`: `PartFailureTargetFidelityBridge.A` is not proved.
Target fidelity alone does not disqualify a retained-Pack native terminal
pressure/source Part failure as a finite Clay breakdown witness, because that
defect can come from the same original preterminal Navier-Stokes evolution.  The
active loop must attack `RetainedCarrierStressStrongCompactness.A` /
`RetainedCarrierPressureProjectionStability.A` /
`SameLedgerTerminalSourcePayment.A`, or the combined
`RetainedCarrierNoDefectParticipation.A`, while keeping `pdfs_final: false`.
