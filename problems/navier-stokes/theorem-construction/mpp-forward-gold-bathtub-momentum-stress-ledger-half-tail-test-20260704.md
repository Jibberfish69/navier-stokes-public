---
theorem_id: forward-gold-bathtub-momentum-stress-ledger-half-tail-test-20260704
status: candidate-producer-sharpened-not-proved
created: 2026-07-04
problem: navier-stokes
route: forward-gold / WLF.60 / same-parent selected service
proof_role: source-recovered physical candidate and half-tail adversarial test
source_provenance:
  - problems/navier-stokes/source-forensics/master-conversation-corpus.md:42541
  - problems/navier-stokes/source-forensics/master-conversation-corpus.md:42670
  - problems/navier-stokes/source-forensics/ns-lived-sequence-history.md:284
repo_anchors:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-pressure-flux-throttle-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-stress-jet-producer-admission-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-closure-coupled-stress-jet-attempt-20260628.md
completion_truth: >-
  The recovered bathtub intuition is mathematically useful only after replacing
  bare local net momentum by localized Cauchy-stress / routed participation
  current on the same transported parent packet.  Plain pressure flux and raw
  local momentum remain too weak and are already beaten by the heat-scale
  half-tail.  The surviving candidate is a first-use same-parent stress-current
  ledger: every selected fresh child overrun must be paid before selected
  positive-part readout by a
  parent-visible stress/momentum redistribution current with stopped Carleson or
  entropy packing.  This kills the abstract half-tail if proved, but the lower
  edge and packing theorem are exactly the still-open Gold producer.
---

# Bathtub Momentum / Stress Ledger Half-Tail Test

## 1. Source recovery

The source passage Fable 5 points at is real in the current repo forensic
corpus.  The January 2025 anisotropic-regularization thread records the physical
intuition:

```text
locally all the particles must share a net momentum ... even if the small eddies
thrash about wildly, they cannot overcome the total momentum of the tensor as it
moves
```

The later lived-sequence note preserves the useful reading:

```text
directionality is not decoration;
the object carries different laws in different directions.
```

That lineage points at the right class of object for Gold: a moving
same-material packet with direction, pressure response, strain, viscosity, and
history held together.  It does not by itself prove a theorem.

## 2. Correction: net momentum is not the payment

Bare packet net momentum is too weak.  A child vortex or oscillatory eddy can
carry large strain and selected critical action while the vector integral of
momentum over the packet is small or zero.  Therefore the useful object cannot be

```math
\left|\int_P u\,dx\right|.
```

The local PDE object is the localized momentum balance.  In Eulerian form,

```math
\partial_t u+\operatorname{div}(u\otimes u+pI-\nu\nabla u)=0,
\qquad \nabla\cdot u=0.
```

Thus for a packet cutoff \(\phi_P\),

```math
{d\over dt}\int \phi_P u\,dx
=
\int (u\otimes u+pI-\nu\nabla u)\nabla\phi_P\,dx
+\operatorname{Frame/Collar}_P .
\tag{BMS.1}
```

In the transported material chart used by the coupled stress-jet notes, the same
statement is

```math
\partial_t v=\operatorname{Div}_A T_A,
\qquad
T_A=-qI_A+2\nu S_A,
\tag{BMS.2}
```

plus the already named frame, collar, route, legal, and stop terms.  This is the
sharpened bathtub object: not a conserved scalar or vector, but parent-visible
stress redistribution through the same material packet.

## 3. Why the weak version fails the half-tail

The repo already tested plain pressure/energy flux.  The heat-scale normal form
can have finite physical pressure/transport flux at each radius while retaining
one order-one normalized selected pulse at every scale.  Along \(r_j=2^{-j}\),
the pressure-flux throttle note obtains the mismatch

```math
\sum_j F_{\phi_{r_j}}<\infty,
\qquad
\sum_j r_j^{-1}F_{\phi_{r_j}}=\infty .
\tag{BMS.3}
```

So the statement

```math
finite localized momentum or pressure flux
\Longrightarrow
finite selected critical service
```

is false from the installed inputs.  That is the same failure shape as the
fresh heat-lag half-tail:

```math
\sum_\ell \omega_\ell|\Delta_\ell|^2<\infty,
\qquad
\sum_\ell \omega_\ell|\Delta_\ell|=\infty.
\tag{BMS.4}
```

