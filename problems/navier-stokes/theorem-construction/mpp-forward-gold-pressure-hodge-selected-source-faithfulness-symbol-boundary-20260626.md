---
theorem_id: forward-gold-pressure-hodge-selected-source-faithfulness-symbol-boundary-20260626
status: direct-proof-fails-symbol-kernel-exclusion-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - PressureHodgeSelectedSourceFaithfulness.A
  - ICBR.A
  - SelectedActionTraceCoercivity.A
  - ParentDrop.A
---

# Pressure-Hodge selected-source faithfulness: symbol boundary

This note tests `PressureHodgeSelectedSourceFaithfulness.A`.

## 1. Target

The desired theorem is

```math
\Pi_{PH}(\mu^{\rm sel}_{\Sigma})=0
\quad\Longrightarrow\quad
A(\mu^{\rm sel}_{\Sigma})=0
\tag{PHF.1}
```

inside every retained same-material pressure-Hodge packet.

Equivalently, the selected critical-strain action must be controlled by pressure-Hodge visibility:

```math
A(\mu^{\rm sel}_{\Sigma})
\le
C\,\|\Pi_{PH}(\mu^{\rm sel}_{\Sigma})\|_{Y}
+R_{\rm legal}.
\tag{PHF.2}
```

## 2. Direct proof attempt

The pressure-Hodge equation sees only the projected source:

```math
\mathcal L_A W
=
\Pi_{PH}(\mu^{\rm sel}_{\Sigma}).
\tag{PHF.3}
```

Thus if

```math
\Pi_{PH}(\mu^{\rm sel}_{\Sigma})=0,
```

then the pressure-Hodge field is homogeneous in the retained packet. But this alone proves only pressure-Hodge invisibility of the projected source. It does not prove the full selected carrier vanishes unless the selected class is faithful to the projection.

The proof therefore reduces to excluding selected modes in the kernel of `Pi_PH`.

## 3. Symbol form

At a frozen material point and frequency `xi`, write the pressure-Hodge projection symbol as

```math
m_{PH}(a,\xi),
```

and the selected critical-strain action symbol as

```math
a_{sel}(a,\xi).
```

Faithfulness is the pointwise symbol inequality

```math
|a_{sel}(a,\xi) z|^2
\le
C |m_{PH}(a,\xi)z|^2
\tag{PHF.4}
```

for every retained selected source amplitude `z`, after quotienting legal/gauge directions.

Equivalently:

```math
m_{PH}(a,\xi)z=0
\quad\Longrightarrow\quad
a_{sel}(a,\xi)z=0.
\tag{PHF.5}
```

## 4. Missing theorem

The exact missing theorem is

```text
SelectedSymbolKernelExclusion.A
```

Statement:

On the retained same-material high-ratio packet class, the selected critical-strain source has no nonzero symbol component in the pressure-Hodge nullspace:

```math
\ker m_{PH}(a,\xi)
\cap
\{z: a_{sel}(a,\xi)z\ne0\}
=
\varnothing
\tag{PHF.6}
```

modulo legal exit and gauge-null directions.

If `(PHF.6)` is proved uniformly, then `(PHF.2)` follows by compactness on the normalized retained symbol bundle, hence `(PHF.1)` follows.

## 5. Result

`PressureHodgeSelectedSourceFaithfulness.A` is not discharged by the pressure-Hodge equation alone. It is equivalent to the symbol/kernel exclusion theorem `(PHF.6)` for the retained selected packet class.

The closure chain becomes conditional:

```math
\text{SelectedSymbolKernelExclusion.A}
\Longrightarrow
\text{PressureHodgeSelectedSourceFaithfulness.A}
\Longrightarrow
\text{ICBR.A}
\Longrightarrow
\text{SelectedActionTraceCoercivity.A}
\Longrightarrow
\text{ParentDrop.A}
\Longrightarrow
\sum_Q A(Q)<\infty.
```

So the current lock has moved from qualitative rigidity to a concrete symbol question: does the retained selected critical-strain action have any pressure-Hodge-null component?