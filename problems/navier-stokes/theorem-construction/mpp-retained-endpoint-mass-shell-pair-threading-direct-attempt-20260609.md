---
ns_viewer:
  theorem_id: retained-endpoint-mass-shell-pair-threading-direct-attempt-20260609
  status: failed-endpoint-threading-not-produced
  proof_role: retained_far_corona_endpoint_threading_direct_attempt
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Continues the active-completion loop from the source-density alias cycle into the retained far-corona endpoint edge. RetainedEndpointMassShellPairThreading.A is not proved: the absorbed shell-pair commutator estimate controls a signed commutator family, not the nonnegative endpoint mass M0; the direct bilinear route (8j11) is a separate active-pair theorem and is not installed by energy or the SP estimate alone; the mu_N / nu_N measure surfaces are downstream interfaces unless a Carleson or synchronized terminal-window theorem is proved before EP."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-basac-positive-source-trace-ac-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-mun-carleson-endpoint-threading-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-positive-affine-endpoint-mass-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
  downstream_consequence: "The live non-alias target is the endpoint threading split: prove EndpointMassFromShellPairCommutator.A, DirectFiniteBandBilinear8j11.A, RetainedMuNCarleson.A, or TerminalNuNWindowSeedSynchronization.A. Until one is proved, LPAS/CTS, L-Flux, RetainedCarrierTailInput.A, Part-row compactness, NoGenuineExitFromSmoothData.A, and PDF finality stay open."
---

# MPP RetainedEndpointMassShellPairThreading.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `(EP)`,
`LPAS`, `CTS`, `(L-Flux)`, `RetainedCarrierTailInput.A`,
`NoGenuineExitFromSmoothData.A`, or CMI finality.

## Frontier Correction

After `PositiveSourceTraceAC_{B_ASAC}.A` fails, the loop must not return to
bare source-density labels. The existing active-loop route has already
consumed reverse Holder, trace AC, Morrey/Orlicz, CKN source tether, source
time concentration, and terminal anti-atom aliases.

The current non-alias frontier in the retained Part / retained tail branch is:

```text
RetainedEndpointMassShellPairThreading.A.
```

This is the exact child left by:

```text
RetainedPositiveAffineEndpointMassKill.A
=> RetainedMuNCarlesonEndpointThreading.A
=> RetainedEndpointMassShellPairThreading.A.
```

## Target

The weighted endpoint theorem is:

```math
\int_0^T H_w(t)\,\|M_0(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{EP}
```

The already absorbed fixed shell-pair estimate is:

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
\left|
2^{2j}
\langle[\Delta_j,\Delta_m u\cdot\nabla]\Delta_j u,\Delta_j u\rangle
\right|
\le
\varepsilon\nu D_N
+
C_{\varepsilon,\nu,I,J}\widetilde\Lambda_N^\sharp E_N.
\tag{SP}
```

The measure surfaces are:

```math
d\mu_N(t)=\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt,
\qquad
d\nu_N(t)=\widetilde\Lambda_N^\sharp(t)\,dt.
```

The target asks whether `(SP)`, `(8j11)`, or a `\mu_N/\nu_N` theorem already
threads to `(EP)`.

## Direct Attempt

### 1. Shell-Pair Commutator To Endpoint Mass

The `(SP)` estimate controls a coefficient-bearing commutator family. It has a
signed commutator structure and is already absorbed into:

```math
\varepsilon\nu D_N+\mu_N.
```

The endpoint mass is different:

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma,
\qquad
\widetilde Z\ge0.
```

It is a nonnegative accumulated stress source. A bound for the signed
commutator packet does not give a lower or upper coercive comparison for
`\|M_0\|_2^2` unless a theorem transfers the positive endpoint mass back to
the absorbed commutator family. That transfer is exactly what this target
needs; it is not installed by `(SP)` itself.

### 2. Direct Bilinear Theorem `(8j11)`

The far-corona execution file isolates the direct bilinear route:

```math
\sum_{m\in\mathcal B_I(N)}\sum_{j\in\mathcal B_J(N)}
E_m^{1/2}\,2^{-j/2}D_j.
\tag{8j11}
```

This is sharper than the crude endpoint-square shadow, but it is still a
separate active-pair theorem. Energy controls `E_m` and the time integral of
dissipation separately. It does not prove the active-pair absorption needed by
`(8j11)` on retained terminal windows.

Using only bounded energy leaves a superlinear active-dissipation demand or a
coefficient smallness requirement on the same terminal windows. That
coefficient smallness is not supplied by retained Pack, raw energy, raw CKN
finiteness, or `(SP)`.

### 3. `\mu_N` Carleson / `\nu_N` Window Route

The upgraded gradient interface says a Carleson estimate

```math
\mu_N(I)
\le
{\varepsilon_\mu\nu\over C}\int_ID_N(t)\,dt+C_{\mu,*}2^{-2\delta N}
```

would absorb the endpoint contribution. No installed theorem proves this
Carleson estimate before `(EP)` or the far-corona packet is closed.

For each fixed `N`, `\nu_N` is locally integrable, so a terminal window can be
chosen with small `\nu_N` mass. The retained endpoint route needs the small
coefficient window and the small entrance tail `E_N(t_N)` on the same
scale-normalized terminal family. Preterminal smoothness gives tail smallness
at fixed times; it does not by itself synchronize that tail smallness with the
`N`-dependent terminal windows selected by `\nu_N`.

Thus the `\nu_N` route exposes a real diagonal theorem, not a finished proof.

## Result

`RetainedEndpointMassShellPairThreading.A` is not proved from current inputs.

The active endpoint split is now:

```text
EndpointMassFromShellPairCommutator.A,
DirectFiniteBandBilinear8j11.A,
RetainedMuNCarleson.A,
TerminalNuNWindowSeedSynchronization.A.
```

These are smaller than the full far-corona theorem. They are also not cosmetic
renamings: each names a concrete missing bridge between the retained endpoint
mass and an installed carrier.

## New Live Criticism

`NS-LIVE-20260609-186`: `RetainedEndpointMassShellPairThreading.A` is not
proved. The absorbed shell-pair commutator estimate `(SP)` lands on the
upgraded interface measure but does not dominate the nonnegative endpoint mass
`M_0`; the direct `(8j11)` bilinear theorem is not installed from energy,
retained Pack, raw CKN finiteness, or `(SP)`; and the `\mu_N/\nu_N` measure
routes need a Carleson theorem or synchronized terminal-window seed theorem
before `(EP)`. The next pass must attack one of those four endpoint-threading
components and keep `pdfs_final: false`.
