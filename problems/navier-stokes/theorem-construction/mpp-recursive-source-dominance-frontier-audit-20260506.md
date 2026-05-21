# Recursive Source-Dominance Frontier Audit

## Status

Recursive proof attempt across every live child target under `SourceDominance.A`.

Unconditional closure fails. The proof chain reaches three hard open atoms:

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A,
```

```math
NoIncomingFlux_{global}.A+GlobalUniformAnisotropicStokesCarleman.A,
```

```math
OriginalSmoothData\Longrightarrow ZenoCancellationClassProduction.A.
```

All installed conditional arrows are recorded below.

## Complete live target list under `SourceDominance.A`

The recursive descendants are:

```math
SourceDominance.A,
```

```math
PositiveSourceDepletion.A,
```

```math
TerminalSourceCoherence.A,
```

```math
LocalStrainDepletion.A,
```

```math
EigenDecorrel.A,
\quad
SignedPositiveBalance.A,
\quad
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
AntiBeltramiCarleson.A,
```

```math
TPNI.A,
\quad
NoIncomingLicense_{src}.A,
\quad
NoIncomingFlux_{global}.A,
\quad
AnisotropicStokesCarleman.A,
\quad
GlobalUniformAnisotropicStokesCarleman.A,
```

```math
ZenoSourceResidueRigidity.A,
\quad
ZenoCompactnessExtraction.A,
\quad
ZenoCancellationClassProduction.A,
\quad
RigidClassResidueVanish.A.
```

## Branch 1: remove/deplete active source

### Conditional theorem

```math
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
\tag{R1}
```

### Proof

For every packet `P` in a bounded-overlap terminal family, the coherence packet gives

```math
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+dxdt
\le C\mathfrak C_{src}(P)+\ell(P),
```

where `\ell(P)` is legal pressure/cutoff/localization loss. If

```math
\sum_{P\in\mathcal F_N}\mathfrak C_{src}(P)=o_N(1),
```

then bounded overlap gives

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+dxdt
\le o_N(1)+\text{summable legal losses}.
```

This is `PositiveSourceDepletion.A`. The route definition of the localized positive source Carleson estimate then gives `ScaleCriticalTreeCarleson.A`, and the source-wall chain gives `SourcePulseExclusion.A`. `\square`

### Obstruction

The direct theorem

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

remains open. Pressure Poisson recovery gives elliptic control but no sign or coherence decay for the positive active source. Energy vorticity bounds supply global integrability but no terminal active-window direction modulus. Beltrami/helical coherent packets are cancellation examples, not a theorem forcing arbitrary terminal windows into anti-Beltrami defect. Same-fluid transport preserves carrier membership, while source coherence can still fail.

The subsidiary direct mechanisms also remain open:

```math
EigenDecorrel.A,
\quad
SignedPositiveBalance.A,
\quad
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
AntiBeltramiCarleson.A.
```

Each would supply a concrete coherence defect bound; current surfaces record no original-data proof of any one.

## Branch 2: TPNI / no-incoming rigidity

### Conditional theorem

```math
NoIncomingFlux_{global}.A
+AnisotropicStokesCarleman.A
\Longrightarrow
TPNI.A
\Longrightarrow
PATC.A
\Longrightarrow
ASAC.A.
\tag{R2}
```

### Proof

