---
theorem_id: forward-gold-c0-radiodrome-vs-brachistochrone-deficit-vs-extremal-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / curve-tool duality (both are sample-for-ideas, checked against the object)
status: SYNTHESIS (physics-first) — radiodrome = deviation off the extremal; brachistochrone = the extremal (self-similar Leray profile); they meet at the critical element c_0 must exclude. NOT A PROOF, NO CLOSURE
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous irreversible Navier-Stokes history
  reversible: false
  note: both curves are borrowed reduced tools, sample-for-ideas only; legitimate only as physical sentences about the fluid, checked back against it (Principle 1 / physical-reasoning-first).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-hardened-synthesis-covariance-frees-scale-uniformity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-scale-covariance-filter-irreversibility-only-lever-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-relay-lag-liouville-route-b-20260706.md
completion_truth: >-
  Physics-first synthesis, not a proof. The radiodrome and the brachistochrone are
  DUAL curve-tools for c_0, and they meet at exactly the object c_0 must exclude.
  RADIODROME (current use): two agents — the pressure-viscosity participation payer
  continuously re-aiming at the moving, sharpening spin. It measures a LAG (relational
  shortfall) f = the participation deficit per octave. Its job is DIAGNOSTIC: it
  LOCATES c_0 (f>0 vs f=0). Its leading order is scale-covariant (lag measured in
  turnovers), so it locates the tie but cannot sign it. BRACHISTOCHRONE (candidate
  use): one agent, one path — the curve of FASTEST DESCENT. NS translation = the
  least-time blowup trajectory: the same-fluid record-climb schedule that drives
  H->infinity in shortest time. It is an EXTREMAL/variational MINIMIZER, not a
  shortfall. Because the NS "potential" is self-generated (the descending
  concentration builds the strain that pulls it down), the least-time extremal is a
  self-consistent scale-invariant trajectory = the self-similar (Leray) profile.
  THE DUALITY: brachistochrone = the f=0 self-similar profile (the extremal);
  radiodrome = f = the deviation off it. The self-similar profile is simultaneously
  the least-time descent (brachistochrone) and the zero-lag perfect pursuit (marginal
  radiodrome). Hence the hardened wall in this language: c_0>0 <=> the real flow is
  FORCED OFF the brachistochrone (f>0) and cannot ride the least-time self-similar
  extremal. WHY BRACHISTOCHRONE IS MORE ON-TARGET NOW: the radiodrome fit the
  deficit-location side, which is covariant/marginal (locates, can't sign); the
  brachistochrone fits the OPEN route-b side, because it characterizes the extremal
  that must be excluded — it would give the Leray self-similar profile a VARIATIONAL
  (least-time) definition, turning c_0 into a variational rigidity ("the least-time
  extremal is not sustainable") = backward-DSS exclusion in variational clothing.
  HONEST: both are borrowed tools, checked as physical sentences only; the
  brachistochrone-use lands on the Leray/critical-element equation, open (NRS did
  exact self-similar in L^3; backward-DSS unresolved). Reframes the wall
  variationally; does not cross it. No FullTower retention, material-time Liouville,
  c_0, or MPP closure is proved.
---

# Radiodrome vs brachistochrone: deviation-off-the-extremal vs the-extremal

Physics-first. Both curves are borrowed tools — sample-for-ideas, legitimate only
as physical sentences about the one fluid, checked back against it. This note
states their duality; it closes nothing.

## 1. The two objects, physically

- **Radiodrome (in use).** Two agents: the pressure-viscosity **participation
  payer** continuously re-aims at the moving, **sharpening spin**. It measures a
  **lag** — how far the delivered stretching trails the alignment it needs. A
  *relational shortfall*, `f` = participation deficit per octave. Role:
  **diagnostic** — it *locates* `c_0` (`f>0` vs `f=0`). Leading order is
  scale-covariant (lag in turnovers): it locates the tie, cannot sign it.
- **Brachistochrone (candidate).** One agent, one path: the curve of **fastest
  descent**. NS translation — the **least-time blowup trajectory**: the same-fluid
  record-climb that drives `H→∞` in shortest time. An **extremal/variational
  minimizer**, not a shortfall.

## 2. The duality (they meet at the critical element)

The NS "potential" is **self-generated** — the descending concentration builds the
strain that pulls it down — so the least-time extremal is a self-consistent,
scale-invariant trajectory: **the self-similar (Leray) profile.** Therefore

```
   brachistochrone  =  the f=0 self-similar profile        (the extremal)
   radiodrome       =  f  =  the deviation off it          (the shortfall)
```

The self-similar profile is simultaneously the **least-time descent**
(brachistochrone) and the **zero-lag perfect pursuit** (marginal radiodrome). One
measures the deviation from the critical element; the other *is* the critical
element.

## 3. The hardened wall, in this language

```math
\boxed{\ c_0 > 0 \iff \text{the real flow is FORCED OFF the brachistochrone (}f>0\text{), i.e. cannot ride the least-time self-similar extremal.}\ }
```

This is the same route-b / self-similar-exclusion wall as the hardened synthesis,
now variational.

## 4. Which tool serves which side

- **Radiodrome → deficit-location.** Now understood as covariant/marginal: it
  *locates* `c_0` but cannot *sign* it (filter note).
- **Brachistochrone → route-b exclusion (the open side).** It characterizes the
  extremal that must be excluded — a **variational (least-time) definition of the
  Leray self-similar profile** — turning `c_0` into a variational rigidity: *the
  least-time extremal is not dynamically attainable/sustainable.* That is
  backward-DSS exclusion in variational clothing, and it is the correct target,
  not another covariant coordinate.

## 5. Do not collapse

- radiodrome measures the **deviation**; brachistochrone **is** the extremal — dual,
  not the same tool
- both are **borrowed** — checked as physical sentences about the fluid, never as
  the object
- the brachistochrone-use = variational Leray/critical-element characterization;
  it **reframes** the wall, does not cross it — backward-DSS exclusion is open
