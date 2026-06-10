# MPP TerminalNewProductionTheorem_{B_ASAC}.A Active-Square / Diffuse-Parent Reentry

## Status

Active-completion proof attempt after
`mpp-minimal-bad-residue-rigidity-reentry-20260609.md`.

The loop selected the first concrete subroute inside
`TerminalNewProductionTheorem_{B_ASAC}.A`: force the diffuse legal same-fluid
parent cloud for `B_ASAC^{closed,min}` to pay a convex active-square or
scale-normalized donor reserve on the same selected terminal heat-scale
windows.

This note does not close public Clay finality.

## Target

For the selected all-doors-closed terminal atom

```math
B_{ASAC}^{closed,min},
```

prove a reserve theorem of the form:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+
\le
\mathrm{Reserve}_{sc}(\mathcal F_N)+o_N(1),
}
```

where `\mathrm{Reserve}_{sc}` is finite, same-window, and strong enough to
price diffuse positive source-parent edge measures.

Equivalently, prove:

```math
DiffuseParentCharge.A
```

with a reserve that grows at the scale-critical active-source level rather than
at raw quadratic donor-energy scale.

## Installed Positive Pieces

`EdgeDisintegrate.A` is available once the localized pre-Cauchy source packet is
used. It gives a legal positive source-parent edge measure:

```math
d\pi_P(P^-_\alpha)
:=
\bigl(\mathcal N_\alpha(P^-_\alpha\to P)\bigr)_+.
```

The parent measure may recover the aggregate positive source feeding the child
packet. This is useful, but it does not control concentration or charge the
diffuse part.

The conditional bridges are also available:

```math
ActiveSquareResidualTail.A
\Longrightarrow PositiveActiveCarlesonReserve.A,
```

```math
TerminalSourceCoherence.A
\Longrightarrow PositiveSourceDepletion.A,
```

```math
TwoTowerDonorDepletion.A
\Longrightarrow DiffuseParentCharge.A.
```

None of those antecedents is installed from original smooth data and the
current `B_ASAC` clauses.

## Diffuse Parent Test

The same obstruction from the parent concentration countermodel survives
inside the current target. A legal source-parent cloud can have the form:

```math
\pi_P
\simeq
{1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Then every bounded parent selector captures only:

```math
\sup_{|\mathcal C|\le B}\pi_P(\mathcal C)
\le {B\over M}\pi_P(\mathsf{Pred}(P))
\to0.
```

The total positive child-feeding source may remain order one, while the raw
quadratic donor and residual-square charges scale like:

```math
\sum_{\alpha=1}^{M}\|a_\alpha\|_2^2
\simeq
M^{-1},
```

and

```math
\sum_{\alpha=1}^{M}|\mathrm{residual}_\alpha|^2
\simeq
M^{-1}.
```

Thus the desired convex reserve is not present in the installed energy, local
energy, pressure/cutoff, residual-square, same-fluid, or bounded-overlap
ledgers.

## Same-Window Active-Square Test

The active-square route asks for square-density control on the same selected
terminal windows. First-moment dissipation does not imply this. A pulse of
height `A/h` on a time interval of length `h` has finite first moment `A` and
square moment `A^2/h`.

The tail-square reserves already installed control cumulative tail quantities
and threshold-collar products. They do not control the selected shellwise
active-square source packet after one-sided positive-part extraction.

Cauchy/Young estimates only define the missing reserve:

```math
\text{positive source}
\le
\eta\,\text{dissipation}
+C_\eta\,\text{active-square reserve}
+\text{legal losses}.
```

They do not estimate the active-square reserve itself.

## Verdict

The first new-production subroute fails from installed inputs:

```math
\boxed{
\text{same-window convex active-square / diffuse-parent reserve is not proved.}
}
```

The attempt reduces back to:

```math
ScaleCriticalTreeCarleson.A,
```

```math
LocalPositiveSourceCarleson.A,
```

```math
TwoTowerDonorDepletion.A,
```

or:

```math
TerminalSourceCoherence.A.
```

Those are route-equivalent presentations of the same source-pulse wall at the
current theorem resolution. Reusing any of them as a closure claim would be
alias cycling.

## Next Loop Target

The active loop must continue inside the other new-production classes. The
sharpest remaining non-alias target is:

```math
\boxed{
BASACTimeFaceAntiAtom.A
\quad\text{or}\quad
ProductionIntoRigidBASACTimeFaceSubclass.A.
}
```

This must prove, without importing the failed Carleson or active-square reserve,
that `B_ASAC^{closed,min}` cannot carry zero-thickness native positive source
mass on the terminal time face.

Until that theorem is installed and integrated back through the source-wall and
first-exit Pack-survival chain, both PDFs remain non-final.
