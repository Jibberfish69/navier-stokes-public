---
theorem_id: forward-gold-c0-affine-quotient-zero-surplus-subcase-exclusion-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / material-time Liouville / affine quotient
status: proved-persistent-localized-affine-zero-surplus-subcase-excluded-not-full-liouville
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_object:
  - CertifiedSurplusZeroThetaProfileRigidity.A
  - MaterialTimeLiouvilleExclusion.A
  - ThetaRelayDetectorFaithfulnessOrAffineQuotientPayment.A
  - PersistentRootAffineQuotientReturnPayment.A
  - SamePacketInterfaceDefectSummabilityOrStrictLoss.A
  - FullTowerPositiveChannelRootProjection.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-ns-fluid-field-object-corrected-ontology-lock-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-clock-retention-liouville-bridge-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-relay-rigidity-vs-theta-profile-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-affine-strain-mismatch-return-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-low-mode-exclusion-high-frequency-material-return-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-full-tower-positive-channel-projection-audit-20260706.md
completion_truth: >-
  Subcase proof and strict reduction only. The local affine incompressible
  strain packet remains a valid equality test: it has pressure-balanced strain
  service with zero affine viscous heat and zero higher finite-difference relay
  detector. This note proves that such an affine quotient cannot be a persistent
  localized finite-energy zero-surplus material-time profile. A nonzero affine
  strain is not a global periodic Navier-Stokes history, and any local
  affine-looking core placed inside one finite-energy same-fluid parent must
  pay a collar/parent second-derivative tower bill on every natural parabolic
  time slab where the critical affine core persists with positive density. That
  bill is a same-parent tower/collar payer, so it is incompatible with a
  certified zero-surplus profile whose tower/collar/interface payers vanish.
  The affine-looking escape therefore survives only as temporal thinness, loss
  of finite parent carrier/cover, loss of same-parent tower/collar certificate,
  or high-frequency nonlinear pressure-stress transfer inside the full material
  clock. This does not prove full Theta rigidity, FullTower retention, c_0, or
  MPP closure.
---

# Persistent localized affine zero-surplus profiles are excluded

## 1. Same object

The object is one same-fluid incompressible viscous dissipative
Navier-Stokes history. The local affine normal form is only a tangent test
inside that history; it is not allowed to become a detached fluid.

The affine quotient matters because it is invisible to the finite-difference
relay detector:
\[
u(x,t)=B(t)x,\qquad \operatorname{tr}B(t)=0,
\qquad \nabla^2u=0 .
\]
With the matching quadratic pressure, it can carry strain/metric material
service while the affine viscous heat and higher relay detector vanish. That is
why the all-zero relay theorem alone did not close the \(\Theta_N\) profile.

## 2. Nonzero affine strain is not a retained global periodic history

On the periodic surface, a velocity field with spatially constant gradient
satisfies
\[
0=u(x+\gamma,t)-u(x,t)=A(t)\gamma
\]
for every period vector \(\gamma\). Since the period vectors span
\(\mathbb R^3\), \(A(t)=0\). The corresponding quadratic pressure is also
periodic only in the zero case.

Thus a nonzero affine strain can occur only as a local approximation inside the
actual fluid-field-object. It must be matched to the surrounding same-fluid
parent.

## 3. Finite parent energy forces a collar/tower bill

Use the installed affine-core collar theorem. If a ball \(B_r\subset B_R\)
contains a critical affine-core first-gradient lower bound
\[
  \int_{B_r}|\nabla u|^2\,dx\ge \eta{\nu^2\over r},
\]
and the parent energy on \(B_R\) is finite,
\[
  \int_{B_R}|u|^2\,dx\le E_R,
\]
then, whenever the affine core persists on a set
\[
  G\subset(t_0-r^2/\nu,t_0),
  \qquad |G|\ge\theta r^2/\nu,
\]
the parent region pays
\[
  \nu\int_G\int_{B_R}|\nabla^2u|^2\,dx\,dt
  \ge
  c\,{\theta\eta^2\nu^4\over E_R}.
\tag{AZS.1}
\]

This is not a detached higher-derivative proxy. It is the matching cost needed
to place a local affine-looking strain core inside the finite-energy same-fluid
parent. It is read in the surrounding collar or parent tower.

## 4. Consequence for zero surplus

A certified surplus-zero \(\Theta_N\) profile has the same law, material
ancestry, retained cover, same-law tower, and service labels, while its
same-packet strict-loss, interface, tower/collar, root-payment, legal, stop,
and exit payers vanish in the surplus certificate.

If positive \(\Theta_N\) service in that profile were carried by a persistent
localized affine quotient with finite parent energy and positive material-time
density, `(AZS.1)' would produce a positive same-parent tower/collar payer.
That contradicts zero surplus.

So the persistent localized affine equality class is excluded:
\[
\begin{array}{c}
\text{positive-density localized affine }\Theta_N\text{ service}\\
+\text{finite parent carrier}\\
+\text{same-parent tower/collar certificate}\\
+\text{zero surplus}
\end{array}
\quad\Longrightarrow\quad
\bot .
\tag{AZS.2}
\]

## 5. What remains

The affine-looking escape can still avoid this subcase theorem in only the
following ways:
\[
\begin{array}{ll}
\text{no positive material-time density} &\Rightarrow
  \text{temporal thinness / payer lower-semicontinuity problem},\\[1mm]
\text{no finite parent carrier or retained cover} &\Rightarrow
  \text{Pack/cover route-out},\\[1mm]
\text{no same-parent tower/collar certificate} &\Rightarrow
  \text{Part/tower/selector route-out},\\[1mm]
\text{not affine after localization} &\Rightarrow
  \text{high-frequency nonlinear pressure-stress transfer in the full clock}.
\end{array}
\tag{AZS.3}
\]

This is the strict narrowing. The local affine normal form no longer remains as
a persistent zero-surplus equality profile. The surviving branches are exactly
the temporal payer/admission problem and the high-frequency same-material full
clock.

No full material-time Liouville theorem or \(c_0\) closure is claimed here.
