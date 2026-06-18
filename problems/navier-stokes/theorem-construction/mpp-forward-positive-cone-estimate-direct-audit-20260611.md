---
ns_viewer:
  theorem_id: forward-positive-cone-estimate-direct-audit-20260611
  status: direct-forward-positive-audit-complete-current-ledger-does-not-supply-undiscounted-cone-control
  proof_role: forward_positive_estimate_audit
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Audits the exact forward-positive children left by ConePaymentClosurePackage.A: ParabolicFunnelScaleCriticalBudget.A, FunnelProfileLyapunov.A, ScaleCriticalPaymentThrottle.A, and KineticDensityMorreyFromParticipation.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cone-payment-closure-package-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-parabolic-funnel-forward-control-analysis-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-density-point-closure-direct-attempt-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md
  downstream_consequence: "The forward-positive route is narrowed to a genuine scale-critical coercive estimate. The current cone ledger proves the moving identity, the physical discount, and the critical payment-rate threshold, but it does not prove discount removal, an unweighted cone budget, a rescaled-field Lyapunov functional, a scale-uniform payment throttle, or point-density Morrey control."
---

# MPP ForwardPositiveConeEstimateDirectAudit.A

Date: 2026-06-11

Status: direct audit of the forward-positive cone estimate children. This note
does not use endpoint routing. It checks whether the current cone ledger itself
supplies the missing estimates.

## 1. Exact Forward Children Under Audit

`ConePaymentClosurePackage.A` leaves four forward-positive children:

```text
ParabolicFunnelScaleCriticalBudget.A
FunnelProfileLyapunov.A
ScaleCriticalPaymentThrottle.A
KineticDensityMorreyFromParticipation.A
```

They have one shared job: turn same-fluid participation into scale-critical
control at the shrinking cone tip.

## 2. Discount Removal Is Not A Bookkeeping Consequence

In parabolic variables

```text
tau = T-t,
y = (x-x0)/sqrt(tau),
s = -log tau,
v(y,s) = sqrt(tau) u(x,t),
q(y,s) = tau p(x,t),
```

the physical cone quantities are discounted:

```text
int_{B_{lambda sqrt(tau)}} |u|^2 dx
= e^{-s/2} int_{B_lambda} |v|^2 dy,
```

and

```text
int ( |u|^3 + |p|^{3/2} ) dx dt
= int e^{-s} ( |v|^3 + |q|^{3/2} ) dy ds
```

up to fixed constants on unit `s` slabs.

The pure ledger cannot remove that discount. A model rescaled field

```text
v(y,s) = phi(y),       q(y,s) = pi(y),
```

with compact support in `B_lambda` and nonzero scale-critical mass has

```text
int_{S0}^{infinity} e^{-s}
  int_{B_lambda} ( |phi|^3 + |pi|^{3/2} ) dy ds
< infinity,
```

while

```text
int_{S0}^{infinity}
  int_{B_lambda} ( |phi|^3 + |pi|^{3/2} ) dy ds
= infinity.
```

This is not a Navier-Stokes solution claim. It proves the narrower point:
finite discounted physical cone accounting is logically weaker than finite
undiscounted cone accounting. Any proof of
`ParabolicFunnelScaleCriticalBudget.A` must use real Navier-Stokes structure
beyond the moving-domain ledger.

## 3. The Basic Rescaled Field Energy Is Not A Lyapunov Functional

The rescaled equation used by the funnel note is

```text
partial_s v
- nu Delta_y v
+ (v dot nabla_y)v
+ nabla_y q
+ (1/2)y dot nabla_y v
+ (1/2)v
= 0,
div_y v = 0.
```

Let

```text
A_lambda(s) = int_{B_lambda} |v|^2 dy.
```

Multiplying by `v` and integrating over `B_lambda` gives

```text
(1/2) A_lambda'(s)
+ nu int_{B_lambda} |nabla v|^2 dy
- (1/4) A_lambda(s)
+ Boundary_lambda(s)
= 0,
```

where

```text
Boundary_lambda(s)
= -nu int_{partial B_lambda} partial_n v dot v dS
  + (1/2) int_{partial B_lambda} |v|^2 v dot n dS
  + int_{partial B_lambda} q v dot n dS
  + (1/4) int_{partial B_lambda} |v|^2 y dot n dS.
```

Thus

```text
(1/2) A_lambda'(s)
+ nu int_{B_lambda} |nabla v|^2 dy
= (1/4) A_lambda(s) - Boundary_lambda(s).
```

