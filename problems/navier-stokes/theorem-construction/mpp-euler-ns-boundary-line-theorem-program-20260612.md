# MPP Euler/NS Smoothness-Boundary Line Theorem Program

## Status

Active theorem-work packet.

This note records the Euler material that can lawfully remain in the
Navier-Stokes proof program after the June 12 audit.  It does not try to solve
Euler.  It uses Euler in two boundary roles:

1. smooth-side support:
   `EulerSmooth(u_0,[0,T]) => NSSmooth_nu(u_0,[0,T])` for the same datum, same
   interval, and fixed `nu>0`;
2. nonsmooth-side comparison:
   a selected Navier-Stokes terminal packet that exits through `Part` or `Field`
   only because viscous participation or the viscous one-field tether is missing
   has an Euler comparison object with the same transport, pressure, and
   incompressibility data and no viscosity.

The second role is class-exit support for Navier-Stokes.  It is not an Euler
regularity theorem.  The paired Euler object may be a weak/base Euler member
while failing a stronger regularity or one-field predicate.

## Governing Boundary

The shared core is

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
```

The Navier-Stokes side adds the fixed positive-viscosity term

```math
\nu\Delta u,\qquad \nu>0.
```

Inside the CM witness tree, that difference is read at the two non-Pack faces:

```math
Part_{N,Q}:\quad
D_tU_k=-\nabla^{k+1}p+\nu\Delta U_k+B_k,\qquad 0\le k\le N,
```

and

```math
Field_{N,r,Q}:\quad
\text{one positive scale reads the neighboring }(U_k,K_k)\text{ towers as one field.}
```

Thus the boundary line is not "Euler versus Navier-Stokes" as two unrelated
proofs.  It is the place where the same packet keeps the transport-pressure
core and loses exactly the fixed-viscosity participation or coherence required
by the Navier-Stokes class.

## Theorem A: Clean Viscous-Participation Euler Comparison

Let

```math
\mathcal W^\nu=(u_0,\nu,u,p,Q,N,r,\Phi,T_*)
```

be a selected Navier-Stokes terminal witness record admitted to the CM test.
Assume:

1. `Pack_Q` survives on `\mathcal W^\nu`;
2. the same transported packet, pressure field, and incompressible transport law
   define an Euler comparison record

   ```math
   \mathcal W^E=(u_0,0,u,p,Q,N,r,\Phi,T_*);
   ```

3. the only failed same-law mechanism is the positive-viscosity tower term:
   the transport-pressure equations hold distributionally on the selected
   packet, while the Navier-Stokes differentiated tower

   ```math
   K_k^\nu=-\nabla^{k+1}p+\nu\Delta U_k
   ```

   fails to be a same-record finite participation tower;
4. no extra Reynolds stress, source measure, pressure-source residue, or
   defect measure is introduced by the comparison.

Then the selected Navier-Stokes packet has a Part-Part/Field failure:

```math
Pack_Q\wedge \neg Part_{N,Q}.
```

### Proof

`Part_{N,Q}` is the statement that the selected packet still carries the same
Navier-Stokes pressure-viscosity tower through depth `N`.  Assumption 3 says
that this exact tower is the failed mechanism, while assumption 1 keeps the
carrier question already passed.  Assumption 4 prevents the branch from being a
different source-residue or weak-limit object.  The first failed surviving face
is `Part_{N,Q}`.  This is a Navier-Stokes class-exit face, not an
Euler smoothness claim.

## Theorem B: Clean One-Field Euler Comparison

Let the same witness record satisfy `Pack_Q` and retain the same
Navier-Stokes participation tower for the purpose of the case split.  Assume the
paired Euler comparison record is a weak/base Euler member, but the selected
packet has no positive scale on which the neighboring velocity-pressure towers
form one coherent field.  Equivalently, the Euler comparison object satisfies
the transport-pressure membership law but fails `EReg` or `EField` on that
same packet.

Then the selected Navier-Stokes packet has a Field-Part/Field failure:

```math
Pack_Q\wedge Part_{N,Q}\wedge \forall r>0\,\neg Field_{N,r,Q}.
```

### Proof

`Field_{N,r,Q}` asks for a positive same-packet scale on which the neighboring
finite-depth readings of `U_k` and `K_k` are one coherent field.  The hypothesis
denies every such scale after Pack and Part have been retained for the branch
split.  The first remaining failed face is Field.  On the Euler side this same
event is only failure of an added one-field regularity layer; it need not
contradict base Euler membership.

## Installed Model: Tangential Slip Sheet

The installed proof model is

```text
problems/navier-stokes/euler-mirror/theorem-construction/
mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md
```

It proves that a stationary tangential slip sheet can satisfy weak Euler
flux-volume and momentum-pressure laws while failing one-field smooth
coherence.  For fixed `nu>0`, the same discontinuous sheet creates an interface
distribution in `nu Delta u`, so it is exactly a pressure-viscosity/Field
defect for the Navier-Stokes class.

This supplies a proved clean example for Theorem B.  It does not prove that
every Navier-Stokes Part/Field branch has this clean form.

## Source-Backed Status Ledger

### Installed nonsmooth-side facts

The Euler base class is weaker than the Navier-Stokes `Part` and `Field`
faces.  The Euler mirror branch records base membership as `Member_E = EVol +
EMom`; pressure participation is a compatibility law, not one-field regularity.
Primary anchors:

```text
problems/navier-stokes/euler-mirror/theorem-construction/
mpp-euler-class-membership-flux-volume-definition.md:115
mpp-euler-class-membership-flux-volume-definition.md:163
```

The strongest installed model is the tangential slip/vortex-sheet witness.  It
keeps incompressibility and pressure-momentum compatibility on the Euler side,
fails one-field regularity, and becomes a fixed-`nu` viscous-interface defect on
the Navier-Stokes side.  Primary anchors:

```text
problems/navier-stokes/euler-mirror/theorem-construction/
mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:12
mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:98
mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:113
```

The global periodic Euler mirror has proved weak nonsmooth witnesses for slip
sheets and unbounded shear/receiver-ledger failure, plus singular-limit support
from smooth shear layers to the slip sheet.  These are Euler nonsmoothness
surfaces, not fixed smooth-data Euler blowup proofs.  Primary anchors:

```text
problems/navier-stokes/euler-mirror/theorem-construction/
global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md:127
global-periodic-unbounded-shear-euler-ledger-failure-bridge-20260524.md:123
global-periodic-smooth-layer-to-slip-sheet-limit-20260524.md:56
```

The shared grammar is installed: `Pack`/volume is shared; Navier-Stokes `Part`
and `Field` are pressure-viscosity and one-field tower faces, while Euler
regularity/coherence layers are optional strengthening over base Euler
membership.  Primary anchors:

```text
problems/navier-stokes/euler-mirror/theorem-construction/
shared-pack-non-one-field-grammar-closure-20260524.md:17
shared-pack-non-one-field-grammar-closure-20260524.md:66

