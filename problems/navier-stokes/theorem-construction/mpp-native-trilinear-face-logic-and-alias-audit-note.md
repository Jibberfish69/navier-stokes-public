# MPP Native Trilinear Face Logic And Alias Audit Note

## Status

Logic audit for the three-face split in
`mpp-native-trilinear-defect-alignment-split-note.md`.

The surviving native source term is:

```math
\mathcal T_P^+
:=
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt.
```

Writing `w_j=|w_j|e_j` gives:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{Face.1}
```

This note prevents a false reading of the split.  The three faces are not three
independent already-usable discharges.  They are three native locations where a
new theorem could enter the same positive product.

## Correct Face Logic

There are two honest theorem shapes.

### Shape A: Source-Weighted Single Face

A single face closes the route only if it is already formulated at the full
source-weighted level:

```math
\boxed{
\sum_{P\in\mathcal F_N}\mathcal T_P^+
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1).
}
\tag{Face.2}
```

This is the shape used by:

```math
PositiveStrainDecorrelation.A,
\qquad
PositiveActiveCarlesonReserve.A
```

as installed route names.  These are not bare direction or bare amplitude
facts.  They are already source-weighted estimates strong enough to dominate
`(Face.1)` if proved.

### Shape B: Product-Factor Package

Bare factor control closes the route only in a package.  For example:

```math
\begin{aligned}
&\text{coefficient control for }
[e_j\cdot S_{<j}^{loc}e_j]_+
\\
&\quad+
\text{active square amplitude charge for }|w_j|^2
\\
&\Longrightarrow
\text{source domination.}
\end{aligned}
```

Likewise, a bare directional statement that does not include the `|w_j|^2`
weight and the selected terminal packet measure is not enough.  It becomes a
proof only after it is lifted to `(Face.2)` or combined with factor bounds that
make the product integrable.

## Alias Map

The current three-face labels have this theorem-facing alias map:

```math
\boxed{
CoeffBound.A
\leftrightarrow
\text{moving terminal low-strain coefficient bound.}
}
```

This is audited by
`mpp-coeffbound-terminal-strain-direct-attempt-note.md` and remains open.

```math
\boxed{
ActiveAmplitudeCarleson.A
\rightsquigarrow
PositiveActiveCarlesonReserve.A
}
```

The bare phrase "active amplitude Carleson" is too weak unless it prices the
same positive source carrier.  The route-native theorem is therefore the
source-weighted reserve:

```math
PositiveActiveCarlesonReserve.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le
o_N(1)+\operatorname{Loss}_{legal}.
```

This is audited by
`mpp-positive-active-carleson-reserve-direct-audit-note.md` and remains open.

```math
\boxed{
AlignmentDecorrel.A
\rightsquigarrow
PositiveStrainDecorrelation.A.
}
```

The bare phrase "alignment decorrelation" is too weak unless it is weighted by
the active shell square and localized to the selected terminal same-fluid
packets.  The route-native theorem is:

```math
PositiveStrainDecorrelation.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt
\le
o_N(1)+\operatorname{Loss}_{legal}.
```

This is audited by
`mpp-positive-strain-decorrelation-direct-audit-note.md` and remains open.

## Direct Attempts Rechecked

### Active Amplitude

Raw control of:

```math
\sum_P\int_{Q(P)}|w_{j_P}|^2
```

does not by itself control `\mathcal T_P^+` unless the positive strain
coefficient is also chargeable.  The only useful amplitude theorem is the
source-weighted reserve `PositiveActiveCarlesonReserve.A`.  The existing audit
shows that energy, local energy, Cauchy/Young envelopes, finite banding,
pressure/cutoff ledgers, and downstream source suppliers do not install that
reserve on the branch-native terminal packets.

Verdict:

```math
\boxed{
ActiveAmplitudeCarleson.A
\text{ is open, with route-native form }
PositiveActiveCarlesonReserve.A.
}
```

### Alignment

A qualitative statement that active directions "usually" decorrelate from
expanding eigendirections does not control `\mathcal T_P^+`.  The theorem must
survive positive-part extraction, terminal packet selection, weights, cutoffs,
and same-fluid localization.  That is exactly
`PositiveStrainDecorrelation.A`.

The existing audit shows that incompressibility, signed full-space skew
symmetry, pressure Poisson recovery, vorticity-direction/helical heuristics,
finite-band orthogonality, and same-fluid transport do not install this
source-weighted decorrelation.

Verdict:

```math
\boxed{
AlignmentDecorrel.A
\text{ is open, with route-native form }
PositiveStrainDecorrelation.A.
}
```

## Corrected Frontier

The exact current frontier is:

```math
\boxed{
NativeTrilinearDefectDomination.A
}
```

with three theorem-facing entrances:

```math
\boxed{
CoeffBound.A
\quad\text{or}\quad
PositiveActiveCarlesonReserve.A
\quad\text{or}\quad
PositiveStrainDecorrelation.A
}
```

where the latter two are source-weighted aliases of the amplitude and alignment
faces.  None is installed.

Thus the route remains blocked at the same singular native positive trilinear
defect, but the face logic is now clean: no bare amplitude or bare alignment
claim may be counted as a proof unless it is lifted to the source-weighted
native packet estimate.
