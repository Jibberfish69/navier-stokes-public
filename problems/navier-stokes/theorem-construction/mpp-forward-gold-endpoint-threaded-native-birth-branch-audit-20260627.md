---
theorem_id: forward-gold-endpoint-threaded-native-birth-branch-audit-20260627
status: endpoint-threading-conditional-three-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed current Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - NativeBirthAffineEndpointThreading.A
  - FreshPositiveAffineEndpointMassKill.A
  - FreshMuNCarlesonEndpointThreading.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
downstream_consumer:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - SelectedCompressionRootReserve.A
  - StoppedRoutedCurrentSquarePacking.A
  - StoppedRoutedParticipationCurrentCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-compression-root-reserve-synthesis-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-retained-positive-affine-endpoint-mass-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-mun-carleson-endpoint-threading-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-endpoint-mass-shell-pair-threading-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-nun-window-seed-synchronization-direct-attempt-20260609.md
edge_effect: >-
  Integrates the latest endpoint-threaded native-birth reduction with the branch
  audits. The fresh positive endpoint mass M0 is the right candidate selected-scale
  atom after the DER/AQK affine quotient split. It is not yet a produced native
  reserve atom. Gold now needs an independent fresh endpoint Carleson/threading
  theorem and the two reuse branch payments before NativeBirthChargePacking.A can
  feed stopped routed current Carleson.
---

# Endpoint-threaded native birth branch audit

This note is an authority correction, not a closure.

The latest reduction identifies the selected-scale atom that was missing from
the raw native-birth map.  It does not yet prove the atom is available from the
original same-material history with finite root packing.

## 1. What the endpoint reduction actually proves

After the DER/AQK split of the fresh scale primitive, the persistent affine
quotient is

```math
c_F^{fresh}
=A_\kappa M_0^{fresh}+B_\kappa M_1^{fresh}.
```

On the positive fresh carrier, the affine kernel is nonnegative, so

```math
0\le c_F^{fresh}(t,x)
\le
C\,M_0^{fresh}(t,x),
\qquad
M_0^{fresh}(t,x)
=
\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma .
```

Thus the positive affine quotient is reduced to the weighted endpoint estimate

```math
\int_0^{T^*}
H_w(t)\|M_0^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

This is a real narrowing.  It says the candidate selected-scale reserve atom
for a first selected birth should be the fresh positive endpoint-mass window,
not a raw source-channel atom.

## 2. What remains unproved

The endpoint atom is not yet a native reserve atom.  The required map still has
two parts:

```math
\omega_\gamma
\le
C_N\rho_\gamma^{EP}+R_{\rm legal}(\gamma),
\tag{1}
```

and

```math
\sum_{\gamma\subset P}\rho_\gamma^{EP}
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P)
+C\,StoppedReturnBV(P)
+C\,CriticalResetBV(P).
\tag{2}
```

The current repo does not prove `(1)`--`(2)`.  The endpoint note only identifies
the atom that `(1)`--`(2)` must use.

The earlier retained endpoint attempts confirm the same boundary:

- the absorbed shell-pair commutator estimate controls a signed commutator
  packet, not the positive accumulated endpoint mass \(M_0\);
- the \(\mu_N\) route is circular if the upgraded bridge is used to prove the
  measure estimate that is then fed back into endpoint observability;
- fixed-\(N\) terminal-window smallness and fixed-time high-frequency seed
  smallness do not synchronize by themselves on the same retained \(N\)-dependent
  terminal family.

## 3. The three open producers

The endpoint-threaded native-birth route now has exactly three proof-bearing
open inputs.

First, independent fresh endpoint Carleson/threading:

```text
FreshMuNCarlesonEndpointThreading.A
```

or one of its equivalent siblings:

```text
FreshEndpointMassShellPairThreading.A
FreshTerminalNuNWindowSeedSynchronization.A.
```

The required noncircular form is an endpoint measure estimate such as

```math
\mu_N^{fresh}(I)
\le
\varepsilon\nu\int_I D_N(t)\,dt
+C_{\varepsilon,N}2^{-2\delta N}
+R_{\rm legal}(I),
```

proved before using the endpoint theorem it is meant to feed.

Second, fixed-core return payment:

```text
StoppedReturnBVFiniteFromOriginalData.A
```

The scalar record/return identity is valid once the signed stopped scale
potential has been constructed.  The unproved line is the original-history
bound for the negative return side, for example

```math
\sum_k [\Psi(Q_k)-\Psi(Q_{k+1})]_+
\le
C\,\mathcal R_{\rm return}(P)+R_{\rm legal}(P),
```

with \(\mathcal R_{\rm return}\) not defined from the future selected tail.

Third, strict reset payment:

```text
CriticalWeightedResetBVFromOriginalHistory.A
+
LogScaleResetDerivativeCarrierBound.A.
```

The required form is a critical weighted reset estimate:

```math
\sum_{Q\subseteq P}
\sum_{Q'\in ch_{\rm stop}(Q)}
w(Q')\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
\le
C\int_{\mathcal C(P)}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
\right)
+R_{\rm legal}(P).
```

The weight \(w(Q')\) has to come from original log-scale derivative,
collar-turnstile, exchange, or paired-carrier structure.  It cannot be defined
from future selected descendants.

## 4. Repeated-core and shrinking-core placement

The repeated-core branch is conditional.  The record/return monovariant is
proved at the scalar level, but it consumes a predictable pre-readout transition
geometry and a same-history return charge.  It does not create those objects.

The shrinking-core branch is also conditional.  Local selected payment is
available through pressure-visible/null routing, collar-normal compression,
covector compression, and selection/legal terms.  The missing line is the root
upper bound with the selected critical weight.

Thus endpoint threading, repeated-core return, and strict reset are not three
competing routes.  They are the current components of one native-birth packing
claim:

```text
fresh selected birth
  -> positive fresh affine endpoint mass
  -> endpoint atom spent once, returned, or reset-paid
  -> NativeBirthChargePacking.A
  -> CriticalFreshSourceTentCarleson.A
  -> StoppedRoutedCurrentSquarePacking.A.
```

## 5. Result

Gold is still open.  The correct live hinge is no longer raw native birth,
silent-source visibility, or endpoint mass by itself.  It is:

```text
FreshPositiveAffineEndpointMassKill.A
+
FreshMuNCarlesonEndpointThreading.A
+
StoppedReturnBVFiniteFromOriginalData.A
+
CriticalWeightedResetBVFromOriginalHistory.A
```

feeding

```text
NativeBirthAffineEndpointThreading.A
-> NativeBirthChargePacking.A
-> CriticalFreshSourceTentCarleson.A
-> StoppedRoutedCurrentSquarePacking.A
-> StoppedRoutedParticipationCurrentCarleson.A.
```

No surface should report the endpoint-mass reduction as closure until the
fresh endpoint threading estimate and the two branch payments are proved from
the original same-material history before future selected-tail readout.