problems/navier-stokes/theorem-construction/
mpp-member-smooth-contrapositive-witness-bridge-20260504.md:114
mpp-member-smooth-contrapositive-witness-bridge-20260504.md:142
mpp-member-smooth-contrapositive-witness-bridge-20260504.md:246
```

### Conditional nonsmooth-side lift

The clean theorem for the PDF is not "Euler singularity implies NS closure."
The clean theorem is:

```text
same selected NS packet
+ Pack survives
+ same transport-pressure-incompressible core survives
+ loss is exactly viscous participation or the viscous one-field tether
+ no Reynolds stress, source measure, pressure-source residue, or defect measure
=> NS lands in Part or Field
+ the Euler comparison object is nonsmooth only at the added EReg/EField layer.
```

Once a branch has been typed as this clean viscous-only-loss case, the
Part/Field conclusion is unconditional.  The open work is the classifier that
proves a given Euler-related surface or zero-budget limit really belongs to this
clean case.  That is why the older unconditional viscosity-class separation
attempt failed as a general theorem: zero effective viscous budget can leave
concentration, oscillation, Reynolds stress, pressure-source residue, or source
measures, and same-ledger transfer needs strong compactness.

Primary anchors:

```text
problems/navier-stokes/theorem-construction/
mpp-viscosity-class-separation-unconditional-closure-attempt.md:132
mpp-viscosity-class-separation-unconditional-closure-attempt.md:179
mpp-viscosity-class-separation-edge-theorem-program.md:278
```

### Smooth-side bridge status

The same-datum, same-interval, fixed-`nu` bridge is retained as boundary-support
material:

```math
EulerSmooth(u_0,[0,T]) -> NSSmooth_\nu(u_0,[0,T]).
```

It is not installed.  The repo contains reductions and failed direct attempts.
The available relative estimate controls the Euler solution and gives a
difference inequality, but the cubic term still needs an a priori
Navier-Stokes-side bound:

```text
d/dt ||w||_{H^s}^2 + nu ||grad w||_{H^s}^2
<= C_E ||w||_{H^s}^2 + C_s ||w||_{H^s}^3
   + C_s nu^2 ||u^E||_{H^{s+2}}^2.
