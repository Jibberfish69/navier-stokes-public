---
theorem_id: forward-gold-stopped-routed-current-energy-original-history-producer-20260627
status: routed-current-support-scale-native-reserve-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ScaleNativeActiveParticipationNativeReserveHinge.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - EnergyStableRoutedCurrentProjection.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - StoppedPredictableRootGeometryCompensator.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-current-factorization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-routed-energy-noncircular-installation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-canonical-source-promotion-contract-stopped-routed-current-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-log-amplification-identity-20260627.md
effect: >-
  Corrects the Gold edge from scalar primitive packets to the coupled stopped
  routed participation current.  The selected source must first be represented
  as nu^S = D_A J^S + nu_stop^S + nu_legal^S.  Fixed-core return, strict reset,
  selector log amplification, parent drop, and full-clock finiteness are faces
  of derivative BV / square packing for the same current J^S, not separate
  payments after scalar selected readout.  This is routed-current support for
  reset/projection and current-motion ledgers.  It does not pay pure scale-native
  zoom births by itself; the live open producer is the native-reserve /
  scale-memory storage map.  Partial, not Gold closed.
---

# Stopped routed-current energy from original history

Gold should be proved by showing that the stopped selector is a bounded
projection of the original Navier-Stokes participation law.

The source has to be kept as the same-material current first:

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal}.
\tag{1}
```

The live closure burden is not a scalar primitive return packet.  It is stopped
square packing of the same routed participation current \(J^S\) before scalar
selected readout.

## 1. The coupled current energy

The original-history routed-current energy is

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right).
\tag{2}
```

Here the four terms are the coupled derivative/current/connection packet of the
same material route:

```text
partial_sigma Z  routed carrier derivative;
T_sigma          turnstile / transport motion;
E_sigma          exchange motion;
C_sigma          covector / connection motion.
```

The theorem needed before any selected readout is the single estimate

```math
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{3}
```

This is:

```text
OriginalHistoryRoutedCurrentEnergyFinite.A
```

in its correct coupled-current form.

## 2. Subledger form

The noncircular way to prove `(3)` is to prove that the stopped route is a
bounded projection of the original full material participation law:

```math
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\le
C\Theta_{\rm full}
+dR_{\rm legal}
+dStop.
\tag{4}
```

Then the original-data bound for the underlying material participation density
gives `(3)`.

This cannot use the downstream full-clock conclusion recovered from selected
first-ratio action.  The density \(\Theta_{\rm full}\) must be the original
Navier-Stokes participation-law density before scalar selection, and the
stopped routing map must be bounded before descendant selected-tail readout.

## 3. Fixed returns and strict resets are faces of the same current

The fixed-core return/BV law is not an add-on after primitive PLS growth.  It is
the participation law seen through a fixed stopped selected channel.

On a fixed retained core, scalar readout gives

```math
P_R=\Gamma_R Z^S.
\tag{5}
```

But \(P_R\) is only a face of \(J^S\).  Its derivative is a projection of the
same coupled packet in `(2)`:

```math
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z)
+(\partial_\sigma\Gamma_R)Z.
\tag{6}
```

The second term is exactly the turnstile, exchange, covector, and connection
motion already present in \(\mathcal E_{\rm route}\).  Strict resets and
selector log amplification are the other readouts of the same current
variation.  They are not separate currencies.

Thus

```text
fixed returns
+ strict resets
+ selector log amplification
+ parent drop
+ full-clock finiteness
```

are consequences of stopped routed-current square packing once `(3)` is proved.

## 4. Stopped testing is current projection, not arbitrary BMO

The stopped testing source is already factored as `(1)`.  The pressure-Hodge /
Hilbert transform side is a bounded projection:

```math
T_S(D_AJ^S)=\Pi_{\nabla,A}J^S,
\tag{7}
```

with stop and legal collar terms charged separately.  Therefore the hard object
is the current-energy Carleson bound, not an arbitrary singular-integral
testing theorem.

In this corrected form,

```text
StoppedSelectorTestingCarleson.A / OriginalHistoryHilbertBMOProducer.A
```

is construction/testing machinery for the same current \(J^S\).  It is not the
survivor replacing \(J^S\).

## 5. Current role after the scale-native correction

The routed-current theorem is support for current-motion, reset, and projection
variation:

```text
StoppedRoutedCurrentEnergyOriginalHistoryProducer.A:
  nu^S = D_A J^S + nu_stop^S + nu_legal^S
  and
  E_route(P) <= C(u_0)+R_legal(P)+Stop(P)
  before selected readout.
```

It does not pay pure scale-native selected zoom births by itself.  A unit
rescaled read can have original pullback norm \(r^{-1/2}\), so finite raw
current energy cannot be promoted into selected critical action without the
native-reserve map.

The current active Gold producer is:

```text
NativeBirthChargePacking.A / SelectedGeneratorStorageCoercivity.A.
```

Once that producer supplies finite selected action, the downstream chain is
bookkeeping:

```text
stopped routed-current square packing
-> selected log amplification
-> parent drop
-> finite full material clock
-> H^s continuation.
```

Partial, not Gold closed.  The remaining mathematical work is the scale-native
native-reserve/storage theorem from the original Navier-Stokes participation
law.
