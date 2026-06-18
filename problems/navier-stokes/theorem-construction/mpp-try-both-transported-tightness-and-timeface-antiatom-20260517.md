# MPP Try both: transported tightness and terminal time-face anti-atom

Date: 2026-05-17

Status: failed as a combined production theorem. The two components reduce to two sharper focused targets.

## Goal

The conditional bridge is already available:

```math
LocalEnergyTraceNoPositiveJump.A+TransportedCylinderNoFlux.A
\Rightarrow
TerminalSourceAntiConcentration.A.
```

To activate it, try both missing production components:

```text
1. TransportedBoundaryTightness.A;
2. TerminalTimeFaceAntiAtomComponent.A.
```

## Component 1: transported-boundary tightness

The sharper attempt is a good-shell theorem:

```math
GoodTransportedShellExhaustion.A:
\exists R_n\to\infty\quad
Flux_{\partial \mathcal C_{R_n}^{tr}}(u,p)\to0.
```

A coarea proof would need a finite shell budget such as

```math
\int_{1}^{\infty} Flux_{\partial \mathcal C_R^{tr}}\,dR<\infty
```

or a sublinear growth estimate for local energy and pressure work on transported balls.

Current inputs supply compactness on fixed cylinders. They do not supply a finite global ancient shell budget. Original global energy rescales as

```math
\|u^{(m)}(s)\|_{L_y^2}^2
=r_m^{-1}\|u(t_m+r_m^2s)\|_{L_x^2}^2,
```

so finite original energy does not become finite ancient global energy in tangent variables. Good-shell coarea therefore has no finite measure to average.

Same-fluidity aligns the cylinders. ASAC equality removes a selected alignment defect. Neither gives a transported shell tail estimate for kinetic, pressure, and nonselected flux.

Thus the spatial component remains:

```math
GoodTransportedShellExhaustion.A
```

as a focused missing theorem.

## Component 2: terminal time-face anti-atom

The sharper attempt is a trace-defect theorem:

```math
NativeSourceTraceDefectAtom.A:
\mu_*^{src}(B_R\times\{0\})=0.
```

Current data allow the terminal atom

```math
d\mu_*^{src}(y,s)=\rho(y)dy\otimes\delta_{s=0}.
```

This atom is a local Radon boundary measure on the terminal time face. Backward adjoint tests detect it through terminal trace. Parabolic capacity treats the terminal face as trace-bearing boundary data. Local energy trace can remove it only after incoming flux and positive terminal jump channels are excluded.

Defect-measure splitting does not remove the atom. It only names it as the terminal source trace defect unless a time-face modulus is proved:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])\le\omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

Thus the time-face component remains:

```math
NativeSourceTraceDefectAtom.A
```

as a focused missing theorem.

## Verdict

Trying both components does not discharge the obstruction from installed inputs.

The reduced targets are now exactly:

```text
GoodTransportedShellExhaustion.A
NativeSourceTraceDefectAtom.A
```

Either component supplies one side of the conditional bridge. The second is
equivalent to terminal temporal anti-concentration. The first requires a new
global or anisotropic shell-tail budget for the tangent object.
