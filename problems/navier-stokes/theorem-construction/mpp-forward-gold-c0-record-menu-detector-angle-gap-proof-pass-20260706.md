---
theorem_id: forward-gold-c0-record-menu-detector-angle-gap-proof-pass-20260706
status: proved-frozen-linear-algebra-equivalence-detector-angle-silent-service-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / same-parent detector faithfulness
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RecordMenuPressureActiveOrSilentService.A
  - RecordMenuDetectorAngleGap.A
  - RecordMenuSelectedSymbolKernelExclusion.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-E4-delamination-same-parent-storage-obstruction-20260706.md
completion_truth: >-
  Frozen detector-angle proof pass. At one retained packet, one frequency
  direction, and one record-menu edge, the needed detector inequality is a
  finite-dimensional linear-algebra statement. On the sign-symmetric retained
  amplitude quotient, [w_rec z]_+ <= C |D z| is equivalent to
  ker D subset ker w_rec, equivalently w_rec lies in the row span of the parent
  root and active full-exchange detectors, with a uniform angle on the retained
  compact symbol bundle. If this row-span condition fails, there is a
  detector-silent positive work direction: D z=0 but [w_rec z]_+>0. This is the
  precise lower obstruction behind delamination. Current allowed sources do not
  prove the required row-span/angle theorem or the alternative that every
  detector-silent positive component is already paid by silent service before
  readout. Therefore this note proves the finite-dimensional equivalence and
  refutes the unsupported inference from detector existence to detector
  faithfulness, but it does not install RecordMenuPressureActiveOrSilentService.A.
---

# Record-menu detector angle: finite-dimensional equivalence and obstruction

## 1. Physical object

Freeze one retained same-fluid packet before record readout. A future-positive
record-menu edge has:

```math
\text{high packet},\quad
\text{low strain/current coefficient},\quad
\text{material time coordinate},\quad
\text{parent charge coordinate}.
\tag{DA.1}
```

Let \(z\) be its retained amplitude. The record reads a scalar work symbol
\(w_{rec}z\). The parent storage machinery sees only the detector pair

```math
D z := (m_{root}z,\ m_{FE}z),
\tag{DA.2}
```

where \(m_{root}\) is the parent root/pressure-Hodge detector and \(m_{FE}\) is
the active full-exchange detector.

The physical question is exact: can the same high-packet/low-strain work edge
carry positive record work while both parent payment detectors see zero?

## 2. Frozen theorem

Let \(V\) be the finite-dimensional retained amplitude space after legal gauge
directions, stopped exits, and already-paid lower-order pieces are quotiented.
Let

```math
D:V\to Y,\qquad w:V\to\mathbb R
\tag{DA.3}
```

be the detector map and record-work functional.

The desired frozen detector inequality is

```math
[wz]_+\le C\,|Dz|
\qquad\text{for all }z\in V.
\tag{DA.4}
```

Because the native amplitude space is sign-symmetric before the future-positive
record selector is applied, `(DA.4)` is equivalent to

```math
|wz|\le C\,|Dz|
\qquad\text{for all }z\in V.
\tag{DA.5}
```

Indeed, applying `(DA.4)` to \(z\) and to \(-z\) controls both signs of \(wz\).

## 3. Linear-algebra proof

The following are equivalent for fixed \(V,D,w\):

```math
\exists C<\infty\ \text{such that } |wz|\le C|Dz|
\quad\Longleftrightarrow\quad
\ker D\subseteq \ker w.
\tag{DA.6}
```

Proof. If the inequality holds and \(Dz=0\), then \(|wz|\le0\), hence
\(wz=0\). So \(\ker D\subseteq\ker w\).

Conversely, if \(\ker D\subseteq\ker w\), then \(w\) is constant on fibers of
\(D\) and factors through the image of \(D\):

```math
w=\ell\circ D
\quad\text{for some linear }\ell:\operatorname{im}D\to\mathbb R.
\tag{DA.7}
```

Since \(\operatorname{im}D\) is finite-dimensional, \(\ell\) is bounded, so
\(|wz|\le\|\ell\|\,|Dz|\). This proves `(DA.6)`.

Equivalently, \(w\) lies in the row span of the detector pair:

```math
w\in\operatorname{rowspan}(m_{root},m_{FE}).
\tag{DA.8}
```

Uniformity across retained packets is the uniform angle form: on the retained
compact symbol bundle, the quotient norm of \(w\) relative to \(\operatorname{im}D\)
stays bounded.

## 4. Exact obstruction

If `(DA.6)` fails, then there is \(z\in V\) with

```math
Dz=0,
\qquad
wz\ne0.
\tag{DA.9}
```

By sign symmetry, replace \(z\) by \(-z\) if needed and obtain

```math
m_{root}z=0,\qquad m_{FE}z=0,\qquad [w_{rec}z]_+>0.
\tag{DA.10}
```

This is the detector-silent positive work direction. It is not a Navier-Stokes
bad solution; it is the exact linear-algebra countermodel to the unsupported
inference

```math
\text{parent detectors exist}
\quad\Longrightarrow\quad
\text{positive record work is parent-paid.}
\tag{DA.11}
```

Detector existence is weaker than detector faithfulness.

## 5. Relation to silent service

The source warns that the detector-angle statement is not a raw tensor theorem.
An unrestricted trace-free/transverse component can be invisible to a
pressure-Hodge-type detector while still carrying tensor action. Therefore the
retained record-menu theorem must split each edge into:

```math
\text{pressure-active part}+\text{joint-detector-silent part}.
\tag{DA.12}
```

The pressure-active part must satisfy the row-span/angle condition `(DA.8)`.
The joint-detector-silent part must already be paid before record readout by
same-material service: parabolic service, source-origin exchange,
complete-frame trace-free variation, viscous/radius service, legal exit, or
stop material.

Thus the actual lower theorem is:

```math
\boxed{
\texttt{RecordMenuPressureActiveOrSilentService.A}
}
\tag{DA.13}
```

with the operator companion:

```math
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}.
\tag{DA.14}
```

The latter is needed because exact weighted Hodge/root projectors do not
preserve Littlewood-Paley shells; commutator and moving-chart residues must be
legal, stopped, lower-order, or active-paid before the frozen symbol argument
applies.

## 6. Consequence for the active c_0 goal

This note proves the frozen linear algebra and names the obstruction precisely:

```math
\text{positive record work survives with }Dz=0
\quad\Longleftrightarrow\quad
\text{same-parent detector faithfulness fails}.
\tag{DA.15}
```

So the remaining same-parent wall is no longer a vague compactness defect. It
is exactly:

```math
\text{uniform row-span/angle on the pressure-active quotient}
\quad+\quad
\text{pre-readout payment of detector-silent service}
\quad+\quad
\text{exact-projector chart/commutator admission}.
\tag{DA.16}
```

The active theorem `NormalizedRelayBillCompactnessRecordPassage.A` remains
unproved until `(DA.13)` and `(DA.14)` are installed, together with the earlier
Gate 1 and Gate 2 rows.