```

Primary anchors:

```text
problems/navier-stokes/theorem-construction/
mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md:3
mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md:182
mpp-viscosity-cannot-create-first-failure-reduction-20260509.md:41
mpp-viscosity-cannot-create-first-failure-reduction-20260509.md:76
mpp-euler-smooth-to-ns-smooth-direct-cm-attempt-20260506.md:137
```

## Smooth-Side Boundary

The smooth-side bridge remains the fixed-viscosity target

```math
EulerSmooth(u_0,[0,T])
\Longrightarrow
NSSmooth_\nu(u_0,[0,T])
\qquad(\nu>0).
```

Current repo status:

1. `mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md` records
   the target and proves reductions to an `H^s` tower bound or a relative
   `H^s` bound.
2. `mpp-viscosity-cannot-create-first-failure-reduction-20260509.md` proves the
   first-failure reduction, conditional on the target lemma
   `ViscosityCannotCreateFirstFailure.A`.
3. `mpp-euler-smooth-to-ns-smooth-direct-cm-attempt-20260506.md` records the
   direct CM transfer attempt and leaves the exact transfer theorem open.

This bridge is boundary-support material.  It is not the CM class-exit proof
and it should not be used to promote Euler material into the Navier-Stokes proof
tree without the fixed-`nu` transfer theorem.

## Branch-Matching Burdens

The theorem work now splits into concrete branch checks.

### Nonsmooth-side checks

For each Euler-related surface, prove or reject the following packet:

```text
same selected NS packet
+ Pack survives
+ same transport-pressure-incompressible core survives
+ the only broken mechanism is viscous participation or one-field viscous tether
+ no defect measure/source residue/Reynolds stress is introduced
=> Part or Field exit for NS
+ Euler nonsmoothness in EReg/EField, not failure of base Member_E
```

Open named bridge obligations:

1. `CleanSameScenarioSelection.A`:
   the Euler comparison object and the Navier-Stokes terminal object are the
   same selected packet/scenario, not neighboring examples.
2. `NoDefectMeasureCleanEulerization.A`:
   removing the viscous mechanism does not leave a Reynolds stress, source
   measure, pressure-source residue, or weak-limit artifact.
3. `PartViscousOnlyLossTyping.A`:
   the lost mechanism is exactly the Navier-Stokes pressure-viscosity tower.
4. `FieldViscousTetherOnlyLossTyping.A`:
   the lost mechanism is exactly positive-scale one-field coherence after Pack
   and Part have been retained for the branch split.

### Smooth-side checks

The bridge remains one of the following:

```math
EulerSmoothFixedNuRelativeBound.A,
```

```math
EulerSmoothToNSTowerBound.A,
```

or

```math
ViscosityCannotCreateFirstFailure.A.
```

Each is same-datum, same-interval, fixed-`nu`, and support-only until proved.

## PDF Retention Rule After Theorem Work

The PDF should retain exactly two Euler uses after the theorem work is complete:

1. the Part/Field Euler comparison witness for lost viscous participation or
   lost viscous one-field tether;
2. the smooth-side fixed-`nu` bridge as boundary support.

All Euler material outside those two roles remains Euler-only, generic
comparison, or excess for the Navier-Stokes proof.
