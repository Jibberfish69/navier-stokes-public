# MPP TerminalPressureTraceAngularSaturation.A Direct Attempt

Date: 2026-05-17

Status: failed direct theorem; returns to pressure partner saturation.

Purpose: test whether pressure trace balance and Calderon-Zygmund angular cancellation can force terminal saturation of selected positive pressure-Hessian lobes.

## 0. Target

The desired theorem is

```math
\boxed{TerminalPressureTraceAngularSaturation.A.}
```

For each selected positive directional pressure-Hessian lobe

```math
[-n_P\cdot \nabla^2p\,n_P]_{+}
```

retained by the terminal pressure ledger, the theorem should force one of:

```text
retained opposite angular/trace pressure partner,
legal pressure exit,
or no positive selected residue.
```

## 1. Trace route

The pressure Hessian has trace information through the Poisson equation and the strain/rotation quadratic. This is a scalar full-direction identity. The terminal residue tests one selected direction `n_P` and then applies positive selection. A trace identity may balance the selected direction by other directions, while the terminal ledger keeps only the positive selected part.

Thus trace balance gives a full tensor constraint. It does not provide selected directional depletion at the terminal ledger level.

## 2. Angular CZ route

The pressure kernel has mean-zero angular structure. Before terminal selection,

```math
\sum_{\alpha}\Pi_{\alpha,P}^{press}
=
\mathrm{CZ\ tail/commutator}.
```

After terminal operations the ledger is one-sided:

```math
\left[W_P\sum_{\alpha}\Pi_{\alpha,P}^{press}\right]_{+}
```

with retained packet filters and selection thresholds. The cancelling negative angular mass can be distributed across many small packets, fall below selection, or lie in mismatched terminal weights. Full CZ cancellation then remains compatible with a selected positive pressure bill.

## 3. Retained partner branch

If an opposite angular partner is retained with comparable terminal weight, the pressure cancellation works up to a weight/projection defect. The needed theorem is

```math
\boxed{CZPressurePairWeightDefectCharge.A.}
```

This is a pressure-specific analogue of the weighted lifted skew-defect problem.

## 4. Missing partner branch

If the opposite angular partner is interior and unretained, trace/angular cancellation supplies no material donor edge. The bridge is exactly

```math
\boxed{PressureLobeSourceTether.A.}
```

or, at the pure pressure-residue level,

```math
\boxed{PurePressureSustainResidueLiouville.A.}
```

The prior direct attempt showed that the finite packet tether runs through the localized Leray/source-current wall.

## 5. Conditional statement

The correct conditional theorem is

```math
\boxed{
TerminalPressurePartnerSaturation.A
+CZPressurePairWeightDefectCharge.A
+TerminalPressureCollarLegal.A
\Longrightarrow
TerminalPressureTraceAngularSaturation.A.
}
```

Trace/angular cancellation supplies the signed pressure partner structure. Partner saturation supplies retained/legal coverage after terminal selection. The pair-weight theorem pays retained partner mismatch. Pressure collar legality pays geometric exits.

## 6. Verdict

`TerminalPressureTraceAngularSaturation.A` is not lower than the pressure partner wall. Trace and angular cancellation identify the missing partner structure, while terminal one-sided selection creates the same saturation problem already isolated as

```math
TerminalPressurePartnerSaturation.A.
```

This branch therefore returns to one of the existing endpoints:

```math
PressureLobeSourceTether.A,
\qquad
PressureSourceAC.A,
\qquad
PurePressureSustainResidueLiouville.A.
```