# MPP CycleHeatAction.A Amplitude Obstruction And Amp Correction

## Status

This note corrects the source-current route after the scale test on localized
triadic packet circulation.

The previous unconditional target

```math
CycleHeatAction.A:
\quad
\operatorname{Circ}(C)
\le
\theta\sum_{P\in C}D_P
+
o_N(1)+Loss_{legal}
```

is false as stated.

The surviving theorem is conditional:

```math
\boxed{
CycleHeatAction.Amp:
\text{closed source-current cycles pay heat under a scale-critical packet
amplitude cap.}
}
```

The live source-wall target sharpened by this note is:

```math
\boxed{
TerminalAmplitudeGain.A:
\|U_P\|_2
\le
\varepsilon_N\nu r_P^{1/2},
\qquad
\varepsilon_N\to0,
}
```

on the selected terminal packet family.

## Packet Scaling Test

Let one heat-scale packet have radius

```math
r=2^{-j}.
```

Take three divergence-free wave packets `U_1,U_2,U_3` in the same same-fluid
heat tube, with frequencies

```math
|\xi_i|\sim r^{-1},
\qquad
\xi_1+\xi_2+\xi_3=0,
```

and polarizations chosen so that

```math
\int (U_1\cdot\nabla U_2)\cdot U_3\,dx\ne0.
```

Normalize

```math
\|U_i\|_2=A.
```

Then the localized pointwise sizes are

```math
|U_i|\sim Ar^{-3/2},
```

and

```math
|\nabla U_i|\sim Ar^{-5/2}.
```

The internal triadic current has size

```math
J
\sim
\int (U_1\cdot\nabla U_2)\cdot U_3
\sim
A^3r^{-5/2}.
```

The packet dissipation has size

```math
D
\sim
\nu r^{-2}A^2.
```

Over one heat time

```math
|I|\sim r^2,
```

the integrated current and dissipation are

```math
\int_IJ\,dt
\sim
A^3r^{-1/2},
```

```math
\int_ID\,dt
\sim
\nu A^2.
```

Their ratio is

```math
\frac{\int_IJ}{\int_ID}
\sim
\frac{A}{\nu r^{1/2}}.
```

Thus no estimate with a fixed heat fraction can hold uniformly unless the
scale-critical amplitude

```math
\frac{\|U_P\|_2}{\nu r_P^{1/2}}
```

is controlled.

## Scale-Critical Pulse

Choose

```math
A=Kr^{1/2}.
```

Then

```math
\int_IJ\,dt\sim K^3r,
```

while

```math
\int_ID\,dt\sim \nu K^2r.
```

Therefore

```math
\frac{\int_IJ}{\int_ID}
\sim
\frac{K}{\nu}.
```

For `K` large, the circulation beats any fixed fraction of heat.

The packet energy is still small:

```math
\|U_i\|_2^2=A^2=K^2r\to0
\qquad(r\to0).
```

Finite energy therefore does not forbid the packet. This is exactly the
high-frequency, small-energy, high-source terminal pulse that the source wall
is trying to exclude.

## Macroscopic Packing

Pack

```math
M\sim r^{-1}
```

disjoint heat tubes of this type. Then total energy is

```math
MK^2r\sim K^2,
```

total integrated circulation is

```math
MK^3r\sim K^3,
```

and total integrated dissipation is

```math
M\nu K^2r\sim \nu K^2.
```

Again,

```math
\frac{\text{circulation}}{\text{dissipation}}
\sim
\frac{K}{\nu}.
```

So finite energy, packet localization, skew-current structure, and heat
dissipation do not imply `CycleHeatAction.A`.

## Corrected Conditional Theorem

Assume the terminal amplitude cap

```math
\|U_P\|_2
\le
\varepsilon\nu r_P^{1/2}
```

on each packet participating in a retained terminal current cycle. Then the
same scaling gives

```math
\int_I|J_P|\,dt
\lesssim
\varepsilon\int_ID_P\,dt
+
Loss_{legal}.
```

After bounded-overlap summation:

```math
\boxed{
CycleHeatAction.Amp:
\operatorname{Circ}(C)
\le
C\varepsilon\sum_{P\in C}\int D_P\,dt
+
Loss_{legal}(C)
+
o_N(1).
}
```

Choosing `\varepsilon` small gives the absorbable heat fraction.

## Consequence For The Source Wall

The current route remains useful because it preserves signed transfer before
the positive part:

```math
source=\operatorname{div}_{\mathcal G}J.
```

But the heat-action step is not a lower theorem below the source wall unless
the terminal amplitude gain is proved independently.

The honest direct target is now:

```math
\boxed{
TerminalAmplitudeGain.A:
\|U_P\|_2
\lesssim
\varepsilon_N\nu r_P^{1/2},
\qquad
\varepsilon_N\to0.
}
```

This is a direct form of the same source-wall burden:

```math
TerminalAmplitudeGain.A
\simeq
ScaleCriticalTreeCarleson.A
\simeq
LocalPositiveSourceCarleson.A
```

at the terminal packet-family level.

Therefore:

```math
\boxed{
LocalizedSkewCurrent.A+CycleHeatAction.Amp
\text{ is conditional support, not an unconditional closure of }
ScaleCriticalTreeCarleson.A.
}
```

