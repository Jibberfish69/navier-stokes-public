# MPP TransportedBoundaryTightness.A reduction attempt

Date: 2026-05-17

Status: failed as an installed production theorem. The attempt isolates the spatial-flux half of `TransportedCylinderNoFlux.A`.

## Target

The conditional discharge bridge requires

```math
TransportedCylinderNoFlux.A.
```

The spatial part can be isolated as

```math
\boxed{TransportedBoundaryTightness.A}
```

with the target

```math
\lim_{R\to\infty}\limsup_{S\to\infty}
Flux_{\partial_{par}\mathcal C_R^{tr}(-S,0)}(u,p)=0.
```

This must control kinetic, pressure, and nonselected packet flux through same-fluid transported boundaries.

## Attempt 1: fixed-cylinder compactness

The `B_ASAC` tangent extraction gives local suitable compactness on every fixed transported cylinder. This controls compact subsets after the extraction.

Boundary tightness asks for an exhaustion in transported radius and ancient backward time. Compact convergence on fixed cylinders supplies no tail control as `R\to\infty` or `S\to\infty`.

## Attempt 2: original global energy

Before blowup, global energy is finite. Under terminal parabolic rescaling,

```math
\|u^{(m)}(s)\|_{L^2_y}^2=r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2.
```

The factor `r_m^{-1}` prevents a finite global ancient-energy bound in the tangent variables. Thus original energy does not generate the required exhaustion.

## Attempt 3: zero ASAC defect

Zero ASAC defect removes the retained active-alignment leakage channel. Transported boundary flux is a full field/pressure tail quantity. ASAC equality has no decay weight on transported shells and no control of nonselected packet influx.

## Attempt 4: selected no-parent ancestry

Selected no-parent ancestry controls the selected source-parent graph. Transported boundary flux includes kinetic energy, pressure work, and unselected packet flow through the boundary.

Therefore selected ancestry control is too narrow for full transported-boundary tightness.

## Attempt 5: pressure tail estimates

Local Calderon-Zygmund pressure estimates control pressure on fixed balls from local data plus tails. A transported no-incoming theorem requires those tails to vanish on an exhaustion. Current inputs supply no tail decay or cancellation on transported shells.

## Verdict

`TransportedBoundaryTightness.A` remains uninstalled.

The spatial-flux half of `TransportedCylinderNoFlux.A` needs one of the following new inputs:

```text
strain-adapted stable/unstable boundary decomposition;
pressure-tail Hardy cancellation on transported shells;
global ancient spatial exhaustion for B_ASAC;
full nonselected flux control, beyond selected ancestry.
```

Even after spatial tightness, `TransportedCylinderNoFlux.A` still requires terminal time-face anti-atom control for the native source measure.## Continuation audit: ChatGPT 2026-05-17

This pass rechecked `TransportedBoundaryTightness.A` after the all-reduced-routes certificate.

The reduction remains sharp. Transported boundary tightness is the spatial-flux
half of `TransportedCylinderNoFlux.A`. Its required content is control of
kinetic, pressure, and nonselected packet flux through transported parabolic
boundaries as radius and backward time exhaust.

Current branch data give fixed-cylinder local compactness, finite original energy before blowup, zero ASAC defect, selected no-parent ancestry, and local pressure decompositions. These inputs supply no transported-shell exhaustion: under \(u_m(y,s)=r_m u(x_m+r_my,t_m+r_m^2s)\), the rescaled global energy is \(r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2\); ASAC controls a paid angular defect rather than full field tails, selected ancestry misses nonselected flux, and pressure estimates need tail decay on transported shells.

Conclusion: `TransportedBoundaryTightness.A` remains open. It reduces to one of the surfaced adjacent mechanisms:

```math
StrainAdaptedTransportedBoundaryDecomposition.A,
\quad
PressureTailHardyTransportedShells.A,
\quad
BASACGlobalAncientSpatialExhaustion.A,
\quad
NonselectedFluxControl.A.
```

Spatial tightness alone still leaves terminal time-face anti-atom control for
the native source measure.
