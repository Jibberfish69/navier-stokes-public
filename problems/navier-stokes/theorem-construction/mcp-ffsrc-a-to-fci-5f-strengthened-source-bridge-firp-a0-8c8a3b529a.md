# FFSRC.A to FCI.5f Strengthened Source Bridge

Status: conditional strengthened source bridge.

## Statement

```math
FFSRC.A\Longrightarrow FCI.5f.
```

`FFSRC.A` is the organized stronger sufficient source package. It combines the widened pressure bridge, the finite-family strain/cascade channel, and the cutoff absorption channel.

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
\mathfrak b_{\psi}^{cut}\in L^1(I).
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
\left(\mathfrak b_\psi^{cut}+C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})\right)
\mathcal F_{N,\rho,\psi}^{\varepsilon}.
```

All coefficients on the right are integrable, so Gronwall gives

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

`FCC.C1` absorbs the cutoff channel into the viscous ledger plus the cutoff coefficient times the bounded frozen packet aggregate, giving

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
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

This bridge uses the stronger sufficient source branch `FFSRC.A`. It does not discharge the exact same-depth source branch with pressure wall `FPCR.C` and smaller wall `FIRP.A0`. In the averaged route, `FFSRC.A` is used exactly as the strengthened source supplier.