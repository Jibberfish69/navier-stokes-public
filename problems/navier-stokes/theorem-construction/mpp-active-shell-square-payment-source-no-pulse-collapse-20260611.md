# MPP Active-Shell Square Payment Source No-Pulse Collapse

Date: 2026-06-11

Status: forward-positive consolidation.  This note continues the whole-cone
wall/volume/shrink-rate program and does not claim public finality.

## Target

The previous direct LPAS/CTS test left three apparent forward-positive
suppliers:

```text
LPASActiveShellAmplitudeNormalization.A
DirectActiveSquareCarleson.A
StructuralShellSourceCancellation.A
```

They are not three independent exits from the active-square wall.  At the
natural heat-scale shell interval `I_j`, the same active shell quantity appears
in each route:

```math
\int_{I_j} P_j^{down}(t) 2^{-j}D_j(t)^2\,dt.
```

Here `D_j` is the shell dissipation/load and `P_j^{down}` is the lower-prefix
weight created by the far-corona carrier.  The forward-positive task is to pay
this square quantity from same-fluid structure rather than from a first-moment
energy drain.

## Fixed-Shell Scalar Test

The scalar shell test uses the exact differential inequality:

```math
E_j'(t)+c_d\nu D_j(t)\le F_j(t)+L_j(t),
```

where `c_d>0`, `F_j` is the nonlinear shell source, and `L_j` is the legal
loss already charged in the shell ledger.  First-moment drain controls:

```math
\int_{I_j}D_j(t)\,dt.
```

LPAS needs instead:

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt.
```

On a heat-scale interval

```math
c_h2^{-2j}\le |I_j|\le C_h2^{-2j},
```

let

```math
D_j(t)={M_j\over |I_j|}\mathbf 1_{I_j}(t).
```

Then `\int_{I_j}D_j(t)\,dt=M_j`, while Cauchy gives the exact lower bound:

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt
=
2^{-j}{M_j^2\over |I_j|}
\ge
C_h^{-1}2^j M_j^2.
```

Thus first-moment drain does not pay active-square cost.  The missing theorem
must stop the source from creating short active pulses, or must charge such
pulses by another finite same-fluid reserve.

## Amplitude Normalization Test

`LPASActiveShellAmplitudeNormalization.A` would need a bound of the form:

```math
P_j^{down}\,2^j M_j^2
\le
\varepsilon M_j+\mathrm{Summable}_j.
```

An exact sufficient scale-normalized amplitude restriction is:

```math
M_j
\le
C_A2^{-j}(P_j^{down})^{-1}
```

with the constant `C_A` small enough relative to the absorption and summable
error constants in the displayed inequality.

The installed inputs do not provide this restriction.  Smooth original data
gives finite preterminal amplitudes for each fixed shell, not a terminal
scale-normalized smallness law along `j\to\infty`.  Viscous damping controls
the first moment in time.  Volterra/Hardy reindexing identifies the lower
triangular active-square object, but it does not lower the square power.

Therefore amplitude normalization is not currently installed.

## Direct Active-Square Carleson Test

`DirectActiveSquareCarleson.A` would charge the active-square measure directly:

```math
\sum_{j\ge N}\int_{I_j}
P_j^{down}(t)2^{-j}D_j(t)^2\,dt
\le
\mathrm{finite}.
```

The source-balanced scalar model shows the exact missing structure.  A source
can maintain a short active pulse by taking:

```math
F_j(t)=E_j'(t)+c\nu D_j(t).
```

This model is not a Navier-Stokes proof, but it is a sharp audit of the
estimate: shell damping plus first-moment drain alone cannot exclude the pulse.
The proof must use nonlinear flux/source structure.

The installed nonlinear structure gives unweighted exchange cancellation and
then a weighted lifted defect.  The defect is sign-indefinite on active
expanding-strain packets.  Without a further sign, decorrelation, or source
normalization theorem, direct active-square Carleson is not installed.

## Structural Source Cancellation Test

`StructuralShellSourceCancellation.A` would make the dangerous positive source
cancel before it becomes active-square cost.  The installed unweighted shell
exchange identity is not enough, because the LPAS carrier is weighted and
one-sided.  After the weights are inserted, the surviving lifted strain/source
defect is the explicit signed sum:

```math
\mathfrak G_N^{lift,\sigma}
:=
\sum W_{j,k,\ell}^{\sigma}
\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

Active packets can align with expanding strain directions, so the one-sided
positive part survives the unweighted cancellation.  This route returns to the
same source-control demand as the active-square route.

## Collapse

The three apparent suppliers reduce to one residual/source-balanced
forward-positive source theorem:

```math
\boxed{
\mathrm{OriginalSmoothData}
\Longrightarrow
\text{no unpaid residual source-balanced active pulse at terminal heat scale.}
}
```

Equivalent formulations already audited in the repo include heat-scale
square-source control, direct active-window Carleson control, source dominance
for `F_j`, active-shell source normalization, and weighted strain/source
cancellation plus active-square residual-tail control.

The direct atom is not installed.  The direct source route has already tested
finite energy, preterminal smoothness, pressure recovery, unweighted exchange,
and monotone-functional identities; none of them removes the source-balanced
active pulse.

## Remaining Non-Alias Target

The remaining non-alias route is the parent/ancestry route.  A positive source
pulse must have a same-fluid parent measure:

```math
d\pi_P(P^-).
```

The current sharp parent theorem is:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A.
}
```

It asks whether the positive parent mass either concentrates on boundedly many
legal predecessor packets, or whether the diffuse remainder is charged to a
finite route reserve.

The direct audit says both installed branches are open:

```math
ParentConcentration.A\quad\text{open},
\qquad
DiffuseParentCharge.A\quad\text{open}.
```

A stronger sufficient supplier is:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
DiffuseParentCharge.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A.
}
```

After the parent theorem, the ancestry branch still needs one closure:

```math
BackwardDrainFunctional.A
```

or:

```math
BoundedAncestryClass.A+SourceResidueLiouville.A.
```

## Verdict

The active-shell square-payment branch has not closed, but it has collapsed to
a sharper target.  The forward-positive route no longer has independent
children named amplitude normalization, direct active-square Carleson, or
structural shell-source cancellation.  Each of those asks for the same missing
no-pulse/source-control theorem.

The next theorem work is:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A
}
```

with `TwoTowerDonorDepletion.A` as the strongest available sufficient entrance,
followed by the ancestry drain or bounded-residue closure.
