---
ns_viewer:
  theorem_id: retained-finite-band-amplitude-smallness-direct-attempt-20260609
  status: failed-amplitude-smallness-not-produced
  proof_role: retained_far_corona_finite_collar_amplitude_attempt
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Continues the active-completion loop from DirectFiniteBandBilinear8j11.A. RetainedFiniteBandAmplitudeSmallness.A is not proved: raw energy controls only L2 mass, retained Field-window evidence keeps a carrier alive, raw CKN/source finiteness does not force a retained H^{1/2}-scale collar amplitude bound, and the upgraded shell-pair packet is coefficient-bearing rather than coefficient-small."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-direct-finite-band-bilinear-8j11-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/far-corona-carleson-direct-attack.md
    - problems/navier-stokes/theorem-construction/minimal-stronger-gradient-coefficient-interface-theorem.md
  downstream_consequence: "The direct finite-band branch now requires TerminalFiniteCollarSeedToIntervalControl.A or an independent retained H^{1/2}-collar decay theorem. Sibling endpoint routes through EndpointMassFromShellPairCommutator.A, RetainedMuNCarleson.A, and TerminalNuNWindowSeedSynchronization.A remain open. PDF finality remains false."
---

# MPP RetainedFiniteBandAmplitudeSmallness.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `(EP)`,
`(L-Flux)`, `RetainedCarrierTailInput.A`, `NoGenuineExitFromSmoothData.A`, or
CMI finality.

## Target

The direct `(8j11)` attempt reduced the finite-band absorption to smallness of
the collar coefficient

```math
2^{-j}E_m(t),
\qquad
m\in\mathcal B_I(N),\quad j\in\mathcal B_J(N).
```

With

```math
E_m(t)=2^{2m}\|\Delta_m u(t)\|_{L_x^2}^2
```

and fixed collar restrictions `|m-j|\le C_0` and `|j-N|\le C_0`, the coefficient is

```math
2^{-j}E_m(t)
=
2^{2m-j}\|\Delta_m u(t)\|_{L_x^2}^2.
\tag{A}
```

Hence
`c_{C_0}2^N\|\Delta_m u(t)\|_{L_x^2}^2
\le 2^{-j}E_m(t)
\le C_{C_0}2^N\|\Delta_m u(t)\|_{L_x^2}^2`.

So `RetainedFiniteBandAmplitudeSmallness.A` asks for a retained terminal
`H^{1/2}`-scale collar amplitude gain, not merely for energy boundedness.

## Direct Test

### Raw Energy

The energy inequality gives control of

```math
\sum_m\|\Delta_m u(t)\|_{L_x^2}^2.
```

It does not force the weighted single-collar quantity in `(A)` to be small on
a retained terminal interval. A high shell can have
`\|\Delta_m u\|_2^2:=c2^{-N}` while the total `L^2` contribution is tiny and
the coefficient `2^N\|\Delta_m u\|_2^2` is exactly `c`.

This blocks a theorem derived from raw energy alone.

### Retained Pack

Retained Pack is a survival/admissibility input for the terminal CM witness. It
does not assert decay of the active finite collar. On the retained branch it is
consistent with a positive carrier remaining visible at the endpoint scale.

### Raw CKN / Source Finiteness

CKN/source finiteness gives scale-critical spacetime control and source
accounting. It does not imply a uniform terminal `H^{1/2}` collar bound for the
specific finite packet selected by `\mathcal B_I(N),\mathcal B_J(N)`.

That missing step would itself be a theorem: terminal retained collar
amplitude decay, a local Morrey-to-collar amplitude gain, or a source-residence
estimate strong enough to force the same conclusion.

### Upgraded Shell-Pair Packet

The far-corona direct attack proves the fixed-collar commutator packet in the
coefficient-bearing form

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu D_N(t)
+
C_{\varepsilon,\nu,I,J}
\widetilde\Lambda_N^\sharp(t)E_N(t).
\tag{SP}
```

This lands on the upgraded measure `\mu_N`. It does not make
`\widetilde\Lambda_N^\sharp`, `E_N`, or `2^{-j}E_m` small. The packet is
coefficient-bearing, not coefficient-free.

The same source also records why amplitude-free absorption is impossible: the
commutator is cubic in the velocity while dissipation is quadratic. Scaling a
nontrivial fixed-collar test field makes any amplitude-free inequality fail.

## Seed Boundary

At a fixed regular time `t_0<T`, preterminal smoothness gives high-frequency
tail smallness as `N\to\infty`. That gives a possible seed:

```math
2^{-j}E_m(t_0)\to0.
```

The active endpoint theorem needs interval control from that seed to the
terminal window. The missing step is the propagation of finite-collar smallness
through the retained terminal interval under the actual coefficient surface.

## Result

`RetainedFiniteBandAmplitudeSmallness.A` is not proved from current inputs.

The direct finite-band branch reduces to:

```text
TerminalFiniteCollarSeedToIntervalControl.A
```

or an independent theorem producing retained terminal `H^{1/2}` collar decay.
The sibling endpoint routes remain live:

```text
EndpointMassFromShellPairCommutator.A,
RetainedMuNCarleson.A,
TerminalNuNWindowSeedSynchronization.A.
```

## New Live Criticism

`NS-LIVE-20260609-188`: `RetainedFiniteBandAmplitudeSmallness.A` is not
proved. The needed coefficient smallness is the finite-collar `H^{1/2}` scale
quantity `2^{-j}E_m=2^{2m-j}\|\Delta_m u\|_2^2`, with fixed-collar comparison
to `2^N\|\Delta_m u\|_2^2`; raw energy, retained Field-window evidence,
CKN/source finiteness, and the coefficient-bearing shell-pair packet do not
force it small on the retained terminal interval. The next pass must prove
`TerminalFiniteCollarSeedToIntervalControl.A`, an independent retained collar
decay theorem, `RetainedMuNCarleson.A`,
`EndpointMassFromShellPairCommutator.A`,
`TerminalNuNWindowSeedSynchronization.A`, or an equivalent endpoint theorem
feeding `(EP)`.
