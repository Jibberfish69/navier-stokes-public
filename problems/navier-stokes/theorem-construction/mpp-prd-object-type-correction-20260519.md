# PositiveRemainderDepletion Object-Type Correction

Date: 2026-05-19

## Status

Theorem-facing correction note.

## Correction

`PositiveRemainderDepletion.A` is a positive supplier estimate. It is not a
Part/Field witness and it has no Dead/Blown/Jump endpoint type.

Its role is to prove that the native positive remainder is paid or depleted
from original smooth data:

```math
OriginalSmoothData
\Longrightarrow
PositiveRemainderDepletion.A.
```

The object that can become a CM witness is the residue left after this supplier
burden fails:

```math
\mu_\ast^{sing}>0
\quad\text{or another retained positive source residue.}
```

That residue then needs its own routing. Loss of same-fluid carrier is
Pack-facing. Loss of the pressure-viscosity participation law is Part-facing.
Retained `Pack_Q + Part_{N,Q}` plus surviving native positive source residue is
the Field-side source-residue diagnostic.

Endpoint language enters only after the separate classification theorem:

```math
FieldSourceResidueJump.A:
\quad
\text{native Field-face source residue}
\leadsto
(Field,Jump).
```

That classification is not a proof of the supplier theorem and not an endpoint
contradiction by itself.

## Operating Rule

Do not say that `PositiveRemainderDepletion.A` is Field/Jump.

Say instead: `PositiveRemainderDepletion.A` is the positive supplier burden; a
surviving positive source residue after supplier failure can be routed to
Field/Jump only after retained Pack and Part and the named source-residue bridge.
