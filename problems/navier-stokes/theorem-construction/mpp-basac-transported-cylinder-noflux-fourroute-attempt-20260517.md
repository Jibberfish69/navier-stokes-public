# MPP B_ASAC Transported-Cylinder No-Flux Four-Route Attempt

Date: 2026-05-17

## Status

Direct attempt on the transported-cylinder no-incoming theorem for the produced `B_ASAC` tangent class.

Outcome: open from installed inputs.

## Target

Prove:

```math
\boxed{TransportedCylinderNoFlux_{B_{ASAC}}.A}
```

A usable form is

```math
\lim_{R\to\infty}\limsup_{s_0\to-\infty}
\int_{\partial_{par}\mathcal C_R^S(s_0,0)} |w|^2\,d\Phi_{A,S}=0,
```

with the boundary adapted to the frozen-strain transported coordinates. A stronger version must also rule out residual source charge sitting on the terminal time face.

## Available Inputs

`B_ASAC` supplies same-fluid terminal carrier, zero ASAC defect, removed paid exits, removed finite and non-Zeno donor refill, no earlier selected source slice, and terminal Zeno source support.

`FirstPulse.NoParent` supplies selected source-parent no-incoming information. It applies to the selected positive source-residue ancestry graph.

## Attempt 1: Selected no-parent as transported no-flux

The transported-cylinder theorem controls full flux through a global parabolic boundary. The boundary receives kinetic energy, pressure energy, and nonselected packet flux. Selected no-parent controls one ancestry graph for selected source parents.

A full transported no-flux statement needs estimates for all incoming channels, including far-field mass transported into the observation region by frozen strain. The selected ancestry license does not include these quantities.

## Attempt 2: Local energy compactness

Local energy compactness gives control on fixed compact cylinders. Transported no-flux requires uniform tightness as the transported radius tends to infinity and as the backward initial time tends to minus infinity.

In mixed-sign trace-free strain, some directions carry far-field mass inward under the transported flow. Energy outside every fixed compact set at large negative time can later enter the terminal observation region.

Thus fixed-cylinder compactness does not imply global transported-boundary vanishing.

## Attempt 3: Zero ASAC defect

Zero ASAC defect removes active-alignment and pair-weight leakage already paid by ASAC. A lateral transported boundary flux is a global field/pressure quantity. The ASAC equality gives no decay weight along incoming spatial channels.

Thus the ASAC equality has the wrong geometry for the target flux theorem.

## Attempt 4: Time-face anti-atom from lateral no-flux

Even a pure lateral no-flux theorem still needs a terminal time-face clause for the native source measure. A terminal source atom can sit on `s=0` after all fixed negative-time source slices vanish. Spatial no-flux alone does not supply temporal anti-concentration.

The useful theorem therefore has to combine:

```text
lateral transported no-incoming flux
+
terminal time-face anti-atom control.
```

The second component is exactly the reverse-Holder / layer-Morrey estimate tested separately.

## Verdict

`TransportedCylinderNoFlux_{B_ASAC}.A` remains open from installed inputs.

The missing analytic package has two parts:

```text
full transported-boundary tightness for kinetic/pressure/nonselected flux,
terminal time-face anti-atom control for the native source measure.
```

Current `B_ASAC` data give selected source-parent ancestry and ASAC defect equality. They do not give global transported-boundary control.
