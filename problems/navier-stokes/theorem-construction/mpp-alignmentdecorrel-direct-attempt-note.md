# MPP AlignmentDecorrel.A Direct Attempt Note

## Status

Direct attempt on the alignment face isolated by
`mpp-native-trilinear-defect-alignment-split-note.md`.

The target is:

```math
\boxed{
AlignmentDecorrel.A.
}
```

The target estimate prevents the active shell direction from retaining terminal positive
alignment with expanding eigendirections of the localized low/intermediate
strain.

## Target

On every bounded-overlap same-fluid terminal active family `\mathcal F_N`, prove
that the alignment factor in

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
```

loses terminal positive mass:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[
e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}
\right]_+
\,dxdt
\le
o_N(1)+C\rho_{inst,N}(\mathcal F_N).
}
\tag{AD.1}
```

## Attempt 1: Incompressibility

Incompressibility gives `\operatorname{tr}S=0`.  This removes isotropic
expansion but does not remove expanding eigendirections.  A trace-free symmetric
matrix in three dimensions can have positive eigenvalues, and the active shell
direction may align with them on selected terminal packets.

Thus incompressibility does not install `AlignmentDecorrel.A`.

## Attempt 2: Signed Exchange

Dyadic transport has signed exchange cancellation before terminal weights,
cutoffs, same-fluid packet selection, and positive-part extraction.  The
alignment target asks for the positive part on the selected bad windows.  A
small signed integral does not imply a small positive part without a
negative-part comparison or oscillation theorem, and no such theorem is
installed.

Thus signed exchange does not install `AlignmentDecorrel.A`.

## Attempt 3: Pressure / Vortex Stretching Structure

Pressure Poisson recovery enforces incompressibility and controls elliptic
response/cutoff ledgers.  It does not make the interior stretching carrier

```math
\omega\cdot S\omega
\qquad\text{or}\qquad
\langle S_{<j}^{loc}w_j,w_j\rangle
```

nonpositive on the terminal active windows.  The pressure-vortex and
pressure-strain audits identify this as a possible depletion language, not an
installed theorem.

Thus pressure structure does not install `AlignmentDecorrel.A`.

## Attempt 4: Vorticity-Direction / Beltrami / Helical Coherence

Direction-field coherence, anti-Beltrami defects, and mixed-helicity defects can
serve as sufficient depletion mechanisms if supplied.  Current original-data
inputs do not force arbitrary terminal same-fluid active packets into those
coherence classes, nor do they give a terminal active-window direction modulus
for the exact weighted positive source carrier.

Thus vorticity-direction, Beltrami/helical, and anti-coherence routes do not
install `AlignmentDecorrel.A`.

## Attempt 5: Same-Fluid Transport

Same-fluid transport preserves the packet labels and carrier legality.  It does
not provide a mixing, angular dispersion, or eigendirection decorrelation rate
for `e_j` relative to `S_{<j}^{loc}` on the selected packet.

Thus same-fluid transport is a license layer, not a supplier of
`AlignmentDecorrel.A`.

## Result

No installed route input proves the alignment face:

```math
\boxed{
AlignmentDecorrel.A\ \text{is open.}
}
```

At current route resolution this face is the same analytic wall as
`PositiveStrainDecorrelation.A`, `TerminalSourceCoherence.A`,
`EigenDecorrel.A`, `SignedPositiveBalance.A`,
`LocalPressureStrainDeplete.A`, `ActiveVorticityCoherence.A`, and
`AntiBeltramiCarleson.A`.

## Consequence

`AlignmentDecorrel.A` is not an independent discharge of
`NativeTrilinearDefectDomination.A`.  It closes only if a genuine terminal
coherence/decorrelation theorem is proved in the native positive active source
topology.