Plain momentum, plain pressure flux, raw Bessel square packing, and raw local
energy/CKN currencies are therefore support only.  They do not pay WLF.60.

## 4. The surviving candidate inequality

The Fable move survives only in the following strengthened form.

For every stopped parent packet \(P\), selected fresh first-entry heat-lag window
\(I\), and parent-subtracted detector \(P_{F_I}\psi_I^P\), define a pre-readout
stress-current price \(d\mathsf{SM}_I(P)\) from the same transported Cauchy
stress / routed participation current.  It must satisfy the lower-edge estimate

```math
\omega_I
\left|J_P(P_{F_I}\psi_I^P)\right|
\le
C[q_I\,dq_I]_+
+d\mathsf{SM}_I(P)
+dOsc_I^{heat}
+\theta\,dVisc_I
+dMotion_I
+dReturn_I
+dLegal_I
+dStop_I
+Err_I,
\qquad \theta<1,
\tag{BMS.5}
```

and the same-parent packing estimate

```math
\sum_{I\subset P} d\mathsf{SM}_I(P)
\le
C_N(u_0)\mathcal R(P)
+R_P^{legal}
+Stop_P .
\tag{BMS.6}
```

This is the exact formal version of "the child eddy cannot outrun the parent":
the child is allowed to have a large selected readout only after that readout is
admitted as the first-use action of the parent stress/current.  Later readings
are Schur reuse, pressure-tail oscillation, viscous descent, route motion,
return/reset, legal material, or stopped material.  They are not fresh fuel.

## 5. Half-tail verdict

The abstract half-tail has no variable corresponding to \(d\mathsf{SM}_I(P)\).
It has only finite raw square mass and infinite selected linear service.  If
`(BMS.5)`--`(BMS.6)` are installed, the half-tail is impossible:

```math
\sum_{I\subset P}
\omega_I
\left|J_P(P_{F_I}\psi_I^P)\right|
<\infty,
```

contradicting `(BMS.4)`.

That is useful, but it is not closure.  It says the bathtub/stress-ledger
candidate is strong enough to kill the known cheap countermodel.  The actual
proof burden is producing `(BMS.5)` and `(BMS.6)` from the original coupled
Navier-Stokes packet before selected positive-part readout.

## 6. Relation to the installed Gold wall

This candidate is not a new independent route.  It names a physical realization
of the currently open Gold supplier:

```text
WLF.13--WLF.15 fresh linear service
=
FGC.20 strict whole-field jet-service absorption
=
TFE1906--TFE1922 stopped routed participation current source
=
selected same-parent stress/current price before positive-part readout.
```

The coupled stress-jet admission note already proves that a selected child
readout must be an admitted same-parent stress-response coordinate before it may
be squared.  The missing theorem is stronger: the positive selected linear bill
must be lower-edged and packed by a same-parent stress/current capacity.

## 7. Tao averaged-system test

The strengthened candidate is in the permitted structural class.  It uses the
localized Cauchy stress and material momentum balance of the same transported
Navier-Stokes packet.  Tao's averaged equation preserves energy-type
cancellation but replaces the pointwise material nonlinearity with an averaged
operator that does not provide this same local stress tensor on one transported
parent history.

Therefore:

```text
weak bathtub = net momentum / plain pressure flux:
  fails by existing half-tail and pressure-flux tests.

strong bathtub = first-use same-parent stress-current price before positive-part readout:
  passes Tao's negative-space test, kills the half-tail if proved,
  and is exactly the remaining Gold producer rather than a solved theorem.
```

## 8. Next proof target

The next proof target is not "prove local momentum conservation."  That identity
is already standard and too weak.  The target is:

```text
StoppedSelectedStressMomentumCurrentCarleson.A
```

Statement:

```math
\sum_{I\subset P}
\left[
d\mathsf{SM}_I(P)
+ThinDef_I
+TestDef_I
\right]
\le
C_N(u_0)\mathcal R(P)
+R_P^{legal}
+Stop_P,
\tag{BMS.7}
```

together with the lower-edge admission `(BMS.5)`.  A proof of `(BMS.5)` and
`(BMS.7)` would supply the missing WLF.60 producer.  A counterexample to either
one kills the bathtub route quickly.
