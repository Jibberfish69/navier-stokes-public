# Proper Persistent Carrier Collar Result

## Target

The global selector branch needs the persistent carrier collar to be a proper support:

```math
\Gamma_j(t)^{+M}\subsetneq\mathbb R^3.
\tag{PPCC.1}
```

Write the fixed collar radius as

```math
r_{j,M}:=C_M2^{-j}.
\tag{PPCC.2}
```

Then

```math
\Gamma_j(t)^{+M}
:=
\{x:\operatorname{dist}(x,\Gamma_j(t))\le r_{j,M}\}.
\tag{PPCC.3}
```

## Exact condition

The properness condition `PPCC.1` is equivalent to the existence of an exterior point with positive collar separation:

```math
\exists x_0\in\mathbb R^3
\quad\text{such that}\quad
\operatorname{dist}(x_0,\Gamma_j(t))>r_{j,M}.
\tag{PPCC.4}
```

Equivalently,

```math
\mathbb R^3\setminus\Gamma_j(t)^{+M}
e\varnothing.
\tag{PPCC.5}
```

## Sufficient geometric criteria

Each of the following implies `PPCC.1`.

### Bounded carrier support

If `\Gamma_j(t)` is bounded, then `\Gamma_j(t)^{+M}` is bounded, hence proper in `\mathbb R^3`.

### Finite-diameter carrier core

If

```math
\operatorname{diam}\Gamma_j(t)<\infty,
\tag{PPCC.6}
```

then `\Gamma_j(t)^{+M}` has finite diameter and is proper.

### Proper ambient-domain version

On a bounded ambient domain `\Omega`, replace `\mathbb R^3` by `\Omega`. Then the condition is

```math
\exists x_0\in\Omega
\quad\text{such that}\quad
\operatorname{dist}(x_0,\Gamma_j(t))>r_{j,M}.
\tag{PPCC.7}
```

## Theorem PPCC

The global plateau selector has geometric content exactly when `PPCC.4` holds. Under boundedness or finite-diameter of the persistent carrier support, the condition holds automatically in `\mathbb R^3`.

### Proof

The equivalence of `PPCC.1`, `PPCC.4`, and `PPCC.5` follows directly from the definition of the collar enlargement. If `\Gamma_j(t)` is bounded, the fixed-radius enlargement remains bounded, so it is a proper subset of `\mathbb R^3`. ∎

## Boundary

If `\Gamma_j(t)^{+M}=\mathbb R^3`, the global selector becomes the full-space plateau `w_j\equiv1`. The weighted algebra still closes, while geometric localization is lost.

## Source surfaces

- `problems/navier-stokes/theorem-construction/controlled-proper-core-or-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/active-coherent-readout-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`