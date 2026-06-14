---
ns_viewer:
  theorem_id: affine-core-finite-energy-collar-cost-direct-test-20260611
  status: proved-forward-positive-affine-core-collar-cost-high-tower-budget-still-not-supplied
  proof_role: forward_positive_affine_escape_cost_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests the affine-only escape left by the critical-base-feed tower note. A critical affine core cannot be free inside a finite-energy parent region: if its first-gradient scale persists over a natural parabolic time, interpolation forces a fixed second-derivative collar/tower bill. This prices the affine escape but does not by itself supply the missing finite high-tower budget."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-critical-base-feed-to-tower-coherence-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-affine-material-readout-to-fixed-hs-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-affine-readout-condition-number-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-collar-strain-integrability-proof-method-audit-20260607.md
  downstream_consequence: "The affine-only branch is sharpened to a collar-cost theorem: either the critical affine core stops persisting, or a parent finite-energy region pays a fixed second-derivative bill on each natural critical slab. The remaining forward-positive gap is no longer geometric hiding; it is the absence of a finite high-tower/enstrophy-production budget strong enough to sum those collar bills."
---

# MPP AffineCoreFiniteEnergyCollarCost.A

Date: 2026-06-11

Status: forward-positive direct test. This note prices the affine-only escape
left by the cone/tower bridge. It does not route the result through endpoint
classification.

## 0. The Escape Under Test

The previous note proved:

```text
retained non-affine critical feed
  => non-summable higher-tower bill.
```

The remaining escape is affine-only behavior.  The exact affine-core hypothesis
is

```text
inf_{b,A} int_{B_r(x0)} |u(x,t)-b-A(t)(x-x0)|^2 dx
  <= eta_aff^2 nu^2 r
```

with critical first-gradient size

```text
c_A nu/r^2 <= |A(t)| <= C_A nu/r^2.
```

Inside the exact affine core,

```text
grad^2 u = 0.
```

So the second-derivative bill cannot be found in the core itself. It must be
found in the collar where that affine core is matched back to the finite-energy
fluid around it, or else the affine strain extends outward and spends energy on
larger and larger regions.

This is the missing distinction.

## 1. Static Collar Lemma

Fix

```text
B_r(x0) subset B_R(x0),
0<r<R/8.
```

Assume a parent energy bound at time `t`:

```text
int_{B_R} |u|^2 dx <= E_R.
```

Assume the receiver contains critical first-gradient size:

```text
int_{B_r} |grad u|^2 dx >= eta nu^2/r.
```

This is exactly the benchmark of an affine critical core with

```text
c_A nu/r^2 <= |A| <= C_A nu/r^2,
```

because

```text
omega_3 c_A^2 nu^2/r
<=
int_{B_r} |A|^2 dx
<=
omega_3 C_A^2 nu^2/r.
```

Use the local interpolation inequality on `B_R`:

```text
||grad u||_{L^2(B_R)}^2
<= C ||u||_{L^2(B_R)} ||grad^2 u||_{L^2(B_R)}
   + C R^{-2} ||u||_{L^2(B_R)}^2.
```

Since `B_r subset B_R`, the core lower bound gives

```text
eta nu^2/r
<= ||grad u||_{L^2(B_R)}^2.
```

For all scales satisfying

```text
eta nu^2/r >= 2 C R^{-2} E_R,
```

the harmless parent-scale term can absorb only half the lower bound. Hence

```text
||grad^2 u||_{L^2(B_R)}
>= c eta nu^2 / (r E_R^(1/2)).
```

Squaring,

```text
int_{B_R} |grad^2 u|^2 dx
>= c eta^2 nu^4 / (r^2 E_R).
```

This proves the static collar cost:

```text
critical affine core + finite parent energy
  => second-derivative cost somewhere in the parent region.
```

The cost may sit outside `B_r`. That is the point. The core can be affine only
by pushing the bill into the collar or into a larger affine extension.

## 2. Parabolic Cost Over The Natural Clock

Let

```text
I_r=(t0-r^2/nu,t0).
```

Suppose the critical first-gradient lower bound holds on a measurable subset
`G subset I_r` with

```text
|G| >= theta r^2/nu,
```

and the parent energy bound satisfies

```text
sup_{t in G} int_{B_R} |u(x,t)|^2 dx <= E_R.
```

Integrating the static collar lemma over `G` gives

```text
nu int_G int_{B_R} |grad^2 u|^2 dx dt
>= c theta eta^2 nu^4 / E_R.
```

The right side is independent of `r`.

Thus every persistent critical affine core pays a fixed higher-tower bill on
its natural parabolic time scale, measured against the finite parent energy
that has to contain it.

## 3. Relation To The Derivative Tower

For a non-affine core, the previous note found the cost locally:

```text
nu int_{I_r} int_{B_r} |grad^2 u|^2 dx dt
  >= c nu^2/r.
```

For an affine core, this note finds the cost in the parent collar:

```text
nu int_G int_{B_R} |grad^2 u|^2 dx dt
  >= c theta eta^2 nu^4/E_R.
```

The two estimates catch different escape routes:

```text
non-affine shape
  => local second-derivative bill;

affine critical strain inside finite energy
  => collar or parent second-derivative bill.
```

The full derivative tower matters because the base energy ledger still sees
only a summable amount:

```text
E_0(r) <= C_0 nu^2 r.
```

The affine strain is visible through `grad u` and through the matching cost
needed to place that strain inside a finite-energy parent fluid.

## 4. What This Does To The Cone Picture

The cone tip cannot be defended by saying the affine core has

```text
grad^2 u = 0
```

inside the core. That only moves the question outward.

Either:

1. the affine core persists only briefly, so it is not a persistent singular
   cone profile;
2. the affine core bends into the surrounding fluid, and the collar pays the
   second-derivative bill above;
3. the affine core extends to larger radii, and the parent energy required to
   keep that extension grows until a collar is forced or the fixed energy
   budget is exceeded.

This is the developed version of the "same fluid" restriction for the affine
escape. The core is not private. Its exterior matching is part of the cost.

## 5. What Is Still Not Proved

This note supplies the cost lower bound. It does not supply the upper budget
that would contradict infinitely many such costs.

The missing forward-positive estimate is a high-tower budget strong enough to
sum the collar bills:

```text
int^{T} int |grad^2 u|^2 dx dt < infinity
```

or a localized substitute that dominates the same bills.

That is not available from the global energy identity, which controls only

```text
nu int^{T} int |grad u|^2 dx dt.
```

It is also not supplied by the affine readout notes. Those notes already show
that uniform affine ellipticity reduces to terminal strain-tail control, which
is a continuation-strength burden at current resolution.

So the affine branch is not an unpriced loophole anymore. It is priced. The
remaining obstruction is the absence of a finite higher-tower/enstrophy
production budget that would let the forward-positive route sum those prices
and close the cone tip.

## 6. Current Forward-Positive State

The cone/payment program now has this exact shape:

```text
positive-part base feed alone
  false by through-flow;

retained localized feed
  forces first derivative-tower cost;

retained non-affine feed
  forces non-summable local higher-tower cost;

persistent affine critical core
  forces fixed parent collar higher-tower cost;

remaining forward-positive gap
  finite high-tower budget / enstrophy-production control strong enough to
  sum the costs.
```

This is a real narrowing. The obstruction is no longer "maybe the cone hides
energy at the tip." The obstruction is now the classical Navier-Stokes
high-tower production problem in the collar/tower currency.
