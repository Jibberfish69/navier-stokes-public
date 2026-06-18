# SourcePulseExclusion.A remove / charge / rigidify direct loop note

## Target layer

The active source-pulse packet can close through exactly one of three jobs:

```math
RemoveActiveMass.A
\quad\vee\quad
ChargeActiveMass.A
\quad\vee\quad
RigidifyActiveMass.A.
```

Each job targets the same heat-scale terminal packet carrying active nonlinear source mass and mixed bilinear dissipation on bad active windows.

## Remove active mass

The removal route needs positive-part depletion of the weighted active source packet:

```math
\int_{I_n}\mathfrak S_{j_n,loc}^{active}(t)\,dt\to0.
```

Finite energy gives first-moment dissipation. Pressure Poisson recovery gives elliptic response. Unweighted dyadic exchange gives cancellation before active weights, cutoffs, and same-fluid localization enter. None of these supplies a sign or depletion theorem for the weighted positive active source packet.

Thus this route reduces to a new depletion theorem for the active source mass.

## Charge active mass

The charge route needs a finite scale-normalized reserve `R_n` with

```math
\sum_n R_n<\infty
```

that pays for every source-balanced heat-scale pulse. Energy and local energy
price first moments. The scheduler estimate gives Lebesgue-time smallness of
large coefficients. The signed reserve controls only the part already covered
by the signed theorem. The downstream source supplier
`Hyp(FFSRC.A)=>FCI.5f`, including `FCC.C1a`, supplies integrability after the
receiver/source route, and cannot price the branch-native bad-window source
pulse directly.

Thus this route reduces to a new active-window Carleson / square-source reserve.

## Rigidify active mass

The rigidification route needs a same-fluid physical source-residue cylinder, a rescaled ancient source-residue limit, and a rigidity theorem killing the inherited residue. Global shell products such as `D_jD_l` are all-pairs carriers after Cauchy multiplication; they do not by themselves produce a physical same-fluid Radon measure on heat-scale cylinders. Even after localization, the available compactness gives a local suitable ancient object without a rigid class or source-residue Liouville theorem.

Thus this route reduces to source-residue localization plus a rigid ancient-class / Liouville theorem.

## Result

The remove, charge, and rigidify jobs remain open from the installed surfaces. They are equivalent route presentations of the single active theorem:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

The downstream chain remains conditional:

```math
SourcePulseExclusion.A
\Longrightarrow AWG.A
\Longrightarrow Jump_{avg}\Rightarrow\bot
\Longrightarrow PCTP.hard/TTU.A.
```

## Next target

The next proof work must attack the structural PDE coupling itself: a sign/depletion theorem, an active-window Carleson reserve, or a source-residue rigidity theorem for the actual terminal active source packet.
