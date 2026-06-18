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
heat tube, with frequencies in a fixed dyadic shell:

```math
c_\xi r^{-1}
\le
|\xi_i|
\le
C_\xi r^{-1},
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

For this fixed packet model, the localized pointwise sizes on the packet core
are bounded by

```math
c_UAr^{-3/2}
\le
|U_i|
\le
C_UAr^{-3/2},
```

and

```math
c_{\nabla}Ar^{-5/2}
\le
|\nabla U_i|
\le
C_{\nabla}Ar^{-5/2}.
```

Let

```math
J
:=
\int (U_1\cdot\nabla U_2)\cdot U_3\,dx.
```

The polarization choice fixes a nonzero interaction with exact scaling bounds
for this fixed normalized packet family:

```math
c_JA^3r^{-5/2}
\le
|J|
\le
C_JA^3r^{-5/2}.
```

The packet dissipation

```math
D
:=
\nu\|\nabla U_i\|_2^2
```

satisfies

```math
c_D\nu r^{-2}A^2
\le
D
\le
C_D\nu r^{-2}A^2.
```

Over one heat time

```math
c_Ir^2
\le
|I|
\le
C_Ir^2,
```

the integrated current and dissipation are

```math
c_{J,I}A^3r^{-1/2}
\le
\left|\int_IJ\,dt\right|
\le
C_{J,I}A^3r^{-1/2},
```

```math
c_{D,I}\nu A^2
\le
\int_ID\,dt
\le
C_{D,I}\nu A^2.
```

Their ratio is

```math
\frac{\left|\int_IJ\,dt\right|}{\int_ID\,dt}
\ge
c_R
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
\left|\int_IJ\,dt\right|
\ge
c_{K,J}K^3r,
```

while

```math
\int_ID\,dt
\le
C_{K,D}\nu K^2r.
```

Hence

```math
\frac{\left|\int_IJ\,dt\right|}{\int_ID\,dt}
\ge
c_K
\frac{K}{\nu}.
```

For `K` large, the circulation beats any fixed fraction of heat.

The packet energy is still small:

```math
\|U_i\|_2^2=A^2=K^2r\to0
\qquad(r\to0).
```

Finite energy alone does not forbid the packet. This is exactly the
high-frequency, small-energy, high-source terminal pulse that the source wall
is trying to exclude.

## Macroscopic Packing

Pack

```math
M_r:=\lfloor c_M r^{-1}\rfloor
```

disjoint heat tubes of this type. Then total energy is

```math
E_{\mathrm{tot}}
=
M_rK^2r
\le
C_EK^2,
```

total integrated circulation is

```math
|\operatorname{Circ}_{\mathrm{tot}}|
\ge
c_{\mathrm{circ}}K^3,
```

and total integrated dissipation is

```math
D_{\mathrm{tot}}
\le
C_{\mathrm{diss}}\nu K^2.
```

Again,

```math
\frac{|\operatorname{Circ}_{\mathrm{tot}}|}{D_{\mathrm{tot}}}
\ge
c_{\mathrm{pack}}
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
packet calculation gives

```math
\int_I|J_P|\,dt
\le
C_{\mathrm{amp}}\varepsilon\int_ID_P\,dt
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

The heat-action step is a lower theorem below the source wall only after the
terminal amplitude gain is proved independently.

The honest direct target is now:

```math
\boxed{
TerminalAmplitudeGain.A:
\|U_P\|_2
\le
C_{\mathrm{TAG}}\varepsilon_N\nu r_P^{1/2},
\qquad
\varepsilon_N\to0.
}
```

This note records the same terminal packet-family burden without
scale-comparison notation:

```math
TerminalAmplitudeGain.A
\quad\text{terminal-family route identification}\quad
ScaleCriticalTreeCarleson.A
\quad\text{terminal-family route identification}\quad
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
