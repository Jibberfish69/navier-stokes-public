# MPP RetainedCarrierCompactnessInputs Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt; conjunction not proved, split to first
retained-carrier tail input.

## Target

This pass attacks:

```text
RetainedCarrierCompactnessInputs.A.
```

The target asks for all compactness and ledger-payment inputs needed before
`Part_{N,Q}` can be concluded:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
=> scale-barrier tail on Q's retained charts
   + pressure projection stability on Q
   + same-ledger terminal source/commutator payment through depth N.
```

## Dependency order

The three named inputs are not parallel at the proof level.

### 1. Stress compactness / tail input

The compactness package identifies the first needed input:

```text
high-frequency tail smallness on the same scheme and charts.
```

Without it, the nonlinear stress can retain a defect:

```text
u_j \otimes u_j ⇀ u_* \otimes u_* + R_*.
```

### 2. Pressure projection stability

Pressure is obtained from the nonlinear stress by a nonlocal projection, plus
cutoff and moving-chart bookkeeping.  Stability of the pressure package cannot
be proved before the stress defect is controlled.  If `R_*` survives, the
pressure can inherit a terminal defect.

### 3. Same-ledger source payment

The source and commutator ledgers are tested after the stress and pressure
objects have been placed on the same terminal carrier.  Unpaid source residue is
already known to land at Field-window evidence outside CM or, under retained participation, `not Part_{N,Q}`.
It is not paid away by naming the ledger.

## Direct attempt

Assume `Pack_Q` for the canonical same-solution terminal packet.  Try to derive
all three inputs directly.

`Pack_Q` gives same-fluid carrier survival and readout-compatible terminal
charts.  It does not give a quantitative statement of the form:

```text
sup_j int_{I_Q} ||P_{>=M}^{Q} u_j||^2_{L^2(B_Q)} dt -> 0
as M -> infinity,
```

where the projection, chart, time interval, and packet are all the retained
terminal objects used by `Q`.

The energy inequality gives only integrated `L^2_t H^1_x` control before
`T_*`.  A terminal burst can keep finite integrated energy while concentrating
high-frequency activity on shrinking terminal time slabs.  That is exactly why
earlier source-time and scale-normalized charge-time targets existed.  Raw
finite energy is not a terminal scale-normalized tail modulus.

Thus the first component of `RetainedCarrierCompactnessInputs.A` is not proved.
The remaining two components cannot be proved independently from the present
inputs:

```text
stress tail not controlled
=> pressure projection can inherit a defect
=> same-ledger source/commutator payment can fail at Part.
```

## Result

`RetainedCarrierCompactnessInputs.A` is not proved as a conjunction.

The target must split in dependency order.  The next non-alias target is:

```text
RetainedCarrierTailInput.A:

ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
=> scale-normalized high-frequency tail smallness on Q's retained terminal
   charts sufficient for local strong L^2 compactness of the stress.
```

This target must not be replaced by raw finite energy, raw `nu_SCF` finiteness,
endpoint CKN classification, or retained Field/tower-amplitude assumptions.  It
has to be a terminal retained-carrier tail theorem before Part is assumed.

If `RetainedCarrierTailInput.A` fails, the failure should be typed as a concrete
stress/tail Part obstruction, not routed back into the consumed source-residence
or raw CKN carrier aliases.

## New live criticism

`NS-LIVE-20260609-108`: `RetainedCarrierCompactnessInputs.A` is not proved as a
single conjunction.  Pressure projection stability and same-ledger terminal
source/commutator payment depend on first controlling the retained-carrier
stress/tail defect.  The active loop must attack `RetainedCarrierTailInput.A`
as a scale-normalized high-frequency tail theorem on `Q`'s retained terminal
charts, without using raw finite energy, raw finite CKN charge, endpoint CKN
classification, or retained Field/tower-amplitude assumptions, and keep
`pdfs_final: false`.
