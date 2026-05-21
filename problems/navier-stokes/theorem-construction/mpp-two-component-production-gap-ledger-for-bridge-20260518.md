# MPP Two-component production gap ledger for the local-energy bridge

Date: 2026-05-18

Status: closed ledger for the “try both” branch. The bridge remains valid, and both production components remain open.

## Bridge already available

The conditional discharge bridge is

```math
\boxed{
LocalEnergyTraceNoPositiveJump.A
+
TransportedCylinderNoFlux.A
\Rightarrow
TerminalSourceAntiConcentration.A.
}
```

This bridge would eliminate the terminal native source atom in

```math
B_{ASAC}^{closed,min}.
```

## Component split

The transported no-flux premise decomposes into two independent production components:

```text
1. spatial transported-boundary tightness;
2. terminal time-face anti-atom control.
```

The focused targets tested in this pass were:

```math
GoodTransportedShellExhaustion.A
```

and

```math
NativeSourceTraceDefectAtom.A.
```

## Spatial component result

`GoodTransportedShellExhaustion.A` asks for radii `R_n\to\infty` with vanishing transported shell flux:

```math
Flux_{\partial\mathcal C^{tr}_{R_n}}(u,p)\to0.
```

The attempted proof needs a finite radial shell budget or sublinear transported energy growth. Current inputs supply fixed-cylinder compactness. Original finite energy rescales with factor `r_m^{-1}` and fails to give finite global ancient energy. Pressure and stable-channel flux remain uncontrolled.

Thus the spatial component remains open and requires one of:

```text
finite global ancient energy;
sublinear transported energy growth;
pressure-shell Hardy cancellation plus incoming-stable flux control;
full nonselected flux tail estimate.
```

## Time-face component result

`NativeSourceTraceDefectAtom.A` asks for

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

The terminal trace defect is exactly the active obstruction:

```math
d\mu_*^{src}(y,s)=\rho(y)dy\otimes\delta_{s=0}.
```

Defect splitting only identifies the trace part. Local Radon compactness allows terminal trace charge. Backward adjoint and parabolic capacity tests detect or admit the trace. Vanishing requires one of:

```text
TerminalAntiAtomModulus.A;
PositiveSourceTraceAC.A;
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A.
```

## Final ledger state

The “try both” branch resolves to this exact production gap:

```text
A. spatial gap: GoodTransportedShellExhaustion.A;
B. time-face gap: NativeSourceTraceDefectAtom.A.
```

The source-wall obstruction remains:

```math
B_{ASAC}^{closed,min}:\quad \rho(y)dy\otimes\delta_{s=0}.
```

The path to discharge remains precise:

```math
GoodTransportedShellExhaustion.A
+
NativeSourceTraceDefectAtom.A
+
LocalEnergyTraceNoPositiveJump.A
\Longrightarrow
TerminalSourceAntiConcentration.A.
```

Current installed inputs discharge none of the two production gaps.