# MPP PressureCarrierTrace.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. Carrier trace is a useful support theorem, while it does not provide terminal time-face spread.

## Target

`PressureCarrierTrace.A` asks for pressure-side residue to remain tied to the selected native source-current carrier on the `B_ASAC^closed` branch.

A strong form would be

```math
\mu_*^{press}\ll \mu_*^{src}
```

on licensed terminal source tests, or a finite-packet version saying that every pressure quadratic-gradient defect contributing to the terminal branch traces back to the same selected source-current packet family.

## Attempt 1: elliptic pressure residue follows native source support

Pressure is recovered by an elliptic operator from quadratic gradient data. The associated kernel is spatially nonlocal at each time. This can move pressure residue across spatial packet boundaries.

Thus pressure residue can be coupled to the source-wall branch without being supported on the exact selected native source-current carrier.

A carrier trace theorem needs additional localization/tether estimates beyond the pressure equation itself.

## Attempt 2: same-fluid carrier enforces pressure trace

Same-fluidity licenses the source carrier and parent-child ancestry. It does not make the elliptic pressure kernel local to that carrier. The pressure term sees the whole same-time gradient field, including lower/near-band interactions outside the selected positive source packet.

Therefore same-fluidity gives carrier admissibility, while pressure carrier trace remains a separate theorem.

## Attempt 3: carrier trace kills the terminal atom

Even the strong measure relation

```math
\mu_*^{press}\ll\mu_*^{src}
```

allows both measures to charge

```math
\rho(y)dy\otimes\delta_{s=0}.
```

Carrier trace alone is compatible with the terminal atom. It binds pressure to the source carrier, and it supplies no temporal epsilon-modulus.

## Attempt 4: signed pressure identity survives positive selection

Pressure identities are signed. The terminal obstruction uses localization, one-sided terminal weights, and positive-part selection. Signed carrier cancellation can disappear at that stage. A trace theorem surviving this selection becomes a finite-packet Leray/source tether theorem, which remains a separate subtarget.

## Verdict

`PressureCarrierTrace.A` is not installed from current inputs.

A proved `PressureCarrierTrace.A` supports `PressureSourceTimeFaceSpread.A` only
as the carrier-tether component. It does not provide the time-face spread
component.

The next alternatives remain:

```text
EllipticTimeSmearing.A
FinitePacketLeraySourceAnchoring.A
```
