---
theorem_id: forward-gold-stopped-accretive-testing-current-factorization-20260627
status: conditional-reduction-transform-side-discharged-current-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped Hilbert-BMO producer
attacks_hinge:
  - StoppedAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
  - StoppedSelectorTestingCarleson.A
reduces_to:
  - RoutedSelectedSourceDivergenceForm.A
  - StoppedRoutedParticipationCurrentCarleson.A
---

# Stopped accretive testing via same-material current factorization

## 1. Live target

The current relay target is

```text
StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A.
```

The testing estimate is

```math
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P)+CR_{\rm legal}(P),
\tag{1}
```

for every stopped subpacket \(P\subseteq S\). Here \(T_S\) is the stopped
same-material pressure-Helmholtz--Leray / Hilbert / martingale lift and \(\nu^S\) is the
routed selected source measure on the stopped same-material region \(S\).

The important point is that `(1)` should not be attacked as an arbitrary
singular-integral testing problem. The source is not arbitrary. It comes from
the pressure-viscosity-incompressibility-velocity participation law on the same
material packet.

## 2. Source-current factorization

The proof-bearing normal form is:

```text
RoutedSelectedSourceDivergenceForm.A
```

For every stopped selector region \(S\), the routed selected source has the
form

```math
\nu^S
=
D_A J^S
+\nu^S_{\rm stop}
+\nu^S_{\rm legal},
\tag{2}
```

where \(D_A=\operatorname{div}_a(A\cdot)\), and \(J^S\) is the same-material
routed participation current. Its components are the pressure-visible Schur
current, silent-source commutator/exchange current, reset/order-lock current,
collar current, and legal lower-order current, all built before scalar positive
selection.

The stop and legal terms are allowed only when they are already paid:

```math
|\nu^S_{\rm stop}|(P)+|\nu^S_{\rm legal}|(P)
\le
Stop(P)+R_{\rm legal}(P).
\tag{3}
```

This is the point where the silent-source theorem enters. A boundary-flat
source which is merely \(L_Aw\) at one frozen time is not enough. It must either
be unselected hidden-potential material or appear in the current \(J^S\) through
the material commutator / covector exchange channel.

## 3. Helmholtz--Leray projection estimate

Let \(T_S\) be the stopped gradient lift

```math
T_S\nu
=
\nabla_A L_A^{-1}\nu
```

or the equivalent stopped martingale pressure-Helmholtz--Leray lift. If `(2)` holds, then

```math
T_S(D_A J^S)
=
\Pi_{\nabla,A}J^S,
\tag{4}
```

where \(\Pi_{\nabla,A}\) is the \(A\)-metric gradient/Helmholtz--Leray projection. Hence

```math
\|T_S(D_A(\chi_PJ^S))\|_{L^2(P,\mathcal R)}^2
\le
C\|\chi_PJ^S\|_{L^2(S,\mathcal R)}^2.
\tag{5}
```

The cutoff commutator is a collar/stop term:

```math
D_A(\chi_PJ^S)
=
\chi_PD_AJ^S+(D_A\chi_P)\cdot J^S,
\tag{6}
```

so

```math
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\int_{\widehat P}|J^S|^2\,d\mathcal R
+CStop(\widehat P)
+CR_{\rm legal}(\widehat P).
\tag{7}
```

Thus the transform side of the stopped testing theorem is discharged by the
same-material current factorization. The Hilbert transform is not the hard
object once the source is kept as a divergence of the participation current.

## 4. Remaining current Carleson theorem

The remaining theorem is:

```text
StoppedRoutedParticipationCurrentCarleson.A
```

For every stopped root \(P_0\),

```math
\sup_{P\subseteq P_0}
{1\over\mathcal R(P)}
\left[
\int_{\widehat P}|J^S|^2\,d\mathcal R
+Stop(\widehat P)
+R_{\rm legal}(\widehat P)
\right]
\le
C_N(u_0).
\tag{8}
```

Equivalently, the testing defects pack:

```math
\sum_{P\subseteq P_0}Def_{\rm test}(P)
\le
C_N(u_0)\mathcal R(P_0)+CR_{\rm legal}(P_0).
\tag{9}
```

Combining `(7)` and `(8)` gives

```math
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P),
\tag{10}
```

which is the stopped local testing estimate.

## 5. Consequence

With `(10)`, stopped dyadic \(T1/Tb\) / martingale transform theory gives the
Hilbert-BMO carrier \(Z^S=T_S\nu^S\). The already-installed martingale consumer
then gives the selected-density reverse-Holder gain:

```math
\rho_{\rm sel}\in L^{1+\varepsilon}(d\mathcal R).
```

That kills the critical half-tail.

## 6. Result

The current live hinge is sharpened:

```text
StoppedAccretiveTestingData.A
```

is reduced to

```text
RoutedSelectedSourceDivergenceForm.A
+
StoppedRoutedParticipationCurrentCarleson.A.
```

The first item is the exact source-origin / same-material routing identity. The
second item is the remaining Gold producer: prove that the routed participation
current has stopped Carleson \(L^2\) control from original smooth data, without
using the future selected tail.

This is partial. It removes the abstract Hilbert/BMO testing obstruction, but
it does not yet prove the original-history current Carleson bound.
