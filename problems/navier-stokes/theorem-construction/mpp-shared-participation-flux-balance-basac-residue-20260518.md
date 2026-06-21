# MPP SharedParticipationFluxBalance_{B_ASAC}.A

Date: 2026-05-18

## Status

Conditional theorem installed at the route-relative source-current participation level.

## Statement

Assume a retained `B_ASAC` terminal window with

```math
CM_{N,r,Q}=Pack_Q+Part_{N,Q}+Field_{N,r,Q}
```

and assume `SourceMeasureParticipationDensityBridge.A`, so that the native positive source residue is the selected terminal source-current trace of the shared participation/tower field.

Then for every transported retained packet region `Q_R` and every terminal strip `[-\varepsilon,0]`,

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}(\partial Q_R\times[-\varepsilon,0])
+Exit_m([-\varepsilon,0])
+o_m(1).
```

Here:

```text
M_CM(N,r,Q) is the finite source-current participation envelope supplied by CM;
J_in is incoming shared-participation flux through the transported boundary;
Exit_m records paid legal/projected/cutoff/boundary exits.
```

## Proof

`Pack_Q` supplies one incompressible transported control-volume geometry. Its flow map preserves volume and gives a boundary flux ledger.

`Part_{N,Q}` records the common pressure-viscosity tower carrier. `Field_{N,r,Q}` supplies the one-field finite-difference coherence needed to read the selected source-current trace through the same retained field.

By `SourceMeasureParticipationDensityBridge.A`, the native positive source residue is the terminal selected positive source-current trace of this shared participation field. Integrating that readout over `Q_R\times[-\varepsilon,0]` gives three contributions:

```text
interior participation accumulation,
incoming participation flux through the transported boundary,
paid exits.
```

The interior term is bounded by the finite CM envelope times strip length:

```math
Interior_m([-\varepsilon,0])\le M_{CM}(N,r,Q)\varepsilon.
```

The boundary term is `J_in`. The remaining terms are the already named exit ledgers. This proves the displayed estimate.

## Consequence

If the retained branch has no incoming participation flux and no paid exit, then

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le M_{CM}(N,r,Q)\varepsilon+o_m(1).
```

Therefore any positive terminal atom forces one of:

```text
incoming participation flux,
paid exit,
CM envelope blowout.
```

Thus zero-thickness terminal concentration cannot remain inside a finite `CM` envelope with no incoming flux.

## CM-relative back-propagation alias

This note supplies the route-local content of

```math
TerminalAtomBackPropagation_{B_{ASAC}}.A
```

in the `CM` participation setting. The alias should not be read as a free-standing
Liouville theorem. Its precise meaning is:

```text
a positive terminal atom must be supplied by preterminal incoming participation
flux, unless a paid exit reappears or the CM envelope blows up.
```

Indeed, if

```math
\mu_*^{src}(Q_R\times\{0\})=c_0>0,
```

then the balance gives, for small `\varepsilon`,

```math
c_0
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in}(\partial Q_R\times[-\varepsilon,0])
+Exit([-\varepsilon,0]).
```

Thus on an all-doors-closed retained branch with finite `CM`, choosing
`\varepsilon<c_0/(2M_{CM})` forces a definite incoming participation flux:

```math
J_{in}(\partial Q_R\times[-\varepsilon,0])\ge c_0/2.
```

This is the back-propagation: the terminal atom cannot be created only on the
time face while staying inside the same finite incompressible participation
packet. It must either have a preterminal incoming source-current supply or
leave the retained `CM` class.

## Boundary

This theorem concerns participation/source-current density, not physical fluid density. Incompressible Navier-Stokes keeps physical density fixed; the balance here is the route-relative readout balance for native positive source participation.
