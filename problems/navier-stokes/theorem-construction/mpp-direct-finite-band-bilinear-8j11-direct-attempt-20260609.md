---
ns_viewer:
  theorem_id: direct-finite-band-bilinear-8j11-direct-attempt-20260609
  status: failed-reduced-to-finite-collar-amplitude-control
  proof_role: retained_far_corona_direct_bilinear_attempt
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Continues the active-completion loop inside the retained endpoint-threading split. DirectFiniteBandBilinear8j11.A is not proved from current inputs: the finite-collar bilinear term can be Young-split against active dissipation only after a smallness theorem for the collar coefficient 2^{-j}E_m on the retained terminal interval. Raw energy, retained Pack, raw CKN finiteness, and the absorbed shell-pair packet do not provide that coefficient smallness."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-retained-endpoint-mass-shell-pair-threading-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
    - problems/navier-stokes/theorem-construction/mixed-shell-bilinear-dissipation-identity.md
  downstream_consequence: "The live finite-band branch reduces to RetainedFiniteBandAmplitudeSmallness.A or TerminalFiniteCollarSeedToIntervalControl.A. The sibling endpoints remain EndpointMassFromShellPairCommutator.A, RetainedMuNCarleson.A, and TerminalNuNWindowSeedSynchronization.A. PDF finality remains false."
---

# MPP DirectFiniteBandBilinear8j11.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `(EP)`,
`(L-Flux)`, `RetainedCarrierTailInput.A`,
`NoGenuineExitFromSmoothData.A`, or CMI finality.

## Target

The retained endpoint-threading split left the direct finite-band theorem:

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
E_m(t)^{1/2}\,2^{-j/2}D_j(t).
\tag{8j11}
```

The intended use is an absorption estimate strong enough to feed the endpoint
bound `(EP)`, hence `(L-Flux)` and the retained tail input.

The source normalization is:

```math
E_m(t)=2^{2m}\|\Delta_m u(t)\|_{L_x^2}^2,
\qquad
D_j(t)=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
```

and the collar sets `\mathcal B_I(N)` and `\mathcal B_J(N)` have bounded
cardinality with `m` and `j` tied to the same retained endpoint scale.

## Direct Young Split

For a fixed collar pair, set

```math
a_{m,j}(t):=E_m(t)^{1/2}\,2^{-j/2}.
```

Then the bilinear term is

```math
a_{m,j}(t)D_j(t).
```

The only immediate absorption is

```math
a_{m,j}D_j
\le
\varepsilon\nu D_j
+
C_{\varepsilon,\nu}a_{m,j}^2D_j
```

or a comparable split that leaves the same coefficient problem. The coefficient
is

```math
a_{m,j}^2=2^{-j}E_m(t).
```

Since `m` and `j` are in a fixed collar, this is a finite-collar
`H^{1/2}`-scale amplitude. It is not controlled by the raw energy inequality.
Writing out the shell normalization gives

```math
c_{\mathrm{col}}2^N\|\Delta_m u(t)\|_{L_x^2}^2
\le
2^{-j}E_m(t)
\le
C_{\mathrm{col}}2^N\|\Delta_m u(t)\|_{L_x^2}^2
```

on the retained collar. Finite energy controls
`\sum_m\|\Delta_m u(t)\|_2^2`; it does not make the weighted quantity
`2^N\|\Delta_m u(t)\|_2^2` small on a terminal interval.

Pointwise preterminal smoothness gives finite high-frequency tails at each
fixed regular time. The direct `(8j11)` theorem needs interval control on the
same retained terminal collar, not only a small seed at one chosen time.

## Why Current Inputs Do Not Close It

### 1. Raw Energy

Raw energy gives an `L_t^\infty L_x^2` bound and total dissipation. It does not
give a uniform small bound for `2^{-j}E_m(t)` on the retained terminal interval.
Using only raw energy leaves a coefficient that may grow with the active scale
and cannot be absorbed into the linear `D_N` budget.

### 2. Retained Pack

Retained Pack keeps a terminal carrier alive. It is a survival/admissibility
input for the CM witness tree, not a quantitative finite-collar amplitude gain.
It does not supply

```math
\sup_{t\in I_N}\max_{m\in\mathcal B_I(N),\,j\in\mathcal B_J(N)}
2^{-j}E_m(t)\le \varepsilon.
```

### 3. Raw CKN Finiteness

CKN finiteness is scale-critical spacetime information. It does not by itself
produce the finite-collar `H^{1/2}` amplitude smallness needed to absorb
`(8j11)` on every retained terminal window.

### 4. Absorbed Shell-Pair Packet

The installed shell-pair estimate controls the coefficient-bearing commutator
family and lands on `\varepsilon\nu D_N+\mu_N`. It does not dominate the
positive endpoint mass, and it does not separately prove the collar coefficient
smallness required by the direct bilinear route.

## Reduced Theorem

The direct branch would close if one proves either of the following.

First, a retained finite-band amplitude theorem:

```math
\boxed{
\sup_{t\in I_N}
\max_{m\in\mathcal B_I(N),\,j\in\mathcal B_J(N)}
2^{-j}E_m(t)\le \varepsilon_N,\qquad
\varepsilon_N\to0.
}
\tag{FBA}
```

Second, a seed-to-interval theorem on the same collar:

```math
E_m(t_N)2^{-j}\to0
\quad\Longrightarrow\quad
\int_{I_N}E_m(t)^{1/2}2^{-j/2}D_j(t)\,dt
\le
\varepsilon\nu\int_{I_N}D_N(t)\,dt+C_*2^{-2\delta N}.
\tag{SCI}
```

The second form must include the coefficient propagation through the retained
terminal interval. A small seed alone is not enough.

## Result

`DirectFiniteBandBilinear8j11.A` is not proved from the current theorem stack.

The direct bilinear route reduces to:

```text
RetainedFiniteBandAmplitudeSmallness.A
or
TerminalFiniteCollarSeedToIntervalControl.A.
```

The sibling endpoint-threading routes remain live:

```text
EndpointMassFromShellPairCommutator.A,
RetainedMuNCarleson.A,
TerminalNuNWindowSeedSynchronization.A.
```

## New Live Criticism

`NS-LIVE-20260609-187`: `DirectFiniteBandBilinear8j11.A` is not proved. The
finite-band term can be absorbed only after controlling the finite-collar
coefficient `2^{-j}E_m` on the retained terminal interval. Current inputs
provide raw energy, retained Pack, CKN/source finiteness, and the absorbed
shell-pair packet; none of these supplies retained finite-collar amplitude
smallness or seed-to-interval propagation. The next pass must prove
`RetainedFiniteBandAmplitudeSmallness.A`,
`TerminalFiniteCollarSeedToIntervalControl.A`, `RetainedMuNCarleson.A`,
`EndpointMassFromShellPairCommutator.A`,
`TerminalNuNWindowSeedSynchronization.A`, or an equivalent theorem feeding
`(EP)` before finality can be reconsidered.
