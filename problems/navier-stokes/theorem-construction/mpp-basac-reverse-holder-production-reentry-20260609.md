# MPP B_ASAC Reverse-Holder Production Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

The checked question is whether the current `B_ASAC` equality class produces
the super-`L^1_s` temporal source residence needed by the native-source
time-face route.

## Current chain

The source-pulse leaf still needs a theorem that removes the terminal native
positive source measure

```math
\left[\left\langle S_{<j}^{loc}w_j,w_j\right\rangle\right]_+\,dx\,dt.
```

The valid conditional chain is:

```math
B_{ASAC}^{RH}(p)
\Longrightarrow
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A
\Longrightarrow
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

The missing production theorem is:

```math
BASACReverseHolderProduction.A:
\quad
B_{ASAC}\Longrightarrow B_{ASAC}^{RH}(p)
\quad\text{for some }p>1.
```

## Checked route inputs

The produced `B_ASAC` class supplies:

```text
same-fluid retained terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect measure,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

The source-size input is local finite `L^1_s` mass. The terminal-layer witness

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has unit `L^1_s` mass and divergent `L^p_s` norm for every `p>1`.

This witness is compatible with the listed `B_ASAC` clauses. It also survives
the lateral no-flux reading, because a spatially compact terminal source atom
can have zero large-radius lateral flux while keeping nonzero mass at the
terminal time face.

## No-flux check

`NoIncomingFlux_{B_ASAC}.A` and `TransportedCylinderNoFlux_{B_ASAC}.A` are not
lower consequences of `B_ASAC`. In the useful lateral or global-boundary
reading, they require additional transported-boundary tightness. In the reading
that includes the terminal time face, they simply detect the atom and restate
the anti-atom theorem.

So no-flux does not produce temporal thickness from the present equality class.

## Rigid-subclass check

The rigid subclass Liouville theorem is valid:

```math
B_{ASAC}^{RH}(p)\Longrightarrow \mu_*^{src}=0.
```

The production theorem is not installed:

```math
B_{ASAC}\nRightarrow B_{ASAC}^{RH}(p)
```

from the current finite `L^1_s`, ASAC, same-fluid, first-pulse, and donor-exit
data.

## Verdict

The loop must not treat `UniformTemporalSourceIntegrability_{p,B_ASAC}.A`,
`TerminalSourceReverseHolder_{B_ASAC}.A`, lateral no-flux, or rigid-subclass
Liouville as a closed source-pulse supplier.

The exact reduced theorem is:

```math
\boxed{BASACReverseHolderProduction.A}
```

or an equivalent new production theorem that forces the native positive source
atom to pay through one of:

```text
temporal thickness,
source-weighted active reserve,
pressure/Leray time-face spread,
transported-boundary tightness plus terminal anti-atom,
or a genuine rigid Zeno subclass.
```

Until that production theorem is proved, `SourcePulseExclusion.A`,
`NoGenuineExitFromSmoothData.A`, and all CMI/PDF finality claims remain open.
