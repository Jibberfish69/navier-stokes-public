# Gradient Transfer Operator

## Object

`gradient_transfer_operator`

## Definition

For a classical solution `u` on `(0,T)\times\mathbb{R}^3` and dyadic threshold `N`, define

```math
E_N(t) := \sum_{j\ge N} 2^{2j}\|P_j u(t)\|_{L^2_x}^2,
\qquad
D_N(t) := \sum_{j\ge N} 2^{4j}\|P_j u(t)\|_{L^2_x}^2,
```

and

```math
\mathfrak{G}_N[u](t)
:=
\frac{d}{dt}E_N(t)
+ (1-\eta)\nu D_N(t)
- C\,\mathcal{L}_N(t)\,E_N(t),
```

where `\mathcal{L}_N(t) = 1 + \sum_{k\le N-4}2^{3k/2}\|P_k u(t)\|_{L^2_x}`.

The gradient bridge is discharged once one proves

```math
\mathfrak{G}_N[u](t) \le C_*2^{-2\delta N}
```

for almost every `t`, with constants independent of the approximation index and no geometric surrogate.

## Slots

- `domain`: classical Euclidean Navier-Stokes solutions with the same admissibility surface as the scale-barrier and compactness packages.
- `codomain`: a high-frequency enstrophy-defect density.
- `admissibility`: scale-barrier tail input, nonlinear closure on the classical limit surface, and low-mode integrability.
- `invariance`: pressure gauge invariant and stable under equivalent Littlewood-Paley decompositions.
- `theorem_interface`: once bounded by a summable remainder, it yields Gronwall continuation for `\|\nabla u(t)\|_{L^2_x}`.
- `critical_scale_measure`: high-frequency enstrophy `E_N` and dissipation `D_N`.
- `closure_mechanism`: the unresolved high-side remainder packet must be absorbed into dissipation plus a tail remainder after the strict low-mode pieces are removed.
- `gradient_transfer_role`: this is the exact operator whose control prevents gradient blow-up on the classical equation.

## Honest Boundary

The unresolved point is the Euclidean estimate for the high-side remainder packet producing the right-hand remainder bound. Low-mode bookkeeping and the continuation step are already explicit, and `\mathcal{L}_N` is automatically integrable on the classical energy surface. The exact unresolved packet is recorded in `theorem-construction/gradient-high-side-remainder-packet.md`, and the exact residual local debt is recorded in `theorem-construction/gradient-commutator-remainder-lemma.md`.
