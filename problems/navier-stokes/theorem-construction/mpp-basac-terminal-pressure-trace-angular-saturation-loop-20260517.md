# MPP B_ASAC Terminal Pressure Trace / Angular Saturation Loop Attempt

Date: 2026-05-17

## Status

Failed direct discharge from installed inputs.

## Target

Prove a terminal pressure trace/angular saturation theorem strong enough to pay selected positive pressure-Hessian lobes in the `B_ASAC^closed` pressure fork.

The desired exact output is:

```text
selected positive pressure-Hessian lobe
=> retained opposite pressure partner, legal pressure exit, or zero positive residue.
```

## Trace route

The trace identity and Poisson equation give full tensor or scalar pressure balance. The terminal pressure ledger tests one selected direction and then applies positive selection. Full trace balance can place the compensating directions outside the selected terminal ledger.

Therefore trace balance supplies structure, while it does not imply one-sided selected depletion.

## Calderon-Zygmund angular route

The pressure kernel has mean-zero angular cancellation before terminal selection. After selection, the retained object is one-sided, weighted, and packet-filtered. Negative angular partners can be diffuse, under threshold, or placed at mismatched weights.

Thus CZ cancellation supplies a signed partner identity, while terminal saturation still needs a separate theorem.

## Retained partner branch

If an opposite pressure partner is retained with comparable terminal weight, the remaining cost is a pressure-specific pair-weight defect:

```math
CZPressurePairWeightDefectCharge.A.
```

This theorem is not installed.

## Missing partner branch

If the partner is interior but unretained, pressure trace/cancellation gives no material same-fluid source edge by itself. The route returns to

```math
PressureLobeSourceTether.A
```

or, at residue level,

```math
PurePressureSustainResidueLiouville.A.
```

## Conditional result

The valid conditional theorem is:

```math
TerminalPressurePartnerSaturation.A
+CZPressurePairWeightDefectCharge.A
+TerminalPressureCollarLegal.A
\Longrightarrow
TerminalPressureTraceAngularSaturation.A.
```

## Verdict

`TerminalPressureTraceAngularSaturation.A` is not a lower theorem under current route inputs. It reduces to pressure partner saturation, pressure lobe source tether, pressure source absolute continuity, or pure pressure-sustain residue Liouville.
