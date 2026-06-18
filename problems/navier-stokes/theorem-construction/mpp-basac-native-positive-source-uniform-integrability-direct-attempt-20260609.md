---
ns_viewer:
  theorem_id: basac-native-positive-source-uniform-integrability-direct-attempt-20260609
  status: failed-uniform-integrability-not-produced
  proof_role: basac_source_density_family_direct_attempt
  logical_landing_node: first-exit-pack-survival-source-density-rejoin
  edge_effect: "Tests whether the B_ASAC native positive source marginal has uniform integrability, Orlicz residence, Morrey residence, or local positive source Carleson control from the produced B_ASAC inputs. The route fails: the installed data give finite local L1_s source mass, no fixed earlier selected source slice, zero ASAC, paid exits, local-energy BV traces, and weak linear trace compactness; all remain compatible with a shrinking terminal layer g_m(s)=m 1_{(-1/m,0]}(s)."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-endpoint-exactness-cycle-rejoin-audit-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-basac-positive-source-trace-ac-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-basac-uniform-temporal-source-integrability-direct-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-basac-all-reduced-routes-exhaustion-certificate-20260517.md
  downstream_consequence: "The B_ASAC source-density family remains open as a positive supplier family. It cannot be counted as public Clay finality. The next loop target must be a non-alias first-exit Pack-survival or no-genuine-exit bridge that does not merely rename source-density, endpoint exactness, material-collar, or terminal-strain branches already tested in this run."
---

# MPP NativePositiveSourceUniformIntegrability_BASAC.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`BASACTimeFaceAntiAtom.A`, `OriginalSmoothDataPackSurvival.A`,
`NoGenuineExitFromSmoothData.A`, the reader-facing PDFs, or CMI finality.

## Target

The B_ASAC source-density target is a uniform-integrability theorem for the
native positive source marginal. A usable form is:

```math
\mu_m^{src,+}(B_R\times E)
\le \omega_R(|E|)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow 0,
```

for every measurable time set `E subset (-R^2,0)`.

This target includes the stronger presentations:

```text
TerminalSourceOrliczResidence_{B_ASAC}.A,
TerminalSourceMorreyResidence_{B_ASAC}.A,
LocalPositiveSourceCarleson_{B_ASAC}.A.
```

Any one of these would forbid a zero-thickness terminal native positive source
atom and would feed `BASACTimeFaceAntiAtom.A`.

## Installed inputs

The produced B_ASAC branch supplies:

```text
same-fluid terminal carrier,
finite local L^1_s native positive source mass,
no fixed earlier selected source slice,
zero ASAC defect,
paid legal/projected/cutoff/boundary exits,
paid finite and non-Zeno donor exits,
local-energy / BV balance primitives,
weak linear velocity trace compactness.
```

The question is whether these inputs force uniform integrability of the
one-sided native positive source marginal.

## Direct attempt

### 1. Finite L1 source mass

Finite `L^1_s` source mass gives a bound on total mass. It does not give
uniform integrability.

The terminal layer

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has unit `L^1_s` mass and concentrates all mass into intervals whose length
tends to zero. It violates the desired modulus:

```math
\int_{-1/m}^{0} g_m(s)\,ds = 1
```

while `|-1/m,0]| -> 0`.

Thus the installed `L^1_s` bound does not prove
`NativePositiveSourceUniformIntegrability_{B_ASAC}.A`.

### 2. Orlicz and Morrey residence

A de la Vallee Poussin / Orlicz route would need a superlinear source moment:

```math
\int \Phi(g_m(s))\,ds \le C,
\qquad \Phi(r)/r\to\infty.
```

No installed B_ASAC clause supplies such a moment. The same terminal layer has
divergent superlinear moments.

A Morrey residence route would need a power improvement on short intervals.
Finite `L^1_s` mass gives no such improvement; the endpoint time-marginal
witness again has fixed positive mass on intervals of length `1/m`.

Thus the Orlicz and Morrey versions are not proved.

### 3. Local positive source Carleson

`LocalPositiveSourceCarleson_{B_ASAC}.A` asks for scale-critical control of the
localized positive pressure-strain / native source carrier. Current source-wall
audits already show that this estimate needs an active-square/source reserve,
positive remainder depletion, or an equivalent scale-critical production
theorem.

Those are exactly the unpaid source-wall quantities. Importing them here would
assume the payment this theorem is meant to produce.

Thus the Carleson version is not proved.

### 4. Local energy and weak trace compactness

Local energy gives bounded-variation balance primitives. BV primitives can
have terminal jumps. Weak linear velocity trace compactness controls linear
pairings, while the selected native source measure is one-sided and nonlinear
after packet selection.

Neither input controls the positive source marginal on shrinking terminal
strips.

### 5. Paid exits and no-earlier-slice clauses

Zero ASAC and the paid legal/projected/cutoff/boundary and finite-donor exits
remove their named channels. They do not estimate the surviving native positive
source measure.

No fixed earlier selected source slice is compatible with the endpoint
time-marginal witness
`g_m(s)=m 1_{(-1/m,0]}(s)`: every fixed earlier slice is empty while the
terminal strip still carries fixed positive mass.

## Result

`NativePositiveSourceUniformIntegrability_{B_ASAC}.A` is not proved from the
current installed inputs.

The Orlicz, Morrey, and local positive source Carleson presentations fail for
the same reason: the current B_ASAC data allow a zero-thickness terminal
positive source layer with bounded local `L^1_s` mass.

This means the B_ASAC source-density family remains a positive supplier family,
not a public Clay finality bridge. It cannot be counted as progress unless a
new theorem adds a real super-`L^1_s` source residence, a scale-critical source
reserve, or a separate non-source-density first-exit Pack-survival mechanism.

## New live criticism

`NS-LIVE-20260609-195`: the B_ASAC source-density family is not proved from
current installed inputs. Finite local `L^1_s` native positive source mass,
local-energy BV traces, weak linear trace compactness, zero ASAC, paid exits,
and no fixed earlier selected source slice all remain compatible with
`g_m(s)=m 1_{(-1/m,0]}(s)`. Orlicz, Morrey, uniform-integrability, and
Carleson source-residence forms therefore need new mathematical payment. The
loop must reenter a non-alias first-exit Pack-survival / no-genuine-exit bridge
or produce a genuinely new source-residence theorem; keep `pdfs_final: false`.
