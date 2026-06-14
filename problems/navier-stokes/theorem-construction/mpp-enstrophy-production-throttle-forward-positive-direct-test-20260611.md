---
ns_viewer:
  theorem_id: enstrophy-production-throttle-forward-positive-direct-test-20260611
  status: failed-direct-forward-positive-throttle-reduces-to-classical-vortex-stretching-wall
  proof_role: forward_positive_high_tower_budget_direct_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests the exact high-tower budget needed after the cone, tower, and affine-collar notes. The required finite second-derivative/tower budget does not follow from the global energy law or the standard enstrophy identity: the vortex-stretching term has the critical sign/size that permits the same finite-time high-tower growth the argument must exclude."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-critical-base-feed-to-tower-coherence-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/lagrangian-six-lemma-mainline.md
  downstream_consequence: "The forward-positive cone/payment route is now sharply audited: base energy, wall flux, cone volume, global drain, derivative-tower pricing, and affine-collar pricing do not by themselves close the tip. The live forward-positive obstruction is exactly a noncircular enstrophy/vortex-stretching throttle or an equivalent high-tower Lyapunov mechanism."
---

# MPP EnstrophyProductionThrottleForwardPositiveDirectTest.A

Date: 2026-06-11

Status: direct forward-positive test. This note checks whether the high-tower
budget required by the cone/collar pricing follows from the standard
Navier-Stokes differential identities.

## 0. Target

The cone/tower work has reached this need:

```text
finite high-tower budget strong enough to sum the local and collar bills.
```

A sufficient version would be

```text
int_0^T int |grad^2 u|^2 dx dt < infinity
```

on the terminal tail, or a localized substitute that dominates the same
second-derivative costs produced by non-affine packets and affine collars.

The question here is whether the usual energy/enstrophy machinery supplies that
budget.

## 1. Energy Does Not See The Needed Bill

The global energy law is

```text
(1/2) d/dt ||u||_2^2
+ nu ||grad u||_2^2
= 0
```

for smooth unforced solutions on the standard finite-energy surfaces.

This gives

```text
nu int_0^T ||grad u||_2^2 dt <= (1/2)||u_0||_2^2.
```

It does not give

```text
int_0^T ||grad^2 u||_2^2 dt < infinity
```

with a terminal-uniform bound. The cone/collar costs live one derivative higher
than the global energy drain.

So the global energy law cannot be the missing throttle.

## 2. Enstrophy Identity

Let

```text
omega = curl u.
```

The vorticity equation is

```text
partial_t omega + u dot grad omega
= omega dot grad u + nu Delta omega.
```

Taking the `L^2` inner product with `omega` gives

```text
(1/2) d/dt ||omega||_2^2
+ nu ||grad omega||_2^2
= int (omega dot grad u) dot omega dx.
```

The left side contains the desired high-tower drain:

```text
c_E^{-1}||grad^2 u||_2^2
<=
||grad omega||_2^2
<=
c_E||grad^2 u||_2^2
```

on divergence-free fields, up to standard elliptic equivalence.

The right side is vortex stretching:

```text
V(t)=int (omega dot grad u) dot omega dx.
```

It has no fixed sign.

## 3. The Standard Bound Is Critical And Does Not Close

The usual estimate is

```text
|V(t)|
<= C ||grad u||_2^(3/2) ||grad omega||_2^(3/2).
```

Young's inequality gives

```text
|V(t)|
<= (nu/2)||grad omega||_2^2
   + C nu^(-3) ||grad u||_2^6.
```

Thus

```text
d/dt ||grad u||_2^2
+ nu ||grad^2 u||_2^2
<= C nu^(-3) ||grad u||_2^6.
```

Set

```text
Y(t)=||grad u(t)||_2^2.
```

The differential inequality becomes

```text
Y'(t) <= C nu^(-3) Y(t)^3.
```

The comparison ODE

```text
Z'(t)=C nu^(-3) Z(t)^3
```

has terminal profile

```text
Z(t)=((2C)nu^(-3)(T-t))^(-1/2).
```

Thus the inequality permits finite-time growth at the comparison-ODE level.

So the standard enstrophy identity does not give the missing finite high-tower
budget. It describes exactly the channel through which the high-tower bill can
grow.

## 4. Localized Version Has The Same Wall

A localized version on a cone or parent ball adds cutoff, pressure, and boundary
terms. Those terms are not better than the global identity. They add the same
wall currencies already tracked in the cone notes:

```text
transport,
pressure work,
viscous wall exchange,
moving-wall loss,
cutoff commutators.
```

The core problem remains the same. To sum the cone/collar bills, the proof
needs a sign, cancellation, monotonicity, compactness, or structural throttle
for the vortex-stretching production. Localizing the identity does not create
that sign.

## 5. Result

The direct forward-positive throttle

```text
EnstrophyProductionThrottle.A
```

is not proved from the standard energy/enstrophy machinery.

The exact failed implication is

```text
finite energy + enstrophy identity
  => finite terminal high-tower budget.
```

The exact surviving target is sharper:

```text
VortexStretchingThrottleOrLyapunov.A
```

meaning one of:

1. a sign/cancellation theorem for the stretching term on the cone-selected
   receiver;
2. a Lyapunov quantity that absorbs stretching into viscosity without producing
   the `Y^3` comparison wall;
3. a compactness/rigidity theorem proving that every terminal profile that
   saturates the stretching wall is impossible on the same unforced finite-energy
   surface;
4. a localized high-tower budget that dominates the cone/collar bills by a
   structure stronger than the global energy law.

## 6. Current Forward-Positive State

The work order now lands here:

```text
whole-cone physical accounting
  not enough;

positive boundary feed
  false unless retained;

retained localized feed
  forces first tower cost;

non-affine retained feed
  forces non-summable higher-tower cost;

affine critical core
  forces parent collar higher-tower cost;

standard enstrophy identity
  does not supply the finite high-tower budget needed to contradict those costs.
```

This is the precise forward-positive obstruction. The route has not proved
regularity. It has transformed Thomas's cone/payment/drain idea into a specific
mathematical wall: the missing mechanism is a noncircular throttle on
vortex-stretching / high-tower production, not another base-energy or wall-flux
calculation.