Assume the positive-alignment Carleson theorem `PATC.A` fails. Rescale around a terminal active packet. The limit is a nonzero frozen-strain tangent packet solving

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
\qquad
\nabla\cdot v=0.
```

Apply the transform

```math
z=e^{-sS}y,
\qquad
w=e^{sS}v(e^{sS}z,s).
```

The transformed field solves

```math
\partial_sw+\nabla_zq=\nu\nabla_z\cdot(A(s)\nabla_zw),
\qquad
\nabla_z\cdot(A(s)w)=0,
```

where

```math
A(s)=e^{-sS}e^{-sS^T}.
```

If `NoIncomingFlux_global.A` supplies zero incoming parabolic boundary mass and `AnisotropicStokesCarleman.A` supplies backward uniqueness for this transformed system on the ancient half-line, then `w\equiv0`, hence `v\equiv0`. The rescaling also normalizes positive active mass, giving a contradiction. Therefore `PATC.A` holds. The packet normal form yields `ASAC.A`. `\square`

### Installed weak license

The terminal first-pulse construction proves only

```math
NoIncomingLicense_{src}.A:
TerminalActiveWindow+FirstPulseSelection
\Longrightarrow FirstPulse.NoParent.
```

This is a source-ancestry no-parent statement. It is valid for the adjoint drain route.

### Obstructions

`FirstPulse.NoParent` is weaker than global no-incoming energy/flux for the full tangent field. Under frozen-strain flow, mass can enter compact regions from spatial infinity along contracting directions. Hence

```math
NoIncomingFlux_{global}.A
```

is open.

The anisotropic Stokes Carleman theorem is proved only on finite slabs. On `[-R,0]`, the transformed matrix `A(s)` is smooth, spatially constant, and uniformly elliptic, so fixed-metric Carleman plus lower-order absorption applies. As `R\to\infty`, the ellipticity ratio can grow exponentially for mixed-sign trace-free strain. The ancient half-line theorem needs global weights and constants that remain usable under that anisotropy. Therefore

```math
GlobalUniformAnisotropicStokesCarleman.A
```

is open.

## Branch 3: Zeno rigidity

### Conditional theorem

```math
ZenoCompactnessExtraction.A
+ZenoCancellationClassProduction.A
+RigidClassResidueVanish.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
\tag{R3}
```

### Proof

`ZenoCompactnessExtraction.A` gives an ancient local suitable source-residue object

```math
(u_*,p_*,\mu_*^{src})
```

with inherited nonzero residue:

```math
\mu_*^{src}(Q_1^-)
\ge c_0>0.
```

If `ZenoCancellationClassProduction.A` places this object in a rigid class `B_{src}`, and `RigidClassResidueVanish.A` gives

```math
B_{src}\Longrightarrow \mu_*^{src}=0,
```

then `\mu_*^{src}=0`, contradicting `\mu_*^{src}(Q_1^-)\ge c_0`. Therefore the Zeno branch is excluded under the class-production plus Liouville hypotheses. `\square`

### Obstruction

The compactness half is installed. The residue-vanishing implication is conditional on a named cancellation/rigidity class. The open atom is

```math
OriginalSmoothData\Longrightarrow ZenoCancellationClassProduction.A.
```

Same-fluid ancestry preserves carrier coherence but does not impose Type I control, finite global ancient energy, critical smallness, bounded vorticity, self-similarity, symmetry, or source cancellation in the ancient limit. Local energy and pressure bounds give compactness but no rigid class.

## Consolidated hard stop

The recursive chain has been pushed through every live child currently exposed by the MCP surfaces. It does not unconditionally close. It terminates at three independent hard atoms:

```math
\boxed{OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A,}
```

```math
\boxed{NoIncomingFlux_{global}.A+GlobalUniformAnisotropicStokesCarleman.A,}
```

```math
\boxed{OriginalSmoothData\Longrightarrow ZenoCancellationClassProduction.A.}
```

Any one of the following successful mechanisms would reopen closure:

```math
\text{coherence/depletion: } TerminalSourceCoherence.A,
```

```math
\text{rigidity: } TPNI.A \text{ via global no-incoming plus global anisotropic Carleman,}
```

```math
\text{Zeno cleanup: } ZenoCancellationClassProduction.A+RigidClassResidueVanish.A.
```

## Current unconditional verdict

```math
SourceDominance.A
\quad\text{open.}
```

```math
SourcePulseExclusion.A
\quad\text{open.}
```

```math
PCTP.hard/TTU.A
\quad\text{conditional on the source-wall closure.}
```

The complete proof chain is therefore not unconditionally closed by current repo surfaces. The hard obstruction is mathematical, not bookkeeping: the positive terminal active source mass must be removed, charged, or rigidified, and none of those three mechanisms is installed from `OriginalSmoothData`.