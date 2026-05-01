# FFSRC.A to FCI.5f Full Source Proof

## Statement

The strengthened frozen-family source package

```math
FFSRC.A:
FFPB.A0+FFSC.C1+FCC.C1
```

implies

```math
FCI.5f.
```

## Source split

The source term splits into three channels:

```math
\mathcal N^{src}
=\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

The pressure channel is supplied by the widened pressure bridge:

```math
FFPB.A0\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

The strain/cascade channel is supplied by

```math
FFSC.C1\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

The cutoff channel is supplied by

```math
FCC.C1\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

Therefore

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I).
```

## Frozen-family energy inequality

The frozen-family packet obeys

```math
{d\over dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+{1\over2}\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\left(\mathfrak b_\psi^{cut}+C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})\right)
\mathcal F_{N,\rho,\psi}^{\varepsilon}.
```

The coefficient

```math
\mathfrak b_\psi^{cut}+C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})
```

is integrable by the collar, cutoff, and source package inputs. Gronwall yields

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I).
```

Combining the channel estimates gives the full frozen-family source ledger

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I).
```

This is precisely `FCI.5f`.

## Branch bookkeeping

This proof uses the strengthened source branch:

```math
FFSRC.A\Longrightarrow FCI.5f.
```

The exact same-depth branch

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1\Longrightarrow FCI.5f
```

is an auxiliary stricter route and is not used in this proof.

## Output

The averaged consumer chain may consume

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}.
```