# Exact Same-Depth Source Closure Conditional Theorem

Status: conditional theorem. The condition is `FIRP.A0` for each frozen increment.

## Statement

```math
FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

## Source split

The frozen-family source ledger has the exact channel split

```math
\mathcal N^{src}
=
\mathcal N^{press}
+\mathcal N^{sc}
+\mathcal N^{cut}.
```

Thus `FCI.5f` follows from

```math
\mathcal N^{press}\in L^1(I),
\qquad
\mathcal N^{sc}\in L^1(I),
\qquad
\mathcal N^{cut}\in L^1(I).
```

## Pressure channel

Assume `FIRP.A0` for every frozen increment `eta^ell` in the finite frozen family:

```math
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}\in L^1(I).
```

By the finite-net reduction, this gives the frozen-net resonant pressure integrability:

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}\in L^1(I).
```

The pressure-channel reduction then yields

```math
\mathcal N^{press}\in L^1(I).
```

## Strain/cascade and cutoff channels

`FSCR.C` supplies

```math
\mathcal N^{sc}\in L^1(I).
```

`FCC.C1` together with `FCC.C1a` supplies

```math
\mathcal N^{cut}\in L^1(I).
```

## Conclusion

Summing the three channels gives

```math
\mathcal N^{src}\in L^1(I),
```

which is exactly

```math
FCI.5f.
```

## Boundary

This closes the exact same-depth source branch only conditionally on `FIRP.A0`. Since `FIRP.A0` remains open, the active averaged route continues to use the strengthened source theorem

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```
