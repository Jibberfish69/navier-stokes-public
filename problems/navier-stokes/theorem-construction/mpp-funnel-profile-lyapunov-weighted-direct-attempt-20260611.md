---
ns_viewer:
  theorem_id: funnel-profile-lyapunov-weighted-direct-attempt-20260611
  status: conditional-weighted-profile-identity-proved-unconditional-lyapunov-not-proved
  proof_role: forward_positive_profile_lyapunov_attempt
  logical_landing_node: funnel_profile_lyapunov
  edge_effect: "Attempts FunnelProfileLyapunov.A by using a Gaussian weighted rescaled-field energy in backward self-similar variables. The linear rescaled operator gives coercive damping, but the nonlinear and pressure bulk terms remain scale-critical and unsigned."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-estimate-direct-audit-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-parabolic-funnel-forward-control-analysis-20260611.md
  downstream_consequence: "The natural weighted rescaled-field energy is a useful identity, not a closure theorem. FunnelProfileLyapunov.A now requires a new bound on the weighted nonlinear-pressure production term or a cancellation theorem for that term."
---

# MPP FunnelProfileLyapunovWeightedDirectAttempt.A

Date: 2026-06-11

Status: direct forward-positive attempt. The weighted identity is proved; the
unconditional Lyapunov closure is not proved.

## 1. Rescaled Equation

Use the same backward self-similar variables:

```text
tau = T-t,
y = (x-x0)/sqrt(tau),
s = -log tau,
v(y,s) = sqrt(tau) u(x,t),
q(y,s) = tau p(x,t).
```

The rescaled equation is

```text
partial_s v
- nu Delta v
+ (v dot nabla)v
+ nabla q
+ (1/2)y dot nabla v
+ (1/2)v
= 0,

div v = 0.
```

The unweighted energy on `B_lambda` failed because it contains the growth-side
term `A_lambda/4` plus boundary pressure/flux terms. The next natural attempt
is to weight the rescaled energy by the Gaussian

```text
G(y) = exp(-|y|^2/(4nu)).
```

## 2. Weighted Energy Identity

Define

```text
E_G(s) = int |v(y,s)|^2 G(y) dy
```

on either the whole rescaled `y`-space, when justified by cutoff limits, or on a
bounded ball with the corresponding boundary errors retained.

For a smooth compactly supported rescaled field `v`, multiply the rescaled
equation by `vG` and integrate. The linear part gives

```text
int [ -nu Delta v + (1/2)y dot nabla v + (1/2)v ] dot v G dy
= nu int |nabla v|^2 G dy + (1/2) int |v|^2 G dy.
```

Thus

```text
(1/2) d/ds int |v|^2 G dy
+ nu int |nabla v|^2 G dy
+ (1/2) int |v|^2 G dy
= - int (v dot nabla)v dot v G dy
  - int nabla q dot v G dy.
```

Since `div v = 0`,

```text
- int (v dot nabla)v dot v G dy
= (1/2) int |v|^2 v dot nabla G dy
= - (1/(4nu)) int |v|^2 (v dot y) G dy.
```

Also

```text
- int nabla q dot v G dy
= int q v dot nabla G dy
= - (1/(2nu)) int q (v dot y) G dy.
```

So the exact weighted balance is

```text
(1/2) E_G'(s)
+ nu D_G(s)
+ (1/2) E_G(s)
= - (1/(4nu)) int |v|^2 (v dot y) G dy
   - (1/(2nu)) int q (v dot y) G dy,
```

where

```text
D_G(s) = int |nabla v|^2 G dy.
```

## 3. What The Identity Gives

The Gaussian fixes the linear part. The drift and diffusion now produce real
coercive loss:

```text
nu D_G + (1/2)E_G.
```

This is better than the unweighted ball identity.

The remaining right-hand side is the whole problem:

```text
N_G(s)
= int [ |v|^2 + |q| ] |v| |y| G dy.
```

It is scale-critical in the same rescaled variables. The identity gives a
Lyapunov theorem only under an additional estimate such as

```text
N_G(s)
<= theta [ nu D_G(s) + (1/2)E_G(s) ] + R(s),

theta < 1,
int_{S0}^{infinity} R(s) ds < infinity.
```

Under that added premise,

```text
sup_{s>=S0} E_G(s)
+ int_{S0}^{infinity} [D_G(s)+E_G(s)] ds
< infinity,
```

and the weighted rescaled energy decays along late times.

## 4. Why This Does Not Close The Forward Problem Yet

The current cone ledger does not supply the small constant `theta < 1`.

On a bounded cone aperture `|y|<lambda`, the right-hand side is bounded by

```text
N_G(s)
<= C(lambda,nu) int_{B_lambda} ( |v|^3 + |q||v| ) dy.
```

This is precisely the nonlinear-pressure charge that
`ParabolicFunnelScaleCriticalBudget.A` must bound. So the weighted identity does
not remove the discount by itself; it restates the missing control as a
weighted nonlinear-pressure production estimate.

## 5. Result

This direct attempt proves the exact conditional weighted identity:

```text
(1/2) E_G'(s) + nu D_G(s) + (1/2) E_G(s)
= P_G(s),

|P_G(s)| <= N_G(s).
```

Here `P_G` is the signed right-hand side in the weighted balance above, and
`N_G` is the absolute nonlinear-pressure production bound.

It becomes a Lyapunov estimate only under the additional coefficient-margin
premise
`N_G(s) <= theta [nu D_G(s)+(1/2)E_G(s)] + R(s)` with `theta<1` and integrable
`R`. It does not prove unconditional `FunnelProfileLyapunov.A`.

The downstream subtarget is still named:

```text
WeightedProfileProductionAbsorption.A
```

but its mathematical content is the exact coefficient-margin statement:

```text
int [ |v|^2 + |q| ] |v| |y| G dy
<= theta [ nu int |nabla v|^2 G dy + (1/2) int |v|^2 G dy ]
   + R(s),

theta < 1,
R in L^1_s.
```

That is a genuine new estimate. Without it, the Gaussian weighted energy is an
identity with the right linear sign, not a proof of late-slab smallness.
