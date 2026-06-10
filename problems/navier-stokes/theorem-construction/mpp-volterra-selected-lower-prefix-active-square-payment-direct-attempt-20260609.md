# MPP Volterra-Selected Lower-Prefix Active-Square Payment Direct Attempt

## Status

`VolterraSelectedLowerPrefixActiveSquarePayment.A` is not proved by the current
theorem stack.

This pass tests the only Volterra-specific reserve branch left by the retained
stress route: whether a source-balanced active pulse selected by the Volterra
readout must satisfy a selected-family lower-prefix active-square estimate.

## Target

For the Volterra-selected terminal packet family `\mathcal V_N`, prove

```math
\sum_{(j,I)\in\mathcal V_N}
\int_I
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int_0^{T_*}D_N(t)\,dt
+C2^{-2\delta N},
```

where

```math
\mathcal P_j^\downarrow(t)=\sum_{k\le j-C_1}E_k(t).
```

Equivalently, prove that the Volterra selector forces active-shell amplitude
normalization strong enough to pay `2^{-j}D_j(t)^2` on the selected heat-scale
windows.

## What Volterra selection supplies

Volterra selection supplies visibility of the active high-shell packet to the
retained accumulated stress readout.  In dyadic form it says that the packet is
seen together with the lower-prefix `H^1` stress weight

```math
\mathcal P_j^\downarrow(t).
```

That is useful lower information.  It says the packet is part of the retained
far-corona obstruction.  It does not by itself give an upper bound on the
active amplitude `D_j(t)`.

The desired estimate is upper control:

```math
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2
```

must be summable against the barrier ledger.  A selector lower bound and an
upper reserve estimate are opposite kinds of information.

## Direct first-moment attempt

The shell law and source-balanced refill give first-moment control:

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t),
\qquad
F_j(t)\simeq c\nu D_j(t)
```

on the retained source-balanced branch.  This controls the scale of

```math
\int_I D_j(t)\,dt
```

after legal losses and source input are accounted for.

The target needs the square density

```math
\int_I 2^{-j}D_j(t)^2\,dt.
```

No installed theorem upgrades the first moment to this square moment on
Volterra-selected windows.

## Pulse model

The scalar heat-scale pulse model survives the selected shell law.  Take a
terminal interval

```math
|I_j|\simeq 2^{-2j}
```

and a source-balanced profile with

```math
D_j(t)\simeq A_j2^{2j}\mathbf 1_{I_j}(t),
\qquad
F_j(t)\simeq c\nu D_j(t).
```

Then

```math
\int_{I_j}D_j(t)\,dt\simeq A_j,
```

while

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt
\simeq
A_j^2\,2^j.
```

The lower-prefix multiplier `\mathcal P_j^\downarrow` records how strongly the
packet is seen by the accumulated stress readout.  Unless it supplies a
negative power of the active amplitude or a new cancellation, it only multiplies
the square cost.  Current Volterra selection supplies no such amplitude
normalization.

Thus the model keeps first-moment source/dissipation finite while the
selected-family lower-prefix square payment remains unpaid.

## Sparsity / bounded-overlap attempt

One might hope that Volterra selection makes the bad windows sparse.  The
installed route has bounded-overlap terminal window families, but bounded
overlap does not control amplitude.  It allows summing a valid per-window
estimate; it does not create that estimate.

The same pulse model can be placed on a bounded-overlap terminal family with
shrinking windows.  The obstruction is amplitude and square density, not
unbounded overlap.

## CKN / B_ASAC imports

Importing CKN or `B_ASAC` control here would reuse open branches:

```text
SelectedSourceDissipationTether.A,
UniformTerminalCKNCarrierAC.A,
BASACTimeFaceAntiAtom.A,
UniformTemporalSourceIntegrability_{p,B_ASAC}.A.
```

Those are not consequences of the Volterra selector.  They remain parallel
non-Volterra routes.

## Verdict

`VolterraSelectedLowerPrefixActiveSquarePayment.A` is not proved.

The Volterra selector identifies the terminal source-balanced packet as part
of the retained far-corona lower-prefix stress obstruction.  It does not supply
the missing upper control on active-shell amplitude or square-source density.

The exact next target is:

```math
\textbf{VolterraSelectorAmplitudeNormalization.A}.
```

It must prove that the Volterra selection rule itself forces active-shell
amplitude normalization on selected heat-scale windows, or prove a selected
square-source estimate strong enough to control
`\int_I2^{-j}D_j(t)^2\,dt`.  Without that new mechanism, this branch reduces
back to direct `(LPAS)` or the already-open source-balanced pulse wall.

## Closure impact

The current chain becomes:

```math
\text{VolterraSelectedLowerPrefixActiveSquarePayment.A}
\Longleftarrow
\text{VolterraSelectorAmplitudeNormalization.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
