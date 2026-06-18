# Noncoherent Low-Mode Product Estimate Result

## Target

The noncoherent collar term is

```math
N_{i,j}:=\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)v_{noncoh}).
```

The target is

```math
\|\nabla N_{i,j}\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Estimate

By low-pass Bernstein and product estimates,

```math
\|\nabla N_{i,j}\|_\infty
\le
C2^j\|u_{coh}\|_{W^{1,\infty}}\|v_{noncoh}\|_{W^{1,\infty}}.
```

The noncoherent readout estimate gives

```math
\|v_{noncoh}\|_{W^{1,\infty}}
\le
\delta_j\|Y\|_{H_D^s}+C\Phi(\mathcal E_D(X)),
```

where `\delta_j` is the active noncoherent leakage size after readout. The coherent coefficient bound gives

```math
\|u_{coh}\|_{W^{1,\infty}}
\le C_u\nu2^j
```

on the active selector-localized support, or more generally the exact bound required to make

```math
2^j\|u_{coh}\|_{W^{1,\infty}}\delta_j
\le \varepsilon\nu2^{2j}.
```

Under that active-scale leakage condition,

```math
\|\nabla N_{i,j}\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Boundary

The product estimate is conditional on the noncoherent leakage satisfying the
displayed readout-compatible bound at scale `j`. The remaining nonformal input
is the smallness of `\delta_j`, which is exactly the noncoherent leakage export
theorem already reduced to the carrier commutator estimate.
