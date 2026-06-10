---
ns_viewer:
  theorem_id: singulet-spin-smooth-exterior-compatibility-20260610
  status: proved-compatibility-dichotomy-not-global-singularity-exclusion
  proof_role: active_completion_singulet_ontology
  logical_landing_node: singulet_spin_smooth_exterior_compatibility
  edge_effect: "Refines Thomas's singulet knife-edge: infinite point spin with smooth finite exterior is either removable/no singular readout, or it loses smooth point extension and must be classified by Pack, Field, or Part depending on retained carrier."
  upstream_origin:
    - /Users/thomasbirnie/.codex/attachments/9bf84840-083e-49fc-b943-7844429d4713/pasted-text.txt
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
  downstream_consequence: "Supplies the ontology lane with a precise point-spin compatibility test, preventing the zero-radius singulet from being treated as both singular and smoothly participating without paying a CM face cost."
---

# MPP SinguletSpinSmoothExteriorCompatibility.A

Date: 2026-06-10

Status: proved compatibility dichotomy. This is not a global exclusion theorem
for every Navier-Stokes singularity model.

## Target

The prompt's knife-edge object is:

```text
an infinitely spinning point
+ a smooth outward, non-infinite velocity gradient for every r > 0
+ same-fluid pressure, viscosity, incompressibility, and neighbor participation.
```

The question is whether this can be a genuine singular packet inside the same
CM class object.

## Local Model

Use a point `x0` and radii `rho = |x-x0|`. For a swirl-like component write the
speed at scale `rho` as:

```text
u_theta(rho,t)
```

and the spin quotient as:

```text
Omega(rho,t) = u_theta(rho,t) / rho.
```

This quotient is the natural "point spin" readout: a smooth rotating velocity
field near a fixed point has angular velocity controlled by the first spatial
derivative.

The argument does not require an exact axisymmetric solution. It only uses the
basic fact that point spin is a first-derivative scale:

```text
|u(x,t) - u(x0,t)| / |x-x0|
```

is bounded when the velocity extends with bounded gradient at `x0`.

## Removable Branch

Assume for a terminal time sequence or fixed time slice that the velocity has a
uniform finite gradient bound down to the point:

```text
sup_{0 < |x-x0| < r0} |grad u(x,t)| < infinity.
```

Then the velocity is Lipschitz at `x0` after defining the point value by the
continuous limit. In particular,

```text
|u(x,t) - u(x0,t)| <= C |x-x0|.
```

For any swirl readout around the point,

```text
|Omega(rho,t)| <= C
```

up to the harmless rigid-motion choice of the point velocity.

So a branch with genuinely uniform finite outward gradient cannot also carry
infinite point spin as a velocity-gradient singularity. The singularity is
removable for this readout, or it is not a singularity in the claimed variable.

## Nonremovable Branch

Assume instead:

```text
Omega(rho,t) -> infinity
```

along `rho down to 0`.

Then the quotient

```text
|u(x,t) - u(x0,t)| / |x-x0|
```

is unbounded along the same approach, after subtracting the point velocity.
The velocity does not have a bounded `C^1` extension at the point.

So the object cannot be both:

```text
infinite point spin
and
smooth finite outward gradient through the point.
```

Smooth on every punctured annulus `rho > 0` is not enough to make the point a
smooth same-fluid packet. The missing issue is the limit as the annuli collapse
to the point.

## CM Landing

The nonremovable branch now has three possible CM readings:

```text
Pack landing:
  the spin exists only at zero radius, with no positive-radius retained carrier.
  The object is not Pack_Q.

Field landing:
  positive-radius annuli are retained while the gradient, vorticity, pressure
  readout, or source-current becomes unbounded on those carriers.

Part landing:
  the branch keeps the same packet/carrier name while losing the neighbor
  participation, pressure coupling, viscosity channel, or time trace required
  for the point object to remain the same fluid part.
```

Which face applies depends on the retained carrier. The label is not chosen
before the mechanism is identified.

## Compatibility Dichotomy

For a claimed singulet spin state near `x0`, exactly one branch holds:

```text
1. Uniform finite gradient to the point:
   no infinite point-spin singularity in the velocity-gradient readout.

2. Infinite point spin:
   no smooth finite-gradient extension through the point.
   The branch must be classified as Pack / Field / Part according to
   retained carrier and participation data.
```

This is the theorem extracted from Thomas's singulet question.

## Relation To PayableSingularityOntology.A

If `MinimumSingularityCostFunctional.A` says a cost has been paid, this theorem
asks what the paid object has become.

A paid singulet cannot be allowed to occupy both roles at once:

```text
singular enough to break smoothness,
smooth enough to remain a finite-gradient participating point.
```

The object must either be removable or move into CM face classification.

## Relation To First Terminal Pack/Source Failure

The terminal source failure often tries to hide in a zero-radius endpoint
object. This note gives the point-spin version of the same correction:

```text
punctured smoothness at every positive radius
does not equal Pack survival at the collapsed point.
```

If no positive-radius carrier survives, the landing is Pack-first. If positive
annuli survive with unbounded readout, the landing is Field. If same-object
participation is asserted after the point carrier fails, the landing is Part.

This prevents the singulet branch from being counted as a lawful same-fluid
solution merely because every annulus away from the point is smooth.
