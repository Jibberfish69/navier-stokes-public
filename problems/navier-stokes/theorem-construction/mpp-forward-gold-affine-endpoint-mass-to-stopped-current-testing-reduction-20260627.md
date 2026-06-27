---
theorem_id: forward-gold-affine-endpoint-mass-to-stopped-current-testing-reduction-20260627
status: endpoint-mass-demoted-to-stopped-current-testing-functional-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed-current testing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
repairs_authority_conflict_between:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-mass-to-overrun-branch-authority-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627.md
attacks_hinge:
  - FreshPositiveAffineEndpointMassKill.A
  - NativeBirthAffineEndpointThreading.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - StoppedAccretiveTestingData.A
refined_hinge:
  - FreshAffineEndpointMassStoppedTestingReduction.A
  - StoppedEndpointAccretiveTestingData.A
  - RoutedEndpointSourceDivergenceForm.A
  - StoppedRoutedParticipationCurrentCarleson.A
branch_defects:
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - StoppedFullExchangeActionCarleson.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/34269b9a-4b1f-467e-9aa1-7ec0dd3a4f25/pasted-text.txt
  - system/meta/research-os/proof-relay/state.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-mass-to-overrun-branch-authority-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-dynamic-silent-fresh-innovation-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-current-factorization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-to-stopped-current-carleson-audit-20260627.md
effect: >-
  Reconciles the fresh affine endpoint-mass reduction with the current stopped
  testing authority. Endpoint mass is a real AQK coordinate, but it is not a
  standalone Gold hinge. Its noncircular role is as a positive scalar testing
  functional of the same routed participation current. Dynamic silent persistence
  supplies the commutator/covector/frame/turnstile current; stopped accretive
  testing is the device that converts that current into the endpoint L2 mass.
---

# Affine endpoint mass to stopped current testing

This note is a reduction, not a Gold closure.

The previous endpoint note correctly found the selected-scale atom:

```math
M_0^{fresh}(t,x)=\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma .
\tag{1}
```

On the positive affine carrier,

```math
0\le c_F^{fresh}(t,x)\le {|J|\over |I|}M_0^{fresh}(t,x),
\tag{2}
```

so the AQK survivor is paid by the weighted endpoint estimate

```math
\int H_w(t)\|M_0^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{3}
```

But `(3)` is not an independent master hinge.  It is the scalar endpoint face
of the stopped routed current/testing theorem.

## 1. Authority repair

There are two true statements which must be kept together.

First, endpoint mass is sharper than raw fresh source attachment.  The
half-tail counterprofile shows that raw Bessel freshness cannot pay the
selected-critical weight.

Second, endpoint mass is subordinate to the stopped current/testing producer.
It does not bypass:

```text
StoppedRoutedParticipationCurrentCarleson.A
+
StoppedAccretiveTestingData.A.
```

The correct placement is:

```text
dynamic silent/source persistence
  -> routed participation current J_EP^S
  -> stopped endpoint testing functional
  -> FreshPositiveAffineEndpointMassKill.A.
```

Thus `FreshPositiveAffineEndpointMassKill.A` should be treated as a consumer of
the stopped current/testing theorem, not as a replacement for it.

## 2. Endpoint source divergence form

The needed same-material source identity is:

```text
RoutedEndpointSourceDivergenceForm.A
```

For each stopped parent \(P\), after spent-source projection, paid selector
drift, paid reselection, paid full-exchange crossings, legal/stop removals, and
parent-predictable inherited transport subtraction, the endpoint source obeys

```math
M_0^{fresh}
=
D_AJ_{EP}^S
+M_{0,stop}^{fresh}
+M_{0,legal}^{fresh}.
\tag{4}
```

Here \(D_A=\operatorname{div}_a(A\cdot)\), and \(J_{EP}^S\) is the endpoint
part of the same routed participation current used in the stopped testing
route.  Its silent component is not a static elliptic source.  It is the
material-persistent current produced by

```math
D_t(\mathcal L_Aw)=\mathcal L_A(D_tw)+[D_t,\mathcal L_A]w,
\tag{5}
```

together with covector, frame, and turnstile motion.  The parent-predictable
part is inherited record/return material.  The fresh part is the
parent-subtracted commutator/covector/frame/turnstile innovation.

Stop and legal terms must already satisfy

```math
|M_{0,stop}^{fresh}|(P)+|M_{0,legal}^{fresh}|(P)
\le
Stop(P)+R_{\rm legal}(P).
\tag{6}
```

## 3. Endpoint testing data

The endpoint mass is positive, but its \(L^2\) norm is still a dual testing
problem:

```math
\int H_w\|M_0^{fresh}\|_2^2
=
\sup_{\|g\|_{L^2(H_w)}\le1}
\left|
\int H_w M_0^{fresh}g
\right|^2 .
\tag{7}
```

Using `(4)`,

```math
\int H_w M_0^{fresh}g
=
\int H_w D_AJ_{EP}^S\,g
+Stop_g+Legal_g .
\tag{8}
```

