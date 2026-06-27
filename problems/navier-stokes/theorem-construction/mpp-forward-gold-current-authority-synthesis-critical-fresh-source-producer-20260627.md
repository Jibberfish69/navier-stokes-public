---
theorem_id: forward-gold-current-authority-synthesis-critical-fresh-source-producer-20260627
status: authority-synthesis-live-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical half-tail exclusion
audits:
  - user-supplied silent elliptic source normal form
  - mpp-forward-gold-silent-source-martingale-local-step-inclusion-20260627.md
  - mpp-forward-gold-stopped-routed-current-route-certification-audit-20260627.md
  - mpp-forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627.md
  - mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - mpp-forward-gold-selected-density-martingale-square-function-governing-edge-20260627.md
live_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
equivalent_carrier_form:
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
  - StoppedAccretiveTestingData.A
---

# Current authority synthesis: critical fresh-source producer

## 1. Silent source status

The supplied silent elliptic source theorem is the right local replacement for
Schur-only observability.

Boundary-flat pressure-Hodge sources can exist:

```math
f=\mathcal L_Aw,
\qquad
w|_{\partial A_Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial A_Q}=0.
```

So the proof must not claim that the parent Schur trace sees every interior
source. The installed local theorem is instead:

```math
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\!\left(
\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}
\right)
=\{0\}.
```

Plainly: an invisible pressure-Hodge source is either unselected
gauge/constraint material, or selected-but-paid by same-material top-strain
exchange, material service, viscous/radius service, or legal exit.

This gives the local packet step:

```math
|\Delta_Q\rho_{sel}|^2\mathcal R(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\mathcal E_Q^{top\text{-}ex}
+C\mathcal S_Q^{mat}
+CD_Q^{vis/rad}
+CR_Q^{legal}.
\tag{1}
```

Thus the attached theorem is included as closed local support. It does not prove
the global root packing by itself.

## 2. Conditional relay status

The stopped routed-current route now has a valid conditional relay:

```math
\text{stopped square-packing}
+
\text{finite original routed energy}
+
\text{selector-correct log identity}
\Longrightarrow
\sum_Q A(Q)<\infty
\Longrightarrow
\mathcal T_{full}<\infty
\Longrightarrow
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty.
\tag{2}
```

The relay is a consumer chain. It is not a final proof certificate.

The certification audit records three required inputs:

```text
I.   StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
II.  OriginalHistoryRoutedCurrentEnergyFinite.A
III. SelectorCorrectLogAmplificationIdentity.A
```

The first and third are locally assembled under the same finite parent-known
stopped selector model. The local branch defects are paid only when the selector
is stopped, finite, parent-known, first-exit based, and not fitted from the
future selected tail.

## 3. Noncircularity check

The dangerous circular step is:

```math
\mathcal E_{route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{3}
```

This is a valid subledger statement only after \(\Theta_{full}\) is already
available as an original-history finite ledger. It cannot be used by itself to
prove the same full material clock that appears on the right side.

Therefore `OriginalHistoryRoutedCurrentEnergyFinite.A` is not discharged merely
by projecting routed energy into \(\Theta_{full}\). The proof still needs a
noncircular original-history producer for the selected critical weight.

## 4. Current live producer

After silent-source classification, finite stopped selector reduction,
branch-gate assembly, and the conditional parent-drop relay, the nonduplicate
producer is:

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

For every retained stopped root \(P\), let

```math
Z_P^{orig}=Z_P^{vis}\oplus Z_P^{sil}\oplus Z_P^{ex}
```

be the original-history visible/silent/exchange carrier. For a retained fresh
selected child \(Q\), remove source directions already spent by strict selected
ancestors:

```math
F_Q=(I-\Pi_{spent(<Q)})\Delta_QZ_P^{orig}.
```

Raw Hilbert/Bessel control gives only

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N\|Z_P^{orig}\|_{\mathcal H_{raw}}^2+R_{legal}(P).
\tag{4}
```

The Gold proof needs the critical selected scale weight:

```math
\boxed{
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
}
\tag{5}
```

where \(w(Q)\) is generated from the original material history before terminal
selection.

This is the exact half-tail barrier. Orthogonal fresh increments with

```math
\|F_\ell\|_{\mathcal H_{raw}}^2={2^{-\ell}\over \ell+1}
```

have finite raw mass but divergent selected-critical mass:

```math
\sum_\ell\|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell 2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty.
```

So freshness and orthogonality do not close the route. The missing factor must
come from one-sided original-history scale memory, annular stress/strain
exchange, or a bounded-below same-material storage.

## 5. Equivalent carrier language

The same live burden can be stated as the stopped log-amplification / BMO
producer:

```math
\log {f_Q\over f_{\operatorname{par}(Q)}}
=
\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^S,
\qquad
\psi_Q\ge0,
```

with the root Carleson bound

```math
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{S\subseteq P'}\sum_{Q\subseteq S}
\left(
\|\Delta_QZ^S\|^2+|e_Q^S|^2
\right)\mathcal R(Q)
+Stop(P')
\right]
\le
C_N(u_0)+{R_{legal}(P')\over\mathcal R(P')}.
\tag{6}
```

The stopped \(Tb\) / martingale-transform formulation names the same producer
as:

```text
StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A.
```

This carrier formulation is useful only when \(Z^S\) is built from the original
same-material routed source with cancellation and local testing. Defining it
from the future selected tail is circular.

## 6. Authority result

The current Gold authority surface should read:

```text
closed support:
  SilentInteriorSourceOriginNormalForm.A
  AugmentedParentDropAfterSilentSource.A

conditional relay:
  ParentDropFullClockRelayFromSquarePacking.A

conditional local assembly:
  StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
  SelectorCorrectLogAmplificationIdentity.A
  EnergyStableRoutedCurrentProjection.A

live producer:
  CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A

equivalent carrier form:
  OriginalHistorySelectedLogAmplificationCarleson.A
  StoppedSelectorCorrectHilbertBMOProducer.A
  StoppedAccretiveTestingData.A
```

The MPP is not closed until the live producer is proved from original smooth
same-material history and then pushed through the already written relay.
