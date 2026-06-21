# MPP CM Shared-Participation Residence Bound

Date: 2026-05-18

## Status

Conditional theorem. This note combines the temporal-thickness argument with the density-flux / shared-participation argument.

Follow-up audit: `mpp-shared-participation-flux-balance-direct-attempt-20260518.md`
and the sharper B_ASAC flux-balance attempt keep this theorem conditional. The
exact CM witness gives slice finiteness of the participation carrier; the
terminal anti-atom estimate additionally needs a uniform terminal CM envelope, a
transported participation-density balance, and signed saturation before terminal
positive selection.

## Core principle

If the terminal object remains inside `CM_{N,r,Q}`, then its participation density and flux are governed by the same incompressible field, the same pressure-viscosity carrier, and the same Part/Field envelope.

Therefore a terminal source atom has a residence bound. It can concentrate only by forcing one of three exits:

```text
incoming participation flux;
responsive density change;
CM envelope blowout.
```

## Proposed theorem

```math
\boxed{CMSharedParticipationResidenceBound.A}
```

Assume a retained `B_ASAC` terminal window with `CM_{N,r,Q}` membership, shared participation, no incoming participation flux, and no responsive density degree of freedom. Then for every terminal strip of length `\varepsilon`,

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\,\varepsilon+o_m(1),
```

where `M_{CM}(N,r,Q)<\infty` is the participation-density/readout envelope supplied by membership.

Consequently,

```math
\mu_*^{src}(Q_R\times\{0\})=0.
```

## Proof skeleton

Let `\rho_m^{part}` denote the shared participation density/current whose positive trace is the native source residue. The missing bridge is

```math
SourceMeasureParticipationDensityBridge.A:
\mu_m^{src}\text{ is the positive terminal trace of }\rho_m^{part}\text{ on retained packets.}
```

The shared participation law gives one incompressible flow map and one pressure-viscosity tower carrier. On a retained CM window, the class envelope gives a finite bound

```math
\rho_m^{part}\le M_{CM}(N,r,Q)
```

in the route-relative participation/readout sense.

For a transported packet region `Q_R`, the participation balance gives

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}(\partial Q_R\times[-\varepsilon,0])
+o_m(1).
```

The no-incoming participation-flux clause removes `J_in`. Hence

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le M_{CM}(N,r,Q)\varepsilon+o_m(1).
```

Letting `m\to\infty` and then `\varepsilon\downarrow0` gives the terminal anti-atom conclusion.

## Exit form

Equivalently, if

```math
\mu_*^{src}(Q_R\times\{0\})=c_0>0,
```

then for arbitrarily small `\varepsilon`,

```math
c_0\le M_{CM}(N,r,Q)\varepsilon+o(1).
```

This forces at least one failure:

```math
M_{CM}(N,r,Q)=\infty,
\qquad
J_{in}>0,
\qquad
\text{or responsive density change outside B_ASAC membership.}
```

Thus the terminal atom becomes a CM membership exit rather than a free source residue.

## Relation to earlier gates

This theorem explains why temporal thickness and shared participation are the same obstruction viewed from two sides.

The temporal formulation asks for a strip modulus. The participation formulation supplies the modulus from finite CM envelope plus no incoming flux.

## Remaining bridge

`NativeSourceTraceDefectAtom.A` already identifies the terminal trace defect as the atom itself. The next exact theorem is the bridge from that trace defect to shared participation density/current:

```math
\boxed{SourceMeasureParticipationDensityBridge.A.}
```

Once that bridge is installed together with the transported balance, a uniform
terminal CM envelope, no-incoming participation flux, and signed pre-selection
saturation, the terminal atom forces either anti-atom or CM exit. Without those
additions, the atom can remain as a source-current production-rate
concentration fed by an internal signed donor.
