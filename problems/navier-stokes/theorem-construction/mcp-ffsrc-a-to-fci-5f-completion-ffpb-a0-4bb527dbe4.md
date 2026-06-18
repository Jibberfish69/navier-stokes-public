# FFSRC.A to FCI.5f Completion

Status: conditional strengthened source theorem.

## Statement

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

## Proof

The strengthened source package supplies the pressure channel by the packet-local widened pressure bridge:

```math
FFPB.A0\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

The frozen-family energy inequality is

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

The coefficient is integrable by the widened collar hypotheses, and the
cutoff-defect term is integrable by `FCC.C1a`. Gronwall gives

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I).
```

The strain/cascade theorem gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

The cutoff theorem plus `FCC.C1a` gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

The frozen source split is

```math
\mathcal N^{src}
=\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

Therefore

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I),
```

which is `FCI.5f`.

## Boundary

This completion uses the strengthened sufficient source package
`Hyp(FFSRC.A)`, including `FCC.C1a`. The exact same-depth pressure branch
remains a separate route when required by stricter bookkeeping.
