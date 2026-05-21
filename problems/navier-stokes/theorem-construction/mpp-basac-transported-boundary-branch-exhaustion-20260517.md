# MPP B_ASAC Transported-Boundary Branch Exhaustion

Date: 2026-05-17

## Status

Failed target-local closure from installed inputs. This note records the transported-boundary branch after the outside-family search.

## Target

Use transported-boundary tightness to prove the no-incoming component of

```math
TransportedCylinderNoFlux_{B_{ASAC}}.A
```

and then combine it with terminal time-face anti-atom control to close

```math
ZenoResidueLiouville_{B_{ASAC}}.A.
```

## TransportedBoundaryTightness.A

The spatial target is

```math
\lim_{R\to\infty}\limsup_{S\to\infty}
Flux_{\partial_{par}\mathcal C_R^{tr}(-S,0)}(u,p)=0.
```

Fixed-cylinder compactness gives local control. The exhaustion requires tail control in transported radius and ancient time. Terminal blowup scaling turns original finite global energy into a tangent quantity with factor `r_m^{-1}`, so global ancient exhaustion is absent.

Selected no-parent ancestry controls the selected source graph. Boundary flux includes kinetic energy, pressure work, and nonselected packet flow. Thus ancestry control is narrower than full transported-boundary tightness.

## Strain-adapted boundary decomposition

Frozen-strain transported geometry splits boundary flux into unstable outgoing, stable incoming, and mixed/pressure pieces. The unstable sector has favorable sign intuition.

The stable sector is the obstruction. Trace-free strain includes contracting directions, and ancient far-field energy can enter through stable transported tubes. Current ledgers give no tail estimate for that incoming channel.

Trace-free cancellation balances volume globally while selected positive flux and local-energy estimates require sectorwise control. Cancellation across sectors is unavailable after positive flux selection.

## Pressure-tail Hardy cancellation

Pressure work on transported shells has the form

```math
\int_{\partial \mathcal C_R^{tr}} p\,u\cdot n_{tr}.
```

Classical radial Hardy cancellation relies on spherical geometry. Transported shells are anisotropic; normals, measures, and weights carry strain geometry errors. Current route surfaces contain no shell-summation theorem for those errors.

Subtracting pressure means removes scalar averages, while pressure oscillation remains coupled to velocity flux. Local Calderon-Zygmund estimates control fixed cylinders and give no transported-tail decay under the terminal blowup.

## Terminal time-face factor

Even a full spatial transported-boundary theorem would leave the compact terminal layer

```math
\rho(y)m1_{(-1/m,0]}(s)dy ds
```

inside every large transported cylinder with zero lateral flux and positive terminal time-face residue.

Thus the transported route always requires the separate theorem

```math
BASACTimeFaceAntiAtom.A.
```

## Verdict

The transported-boundary branch reduces to three new theorem requirements:

```math
StableChannelTailControl.A,
\qquad
PressureTailHardyTransportedShells.A,
\qquad
BASACTimeFaceAntiAtom.A.
```

None is installed by the current `B_ASAC` equality-class production. This branch adds a precise spatial-flux decomposition and returns to the terminal anti-atom obstruction for the native source measure.