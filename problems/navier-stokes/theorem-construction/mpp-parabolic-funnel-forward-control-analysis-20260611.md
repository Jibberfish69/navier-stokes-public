---
ns_viewer:
  theorem_id: parabolic-funnel-forward-control-analysis-20260611
  status: forward-positive-control-reduction-scale-critical-cone-budget-and-moving-layer-to-ckn-bridge-open
  proof_role: forward_positive_first_cm_fallback_later
  logical_landing_node: parabolic_funnel_forward_control
  edge_effect: "Implements Thomas's correction: first analyze the shrinking parabolic cone as a dynamic reference-frame control problem, then use CM class exit only after a precise obstruction survives."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
    - problems/navier-stokes/source-frontier.yaml
    - problems/navier-stokes/live-theorem-edge.yaml
  downstream_consequence: "The fixed-cylinder shrinking-radius problem is replaced by a parabolic funnel/rescaled-field problem. The moving-domain energy identity and rescaled Navier-Stokes equation are installed. Finite physical funnel energy/dissipation does not control the unweighted scale-critical cone budget; late moving-funnel slab smallness still requires a moving-layer-to-CKN bridge or direct moving-funnel epsilon regularity before it can exclude a terminal singularity."
---

# MPP ParabolicFunnelForwardControlAnalysis.A

Date: 2026-06-11

Status: forward-positive control analysis. This note follows the app/human-PDF
order: try the positive control estimate first. CM class-exit interpretation is
kept as a downstream fallback only after the forward obstruction is named.

## 0. Source Correction Being Preserved

Thomas's correction is that the shrinking-radius problem should not be treated
as disconnected fixed-cylinder tests:

```text
try the forward-positive estimate control analysis first, see if it passes, and
if there's an impassable obstruction, then look at the obstruction from the CM
class exit argument
```

The dynamic object is the parabolic funnel:

```text
F_lambda = { (x,t): 0 < T-t < tau_0,
                    |x-x0| < lambda sqrt(T-t) }.
```

This is not a passive measurement trick. It is the natural dynamic reference
frame for a scale-invariant terminal concentration.

## 1. Fixed Cylinders Versus The Funnel

A fixed-radius cylinder uses the same spatial ball at every time:

```text
Q_r = B_r(x0) x (T-r^2,T).
```

The funnel uses a time-dependent ball:

```text
S(t) = B_{rho(t)}(x0),
rho(t) = lambda sqrt(T-t).
```

The wall is:

```text
Sigma_lambda = { (x,t): |x-x0| = rho(t) }.
```

The forward-control question is now about the whole spacetime funnel:

```text
Can the energy, pressure, viscosity, and transport accounting on F_lambda
control the rescaled field all the way to the tip?
```

## 2. Moving-Domain Energy Identity

Let:

```text
e = |u|^2 / 2,
Omega(t) = B_{rho(t)}(x0),
n = outward unit normal on partial Omega(t).
```

For a smooth preterminal Navier-Stokes solution,

```text
partial_t u + u dot nabla u + nabla p = nu Delta u,
div u = 0,
```

the local energy equation is:

```text
partial_t e + div((e+p)u) = nu Delta e - nu |nabla u|^2.
```

Reynolds transport on the moving ball gives:

```text
d/dt integral_{Omega(t)} e dx
 + nu integral_{Omega(t)} |nabla u|^2 dx
= integral_{partial Omega(t)}
   [ e rho'(t) - (e+p) u dot n + nu partial_n e ] dS.
```

Thus the wall accounting has four channels:

```text
moving-wall loss:       e rho'(t),
transport flux:         -(e u dot n),
pressure work:          -p u dot n,
viscous wall exchange:  nu partial_n e.
```

For the parabolic funnel:

```text
rho(t) = lambda sqrt(T-t),
rho'(t) = -lambda / (2 sqrt(T-t)).
```

The boundary speed diverges as `t up to T`. This is the first sign that the
shrinking reference frame has changed the problem.

## 3. Parabolic Rescaling

Set:

```text
tau = T-t,
s = -log tau,
y = (x-x0)/sqrt(tau),
v(y,s) = sqrt(tau) u(x,t),
q(y,s) = tau p(x,t).
```

Then the funnel becomes the fixed cylinder:

```text
|y| < lambda,
s > s_0.
```

