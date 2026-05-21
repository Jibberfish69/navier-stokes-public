# MPP GoodTransportedShellExhaustion.A direct attempt

Date: 2026-05-18

Status: failed as an installed spatial-tightness theorem.

## Target

Prove a good transported shell exhaustion:

```math
\boxed{GoodTransportedShellExhaustion.A}
```

meaning: there exists a transported-radius sequence `R_n\to\infty` such that

```math
Flux_{\partial\mathcal C^{tr}_{R_n}}(u,p)\to0,
```

where the flux includes kinetic, pressure, and nonselected packet contributions on same-fluid transported shells.

## Attempt 1: coarea good-radius selection

A coarea argument would need a finite radial budget:

```math
\int_1^\infty Flux_{\partial\mathcal C_R^{tr}}(u,p)\,dR<\infty.
```

The current tangent object has local compactness on each fixed transported cylinder. This supplies finite flux on finite radii after localization, while it supplies no global radial budget over `R\in[1,\infty)`.

Thus coarea has no finite measure to average.

## Attempt 2: finite original energy

Original finite energy rescales as

```math
\|u^{(m)}(s)\|_{L_y^2}^2
=r_m^{-1}\|u(t_m+r_m^2s)\|_{L_x^2}^2.
```

The factor `r_m^{-1}` prevents finite global ancient energy in tangent variables. It also prevents a direct finite shell budget for the transported exhaustion.

## Attempt 3: dyadic shell averaging

Dyadic shell averaging requires growth control such as

```math
E^{tr}(2R)-E^{tr}(R)=o(1)
```

or sublinear growth of transported local energy. Current fixed-cylinder compactness permits arbitrary growth across dyadic radii.

## Attempt 4: strain-adapted shell monotonicity

The stable/unstable split isolates favorable outgoing sectors and hard incoming stable sectors. Incoming stable channels can import far-field energy. The split gives structure, while it supplies no monotone shell decay.

## Attempt 5: pressure mean subtraction

Subtracting pressure averages removes constants. The pressure work term still contains pressure oscillation coupled to boundary velocity flux. The transported-shell Hardy cancellation attempt already shows that current estimates lack the needed shell summability.

## Attempt 6: selected ancestry tightens nonselected flux

Selected no-parent ancestry controls the selected source graph. Transported shell flux includes nonselected kinetic and pressure contributions. The selected graph therefore gives no full shell tightness.

## Verdict

`GoodTransportedShellExhaustion.A` remains a missing production theorem.

It would follow from one of:

```text
finite global ancient energy for the tangent object;
sublinear transported energy growth;
Hardy-type pressure shell cancellation plus incoming-stable flux control;
full nonselected flux Carleson/tail estimate.
```

None is produced by current `B_ASAC^closed,min` inputs.