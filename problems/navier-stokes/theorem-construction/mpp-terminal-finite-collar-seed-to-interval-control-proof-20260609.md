---
ns_viewer:
  theorem_id: terminal-finite-collar-seed-to-interval-control-proof-20260609
  status: proved-conditional-reduces-to-nu-window-synchronization
  proof_role: retained_far_corona_terminal_collar_seed_propagation
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Proves the conditional seed-to-interval mechanism for the direct finite-band branch: if the upgraded terminal-window coefficient measure nu_N is small on the selected terminal window and the high-frequency entrance seed is small, then the retained finite-collar coefficient 2^{-j}E_m is small throughout that window and the direct (8j11) packet is absorbable. The unconditional endpoint remains open at TerminalNuNWindowSeedSynchronization.A or a sibling endpoint-threading route."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-retained-finite-band-amplitude-smallness-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/minimal-stronger-gradient-coefficient-interface-theorem.md
    - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
  downstream_consequence: "TerminalFiniteCollarSeedToIntervalControl.A is installed as a conditional theorem. The active child is TerminalNuNWindowSeedSynchronization.A: prove small nu_N mass on the same N-dependent terminal windows carrying the smooth high-frequency seed, or close a sibling endpoint route through EndpointMassFromShellPairCommutator.A or RetainedMuNCarleson.A. PDF finality remains false."
---

# MPP TerminalFiniteCollarSeedToIntervalControl.A Proof

Date: 2026-06-09

Status: conditional theorem proved. This note does not close `(EP)`,
`(L-Flux)`, `RetainedCarrierTailInput.A`, `NoGenuineExitFromSmoothData.A`, or
CMI finality because the `\nu_N` terminal-window synchronization theorem remains
open.

## Statement

Let `I_N=[t_N,T)` be a retained terminal window. Assume the upgraded fourth
bridge holds on `I_N`:

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)+C_*2^{-2\delta N}.
\tag{G^\sharp}
```

Define

```math
\nu_N(I_N):=\int_{I_N}\widetilde\Lambda_N^\sharp(t)\,dt.
```

Assume the synchronized terminal-window seed condition:

```math
\nu_N(I_N)\le \varepsilon_*,
\qquad
E_N(t_N)+|I_N|2^{-2\delta N}\to0.
\tag{S}
```

Then

```math
\sup_{t\in I_N}
\max_{m\in\mathcal B_I(N),\,j\in\mathcal B_J(N)}
2^{-j}E_m(t)\to0.
\tag{C}
```

Consequently the direct finite-band packet

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
E_m(t)^{1/2}2^{-j/2}D_j(t)
\tag{8j11}
```

is absorbable on `I_N`.

## Proof

The local terminal-window form of the upgraded bridge gives

```math
\sup_{t\in I_N}E_N(t)
\le
\exp(C\nu_N(I_N))
\Big(E_N(t_N)+C_*|I_N|2^{-2\delta N}\Big).
\tag{1}
```

Under `(S)`, the exponential factor is uniformly bounded and the parenthesis
tends to zero. Hence

```math
\sup_{t\in I_N}E_N(t)\to0.
\tag{2}
```

The finite collar lies inside the high-frequency tail. For
`m\in\mathcal B_I(N)` and `j\in\mathcal B_J(N)`, the collar width is fixed, so
`2^{-j}\le C_{I,J}2^{-N}` and `E_m(t)\le E_N(t)` after harmlessly enlarging
the threshold tail by the fixed collar. Thus

```math
2^{-j}E_m(t)
\le
C_{I,J}2^{-N}E_N(t).
\tag{3}
```

Combining `(2)` and `(3)` proves `(C)`.

Let

```math
\alpha_N:=
\sup_{t\in I_N}
\max_{m,j}2^{-j}E_m(t).
```

Then `\alpha_N\to0`, and each finite-collar bilinear term satisfies

```math
E_m(t)^{1/2}2^{-j/2}D_j(t)
\le
\alpha_N^{1/2}D_j(t).
\tag{4}
```

The collar has uniformly bounded cardinality and
`\sum_{j\in\mathcal B_J(N)}D_j(t)\le D_N(t)`, hence

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
E_m(t)^{1/2}2^{-j/2}D_j(t)
\le
C_{I,J}\alpha_N^{1/2}D_N(t).
\tag{5}
```

For large `N`, choose the synchronized window so that
`C_{I,J}\alpha_N^{1/2}\le \varepsilon\nu`. Then `(8j11)` is absorbed into the
active dissipation budget on `I_N`.

This proves the conditional seed-to-interval theorem.

## Boundary

The proof uses `(S)`. Current repo inputs do not yet prove the `N`-dependent
smallness of `\nu_N(I_N)` on the same terminal windows that carry the smooth
high-frequency seed. Fixed-`N` local integrability gives small measure on a
short enough window for that fixed threshold; it does not by itself choose a
single high-frequency terminal family that also carries the required seed and
feeds the retained endpoint theorem.

## New Live Criticism

`NS-LIVE-20260609-189`: `TerminalFiniteCollarSeedToIntervalControl.A` is proved
only conditionally on synchronized terminal-window smallness of `\nu_N`. The
unpaid theorem is now `TerminalNuNWindowSeedSynchronization.A`: produce
`I_N=[t_N,T)` with `\nu_N(I_N)\le\varepsilon_*` and
`E_N(t_N)+|I_N|2^{-2\delta N}\to0` on the same retained far-corona terminal
family, or close a sibling endpoint route through `RetainedMuNCarleson.A` or
`EndpointMassFromShellPairCommutator.A`.
