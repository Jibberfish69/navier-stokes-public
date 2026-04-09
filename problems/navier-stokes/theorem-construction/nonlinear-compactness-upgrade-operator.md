# Nonlinear Compactness Upgrade Operator

## Object

`nonlinear_compactness_upgrade_operator`

## Definition

Fix a radius `R > 0`, a dyadic threshold `N`, a classical approximation family `\{u^{(n)}\}`, and a weak limit candidate `u`. Define the compactness defect

```math
\mathfrak{K}_{R,N}[u^{(n)},u]
:=
\limsup_{n\to\infty}\|P_{<N}(u^{(n)}-u)\|_{L^2(0,T;L^2(B_R))}
+ \sup_m \|P_{\ge N}u^{(m)}\|_{L^2(0,T;L^2(B_R))}.
```

If `\mathfrak{K}_{R,N}[u^{(n)},u] -> 0` as `N -> \infty`, then `u^{(n)} -> u` strongly in `L^2(0,T;L^2(B_R))`. Combined with uniform local `L^2` control, this yields

```math
u^{(n)}\otimes u^{(n)} \to u\otimes u
```

in `L^1(0,T;L^1(B_R))`.

## Slots

- `domain`: a fixed classical approximation family with `L^\infty_tL^2_x`, `L^2_tH^1_x`, and `\partial_t` bounds.
- `codomain`: a nonnegative compactness-defect scalar on each `(R,N)`.
- `admissibility`: the same approximation family and same PDE surface as the scale-barrier package.
- `invariance`: independent of pressure normalization and compatible with subsequence extraction.
- `theorem_interface`: converts the scale-barrier tail estimate into strong local compactness and nonlinear tensor closure.
- `closure_mechanism`: low-frequency Aubin-Lions compactness plus high-frequency tail smallness.

## Honest Boundary

The operator is fully explicit. The only upstream theorem burden it consumes is the classical scale-barrier tail estimate on the same approximation family.