The Navier-Stokes equations become:

```text
partial_s v
 + (v dot nabla_y) v
 + nabla_y q
 + (1/2) y dot nabla_y v
 + (1/2) v
= nu Delta_y v,

div_y v = 0.
```

The alleged terminal blow-up has become a rescaled-field problem:

```text
Does v(y,s) remain controlled on B_lambda as s -> infinity?
```

Here "profile" means the exact rescaled unknown `v`, not a prescribed spatial
shape or a linear model for `u` on the shrinking ball.

This is the real mathematical advantage of the funnel. The relation is exact:

```text
u(x,t) = tau^{-1/2} v((x-x0)/sqrt(tau), -log tau).
```

Thus a statement about terminal velocity behavior must be made as a statement
about `v` on late `s`-slabs. For example, persistent scale-critical rescaled-field mass
means a lower bound such as

```text
inf_{S >= S0} integral_S^{S+1} integral_{B_lambda} |v|^3 dy ds > 0,
```

not the unproved assertion that `u` has size `1/sqrt(T-t)`.

## 4. Physical Budget Is Discounted In Cone Time

The physical funnel energy is:

```text
E_phys(t)
 = integral_{B_{lambda sqrt(tau)}} |u|^2 / 2 dx
 = tau^{1/2} integral_{B_lambda} |v|^2 / 2 dy.
```

So any rescaled field with uniformly bounded `L^2(B_lambda)` norm has
physical energy tending to zero.

The physical dissipation over a terminal funnel tail is:

```text
nu integral |nabla_x u|^2 dx dt
= nu integral e^{-s/2} |nabla_y v|^2 dy ds.
```

The factor `e^{-s/2}` is the parabolic discount. The rescaled field may have a fixed
positive lower bound for rescaled dissipation on infinitely many `s`-slabs
while the corresponding physical dissipation remains finite.

This corrects the naive Gabriel's-horn reading. The funnel may have finite
physical energy and finite physical dissipation even when the rescaled field
does not decay.

## 5. The Undiscounted Currency Is Scale-Critical

The Navier-Stokes scale-critical cone quantity is:

```text
C_lambda([S,S+1])
 = integral_S^{S+1} integral_{B_lambda}
     ( |v|^3 + |q|^{3/2} ) dy ds.
```

In physical variables this is the normalized critical mass in the corresponding
parabolic funnel layer. It is not discounted by `e^{-s/2}`.

So the forward-positive control theorem cannot be:

```text
finite physical energy in the funnel controls the tip.
```

That statement is false at the level of scaling.

The possible forward theorem has to be one of these:

```text
ParabolicFunnelScaleCriticalBudget.A:
  original smooth data and the NS participation law give
  integral_{S0}^{infinity} integral_{B_lambda}
    ( |v|^3 + |q|^{3/2} ) dy ds < infinity.
```

or

```text
FunnelProfileLyapunov.A:
  the rescaled equation has a monotone or coercive profile functional that
  forces late cone slabs below the epsilon-regularity threshold.
```

## 6. Conditional Forward Control

The positive route passes in the following conditional form.

Assume that for some `lambda > 0` the late cone slabs become small in the
scale-critical currency:

```text
limsup_{S -> infinity}
 integral_S^{S+1} integral_{B_lambda}
   ( |v|^3 + |q|^{3/2} ) dy ds
< epsilon_CKN.
```

The exact physical form of this slab condition is not a fixed CKN cylinder.
Since `s=-log(T-t)`,

```text
integral_S^{S+1} integral_{B_lambda}
  ( |v|^3 + |q|^{3/2} ) dy ds
=
integral_{T-e^{-S}}^{T-e^{-(S+1)}}
integral_{|x-x0|<lambda sqrt(T-t)}
  ( |u|^3 + |p|^{3/2} )/(T-t) dx dt.
```

Thus the slab condition gives smallness on one moving funnel layer with the
exact parabolic weight `(T-t)^{-1}`. It excludes a terminal singularity only
after one additional exact bridge is supplied:

```text
FunnelSlabToCKN.A:
  late moving-funnel layer smallness
  plus the required exterior-annulus/full-cylinder comparison
  implies
  limsup_{r downarrow 0}
    r^{-2} integral_{T-r^2}^{T} integral_{B_r(x0)}
      ( |u|^3 + |p|^{3/2} ) dx dt
  < epsilon_CKN.
```

