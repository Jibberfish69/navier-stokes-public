# MPP MovingDyadicEnergyTraceTightness.A Reentry

## Status

Active-completion proof attempt after the loop reached
new-terminal-time-thickness theorem invention.

This note tests a new mechanism rather than recycling the already audited
time-face, trace, pressure, capacity, entropy, or rigid-subclass labels.

It does not close public Clay finality.

## Target

Try to prove terminal time-thickness for `B_{ASAC}^{closed,min}` from the fact
that dyadic shell energies are absolutely continuous before the terminal time.

For a shell `j`, the high-frequency energy balance tested here has the form:

```math
\frac{d}{dt}E_j(t)+c\nu 2^{2j}E_j(t)
\le F_j(t),
```

where `F_j` is the nonlinear shell-flux / native source term. Duhamel gives:

```math
E_j(t)
\le
e^{-c\nu2^{2j}(t-s)}E_j(s)
+
\int_s^t e^{-c\nu2^{2j}(t-\tau)}F_j(\tau)\,d\tau.
```

The hoped-for theorem is:

```math
\boxed{
MovingDyadicEnergyTraceTightness.A:
\text{ fixed-shell absolute continuity plus viscous damping forbids a terminal
native positive source atom along the moving selected shells }j_m\to\infty.
}
```

If true, it would supply the terminal strip modulus needed by:

```math
BASACTimeFaceAntiAtom.A.
```

## Fixed-Shell Absolute Continuity

For every fixed shell `j` and every preterminal interval, the shell energy
identity is absolutely continuous. This prevents an unexplained jump in that
fixed shell before `T_*`.

This is not the live terminal record. The `B_ASAC` survivor is selected along moving
terminal shells and shrinking heat-scale windows:

```math
j_m\to\infty,
\qquad
|I_m|:=2^{-2j_m},
\qquad
t_m\uparrow T_*.
```

Absolute continuity for each fixed `j` gives no uniform modulus in `j` on these
moving windows.

## Viscous Damping Test

Viscosity removes inherited shell energy over a heat-scale interval unless a
new source term refills the shell:

```math
\text{old shell energy is damped,}
\qquad
\text{new shell energy is supplied by }F_j.
```

The terminal source atom is exactly the source-balanced refill channel. Thus
heat damping proves only:

```math
\text{no refill source}\Longrightarrow\text{no persistent active shell}.
```

The live theorem needs:

```math
\text{Navier-Stokes nonlinear source}\Longrightarrow\text{no source-balanced
terminal refill pulse}.
```

That is a different and stronger statement.

## Moving-Shell Counter-Shape

A scalar moving-shell model can keep finite first-moment budget while producing
a terminal source atom:

```math
F_{j_m}(t)
:=
A_m |I_m|^{-1}1_{I_m}(t),
\qquad
|I_m|:=2^{-2j_m},
```

with `A_m` summable in the raw first-moment ledger but normalized active source
mass fixed by the selected terminal-packet normalization.

Fixed-shell absolute continuity is not violated because each shell is active
only on its own shrinking window. Viscous damping is not violated because the
source term supplies the refill on that same window.

## What Would Be Needed

To make the shell-energy trace route work, one must add a uniform moving-shell
modulus such as:

```math
\sum_m
\int_{I_m}
|F_{j_m}(t)|\,dt
\to0
```

for every terminal selected family, or a stronger square / Carleson form:

```math
\sum_m
\int_{I_m}
2^{-j_m}D_{j_m}(t)^2\,dt
<\infty.
```

Those are exactly the source-control theorems already isolated in the active
source frontier:

```math
SOURCE.NO-PULSE.A,
```

```math
ActiveSquareResidualTail.A,
```

```math
ScaleCriticalTreeCarleson.A,
```

or the weighted commutator-defect plus residual-tail theorem behind the
nonlinear shell-flux source route.

## Verdict

`MovingDyadicEnergyTraceTightness.A` is not proved from current installed
inputs.

Fixed-shell absolute continuity and heat damping do not exclude a moving
high-frequency terminal source atom. They reduce the problem to the nonlinear
source-control theorem:

```math
\boxed{
\text{the Navier-Stokes nonlinear shell flux cannot supply source-balanced
terminal heat-scale refill pulses.}
}
```

The next honest subtarget is therefore not another time-face name. It is the
source-control core:

```math
\boxed{
WeightedCommutatorResidualTail.A
}
```

or an equivalent theorem proving the signed weighted commutator defect and
residual-tail estimate needed for `SOURCE.NO-PULSE.A`.

Until that theorem or another genuine terminal time-thickness mechanism is
installed and propagated back through `SourcePulseExclusion.A` and
`OriginalSmoothDataPackSurvival.A`, both PDFs remain non-final.
