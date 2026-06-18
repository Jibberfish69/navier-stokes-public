# MPP PressureTailHardyTransportedShells.A

Date: 2026-05-17

Status: failed as an installed shell-cancellation theorem. Pressure-tail control remains a separate missing input for transported-boundary tightness.

## Target

Use Hardy-type cancellation on transported shells to control pressure work in the boundary flux:

```math
\int_{\partial \mathcal C_R^{tr}} p\,u\cdot n_{tr}
\to 0
\qquad (R\to\infty).
```

The pressure-tail Hardy target is a theorem converting the pressure tail into
summable shell errors or a radial derivative with a favorable sign.

## Attempt 1: spherical Hardy cancellation

Classical shell estimates can exploit radial geometry and mean-zero Calderon-Zygmund kernels. Transported shells are anisotropic and strain-adapted. Their normals, surface measures, and radial weights have geometry errors.

No installed lemma controls those errors across the exhaustion.

## Attempt 2: pressure mean-zero on annuli

Pressure is defined up to additive constants, and local averages can be subtracted. This removes a scalar mean. It does not remove the boundary work term

```math
p\,u\cdot n_{tr}
```

because velocity flux and pressure oscillation remain coupled on the shell.

## Attempt 3: Calderon-Zygmund tail decay from local energy

Local energy compactness controls pressure on fixed cylinders. A transported shell theorem needs decay of pressure tails as shell radius grows and as ancient time extends backward.

The terminal blowup loses global finite-energy normalization, so local estimates give no tail decay at infinity.

## Attempt 4: ASAC equality as pressure-tail cancellation

ASAC equality pays a selected angular/alignment defect. Pressure-tail boundary work is a full field term involving nonselected energy and long-range pressure coupling. The ASAC equality has no shell-summation weight and no tail-decay conclusion.

## Attempt 5: stable/unstable pressure cancellation

Stable and unstable sectors create opposite transport tendencies. Pressure work has no sign under that split. Cancellation across sectors would require a global balance identity on transported shells, absent from current ledgers.

## Verdict

`PressureTailHardyTransportedShells.A` is not installed.

The pressure-tail part of transported-boundary tightness remains open. The
missing input is a geometric Hardy theorem for anisotropic transported shells,
plus tail control for nonselected field energy.

The final component in this reduced list is the terminal time-face anti-atom theorem.## Continuation audit: ChatGPT 2026-05-18

This pass rechecked `PressureTailHardyTransportedShells.A` after the strain-adapted boundary split stayed open.

The pressure-tail Hardy route remains open. Classical spherical Hardy cancellation uses radial geometry and mean-zero Calderon-Zygmund structure. Transported shells are anisotropic, strain-adapted, and carry geometry errors in normals, surface measures, and shell weights. No installed lemma controls those errors uniformly along the transported exhaustion.

Subtracting pressure means on annuli removes scalar gauge but leaves pressure oscillation coupled to `u\cdot n_{tr}`. Local pressure estimates on fixed cylinders do not give tail decay because terminal rescaling loses global finite-energy normalization. ASAC equality has the wrong support and no shell-summation weight. Stable/unstable sector cancellation lacks a signed global transported-shell balance identity.

Conclusion: `PressureTailHardyTransportedShells.A` remains an external geometric pressure-tail theorem. The next component is terminal time-face anti-atom control, which is independent of spatial transported-boundary tightness.
