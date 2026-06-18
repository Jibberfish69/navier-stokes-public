# Coherent High-Tail Product Estimate Result

## Target

The coherent high-tail collar term is

```math
T_{i,j}^{hi}:=\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)P_{>j}v_{coh}\big).
```

The target estimate is

```math
\|\nabla T_{i,j}^{hi}\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Estimate

By Bernstein on the low-pass output,

```math
\|\nabla P_{\le j}F\|_\infty\le C2^j\|P_{\le j}F\|_\infty\le C2^j\|F\|_\infty.
```

Thus

```math
\|\nabla T_{i,j}^{hi}\|_\infty
\le
C2^j\|u_{coh}\|_{L^\infty}\|\nabla P_{>j}v_{coh}\|_{L^\infty}.
```

For `s>7/2`, readout Sobolev tail decay gives

```math
\|\nabla P_{>j}v_{coh}\|_\infty
\le C_s2^{-(s-5/2)j}\|Y\|_{H_D^s}.
```

Therefore

```math
\|\nabla T_{i,j}^{hi}\|_\infty
\le
C_s\|u_{coh}\|_\infty2^{(7/2-s)j}\|Y\|_{H_D^s}.
```

## Absorbable form

If the coherent amplitude obeys either a bounded-amplitude route estimate

```math
\|u_{coh}\|_
\infty\le C_u(\mathcal E_D(X))
```

with `s>7/2` and `j` in the high active range, or the sharper viscous-scale condition

```math
\|u_{coh}\|_\infty2^{(7/2-s)j}\le \varepsilon\nu2^{2j}+C_\varepsilon\Phi(\mathcal E_D(X)),
```

then

```math
\|\nabla T_{i,j}^{hi}\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Exact spectral cutoff corollary

If the coherent selector enforces

```math
P_{>j}v_{coh}=0,
```

then `T_{i,j}^{hi}=0`, and the estimate follows from the vanishing high factor.

## Boundary

This term vanishes under exact spectral alignment and is controlled under the
stated high-tail decay. It leaves the principal coherent coefficient and
noncoherent low-mode product as the active collar terms.
