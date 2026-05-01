# Uniform Local Hs Bootstrap From Whole-Space Shell-Tail Control

## Statement

Assume the localized whole-space shell-tail theorem on `B_{2R}` over `[0,T]`:

```math
\sup_{t\le T}E_{N,2R}(t)+\int_0^TD_{N,2R}(t)dt\le \rho.
```

Assume the pressure-tail theorem supplies local pressure bounds on `B_{2R}`. Then, for every `s>5/2`,

```math
\sup_{t\le T}\|u(t)\|_{H^s(B_R)}<\infty.
```

The same estimate is uniform for expanding periodic approximants once the shell-tail, pressure-tail, and low-mode data are uniform in the approximating index.

## Proof

Choose a cutoff `chi` equal to one on `B_R` and supported in `B_{2R}`. Split

```math
\chi u=P_{<N}(\chi u)+P_{\ge N}(\chi u).
```

The high part is controlled by the shell-tail theorem. In particular,

```math
\sup_{t\le T}\|P_{\ge N}(\chi u)(t)\|_{H^1}^2
+\int_0^T\|P_{\ge N}(\chi u)(t)\|_{H^2}^2dt<\infty.
```

The low part has finitely many modes below `N`. On the fixed ball, the localized equation gives a parabolic system with finite low-mode forcing. Local energy, the high-tail estimate, and pressure-tail control bound the low modes on `[0,T]`.

For higher derivatives, differentiate the localized equation:

```math
\partial_t\nabla^m(\chi u)-\nu\Delta\nabla^m(\chi u)
=
\nabla^m\mathcal N_R+
\nabla^{m+1}p_R+
\mathcal C_{m,R},
```

where `mathcal N_R` is the localized nonlinearity and `mathcal C_{m,R}` contains cutoff commutators. The nonlinear terms are controlled by the already established lower-order bounds and the high-tail dissipation. The pressure terms are controlled by local Calderon-Zygmund/Schauder estimates plus the pressure-tail theorem. The cutoff commutators are supported in `B_{2R}\setminus B_R` and are bounded by the localized shell-tail and exterior-tail budgets.

Induction over `m<=s` yields

```math
\sup_{t\le T}\|u(t)\|_{H^s(B_R)}<\infty.
```

## Consequence

The local `H^s` estimate is reconstructed from the whole-space shell-tail theorem, pressure-tail control, and finite low-mode parabolic bootstrap.

## Boundary

This theorem is local in space. The exhaustion theorem supplies the passage from local estimates and exterior tightness to a global whole-space solution.