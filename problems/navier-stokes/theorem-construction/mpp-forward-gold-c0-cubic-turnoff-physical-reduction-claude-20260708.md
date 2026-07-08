---
theorem_id: forward-gold-c0-cubic-turnoff-physical-reduction-claude-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / cubic turn-off moment / physical reduction
parent_ref: problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
status: support-physical-reduction; removes-four-escapes; remaining-bill-admission-lemma-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
completion_truth: >-
  Additive physical-reasoning support for CubicRadialMomentOddPayment.A (CRM.21)
  and RetainedPositiveCubicFluxIsPaidOrRoutesOut.A (CRM.19m / CRM.19p). Does NOT
  close c0; the parent status remaining-bill-admission-lemma stands. Contributes
  four same-field rigidities that remove escapes around the open admission
  inequality: (7.2) no irrotational turn-off of an affine strain exists, so any
  turn-off forces vorticity ~ (a'/r)(x cross S x); (7.3) Helmholtz plus material
  history force that vorticity to be either advected in (route-out to a
  parent/Field owner) or viscously made (a bill) -- no free third branch, which
  grounds the exhaustiveness of the CRM.19p paid-or-routes-out split; (7.4)
  finite energy plus atom maximality plus slaved-no-refund plus Kelvin fix the
  outward forward-cascade sign, grounding the strict-participation-counts-
  positive-retained-variation premise of CRM.19p; (7.5) the fixed ell>=2
  surface-divergence gap on the common unit sphere is the source of the
  collar/tower-uniform c. The residual open step is the CRM.19p admission
  inequality dP_ret >= c dVar_ret N in the linear flux J_M^+, never the quadratic
  current enstrophy.
---

# Cubic Turn-Off — Physical Reduction of the Bill-Admission Lemma

Additive physical-reasoning support for the parent note's open theorems
`CubicRadialMomentOddPayment.A` (CRM.21/CRM.22) and
`RetainedPositiveCubicFluxIsPaidOrRoutesOut.A` (CRM.19m), and for the parent's
BV retained-service argument (CRM.19n–19p). Nothing here is a new definition;
each item is a same-field rigidity that removes an escape from the remaining
estimate. This note does **not** close \(c_0\). It supplies the sign, the
no-free-third-option, and the source of collar/tower uniformity, then states the
single scale-free estimate that is left. Tags `CRM.*` refer to the parent note.

## 7.1 Physical claim

A Vieillefosse affine core is a pure straining, **irrotational** potential flow:
\(u=\nabla\phi\), \(\phi=\tfrac12 x\cdot Sx\), harmonic because
\(\operatorname{tr}S=0\). Finite energy forbids it from persisting, so the same
fluid must turn it off. CRM.22 says the turn-off cannot be done for free: the
positive oriented cubic flux \(\mathsf J_M^+\) (CRM.19e/19o) is a genuine
same-field material-time bill. The rigidities below force that. Throughout,
\(N=-M\) is the positive retained cubic service (CRM.19o), so
\([-N']_+=[M']_+\).

## 7.2 There is no irrotational turn-off — turning off an affine strain must create vorticity

An irrotational incompressible field is a harmonic potential, \(u=\nabla\phi\),
\(\Delta\phi=0\). The core potential \(\tfrac12 x\cdot Sx\) is harmonic and
**grows**; decaying harmonic multipoles (\(\sim r^{-n}\)) cannot cancel a growing
harmonic. So no globally harmonic \(\phi\) has \(\nabla\phi=Sx\) near the core and
\(\nabla\phi\to0\) outward. An irrotational turn-off of an affine strain does not
exist. Modulating the strain amplitude with radius, \(u\supset a(\rho)Sx\),
carries vorticity

```math
\omega \sim \nabla a \times Sx \sim \frac{a'(\rho)}{r}\,(x\times Sx),
```

nonzero wherever \(x\) is off the strain eigenframe. The turn-off is rotational,
at a rate set by the turn-off rate \(a'\).

This is the physical content behind CRM.19h–19k: the aligned axisymmetric
turn-off is already rotational even though its pressure source is axisymmetric
and exerts no transverse eigenframe torque. So a payer built only from the
transverse pressure-Hessian commutator is genuinely insufficient — confirmed —
and the legitimate payer must be the broader oriented pressure-current/collar
bill, exactly as the parent concludes.

## 7.3 That vorticity has nowhere free to come from — grounds the CRM.19l/19p dichotomy

The core is irrotational; Helmholtz
\((D_t\omega=\omega\cdot\nabla u+\nu\Delta\omega)\) cannot grow vorticity from
identically zero on the inviscid same field. A configuration that is irrotational
in the core and rotational in the collar is therefore **not reachable by inviscid
material history from the core alone**. The collar vorticity required by 7.2 must
be either

- **advected in** from rotational surroundings — the *route-out* reading of
  CRM.19l: the service crosses the collar to a parent/Field owner and is that
  owner's participation; or
- **generated viscously** — a genuine same-field bill (the dissipation floor).

There is no third, free option. The would-be scale-covariant radial-rotational
tail \(u\sim h(\theta)/r^2\) — the marginal ghost — is exactly a mode carrying
this same collar vorticity, so it falls under the same dichotomy and is not free.
This is the physical reason CRM.19m/19p has **no zero-bill-and-no-route-out
branch**: a retained positive \(\mathsf J_M^+\) with no owner change would require
collar vorticity with no material history, which an irrotational core cannot
supply. It closes the exhaustiveness of the parent's paid-or-routes-out split
from the physics, not by enumeration.

## 7.4 The retained flux is paid, with the Vieillefosse sign — the T-odd lever

Why is the retained reading a **cost** and not a refund — i.e. why does strict
participation legitimately count positive retained variation (CRM.19p)? Three
same-field facts, none of which needs a transverse torque, so all survive the
aligned subcase 7.2:

- **Finite energy** forbids the amplifying core from piling up, so the net
  handoff of the signed cubic imprint is **outward** — the forward-cascade
  direction. This orients \(\mathsf J_M^+\) in material time (a lag: the surround
  receives downstream of the core's production).
- **Maximality** of the strict atom forbids the surround from feeding the core
  back: a refund would extend the participating region and contradict
  maximality. So on a maximal strict atom the boundary transfer is
  outward-signed, and \(N\) decreasing is service genuinely leaving the owner
  (CRM.19p), not reversible sloshing.
- **Slaved pressure** (no free sign) can only read the forced handoff, never
  subsidize it; and **Kelvin** forbids unwinding the shed circulation without
  viscosity or further transport.

So the retained \(\mathsf J_M^+\) is a forward-cascade cost carrying the sign of
\(-\operatorname{tr}(S^3)\), linear in the turn-off rate (CRM.19e–19g),
endpoint-fixed (CRM.11/CRM.14). It is a legitimate material-time oriented bill,
not a T-even magnitude.

## 7.5 Source of the scale-uniform constant

Incompressibility ties the current to the drop on the sphere, CRM.19c:
\(\partial_\rho w+\operatorname{div}_{S^2}j=0\). The surface-divergence operator
has a fixed spectral gap on the anisotropic (\(\ell\ge2\)) sector, and — because
the log-radial readout makes **every shell the same unit sphere** — that gap is
one geometric constant, independent of \(\rho\), collar radius, and tower depth.
That is where the \(c\) of CRM.22/CRM.24/CRM.19p comes from and why it is collar-
and tower-uniform.

## 7.6 Honest status — the single estimate that remains

7.2–7.5 reduce CRM.21 to one scale-free estimate:

> the collar vorticity forced by any nonzero turn-off (7.2), which must have a
> lawful material history (7.3), enters the \(\mathsf P_{\rm odd}\) currency at
> rate \(\ge c\,[M'(\rho)]_+\) with the outward Vieillefosse sign (7.4), \(c\)
> the fixed sphere gap (7.5).

Equivalently, it is the parent's CRM.19p first inequality
\(d\mathsf P_{\rm ret}\ge c\,d\operatorname{Var}_{\rm ret}N\) taken in the
**linear** flux \(\mathsf J_M^+\) (CRM.19e), never the **quadratic**
\(\int|j|^2\) (CRM.19g). This is not yet proved. What 7.2–7.5 remove are the four
escapes around it:

1. the irrotational-free turn-off (7.2);
2. the free scale-covariant radial-rotational ghost and the no-owner branch
   (7.3);
3. the wrong-sign / refund reading (7.4);
4. collar/tower non-uniformity of \(c\) (7.5).

Decisive determination before writing that estimate: confirm the participation
functional in the `ZeroPaymentForces...` spine meters the linear signed flux
\(\mathsf J_M^+\), not the current enstrophy \(\int|j|^2\). Only the former can
carry this; the latter reproduces the \(1/L\) log leak (CRM.19g).
