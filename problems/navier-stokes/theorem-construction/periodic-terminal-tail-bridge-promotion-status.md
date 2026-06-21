# Periodic Terminal-Tail Bridge Promotion Status

Status: theorem-construction status note. This records the mathematical state of the periodic terminal-tail bridge inside `/problems/navier-stokes/theorem-construction/`.

## Theorem-program bridge

The current theorem-facing bridge is

```text
TGC.A + AACT.Global.noJump + AVG.END.A + READ.END => PCTP.hard
```

The bridge is typed as follows.

```text
TGC.A
=> terminal averaged-good cover or Jump_avg
```

```text
AACT.Global.noJump
=> DTC.A_avg
=> LCI.A_avg
```

```text
AVG.END.A
=> End_NS_avg
```

```text
READ.END
=> End_NS
```

```text
End_NS + CFI.A
=> PCTP.hard / TTU.A
```

## M_Q witness status

The live local membership target remains

```math
M_Q(u,p).
```

The accepted pointwise witness vocabulary is exactly

```text
Pack / Part / Field
```

with

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

## Averaged-to-pointwise readout ledger

Averaged objects enter the pointwise endpoint and class-membership layer through explicit readout arrows only:

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

`READ.COVER`, `Field.Read`, and `DTC.Read` enter after `End_NS_avg`.

## Remaining mathematical blockers

The direct Pack route has a continuum-label obstruction:

```text
EndpointSelector.TTU / UniformStrainTail.TTU
```

The exact same-depth pressure branch has a weighted-shell obstruction:

```text
WeightedShell.Absorb
```

The whole-space and forced-periodic extensions remain separate branch packets:

```text
Euclidean export packet
Forced periodic packet
```

The Lean skeleton has been extracted at proposition level and remains a formalization artifact lane.

## Boundary

This note is a theorem-construction status note. Proof-matrix, review, release, reproducibility, and submission decisions remain governed by the project surfaces and their regeneration machinery.