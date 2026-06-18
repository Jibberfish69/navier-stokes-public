# Pressure-Side Collar Return To Strengthened Source Closure

## Status

Conditional theorem-route note.

The pressure-side finite-increment obstruction is routed through the returned receiver collar instance. The strengthened source closure follows once that returned receiver instance is available.

## Parameters

Set

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
\delta_{press}:=\delta+5\Lambda.
```

The returned pressure-side receiver instance is

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]:
\qquad
\sup_{t\in I}
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda}(t)<\infty.
```

This is exactly the pressure-side FEI return instance `(FPL.Bc0)` under the parameter read recorded by `CBR.B`.

## Theorem `PSCR.A` — Receiver Return Supplies The Fixed-Radius Pressure Holder Carrier

Assume `CSP.B3a1[N+2,N+2,\delta+5\Lambda]`. Then

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
```

Indeed, for every transported center `c_j(t)`,

```math
B(c_j(t),5\Lambda)
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda}(t),
```

and the moving-collar cutoff is one on this ball. Hence the zero-derivative slots with `q=1,\dots,N+2` in the lower moving-collar packet give

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
\le
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda}(t).
```

By `FPL.H`,

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I)
\Longrightarrow
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I).
```

The fixed-radius oscillation carrier is downstream of the same Holder route, so

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I).
```

Therefore the finite-net widened local pressure carrier obeys

```math
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I).
```

The last implication uses the finite-net comparison

```math
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)
\le
C M_\varepsilon
\left(
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
+
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2
\right).
```

## Theorem `PSCR.B` — Widened Collar Companion

The same returned receiver scale supplies the widened collar companion needed by the pressure bridge:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda}
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+5\Lambda}.
```

The right side is a widened receiver-side collar read. It is governed by the same old collar theorem family at a wider fixed thickness, as in `WTC.A`.

Thus the pressure bridge hypotheses are available under the returned receiver instance:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I).
```

## Theorem `PSCR.C` — Strengthened Source Pressure Closure

By `FFPB.A0`, the preceding two inputs imply

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

Together with the installed nonpressure and cutoff source pieces,

```math
FFPB.A0+FFSC.C1+FCC.C1+FCC.C1a
\Longrightarrow
\operatorname{Hyp}(FFSRC.A).
```

The extra input is the cutoff-defect interval bound
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

Hence

```math
\operatorname{Hyp}(FFSRC.A)
\Longrightarrow
FCI.5f.
```

The full conditional chain is therefore

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]
\Longrightarrow
FPL.C
\Longrightarrow
FPC.H
\Longrightarrow
FFPB.A0
\Longrightarrow
FFSRC.A
\Longrightarrow
FCI.5f.
```

## Returned Receiver Obligation

The remaining live receiver-side theorem is

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda].
```

By `CBR.B` and `CBR.D`, this is a parameter read of the existing receiver theorem family. Its only thickness-sensitive coefficient slot is the returned lower-carrier read

```math
LCI.A[N+2,N+2,\delta+5\Lambda].
```

So the strengthened source route has shifted the source-side pressure problem into the old receiver-side lower-carrier program at the wider pressure thickness.

## Boundary

The exact same-depth pressure branch remains open at the fixed-radius Holder-to-energy conversion. The strengthened source branch closes conditionally through the returned receiver packet above.
