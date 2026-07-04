---
theorem_id: forward-gold-selected-generator-physical-payment-synthesis-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / root-projection pre-entrance source
target_object: RecordMenuRootProjectionFaithfulness.A
attacks_hinge:
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - OriginalScaleMemoryStorageCoercivity.A
  - SelectedGeneratorStorageCoercivity.A
  - PositiveCriticalTransferBound.A
  - NativeBirthChargePacking.A
refines_to:
  - StoppedAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
  - FreshFrequencyFluxNoFreeUpcascade.A
  - AffineQuotientTransitionPayment.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-projection-pre-entrance-scale-memory-producer-collapse-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-to-affine-quotient-transition-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-critical-transfer-dyadic-flux-affine-threading-reduction-20260628.md
completion_truth: partial-not-mpp-closed
---

# Selected generator physical payment synthesis

## 1. Physical object

The live packet is one retained future-positive signed-height edge in one
Navier-Stokes evolution.  Before that edge is read as a record gain, its parent
history must already contain the cost of the packet's hidden service: transport
through the parent flow, pressure-Hodge projection, incompressible rotation,
viscous scale change, detector-silent work, and selector/projector angle motion.

The pre-entrance source question is therefore physical before it is a storage
question:

Can the same original material packet pay every first retained upward
critical-scale birth before the future-selected readout chooses it?

If yes, root projection can enter parent currency noncircularly.  If no, the
edge can hide positive signed-height work in a legal coordinate that was not
paid by the parent before readout.

## 2. Four repo dialects of the same payment

The checked source surfaces name the same physical payment in four dialects.

First, selected generator storage asks for a positive square bound:

\[
\int_{\operatorname{Hist}(P)}a\|G_{sel}\|^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\]

The source note records the obstruction: the natural scale-memory energy gives
a signed balance identity.  A signed balance can cancel.  It does not provide
positive square coercivity without parent-known accretive testing data or a
symmetrizer.

Second, the fractional-energy form tests the Leray-projected Navier-Stokes
equation against \(\Lambda u\):

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\]

Thus the same payment is the positive critical transfer estimate:

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2\,dt,
\qquad
\theta<1 .
\]

This is the actual pressure-viscosity-incompressibility transaction for the
same velocity field.  The standard critical estimate closes only for small
critical packets, because the coefficient is \(\|u\|_{\dot H^{1/2}}\), the same
critical quantity Gold is trying to control.

Third, the native-reserve note says the fractional identity is only a coordinate
face.  Inside Gold, the physical theorem is the bounded-multiplicity native
birth ledger: inherited parent transport, reset, annular payback, and PLS
recirculation are consumers; the remaining event is the first positive atom of
the moving low-high same-packet interface.

Fourth, the dyadic flux reduction identifies the same positive transfer as the
weighted upward dyadic flux of the original coupled packet.  Endpoint affine
threading, moving low-high interface, reset charge, and affine quotient are
coordinate faces of that weighted no-free-upcascade burden.

## 3. What the affine quotient contributes

The lower-triangular scale-memory split removes derivative-exact scale output
and leaves one persistent rank-one scale mode:

\[
AQ(P)
:=
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt .
\]

That quotient is a genuine smaller survivor of the scale-memory calculation. It
is not a replacement for the physical producer.  It says the only scale mode
left after exact derivative absorption must be paid by record/negative return
or by fresh reset charge from original history.

Therefore:

\[
\texttt{OriginalScaleMemoryStorageCoercivity.A}
\quad\text{reduces to}\quad
\texttt{FreshExactScaleDerivativeAbsorption.A}
+
\texttt{AffineQuotientTransitionPayment.A}.
\]

This is useful because it prevents an opaque storage lemma from hiding the old
circular move.  It also keeps the Gold burden honest: the affine quotient must
still be grounded in the same original packet's positive critical transfer /
native-birth payment.

## 4. Strict reduction

The pre-entrance selected-critical source needed by
`RecordMenuRootProjectionFaithfulness.A` is not downstream record-admitted
storage.  It is this upstream same-packet payment:

\[
\texttt{SelectedGeneratorStorageCoercivity.A}
\;\Longleftrightarrow\;
\texttt{PositiveCriticalTransferBound.A}
\;\Longleftrightarrow\;
\texttt{NativeBirthChargePacking.A}
\]

up to the installed coordinate reductions through stopped accretive testing,
dyadic no-free-upcascade, and affine quotient transition payment.

In physical language, the theorem has to prove this:

For every retained future-positive record edge, the original parent material
history already contains a finite parent-known currency that catches the first
upward critical-scale births of that same packet with bounded multiplicity and
strict absorption, before the record readout selects the edge.

That is smaller than "solve all storage."  It is also larger than any local
endpoint, reset, affine, BMO, or dyadic bookkeeping estimate, because those
faces can only spend a currency after the same-packet birth payment exists.

## 5. Checked obstruction

Current sources do not prove that payment.

The natural scale-memory identity is signed and can cancel.  Raw energy
dissipation misses the half-tail:

\[
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty .
\]

The standard Leray critical estimate gives

\[
|B(t)|
\le
C\|u(t)\|_{\dot H^{1/2}}\|\Lambda^{3/2}u(t)\|_2^2,
\]

which supplies small-packet absorption but not arbitrary-data Gold absorption.
Endpoint/threading/reset/affine surfaces are useful readouts of where the
payment must land; they do not construct the parent-known same-packet payment
from original history.

Thus this pass installs a strict reduction and obstruction, not a proof:

\[
\text{root-projection pre-entrance source}
\;\leadsto\;
\text{same-packet no-free-upcascade/native-birth accretive payment}
\]

The next proof-sized theorem is the noncircular construction of that payment,
with stopped accretive testing or an equivalent same-material native-birth
ledger strong enough to imply selected generator square coercivity.
