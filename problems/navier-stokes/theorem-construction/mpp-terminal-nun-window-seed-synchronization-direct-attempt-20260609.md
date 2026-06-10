---
ns_viewer:
  theorem_id: terminal-nun-window-seed-synchronization-direct-attempt-20260609
  status: failed-synchronization-not-produced
  proof_role: retained_far_corona_terminal_nu_window_attempt
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Tests the remaining terminal-window requirement after the finite-collar seed-to-interval theorem. TerminalNuNWindowSeedSynchronization.A is not proved from current inputs: fixed-N integrability of nu_N gives arbitrarily small terminal windows for that fixed threshold, and preterminal smoothness gives high-frequency seed smallness at any fixed regular time, but the repo does not supply a theorem synchronizing those two facts along the same N-dependent retained terminal family."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-terminal-finite-collar-seed-to-interval-control-proof-20260609.md
    - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
    - problems/navier-stokes/theorem-construction/minimal-stronger-gradient-coefficient-interface-theorem.md
    - problems/navier-stokes/theorem-construction/terminal-window-finite-mode-coefficient-measure.md
  downstream_consequence: "The direct finite-band terminal-window route remains open. The next untested sibling endpoint route is EndpointMassFromShellPairCommutator.A; RetainedMuNCarleson.A remains available only as an independent Carleson theorem not supplied by the current packet stack. PDF finality remains false."
---

# MPP TerminalNuNWindowSeedSynchronization.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `(EP)`,
`(L-Flux)`, `RetainedCarrierTailInput.A`, `NoGenuineExitFromSmoothData.A`, or
CMI finality.

## Target

The conditional collar theorem now needs a single terminal family
`I_N=[t_N,T)` such that

```math
\nu_N(I_N)
=
\int_{I_N}\widetilde\Lambda_N^\sharp(t)\,dt
\le
\varepsilon_*,
\tag{1}
```

and

```math
E_N(t_N)+|I_N|2^{-2\delta N}\to0.
\tag{2}
```

The two requirements must hold on the same retained far-corona family.

## What Is Available

### Fixed-`N` Integrability

For each fixed `N`, the upgraded coefficient
`\widetilde\Lambda_N^\sharp` is locally integrable on `[0,T)`. Hence

```math
\nu_N([t,T))\to0
\qquad(t\uparrow T)
```

for that fixed `N`.

This proves small terminal `\nu_N` mass after `N` has been fixed.

### Smooth Entrance Seeds

For each fixed regular time `t<T`, preterminal smoothness gives

```math
E_N(t)\to0
\qquad(N\to\infty).
```

This proves high-frequency seed smallness after the entrance time has been
fixed.

## Synchronization Gap

The theorem needs a diagonal choice `N\mapsto t_N` where both facts hold
together. Current inputs do not supply that diagonal theorem.

The obstruction is the order of choice:

```text
fixed N -> choose t close to T for small nu_N tail;
fixed t -> choose N large for small high-frequency seed.
```

These two statements do not by themselves produce:

```math
\nu_N([t_N,T))\le\varepsilon_*,
\qquad
E_N(t_N)\to0.
```

The missing content is a uniform terminal-window selection theorem, a Carleson
bound for `\mu_N`, or a retained endpoint coercivity theorem that bypasses the
terminal-window route.

The low-mode theorem
`terminal-window-finite-mode-coefficient-measure.md` does not close this gap.
It handles a finite-mode coefficient measure after `N` is fixed. The current
coefficient is the upgraded high-threshold object

```math
\widetilde\Lambda_N^\sharp
=
\Lambda_N+\Theta_N^\sharp,
```

where the collar term changes with the retained endpoint scale. A finite-mode
terminal-window argument is not a uniform high-`N` synchronization theorem.

## Result

`TerminalNuNWindowSeedSynchronization.A` is not proved from current inputs.

The direct finite-band terminal-window route remains open unless one proves a
new theorem of one of the following forms:

```text
UniformTerminalNuNSynchronization.A,
RetainedMuNCarleson.A,
EndpointMassFromShellPairCommutator.A,
or an equivalent endpoint theorem feeding (EP).
```

Among the sibling routes already exposed by the endpoint split, the remaining
untested direct route is:

```text
EndpointMassFromShellPairCommutator.A.
```

## New Live Criticism

`NS-LIVE-20260609-190`: `TerminalNuNWindowSeedSynchronization.A` is not proved.
Fixed-`N` integrability of `\nu_N` and fixed-time smooth high-frequency seed
smallness do not synchronize automatically along the same retained
`N`-dependent terminal family. The next pass must prove
`EndpointMassFromShellPairCommutator.A`, `RetainedMuNCarleson.A`, or another
endpoint theorem feeding `(EP)`, or install a genuine uniform terminal
`\nu_N` synchronization theorem.
