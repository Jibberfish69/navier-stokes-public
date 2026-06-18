---
ns_viewer:
  theorem_id: weighted-profile-production-absorption-direct-test-20260611
  status: universal-coefficient-margin-false-by-amplitude-scaling
  proof_role: forward_positive_weighted_coefficient_margin_test
  logical_landing_node: funnel_profile_lyapunov
  edge_effect: "Tests the downstream subtarget still named WeightedProfileProductionAbsorption.A from the Gaussian rescaled-field Lyapunov attempt. Its mathematical content is the coefficient-margin inequality N_G <= theta[nu D_G+(1/2)E_G]+R with theta<1 and R in L^1_s. The universal amplitude-independent version is false because the nonlinear-pressure production is cubic in amplitude while the Gaussian linear loss is quadratic."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-funnel-profile-lyapunov-weighted-direct-attempt-20260611.md
  downstream_consequence: "FunnelProfileLyapunov.A cannot be closed by a bare pointwise-in-s Gaussian coefficient-margin inequality. A valid forward-positive Lyapunov route must use trajectory-specific cancellation, time integration, smallness, or another structural mechanism beyond amplitude-blind domination of N_G by nu D_G+(1/2)E_G."
---

# MPP WeightedProfileProductionAbsorptionDirectTest.A

Date: 2026-06-11

Status: direct test of the exact coefficient-margin estimate left by the
Gaussian rescaled-field identity. The universal amplitude-independent version is
false.

## 1. Candidate Coefficient-Margin Estimate

The weighted rescaled-field identity left the possible estimate

```text
N_G(s)
<= theta [ nu D_G(s) + (1/2)E_G(s) ] + R(s),

theta < 1,
R in L^1_s,
```

where

```text
E_G = int |v|^2 G dy,
D_G = int |nabla v|^2 G dy,
N_G = int [ |v|^2 + |q| ] |v| |y| G dy.
```

The cleanest coefficient-margin version would hold uniformly for all smooth divergence-free
rescaled fields on a fixed cone aperture, with constants depending only on
`lambda,nu`.

## 2. Amplitude Scaling Test

Choose a nonzero smooth compactly supported divergence-free test field `phi` in
the annulus where `|y|G(y)` is positive. Set

```text
v_M(y) = M phi(y).
```

Ignore pressure first. Then

```text
E_G[v_M] = M^2 E_G[phi],
D_G[v_M] = M^2 D_G[phi],
int |v_M|^3 |y|G dy = M^3 int |phi|^3 |y|G dy.
```

Thus the proposed coefficient-margin inequality would imply

```text
M^3 c_phi
<= theta M^2 C_phi + R
```

with `c_phi>0` and `C_phi<infinity`.

For fixed constants and fixed `R`, this fails as `M -> infinity`.

## 3. Pressure Does Not Repair The Universal Inequality

For a rescaled Navier-Stokes field, pressure is tied to

```text
-Delta q = partial_i partial_j (v_i v_j)
```

up to the usual normalization. Under amplitude scaling,

```text
v_M = M phi
```

the corresponding pressure is

```text
q_M = M^2 pi_phi.
```

Then the pressure production term is cubic in \(M\):

```text
int |q_M| |v_M| |y|G dy
```

equals \(M^3\int |\pi_\phi|\,|\phi|\,|y|G\,dy\), not an \(M^2\) quantity. It cannot turn a universal cubic production
bound into a quadratic linear-loss bound.

## 4. Result

The universal form of the downstream theorem name
`WeightedProfileProductionAbsorption.A` is false when read as the exact
coefficient-margin inequality:

```text
N_G <= theta [ nu D_G + (1/2)E_G ] + R
```

cannot hold for arbitrary smooth rescaled fields with amplitude-independent constants.

Therefore the Gaussian Lyapunov route can only work through a sharper
trajectory-specific theorem, such as:

```text
time-integrated cancellation of the weighted nonlinear-pressure production;
late-slab smallness already supplied by another estimate;
a monotone quantity that contains cubic/pressure terms, not only E_G;
a rigidity theorem for persistent nonzero rescaled fields.
```

This closes the amplitude-blind coefficient-margin attempt. It does not close
`FunnelProfileLyapunov.A`; it shows that the next Lyapunov proof cannot be a
plain quadratic domination of the nonlinear-pressure production by the Gaussian
linear loss.
