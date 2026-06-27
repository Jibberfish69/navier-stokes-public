---
theorem_id: forward-gold-stopped-accretive-testing-thick-thin-reduction-20260627
status: thick-reference-closed-local-defect-charge-reduced-thin-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - MaterialAdjointAccretiveTestingData.A
  - SelectorReferenceStateFromOriginalHistory.A
  - TestingDefectChargeToInstalledLedgers.A
  - OriginalHistoryHilbertBMOProducer.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-generator-storage-accretive-testing-equivalence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-adjoint-testing-data-construction-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-accretive-reference-state-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
effect: >-
  Closes the thick-selector accretive reference branch and identifies the exact
  remaining noncircular work: selector-thickness Carleson packing plus stopped
  testing-defect charge to installed original-history ledgers.  This does not
  close MaterialAdjointAccretiveTestingData.A.
---

# Stopped accretive testing: thick/thin reduction

The live theorem is still

```text
MaterialAdjointAccretiveTestingData.A.
```

The previous boundary note showed that the stopped selector does not always
give an accretive \(L^2\)-controlled test.  This note separates the part that is
actually closed from the part that remains open.

## 1. Stopped packet notation

Let \(P\) be a retained stopped material packet.  Let \(\mathcal R\) be the
parent-known original-history reference measure on \(P\), and let
\(S_P\subset P\) be the selected stopped support inside \(P\).  Define the
selector density

```math
\theta_P:={\mathcal R(S_P)\over \mathcal R(P)}.
\tag{1}
```

Here \(S_P\) is not a new packet.  It is the selected part of the same stopped
material packet.

Fix a thickness threshold

```math
0<\theta_\ast<1.
\tag{2}
```

## 2. Thick selector support closes the accretive reference state

Assume

```math
\theta_P\ge \theta_\ast.
\tag{3}
```

Define the normalized selector reference

```math
b_P^0:={\mathbf 1_{S_P}\over \theta_P}.
\tag{4}
```

Then

```math
{1\over \mathcal R(P)}\int_P b_P^0\,d\mathcal R=1,
\tag{5}
```

so the reference state is accretive.  Its \(L^2\) size is

```math
\int_P |b_P^0|^2\,d\mathcal R
={1\over \theta_P^2}\mathcal R(S_P)
={1\over \theta_P}\mathcal R(P)
\le
\theta_\ast^{-1}\mathcal R(P).
\tag{6}
```

Thus the thick branch proves the reference-state part of the stopped \(Tb\)
data:

```math
|\langle b_P^0\rangle_P|\ge 1,
\qquad
\|b_P^0\|_{L^2(P,\mathcal R)}^2
\le
\theta_\ast^{-1}\mathcal R(P).
\tag{7}
```

This is noncircular.  It uses only the parent-known stopped support and the
lower thickness bound.

## 3. Thin selector support is the exact reference-state defect

If `(3)` fails, the normalized selector has size

```math
\|b_P^0\|_{L^2(P,\mathcal R)}^2
=\theta_P^{-1}\mathcal R(P),
\tag{8}
```

which can be arbitrarily larger than \(\mathcal R(P)\).  The failure is exactly
selector-thinning, not pressure, not viscosity, and not endpoint trace.

Define the selector-thickness defect

```math
Def_{\rm thin}(P)
:=
\left(\theta_P^{-1}-\theta_\ast^{-1}\right)_+\mathcal R(P).
\tag{9}
```

Then for every packet,

```math
\|b_P^0\|_{L^2(P,\mathcal R)}^2
\le
\theta_\ast^{-1}\mathcal R(P)+Def_{\rm thin}(P).
\tag{10}
```

Therefore the reference-state theorem is reduced to the Carleson packing of
this exact defect:

```text
SelectorThicknessDefectCarlesonFromOriginalHistory.A
```

with target

```math
\sum_{P\subseteq P_0}Def_{\rm thin}(P)
\le
C\mathcal R(P_0)+C R_{\rm legal}(P_0)+CStop(P_0).
\tag{11}
```

This is the only remaining obstruction to the reference-state size estimate.

## 4. Local testing-defect charge after the thick reference split

Let \(T_S\) be the stopped same-material transform whose output is the
visible/silent/exchange root generator carrier.  For the reference test
\(b_P^0\), define

```math
Def_{\rm test}(P)
:=
\left[
\|T_S(b_P^0\nu^S)\|_{L^2(P,\mathcal R)}^2
-C\mathcal R(P)-C R_{\rm legal}(P)
\right]_+.
\tag{12}
```

Because \(b_P^0\) is supported on the selected support of the same stopped
packet, the transform output decomposes into the already identified local root
carriers:

```math
T_S(b_P^0\nu^S)
=
\mathcal G_P^{vis}
+\mathcal G_P^{sil}
+\mathcal G_P^{ex}
+\mathcal G_P^{legal},
\tag{13}
```

with the thick normalization contributing only the fixed factor
\(\theta_\ast^{-1}\) on the branch `(3)`.

The local charge is:

```math
Def_{\rm test}(P)
\le
C_{\theta_\ast}
\left(
B_{\rm Schur}(P)
+E_{\rm top\text{-}ex}(P)
+S_{\rm material}(P)
+Stop(P)
+Reset(P)
+R_{\rm legal}(P)
\right)
+C\,Def_{\rm thin}(P).
\tag{14}
```

Explanation of the terms:

* the pressure-visible part is charged to \(B_{\rm Schur}\);
* the boundary-flat silent part is charged by the source-origin normal form:
  it is unselected/gauge, or it spends top-strain exchange/material service;
* the exchange part is charged to same-material service, reset, or stop;
* collar and selector mismatch are legal or stop/reset terms;
* the only reference-state size loss is \(Def_{\rm thin}\).

Thus the local testing defect is not an independent new clock.  It is a local
readout of the installed original-history ledgers plus the selector-thickness
defect.

## 5. What remains open

The thick branch is closed, but the full stopped testing theorem still needs
global packing:

```text
SelectorThicknessDefectCarlesonFromOriginalHistory.A
```

and the summed version of `(14)`:

```text
TestingDefectChargeToInstalledLedgers.A
```

namely

```math
\sum_{P\subseteq P_0}Def_{\rm test}(P)
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0)+CStop(P_0).
\tag{15}
```

Using `(14)`, `(15)` follows once the installed ledgers

```math
B_{\rm Schur},\quad
E_{\rm top\text{-}ex},\quad
S_{\rm material},\quad
Stop,\quad
Reset,\quad
R_{\rm legal},
\tag{16}
```

and the selector-thickness defect pack Carleson over the stopped tree.

## 6. Result

The proof tree sharpens to:

```text
SelectorThicknessDefectCarlesonFromOriginalHistory.A
  + TestingDefectChargeToInstalledLedgers.A
  -> MaterialAdjointAccretiveTestingData.A
  -> SelectedGeneratorStorageCoercivity.A
  -> OriginalLedgerRootDefectTightness.A
  -> paid root geometry
  -> stopped routed participation current.
```

The thick accretive reference case is proved.  The remaining live work is not a
new pressure estimate or endpoint clock.  It is global stopped-tree packing of
selector thinning and the local testing defects already routed to installed
same-material ledgers.
