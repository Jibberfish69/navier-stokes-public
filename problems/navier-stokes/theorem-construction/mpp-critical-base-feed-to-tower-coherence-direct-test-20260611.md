---
ns_viewer:
  theorem_id: critical-base-feed-to-tower-coherence-direct-test-20260611
  status: direct-positive-part-feed-bridge-false-retained-localized-nonaffine-bridge-proved-as-forward-positive-reduction
  proof_role: forward_positive_cone_feed_to_derivative_tower_bridge_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests the proposed bridge from critical base wall feed to derivative-tower cost. The positive-part boundary capacity is proved too weak by through-flow. The corrected retained-localized feed bridge is proved by Poincare/Campanato lower bounds, and the remaining forward-positive child is reduced to non-affine coherent feed or affine profile rigidity."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-whole-cone-wall-volume-shrink-rate-forward-positive-work-order-20260611.md
    - problems/navier-stokes/theorem-construction/mcp-atd_m-depth-bookkeeping-lemma-read-cover-078c26eede.md
    - problems/navier-stokes/theorem-construction/lagrangian-six-lemma-mainline.md
    - problems/navier-stokes/theorem-construction/mcp-dtc-read-kq-pressure-poisson-cover-depth.md
  downstream_consequence: "WholeConeScaleCriticalParticipationThrottle.A is no longer a single broad energy slogan. Its derivative-tower form splits into three facts: positive-part feed alone is false; retained localized critical feed forces first derivative-tower cost; persistent non-affine feed forces a non-summable higher-tower bill. The remaining proof question is whether a genuine cone singular profile can avoid the non-affine bill by being only through-flow or affine at every late scale."
---

# MPP CriticalBaseFeedToTowerCoherenceDirectTest.A

Date: 2026-06-11

Status: forward-positive bridge test. This note stays inside the cone/payment
program and does not route the survivor through endpoint classification.

## 0. Question

The previous cone work order left the sharp supplier target

```text
WholeConeScaleCriticalParticipationThrottle.A.
```

The proposed derivative-tower version was:

```text
critical base feed through shrinking boundaries
  => nontrivial derivative-tower / coherent-organization cost.
```

That sentence is too broad. It is true only after "feed" means retained,
localized feed into the receiver. It is false for bare positive boundary
inflow.

This note proves that split.

## 1. Base Boundary Capacity

For a fixed ball `B_r=B_r(x0)`, define the positive base wall capacity

```text
C_r^(0)(t)
= int_{partial B_r}
   [ (|u|^2/2 + p)(-u dot n)_+
     + nu (u dot partial_n u)_+ ] dS.
```

This is an inward positive-part rate. It records how much energy-like quantity
can enter through the wall before cancellations are applied.

For the derivative tower, write

```text
U_alpha = partial^alpha u,
Pi_alpha = partial^alpha p,
|alpha| = q.
```

The differentiated equation is

```text
partial_t U_alpha
+ u dot grad U_alpha
+ grad Pi_alpha
- nu Delta U_alpha
= -N_alpha,
```

where

```text
N_alpha
= partial^alpha((u dot grad)u) - u dot grad U_alpha.
```

The `q`-rung wall capacity is

```text
C_r^(q)(t)
= sum_{|alpha|=q} int_{partial B_r}
   [ (|U_alpha|^2/2)(-u dot n)_+
     + (-Pi_alpha U_alpha dot n)_+
     + nu (U_alpha dot partial_n U_alpha)_+ ] dS.
```

The interior nonlinear rebuild source is

```text
S_r^(q)(t)
= sum_{|alpha|=q} int_{B_r} (-U_alpha dot N_alpha)_+ dx.
```

The tower bookkeeping note says the forcing readout at endpoint depth `N`
requires velocity slots through `N+2`, because

```text
K_q = -grad^{q+1} p + nu Delta U_q.
```

The two extra slots are a real debt, but they are not triggered by positive
base inflow alone.

## 2. Direct Bridge From Positive Base Feed Is False

Take an incompressible constant flow on a torus:

```text
u(x,t)=U e_1,
p=constant.
```

It solves Navier-Stokes. On a ball `B_r`, the inward half of the boundary has

```text
(-u dot n)_+ > 0.
```

Thus

```text
C_r^(0)(t)=c_{\mathrm{in}}U^3r^2
```

At the same time,

```text
grad u = 0,
partial_n u = 0,
N_alpha = 0,
C_r^(q)(t)=0 for q>=1,
S_r^(q)(t)=0 for q>=1.
```

The local energy inside the fixed ball does not grow. The same amount that
enters through one side leaves through the other side.

So the implication

```text
C_r^(0) large
  => higher derivative-tower cost
```

is false. Positive-part inflow measures wall passage. It does not measure
retention by the receiver.

On whole space the same countermodel is approximated by a smooth
divergence-free flow whose variation scale is much larger than `r`; the ball
sees almost constant through-flow and arbitrarily small higher tower cost
relative to the positive base wall rate.

## 3. Correct Receiver Quantity: Retained Localized Feed

The receiver must be charged only for feed that stays in the packet or sustains
the packet against drain.

For a fixed ball on an interval `I=(a,b)`, set

```text
R_r(I)
= E_r(b) - E_r(a)
  + nu int_I int_{B_r} |grad u|^2 dx dt.
```

For a shrinking ball `B_{rho(t)}`, the moving wall loss must also be paid:

```text
R_rho(I)
= E_rho(b) - E_rho(a)
  + nu int_I int_{B_{rho(t)}} |grad u|^2 dx dt
  + int_I int_{partial B_{rho(t)}} (|u|^2/2)(-rho'(t)) dS dt.
```

Here `rho'(t)<0`. This quantity is the net inward wall work needed to leave
energy in the receiver after interior dissipation and after the collapsing wall
has removed what it removes.

The packet must also be localized relative to a through-flow mode. Define

```text
A_r(t)
= (1/(nu^2 r)) inf_{c in R^3} int_{B_r} |u-c|^2 dx.
```

The number `A_r` ignores a constant translation through the receiver. A
critical localized packet has

```text
A_r(t) >= a0 > 0.
```

This is the first real version of "the packet is not a private point and not a
fake through-flow": it has a retained velocity contrast inside the same
receiver.

## 4. First Tower Cost From Localized Critical Feed

Poincare on `B_r` gives

```text
inf_c int_{B_r} |u-c|^2 dx
  <= C r^2 int_{B_r} |grad u|^2 dx.
```

Thus

```text
A_r(t) >= a0
```

implies

```text
int_{B_r} |grad u|^2 dx
  >= c a0 nu^2 / r.
```

So a retained localized critical packet forces first derivative-tower energy at
the critical scale.

This proves the corrected first bridge:

```text
retained localized critical feed
  => first derivative-tower cost.
```

It also explains why the base energy route was weak.  At critical velocity
`U_c(r)=nu/r`, the base packet energy is bounded by

```text
E_0(r) <= C_0 nu^2 r,
```

which tends to zero. The first derivative energy is

```text
E_1(r) >= c_1 nu^2 / r,
```

which grows as the receiver shrinks.

## 5. Non-Affine Defect And The Higher Tower Bill

A first derivative cost can still hide in an affine strain profile. To see the
next real bill, quotient the first derivative by affine modes:

```text
B_r(t)
= (r/nu^2) inf_{A in R^{3x3}}
   int_{B_r} |grad u - A|^2 dx.
```

The second-order Poincare inequality gives

```text
inf_A int_{B_r} |grad u - A|^2 dx
  <= C r^2 int_{B_r} |grad^2 u|^2 dx.
```

Thus

```text
B_r(t) >= b0
```

implies

```text
int_{B_r} |grad^2 u|^2 dx
  >= c b0 nu^2 / r^3.
```

On a parabolic receiver interval

```text
I_r = (t-r^2/nu, t),
```

if this non-affine defect persists on a time subset of measure at least

```text
theta r^2 / nu,
```

then the first-rung tower dissipation pays

```text
nu int_G int_{B_r} |grad^2 u|^2 dx dt
  >= c theta b0 nu^2 / r.
```

This is not summable down dyadic scales. For `r_j=2^{-j} r0`,

```text
sum_j nu^2 / r_j = infinity.
```

So a cascade of genuinely non-affine critical feeds cannot be hidden inside
finite higher-tower participation. It requires an infinite coherent-organization
bill.

## 6. General Rung Scaling

Let the normalized cone profile be

```text
v(y,s) = (r/nu) u(x0+r y, t0 + (r^2/nu)s).
```

Then

```text
int_{B_r} |grad_x^q u|^2 dx
  = nu^2 r^(1-2q) int_{B_1} |grad_y^q v|^2 dy.
```

The `q`-rung parabolic dissipation on a natural time slab has the same physical
scale:

```text
nu int_{I_r} int_{B_r} |grad_x^{q+1} u|^2 dx dt
  = nu^2 r^(1-2q)
    int_{-1}^0 int_{B_1} |grad_y^{q+1} v|^2 dy ds.
```

For `q=0`, this is `nu^2 r`, which is dyadically summable.

For `q=1`, this is `nu^2/r`, which is dyadically non-summable.

The full derivative tower does not change the critical velocity scale

```text
U_c(r)=nu/r.
```

It changes the bookkeeping depth. A singular cascade can be cheap in raw base
energy and expensive in coherent derivative organization at the same time.

## 7. What Is Closed

The following direct bridge is closed as false:

```text
positive-part base wall capacity large
  => derivative-tower cost.
```

The correct bridge is proved in two layers:

```text
retained localized critical feed
  => first derivative-tower energy cost,
```

and

```text
retained non-affine critical feed
  => non-summable higher-tower dissipation across infinitely many shrinking
     parabolic scales.
```

This is the derivative-tower version of the cone wall/volume idea: raw energy
can shrink, but a real localized profile has to keep paying shape. A pure
through-flow does not count as receiver feed. A pure affine survivor has to be
handled by a separate profile-rigidity test.

## 8. Exact Remaining Forward-Positive Children

The surviving work is no longer the broad slogan

```text
WholeConeScaleCriticalParticipationThrottle.A.
```

It splits into two exact forward-positive children:

```text
RetainedLocalizedCriticalFeedToNonAffineTowerCost.A
```

Prove that a genuine persistent scale-critical cone profile which is fed and
sustained by the receiver has non-affine defect on a positive density of late
parabolic slabs.

```text
ConeAffineProfileRigidity.A
```

Prove that a persistent affine-only cone profile is not a singular tip for the
unforced finite-energy Navier-Stokes problem; it is a removable drift/strain
mode or it fails the pressure, energy, or global compatibility requirements
before it becomes a point singularity.

These two children are the precise remaining forward-positive bridge. The
base-feed-to-tower idea is now mathematically sharpened: feed must be retained,
localized, and non-affine before the derivative tower gives the fixed lower
cost per critical scale.