The unweighted rescaled energy has a growth-side term `A_lambda/4` and uncontrolled
boundary pressure/flux terms. It is not a monotone decreasing quantity on the
cone. Therefore `FunnelProfileLyapunov.A` is not supplied by the plain rescaled
energy.

A successful Lyapunov theorem must add a new weight, pressure cancellation,
boundary condition, or coercive rescaled-field identity that turns the right-hand side
into controlled loss.

## 4. The Fixed-Scale Payment Formula Does Not Give A Uniform Throttle

The fixed-scale packet audit gives

```text
Rate_E(r,t)
<= C r^{-1} int_{A_r} |u|^3
 + C r^{-1} int_{A_r} |p-c_r||u|
 + C nu r^{-2} int_{A_r} |u|^2.
```

Define the critical velocity scale only as a comparison unit:

```text
U_bench(r;A) := A nu/r,
```

where `A` is a dimensionless benchmark amplitude. This is not an assertion
that the branch has pointwise size `A nu/r`. The stored critical packet
energy and payment power for a full-volume benchmark are

```text
E_A(r) = omega_3 A^2 nu^2 r,
P_A(r) = omega_3 A^2 nu^3/r.
```

The cubic transport benchmark at the same scale is valid only under an explicit
positive-measure amplitude hypothesis. If an annulus `A_r` has volume constant
`omega_A` and the tested branch satisfies `|u|=A nu/r` on that entire benchmark
annulus, then

```text
r^{-1} int_{A_r} |u|^3
= omega_A A^3 nu^3/r.
```

Without that volume/amplitude hypothesis, the actual quantity remains
`r^{-1} int_{A_r}|u|^3`, not the benchmark value. A weaker lower bound must be
stated with its actual superlevel set: for example, if
`|G_r(t)| >= theta |A_r|` and `|u| >= c A nu/r` on `G_r(t)`, then
`r^{-1} int_{A_r}|u|^3 >= theta c^3 omega_A A^3 nu^3/r`.

So the known rate formula is an accounting upper bound, not a throttle that
beats the required payment.  When `A` is bounded above and below, it has the
same `r^{-1}` scale as the critical payment demand; when `A` grows, the
cubic amplitude power is larger than the quadratic payment demand.

Therefore `ScaleCriticalPaymentThrottle.A` still needs a structural estimate
that converts pressure/flux/donor/return accounting into a bound strictly below
the critical payment demand on every shrinking schedule.

## 5. Density Control Needs Morrey Or Cone Control

With fixed density `rho0 > 0`,

```text
k(x,t) = (rho0/2)|u(x,t)|^2
```

and pointwise finite `k(x0,T)` would give finite `|u(x0,T)|`.

The failed direct density note already shows the gap:

```text
int_{B_R(x0)} k dx < infinity
```

does not imply `k(x0,T)<infinity`. An integrable density can have an infinite
point value.

The forward-positive density child must therefore prove a stronger local
regularity statement, for example a Morrey/Campanato control or an epsilon
regularity premise on shrinking parabolic cylinders. In this route, the density
language is a measuring layer inside the cone estimate; it is not a standalone
closure theorem.

## 6. Result Of The Audit

The current forward-positive ledger proves:

```text
moving-cone energy identity;
discounted physical cone budget;
finite undiscounted cone budget => late-slab smallness => CKN regularity;
critical stored energy benchmark E_A(r) = omega_3 A^2 nu^2 r under the full-volume amplitude hypothesis;
critical payment power benchmark P_A(r) = omega_3 A^2 nu^3/r under the same hypothesis;
fixed-scale transfer-rate accounting;
density-only point closure fails from finite integral data.
```

The current forward-positive ledger does not prove:

```text
ParabolicFunnelScaleCriticalBudget.A;
FunnelProfileLyapunov.A;
ScaleCriticalPaymentThrottle.A;
KineticDensityMorreyFromParticipation.A.
```

The shared mathematical hinge is now exact:

```text
find a Navier-Stokes structural estimate that converts same-fluid participation
into unweighted scale-critical cone control at the shrinking tip.
```

Equivalently, the forward-positive route must prove one of:

```text
int_{S0}^{infinity} int_{B_lambda}
  ( |v|^3 + |q|^{3/2} + |nabla v|^2 ) dy ds
< infinity;

or a rescaled-field Lyapunov/coercivity inequality strong enough to force late slab
smallness;

or a scale-uniform payment throttle below the explicit benchmark/superlevel
payment bill on every shrinking schedule;

or a point-density Morrey/Campanato estimate strong enough to bound k(x0,T).
```

This is the narrowed forward-positive work order. Any later theorem must pay
one of these four estimates directly, rather than treating the cone ledger or
finite physical energy as if they already paid it.