After integration by parts on the stopped packet,

```math
\int H_w D_AJ_{EP}^S\,g
=
-\int J_{EP}^S\cdot D_A^*(H_wg)
+Collar_g .
\tag{9}
```

The required endpoint testing theorem is therefore:

```text
StoppedEndpointAccretiveTestingData.A
```

For every stopped parent-known dual test \(g\),

```math
\int_{\widehat P}
|D_A^*(H_wg)|^2\,d\mathcal R^{-1}
\le
C\int_{\widehat P}H_w|g|^2\,dt\,dx
+CStop(P)+CR_{\rm legal}(P),
\tag{10}
```

with collar errors paid by the same stopped boundary/legal ledger:

```math
|Collar_g|^2
\le
C\bigl(Stop(P)+R_{\rm legal}(P)\bigr)
\int_{\widehat P}H_w|g|^2.
\tag{11}
```

The data in `(10)` must be built before terminal selected positive readout.  If
the test is chosen from the future selected tail, the proof has just renamed the
desired endpoint estimate.

## 4. Conditional implication

Assume:

1. `RoutedEndpointSourceDivergenceForm.A`, namely `(4)`--`(6)`;
2. `StoppedEndpointAccretiveTestingData.A`, namely `(10)`--`(11)`;
3. the endpoint current Carleson estimate

```math
\int_{\widehat P}|J_{EP}^S|^2\,d\mathcal R
\le
C_N(u_0)\mathcal R(P)+CStop(P)+CR_{\rm legal}(P);
\tag{12}
```

4. branch accounting

```math
Stop(P)
\le
C\,StoppedReturnBV(P)+C\,CriticalResetBV(P)+R_{\rm legal}(P).
\tag{13}
```

Then `(3)` follows.

Indeed, by `(7)`--`(9)`, Cauchy--Schwarz, `(10)`, and `(12)`,

```math
\left|\int H_w M_0^{fresh}g\right|^2
\le
C\left(\int_{\widehat P}|J_{EP}^S|^2\,d\mathcal R\right)
\left(\int_{\widehat P}|D_A^*(H_wg)|^2\,d\mathcal R^{-1}\right)
+CStop(P)+CR_{\rm legal}(P).
\tag{14}
```

For \(\|g\|_{L^2(H_w)}\le1\), `(10)` and `(12)` give

```math
\left|\int H_w M_0^{fresh}g\right|^2
\le
C_N(u_0)\mathcal R(P)+CStop(P)+CR_{\rm legal}(P).
\tag{15}
```

Taking the supremum in `(7)` and using `(13)` yields

```math
\int H_w\|M_0^{fresh}\|_2^2
\le
C_N(u_0)\mathcal R(P)
+C\,StoppedReturnBV(P)
+C\,CriticalResetBV(P)
+CR_{\rm legal}(P).
\tag{16}
```

This proves the conditional reduction:

```text
FreshAffineEndpointMassStoppedTestingReduction.A
```

and feeds the endpoint-threaded native birth atom from the stopped current
producer.

## 5. Dynamic silent-source role

The attachment's useful sentence remains:

```text
silent at one time is allowed;
silent through the material clock is expensive.
```

In this note, that sentence enters through the construction of \(J_{EP}^S\).
For the silent component,

```math
J_{EP}^{S,sil,new}
=
\Pi_{\rm new}
\left(
[D_t,\mathcal L_A]w
+\operatorname{covector}
+\operatorname{frame}
+\operatorname{turnstile}
+\partial_\sigma Z
\right)
+R_{\rm legal}.
\tag{17}
```

The already recorded zero-cost freshness rigidity says: when the projected
terms in `(17)` vanish, the selected silent material is inherited
parent-predictable transport and contributes no fresh endpoint quotient.  When
they do not vanish, they enter \(J_{EP}^S\) and must be square-packed through
the stopped current/testing theorem.

So dynamic silence does not directly prove `(3)`.  It supplies the current in
`(4)`.  The stopped endpoint testing data convert that current into the
positive endpoint mass.

## 6. Remaining burden

The live theorem is now:

```text
StoppedEndpointAccretiveTestingData.A
+
RoutedEndpointSourceDivergenceForm.A
+
StoppedRoutedParticipationCurrentCarleson.A
  -> FreshPositiveAffineEndpointMassKill.A.
```

Together with the existing endpoint-threaded reserve map, this gives

```text
FreshPositiveAffineEndpointMassKill.A
  -> NativeBirthAffineEndpointThreading.A
  -> NativeBirthChargePacking.A
  -> CriticalFreshSourceTentCarleson.A
  -> StoppedRoutedCurrentSquarePacking.A.
```

The still-open branch payments are unchanged:

```text
StoppedReturnBVFiniteFromOriginalData.A
+
CriticalWeightedResetBVFromOriginalHistory.A.
```

Gold remains open until the endpoint divergence form, endpoint testing data,
current Carleson estimate, and branch payments are produced from original
same-material history before future selected-tail readout.
