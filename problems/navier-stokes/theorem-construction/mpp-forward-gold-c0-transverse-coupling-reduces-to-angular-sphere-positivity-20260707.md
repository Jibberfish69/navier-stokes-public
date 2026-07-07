---
theorem_id: forward-gold-c0-transverse-coupling-reduces-to-angular-sphere-positivity-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / transverse pressure-Hessian coupling / covariance filter
status: REDUCTION (physics-first, structural/homogeneity + sign; no numerics). The transverse
  pressure-Hessian coupling survives the scale-covariance filter (marginal, same homogeneity as
  the production it must dominate) AND provably disarms the log-endpoint (it is a fixed-sign
  density, not a log-derivative). Together these collapse c_0 onto ONE angular spectral
  positivity on S^2. NO PROOF of the sign — that inf>0 IS the open Millennium content — but the
  two killers of every prior route (scaling, log-endpoint) are removed and the target is
  localized to a singular-integral positivity on the sphere.
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous Navier-Stokes history
  brake: transverse (eigenframe-rotating) part of the non-local pressure Hessian; the aligned
    part carries no braking sign (restricted Euler blows up with isotropic pressure)
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-section17-compactness-critical-gap-obstruction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-adjacent-affine-chain-mismatch-is-free-mode-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-participation-hessian-not-pressure-hessian-20260707.md
completion_truth: >-
  PHYSICS FIRST. In one incompressible fluid the only thing that can brake the Vieillefosse
  self-stretch is the TRANSVERSE (eigenframe-rotating) part of the non-local pressure Hessian;
  the aligned/isotropic part carries no braking sign (restricted-Euler closure keeps exactly that
  part and blows up). So all of c_0 lives in the transverse coupling. THREE STRUCTURAL RESULTS,
  no numerics. (1) Aligned part = no brake (classical restricted-Euler blowup). (2) COVARIANCE
  FILTER: under NS scaling strain ~ λ², so S² and Hess p each ~ λ⁴, and the transverse coupling
  entering the production balance D_t(ω·Sω) ~ λ⁸ — the SAME homogeneity as the production it must
  dominate. Scale-marginal ⇒ its magnitude is fixed by nothing and its SIGN is the whole content:
  the signature of a sign-lever, not a rate. This is the filter that killed the defect-measure
  route (cost λ¹ vs service λ³, mismatched); here they MATCH, so this register survives. (3)
  LOG-ENDPOINT DISARMED: in every coercive route the 2^{-L}/L endpoint won because the bill was a
  log-scale DERIVATIVE (spreadable to 0 while service stayed O(1)). The transverse coupling is a
  FIXED-SIGN DENSITY scaling WITH the production, so spreading dilutes numerator and denominator
  together and cannot change the ratio's sign. Marginality + sign-nature provably remove the
  log-endpoint. NET REDUCTION: with scaling quotiented and the log-endpoint disarmed, c_0 collapses
  off the radial/tower directions onto the ANGULAR profile. c_0 > 0 ⟺ inf over admissible
  self-similar angular embeddings on S^2 of (transverse pressure-Hessian coupling)/(strain
  production) > 0 — spectral positivity of one scale-invariant Calderón-Zygmund operator on the
  sphere, adversary picks the angular shape. HONEST STATUS: that inf>0 is the open sign; it IS
  3D global regularity; NOT proved and not known true in either direction. What is achieved is a
  reduction that removes the two obstructions (scale-covariance, log-endpoint) that defeated the
  coercive/compactness/defect-measure/collar/affine-chain routes, and localizes the sign to a
  singular integral on S^2. The sign is non-local (Riesz), so no local/averaged move yields it —
  the matched attack is spherical spectral positivity / a Liouville rigidity on the angular
  profile, extending NRS/Tsai from the exact self-similar profile to the marginal one.
---

# The transverse coupling reduces c₀ to an angular spectral positivity on S²

Physics-first. The covariance filter, run on the transverse pressure-Hessian coupling, returns a
genuine reduction: it survives scaling, disarms the log-endpoint, and localizes c₀ to the sphere.

## 1. Object

The only brake on the Vieillefosse self-stretch is the **transverse** (eigenframe-rotating) part
of the non-local pressure Hessian. The aligned/isotropic part is the restricted-Euler closure,
which blows up — so it carries no braking sign. All of c₀ is in the transverse coupling
`[S², Hess p]` (its projection into the production balance).

## 2. Covariance filter (survives)

Under NS scaling `u_λ = λu(λx,λ²t)`: strain `~ λ²`, so `S²` and `Hess p` each `~ λ⁴`, and the
transverse coupling in `D_t(ω·Sω) ~ λ⁸` — the **same homogeneity as the production**. Scale-
marginal: magnitude fixed by nothing, **sign** is the whole content. Contrast the dead defect-
measure route (cost `λ¹` vs service `λ³`, mismatched). Here they match ⇒ **right type, survives**.

## 3. Log-endpoint (disarmed)

Coercive routes died because the bill was a **log-scale derivative** — spreadable to 0 while the
service stayed `O(1)`. The transverse coupling is a **fixed-sign density scaling with the
production**. Spreading it over the tower dilutes numerator and denominator together; the ratio's
**sign is preserved**. Marginality + sign-nature ⇒ the `2^{-L}/L` endpoint **cannot dilute it**.
This is the move no coercive bridge could make.

## 4. The reduction

Scaling quotiented, log-endpoint disarmed ⇒ c₀ collapses onto the **angular profile**:

```
c₀ > 0  ⟺  inf over admissible self-similar angular embeddings on S²
           of  (transverse pressure-Hessian coupling) / (strain production)  > 0.
```

The pressure operator is scale-invariant, so it descends to a singular integral on the angular
profile; the adversary (embedding minimax) picks the shape on the sphere to drive the ratio to 0.

## 5. Honest status

That `inf > 0` is the open sign — it **is** 3D global regularity, not proved, not known true in
either direction. What is achieved: the two obstructions that beat every prior route (scale-
covariance and the log-endpoint) are **removed**, and the sign is localized to **spectral
positivity of one Calderón-Zygmund operator on S²**. The sign is non-local (Riesz), so no local
or averaged argument can produce it; the matched attack is spherical spectral positivity, or a
Liouville rigidity on the angular profile extending NRS/Tsai from the exact to the marginal
self-similar object. This is a reduction, not a closure.
