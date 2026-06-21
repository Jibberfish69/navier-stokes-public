# PCTP.hard discharge search — no valid discharge from current surfaces

## Target
Discharge `PCTP.hard terminal-tail production`:

`OriginalSmoothData -> uniform terminal-tail retained Part/Field/tower readout`.

## Surfaces checked
- `mpp-pctp-hard-quantitative-closure-package.md`
- `mcp-recovered-end_ns-to-pctp-hard-bridge-read-end-2202fe6907.md`
- `mcp-pctp-hard-paper-grade-proof.md`
- `mpp-independent-math-verification-audit.md`
- `mcp-direct-aact-kx-local-classical-variables.md`
- `mcp-aact-global-from-tgc-a-discharge.md`
- `mcp-avg-end-a-hardened-averaged-endpoint-rows-tgc-a-b13bc3ecf3.md`

## Best candidate route
The strongest available route is:

`OriginalSmoothData -> TTU.A_quant -> strict averaged-good branch or Jump_avg`.

On the strict averaged-good branch, the direct classical-variable `AACT.KX.local` surface supplies the repaired local inequality

`D^+ X_R + c N_R <= B_R X_R + C X_R^{1/2} N_R + F_R`,

and `AACT.Global.noJump` globalizes it through the finite cover and common scheduler. This produces

`DTC.A_avg -> AVG.RCV.A -> LCI.A_avg -> CSP.A_avg -> OFP.A_avg -> CFI.A_avg`.

From there, the averaged endpoint route can produce `End_NS_avg`, and readout can produce `End_NS`, then `PCTP.hard` follows through the recovered bridge.

## Blocking branch
The candidate route covers the strict averaged-good branch. The complementary branch is `Jump_avg`.

The hardened averaged endpoint row removes `Jump_avg` by using

`Field_avg + OFP.A_avg -> no Jump_avg`.

This row is valid only after `Field_avg` is available. On the `Jump_avg` branch, `Field_avg` is exactly the failed property. Therefore the current endpoint matrix cannot eliminate the complementary branch.

## Consequence
A valid discharge of `PCTP.hard` from current objects requires one additional theorem:

`Jump_avg + OriginalSmoothData -> contradiction`

or equivalently a branch-native theorem producing `CFI.A_avg` on the `Jump_avg` branch without using `Field_avg` as an input.

The previous defect-charge route isolates a possible target:

persistent averaged bad cells must generate a quantitatively separated positive defect charge whose total violates finite energy and pressure/source upper bounds.

That lower-bound/separation theorem is absent from the current repo surfaces.

## Verdict
`PCTP.hard` cannot be discharged honestly from the currently available canonical surfaces. The strict averaged-good branch has a coherent conditional closure path. The `Jump_avg` branch remains a hard mathematical obstruction.

## Next exact theorem target
Prove the branch-native no-escape theorem:

`Jump_avg + OriginalSmoothData + SCF_base + SGC.A_a.e + ATD_m^epsilon -> contradiction`,

with a quantitative defect-charge lower bound and a matching pressure/source upper bound.