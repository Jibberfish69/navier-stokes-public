---
ns_viewer:
  theorem_id: positive-endpoint-stress-observability-direct-attempt-20260609
  status: failed-endpoint-observability-not-produced
  proof_role: retained_far_corona_positive_endpoint_observability_attempt
  logical_landing_node: retained-tail-input-far-corona-endpoint
  edge_effect: "Tests the positive endpoint branch after signed-to-positive transfer failed. PositiveEndpointStressObservability.A is not proved: positivity reduces the affine quotient to endpoint mass M0, but current inputs do not observe M0 by paid dissipation/carrier quantities. The direct routes fall back to endpoint square (FBE), mu_N Carleson, terminal nu_N synchronization, or positive-stress decorrelation."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-positive-stress-signed-exactness-transfer-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-positive-affine-endpoint-mass-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-accumulated-stress-l2-carleson-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-potential-average-positive-transfer-direct-attempt-20260609.md
  downstream_consequence: "The active endpoint branch now needs SecondOrderScaleExactness.A, RetainedMuNCarleson.A, UniformTerminalNuNSynchronization.A, retained positive-stress decorrelation/Carleson, or another endpoint theorem feeding (EP). PDF finality remains false."
---

# MPP PositiveEndpointStressObservability.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `(EP)`,
`(L-Flux)`, `RetainedCarrierTailInput.A`, `NoGenuineExitFromSmoothData.A`, or
CMI finality.

## Target

The desired theorem is an observability estimate for the positive endpoint mass

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma,
\qquad
\widetilde Z(\sigma,t,x)
=
\chi_{mid}(\sigma)^{1/2}\tau_{e^\sigma}^{H^1}[u](x,t)\ge0.
```

The theorem would need to prove

```math
\int_0^T H_w(t)\|M_0(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
\tag{EP}
```

from already-paid retained endpoint inputs.

## Direct Test

### 1. Positivity

The positive carrier gives the useful pointwise reduction

```math
0\le c_F(t,x)\le {|J|\over |I|}M_0(t,x).
```

This reduces the affine quotient to `(EP)`. It does not prove `(EP)`. Positivity
keeps the endpoint mass from cancelling; it does not make that mass small or
observable by the linear dissipation budget.

### 2. Endpoint-square reduction

Cauchy on the fixed windows gives

```math
\|M_0(t)\|_{L_x^2}^2
\le
|J|\int_J\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma.
```

After the harmonic-weight bound, this is the finite-band endpoint-square
theorem:

```math
\int_0^T
\Big(\sum_{m\in\mathcal B_I(N)}E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)}2^{-j}D_j(t)^2\Big)\,dt
\le
{\eta\nu\over C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
\tag{FBE}
```

That theorem is not installed. The direct finite-band branch has already
exposed the same obstruction: bounded energy gives a coefficient, not a small
coefficient, and raw dissipation is first moment rather than active-square
control.

### 3. Moment-evolution route

The positive stress density has a parabolic balance and hence `M_0` has an
exact moment evolution. The existing potential-average transfer note already
records the boundary of that route: the nonlinear source term is not controlled
by `M_0` alone, and the coercive moment dissipation is not linked to the
endpoint norm without another theorem.

So the parabolic identity gives a home for a future observability theorem. It
is not itself observability.

### 4. Accumulated-stress Carleson route

The accumulated stress `L^2` route was tested directly. It fails in the current
stack because coherent positive stress packets realize the sharp lower-prefix
Hardy behavior. To beat that model one needs a positive-stress decorrelation,
anti-coherence, or active-square/Carleson theorem.

Thus endpoint observability cannot be imported from Volterra structure alone.

## Result

`PositiveEndpointStressObservability.A` is not proved from current inputs.

The live endpoint branch is now:

```text
SecondOrderScaleExactness.A,
RetainedMuNCarleson.A,
UniformTerminalNuNSynchronization.A,
RetainedVolterraStressDecorrelation.A / positive-stress Carleson,
or another endpoint theorem feeding (EP).
```

The next direct sibling is `SecondOrderScaleExactness.A`: it asks whether the
surviving affine/endpoint mode can be killed by one extra scale derivative
rather than by positive endpoint observability.

## New Live Criticism

`NS-LIVE-20260609-193`: `PositiveEndpointStressObservability.A` is not proved.
Positivity shrinks the affine quotient to `M_0`, but the current theorem stack
does not observe `M_0` by paid dissipation or carrier quantities. Cauchy returns
to the finite-band endpoint-square theorem, moment evolution leaves an unpaid
nonlinear source/coercivity bridge, and Volterra stress Carleson fails on
coherent positive stress packets without decorrelation. The next pass must prove
`SecondOrderScaleExactness.A`, `RetainedMuNCarleson.A`,
`UniformTerminalNuNSynchronization.A`, retained positive-stress decorrelation /
Carleson, or an equivalent endpoint theorem feeding `(EP)`.