Equivalently, one may prove a direct moving-funnel epsilon-regularity theorem.
Without one of these bridges, late-slab smallness is a forward-control
reduction, not by itself a CKN regularity proof.

So the funnel reframing is not cosmetic. It converts the forward problem into:

```text
prove late-slab scale-critical smallness,
then prove `FunnelSlabToCKN.A` or a direct moving-funnel epsilon-regularity
theorem.
```

## 7. Direct Attempt From Physical Energy Fails

The direct estimate from physical energy/dissipation does not supply the
needed late-slab control. The failure can be stated without order notation.

Assume that late slabs carry a fixed amount of rescaled scale-critical mass:

```text
there exists c0 > 0 such that
integral_S^{S+1} integral_{B_lambda} (|v|^3 + |q|^{3/2}) dy ds >= c0
for all large S.
```

The physical energy identity above is still exactly

```text
E_phys(t)
 = tau^{1/2} integral_{B_lambda} |v|^2 / 2 dy.
```

So finite or even vanishing physical energy on the shrinking physical slices
does not contradict persistent scale-critical slab mass. The physical
dissipation identity remains exactly discounted by `e^{-s/2}`, so an
undiscounted lower bound on late rescaled slabs is not ruled out by finite
physical dissipation.

This shows the exact obstruction:

```text
physical funnel budget finite
does not imply
scale-critical cone budget finite or small.
```

The forward estimate needs a new scale-critical input, not another raw energy
calculation.

## 8. Rescaled Energy Has No Coercive Sign By Itself

On the whole rescaled space, formally multiplying the rescaled equation by `v`
gives:

```text
(1/2) d/ds integral |v|^2 dy
 + nu integral |nabla v|^2 dy
= (1/4) integral |v|^2 dy.
```

On `B_lambda` there are additional boundary flux and pressure terms. The
dilation term supplies the right-hand source. Thus the rescaled `L^2` energy is
not an automatic Lyapunov function that damps the rescaled field.

This is the second obstruction:

```text
the cone rescaled equation has the right shape,
but the naive rescaled energy does not close the estimate.
```

## 9. Result Of This Pass

The forward-positive cone analysis produces a real reduction:

```text
Funnel singularity control
<=
ParabolicFunnelScaleCriticalBudget.A
or
FunnelProfileLyapunov.A.
```

Installed in this note:

```text
1. The moving-domain funnel energy identity.
2. The parabolic rescaled field equation.
3. The physical-budget discount calculation.
4. The scale-critical cone currency.
5. The conditional moving-slab-to-CKN forward pass.
6. The failed direct estimate from physical energy.
```

Open after this note:

```text
ParabolicFunnelScaleCriticalBudget.A
```

or

```text
FunnelProfileLyapunov.A.
```

and, after either route gives late moving-funnel slab smallness,

```text
FunnelSlabToCKN.A
```

or a direct moving-funnel epsilon-regularity theorem.

Only after one of those forward attempts hits a precise obstruction should the
obstruction be inspected as a CM class-exit witness. The current note does not
spend the obstruction as `not Pack_Q`, `not Part_{N,Q}`, or
`forall r>0 not Field_{N,r,Q}`.

## 10. Exact Problem-Solving Flow For This Case

The repaired route for the shrinking-radius case is:

```text
gold standard first:
  prove ParabolicFunnelScaleCriticalBudget.A or FunnelProfileLyapunov.A, i.e.
  prove late-slab scale-critical smallness or a finite undiscounted cone tail,
  then pay the moving-layer-to-CKN bridge;

impassable obstruction:
  physical energy and physical dissipation are exactly discounted in cone time,
  and the rescaled L2 energy has a dilation source plus boundary/pressure
  terms, so those two raw budgets do not prove the gold standard;

silver CM-exit test:
  only a surviving source-balanced terminal residual after the exact
  forward-positive ledgers fail may be tested as a Pack/Part/Field witness.
```

Thus this note closes the foundational funnel geometry and the raw-budget
obstruction. It does not claim the final forward-positive supplier has been
proved, and it does not spend a merely informal estimate as CM exit.
proved, and it does not spend an unproved estimate as CM exit.
