---
ns_viewer:
  theorem_id: critical-base-feed-to-tower-coherence-direct-test-20260611
  status: direct-positive-part-feed-bridge-false-localized-slice-lower-bounds-proved-nonaffine-cascade-cost-conditional-on-scale-charging
  proof_role: forward_positive_cone_feed_to_derivative_tower_bridge_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests the proposed bridge from critical base wall feed to derivative-tower cost. The positive-part boundary capacity is proved too weak by through-flow. Poincare/Campanato prove exact localized slice lower bounds from A_r and B_r hypotheses. Turning the non-affine lower bound into a global cascade bill still requires time persistence plus a scale-separated or bounded-overlap charging ledger."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-whole-cone-wall-volume-shrink-rate-forward-positive-work-order-20260611.md
    - problems/navier-stokes/theorem-construction/mcp-atd_m-depth-bookkeeping-lemma-read-cover-078c26eede.md
    - problems/navier-stokes/theorem-construction/lagrangian-six-lemma-mainline.md
    - problems/navier-stokes/theorem-construction/mcp-dtc-read-kq-pressure-poisson-cover-depth.md
  downstream_consequence: "WholeConeScaleCriticalParticipationThrottle.A is no longer a single broad energy slogan. Its derivative-tower form splits into exact facts: positive-part feed alone is false; A_r(t)>=a0 gives a slice gradient lower bound; B_r(t)>=b0 on a sufficiently long time set gives a per-scale higher-tower lower bound; a global non-summable cascade conclusion still needs scale-separated or bounded-overlap charging. The remaining proof question is whether a genuine cone singular branch supplies that non-affine charged cascade or escapes as through-flow / affine-only behavior."
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

This note proves the through-flow failure and the exact slice lower bounds that
replace the broad feed slogan.

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

The word "retained" does not itself pay a tower bill. The exact branch data are
`R_rho(I)` for receiver accounting and `A_r(t)` for slice localization; any
proof below may spend only those displayed quantities, not a hidden packet
profile.

## 4. First Slice Lower Bound From Localized Critical Feed

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

So the exact consequence of `A_r(t)>=a0` is the slice lower bound
`int_{B_r}|grad u|^2 dx >= c a0 nu^2/r`. This is a derivative-energy lower
bound on that receiver slice. It is not yet a time-integrated retained-feed
theorem.

This proves the corrected first bridge:

```text
A_r(t) >= a0
  => int_{B_r} |grad u|^2 dx >= c a0 nu^2/r.
```

It also explains why the base energy route was weak.  At the benchmark velocity
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

A first derivative cost can still hide in an affine strain field. To see the
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

then the first-rung tower dissipation on that charged slab pays

```text
nu int_G int_{B_r} |grad^2 u|^2 dx dt
  >= c theta b0 nu^2 / r.
```

For a scale-separated cascade whose charged slabs are disjoint or have a
bounded-overlap charging ledger, this lower bound is not summable down dyadic
scales. For `r_j=2^{-j} r0`,

```text
sum_j nu^2 / r_j = infinity.
```

So a charged cascade of genuinely non-affine critical feeds cannot be hidden
inside finite higher-tower participation. Without the scale-separated or
bounded-overlap charging hypothesis, the calculation above is only a per-scale
lower bound and may not be spent as a global contradiction.

## 6. General Rung Scaling

Let the exact rescaled cone unknown be

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

The full derivative tower does not change the critical velocity benchmark

```text
U_c(r)=nu/r.
```

It changes the bookkeeping depth.  The benchmark is not an unstated local-shape
statement; the packet use above comes from the displayed `A_r` and `B_r`
hypotheses and the derived lower bounds.  A singular cascade can be
cheap in raw base energy and expensive in coherent derivative organization at
the same time.

## 7. What Is Closed

The following direct bridge is closed as false:

```text
positive-part base wall capacity large
  => derivative-tower cost.
```

The exact lower bounds proved here are:

```text
A_r(t) >= a0
  => int_{B_r} |grad u|^2 dx >= c a0 nu^2/r,
```

and

```text
B_r(t) >= b0 on G_r, |G_r| >= theta r^2/nu
  => nu int_{G_r} int_{B_r} |grad^2 u|^2 dx dt
       >= c theta b0 nu^2/r.
```

This is the derivative-tower version of the cone wall/volume idea: raw energy
can shrink, but the proof only spends the exact branch hypotheses above.  The
receiver feed is retained only when the localized critical packet gives the
displayed lower bound for `int_{B_r} |grad u|^2`; the higher-tower bill is
retained only when the non-affine defect satisfies `B_r(t) >= b0` on a time set
of measure at least `theta r^2/nu`, and the global cascade bill is retained only
after a scale-separated or bounded-overlap charging ledger is supplied.
Through-flow and affine-only survivors are separate branches, not hidden costs
already paid by an unstated shape picture.

## 8. Exact Remaining Forward-Positive Children

The surviving work is no longer the broad slogan

```text
WholeConeScaleCriticalParticipationThrottle.A.
```

It splits into two exact forward-positive children:

```text
RetainedLocalizedCriticalFeedToNonAffineTowerCost.A
```

Prove the exact implication from retained feed to non-affine density: whenever
a late cone sequence `r_j=rho(t_j)` has the localized critical feed lower bound
and remains receiver-sustained, either `B_{r_j}(t) >= b0` on subsets of the
corresponding slabs with measure at least `theta r_j^2/nu` together with a
scale-separated or bounded-overlap charging ledger, or the branch is classified
as through-flow or affine-only and sent to its own test.

```text
ConeAffineCoreRigidity.A
```

Prove that the affine-only branch, stated as vanishing non-affine defect
`B_{r_j}(t) -> 0` along the retained cone sequence after subtracting affine
matrices, cannot be a singular tip for the unforced finite-energy
Navier-Stokes problem.  The proof must show removable drift/strain behavior or
an explicit failure of pressure, energy, or global compatibility before the
branch can be used downstream.

These two children are the precise remaining forward-positive bridge. The
base-feed-to-tower idea is now mathematically sharpened: feed must be retained,
localized, non-affine, and chargeable across scales before the derivative tower
gives a global lower cost.
