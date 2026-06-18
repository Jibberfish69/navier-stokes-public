# FFSRC.A to FCI.5f Strengthened Source Bridge

Status: conditional strengthened source bridge.

## Statement

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

`Hyp(FFSRC.A)` is the organized stronger sufficient source package. It
combines the widened pressure bridge, the finite-family strain/cascade channel,
and the cutoff absorption channel with the separate cutoff-defect input.

## Inputs

The sufficient package assumes:

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_0;I)<\infty,
```

ordinary interval energy,

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}
\in L^1(I),
```

```math
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}
\in L^1(I),
```

and

```math
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}(\cdot;I)\in L^1(I).
```

## Proof

The packet-local widened pressure bridge gives

```math
FFPB.A0
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

The widened collar envelope controls the ordinary collar envelope by monotonicity:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}.
```

The frozen-family differential inequality is

```math
\frac{d}{dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})
\mathcal F_{N,\rho,\psi}^{\varepsilon}
+4\nu\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

The coefficient term and the cutoff-defect term on the right are integrable by
the stated hypotheses, so Gronwall gives

```math
\sup_I\mathcal F_{N,\rho,\psi}^{\varepsilon}<\infty
```

and

```math
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\in L^1(I).
```

The strain/cascade channel then satisfies

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

`FCC.C1` absorbs the cutoff channel into the viscous ledger plus the exact
weighted cutoff-defect ledger, and `FCC.C1a` makes that ledger integrable:

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

The source split is

```math
\mathcal N^{src}
=\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

Thus

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I),
```

which is `FCI.5f`.

## Boundary

This bridge uses the stronger sufficient source branch `Hyp(FFSRC.A)`. It does
not discharge the exact same-depth source branch with pressure wall `FPCR.C`,
smaller wall `FIRP.A0`, and cutoff-defect input `FCC.C1a`. In the averaged
route, `Hyp(FFSRC.A)` is used exactly as the strengthened source supplier.
