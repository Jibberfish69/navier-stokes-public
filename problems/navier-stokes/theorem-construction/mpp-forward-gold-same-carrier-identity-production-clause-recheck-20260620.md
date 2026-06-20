---
theorem_id: forward-gold-same-carrier-identity-production-clause-recheck-20260620
status: direct-identity-clause-recheck-complete-not-proved
logical_landing_node: same_carrier_identity_production_clause
edge_effect: "Rechecks SameCarrierIdentity.A from the unweighted same-carrier reserve production obligation. It is not supplied by source-square tails, local energy defect measures, stress-current residues, or mode/gauge selector stability unless each object is identified with the same selected positive native pre-Cauchy carrier after localization, projection, packet selection, lifting/weighting, and positive-part extraction."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-trilinear-same-carrier-reserve-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-energy-flux-native-residue-identity-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mode-native-carrier-family-identification-direct-test-20260620.md
downstream_consequence: "SameCarrierIdentity.A is a carrier-typing gate. A supplier theorem counts for the forward-gold production theorem only after it controls the actual selected positive native carrier, or after the retained mismatch is admitted to the same-witness CM Pack/Part/Field route."
---

# MPP Forward-Gold Same-Carrier Identity Production Clause Recheck

Date: 2026-06-20

## Status

Direct identity-clause recheck complete.  `SameCarrierIdentity.A` is not proved
from current inputs.

The clause is not an extra analytic estimate.  It is the carrier-typing rule
for the forward-gold production theorem: every supplier must act on the same
selected positive native carrier.

## 1. Target carrier

On selected terminal heat-scale packets, the carrier is

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},w_{j_m}
\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx .
\tag{SCI.1}
```

This is after the proof operations:

```text
localization,
projection,
packet selection,
same-fluid restriction,
lifting/weighting,
positive-part extraction.
```

Thus a supplier theorem on a signed stress residue, a local energy defect
measure, a source-square tail, or a mode score is not a theorem on `(SCI.1)`
until a same-carrier identity or domination has been proved.

## 2. Source-square tail: paid implication, unpaid carrier domination

The paid implication is exact.  If

```math
G_m(s)=r_m^{1/2}T_{k_m}(T_m+r_m^2s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2ds<\infty,
\tag{SCI.2}
```

and the selected carrier obeys

```math
a_m(s)\le C_{\rm car}G_m(s)+\ell_m(s),
\tag{SCI.3}
```

with terminal strip modulus for \(\ell_m\), then Cauchy--Schwarz gives
endpoint uniform integrability of \(a_m\).

The unpaid bridge is `(SCI.3)`.  For the native trilinear carrier,

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+ .
\tag{SCI.4}
```

Domination by the source-square tail requires a same-packet coefficient
throttle

```math
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\le C\nu r^{-2},
\tag{SCI.5}
```

or a source-weighted product estimate on the same selected packet:

```math
\int
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
dx
\le
C\,T_k(t)+Legal_j(t).
\tag{SCI.6}
```

Trace-free strain and incompressibility do not imply `(SCI.5)` or `(SCI.6)`.
A trace-free strain can expand the selected packet direction while contracting
the unselected directions.

## 3. Native trilinear normal form

On a heat window \(I_j=(T-r^2,T]\), take low strain at the heat clock

```math
\lambda_j=\nu r^{-2}
\tag{SCI.7}
```

and a selected high packet aligned with the expanding eigendirection.  Choose
the amplitude so that

```math
D_j(t)=r^{-1/2}.
\tag{SCI.8}
```

Then

```math
\Phi_j^+(t)
\simeq
D_j(t)
=r^{-1/2},
\tag{SCI.9}
```

and

```math
\int_{I_j}\Phi_j^+(t)\,dt\simeq r^{3/2}\to0,
\qquad
\int_{I_j}r^{-1}\left(\Phi_j^+(t)\right)^2dt\simeq1.
\tag{SCI.10}
```

This shows that first-moment visibility of the native carrier does not imply
same-carrier source-square control.

## 4. Local energy defect: native measure, unpaid positive selection

The local energy inequality gives a native nonnegative measure

```math
\mu_{LE}
=
-\left(
\partial_t\mathcal E+\mathcal D+\nabla\cdot\mathcal F
\right)
\ge0.
\tag{SCI.11}
```

This is a correct Navier--Stokes object.  The selected source carrier is a
positive part of a localized packet decomposition.  The inequality

```math
\left[\sum_P X_P\right]_+
\le
\sum_P[X_P]_+
\tag{SCI.12}
```

goes in the wrong direction for identifying the selected positive packet with
the assembled signed local energy defect.

The two-packet model

```math
X_m^+=m{\bf 1}_{(-1/m,0]},
\qquad
X_m^-=-m{\bf 1}_{(-1/m,0]},
\tag{SCI.13}
```

has assembled signed sum zero while the selected positive packet retains a
terminal atom.  The missing theorem is selected positive polar saturation plus
moving-packet commutator legality and no-free terminal Zeno donor-chain control.

## 5. Stress-current and mode-score objects have the same typing defect

A projected stress residue gives a signed vector or scalar projection before
the positive packet operations.  It still needs

```math
ProjectedLocalPreCauchyResidueIdentity.A
\tag{SCI.14}
```

or the same local-energy/native-carrier identity in `(SCI.11)`--`(SCI.13)`.

Mode and gauge tests have a different carrier-typing defect.  They may select a
family by a score \(s_m^{mode}\), while the native source family is selected by

```math
s_m^{src}(P)
=
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+dxdt.
\tag{SCI.15}
```

Selector stability for a fixed score does not compare the two scores.  The
needed theorem is a score comparison plus selected-source gap:

```math
\left|
s_m^{mode}(P)-a_m s_m^{src}(P)
\right|
\le
\varepsilon_m s_m^{src}(P)+b_m(P),
\qquad
a_m\ge a_0>0.
\tag{SCI.16}
```

Without `(SCI.16)`, two strict selectors can choose different packets with no
contradiction.

## 6. Exact remaining identity gates

At current input strength, `SameCarrierIdentity.A` decomposes into the concrete
same-carrier gates:

```math
\boxed{
SelectedSourceSquareCarrierDomination.A
}
\tag{SCI.17}
```

for source-square suppliers,

```math
\boxed{
LocalEnergyFluxNativeResidueIdentity.A
\quad/\quad
ProjectedLocalPreCauchyResidueIdentity.A
}
\tag{SCI.18}
```

for local-energy and stress-current suppliers, and

```math
\boxed{
ModeNativeCarrierFamilyIdentification.A
}
\tag{SCI.19}
```

for mode/gauge suppliers.

Each of these reduces to the same hard positive-selection content:

```math
\boxed{
\text{selected polar saturation, retained signed partner/legal charge,
no-free terminal Zeno donor-chain control, or same-carrier source-square/no-waste.}
}
\tag{SCI.20}
```

## Verdict

`SameCarrierIdentity.A` is not installed as a single theorem.  It is the
requirement that every supplier theorem be on the actual selected positive
native carrier `(SCI.1)`.

The exact error it prevents is:

```math
\boxed{
\text{using a controlled signed, tail, defect, stress, or mode object as though
it were the selected positive native source carrier.}
}
\tag{SCI.21}
```

The forward-gold route may use source-square, local energy, stress-current, or
mode/gauge suppliers only after the relevant same-carrier gate `(SCI.17)`--
`(SCI.19)` is paid.  Otherwise the surviving retained carrier is only available
as a CM Pack/Part/Field readout after same-witness admission.
