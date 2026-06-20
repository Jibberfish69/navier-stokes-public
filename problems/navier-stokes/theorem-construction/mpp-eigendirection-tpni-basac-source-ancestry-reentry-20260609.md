# MPP Eigendirection / TPNI / B_ASAC Source-Ancestry Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It checks the signed eigendirection route selected by the previous pass:

```math
StrainSignCancellationForWeightedLiftedRemainder.A
```

and its nearby TPNI / ASAC / no-incoming source-drain surfaces.

## Positive strain decorrelation

The direct decorrelation target is:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle\right]_+
\,dxdt
\le
o_N(1)+\text{legal losses}.
```

This estimate depletes the native positive active-strain source on selected
terminal packets once supplied.

The repo does not prove this from current inputs. Incompressibility gives
`tr S=0`, not nonpositive strain. A trace-free strain can have expanding
eigendirections, and selected high-shell packets can align with them. Global
dyadic skew symmetry applies before terminal selection, weights, cutoffs, and
positive-part extraction. Same-fluid transport preserves selected labels; it
does not supply angular mixing.

Vorticity-direction coherence and Beltrami/helical alignment remain useful
candidate hypotheses, but no current theorem forces terminal bad windows into
those coherent classes.

## TPNI status

The direct global no-incoming / anisotropic backward-uniqueness route remains a
reserve route:

```math
NoIncomingFlux_{global}.A
+
AnisotropicStokesCarleman.A
\Longrightarrow TPNI.A.
```

`NoIncomingFlux_global.A` is not installed for the full ancient tangent field,
and the exact anisotropic Stokes Carleman theorem on the half-line remains
open.

The repo does install the parent-form TPNI route for the homogeneous native
frozen tangent pulse:

```math
TerminalTangentParentDrain.A
+
TerminalTangentNoParent.A
\Longrightarrow TPNI.A.
```

That is the right replacement for the ASAC tangent-pulse path.

## What parent-form TPNI pays

Parent-form TPNI supports the ASAC / active-alignment component in the signed
near-band presentation. The conditional angular route reads:

```math
ASAC.A
+
\text{legal/projected/cutoff/donor ledgers}
+
ZenoSourceResidueRigidity.A
\Longrightarrow
TerminalWeightedNoFreeSink.A.
```

So the active-alignment part is not the remaining hard object in this branch.

## What it does not pay

For a produced `B_ASAC` terminal source-residue object, the adjoint identity
contains the source term:

```math
\int \Phi_T\,d\mu_*^{src}.
```

This term is the live terminal record, not an error term. The homogeneous TPNI identity
does not kill it.

First-pulse no-parent removes fixed selected earlier parents. It does not rule
out a diffuse legal same-fluid parent cloud or a zero-thickness terminal source
marginal:

```math
g_m(s)=m1_{(-1/m,0]}(s)
\rightharpoonup\delta_{s=0}.
```

## Exact remaining theorem

The exact missing bridge is:

```math
\boxed{
BASACSourceAncestryCompactness.A
}
```

Statement:

```text
In the produced B_ASAC terminal source-residue class, a nonzero terminal source
charge cannot be represented by a diffuse legal same-fluid parent cloud
invisible to every bounded earlier selected source family. It must contain a
fixed negative-time selected source parent or produce a legal/donor/ASAC exit.
```

Equivalent sufficient forms are:

```text
TransportedCylinderNoFlux_{B_ASAC}.A,
NoIncomingFlux^{global}_{B_ASAC}.A,
TerminalTimeFaceNoSourceAtom.A,
TerminalSourceReverseHolder.A.
```

## Verdict

The signed/eigendirection route has advanced the active-alignment component,
but it has not discharged the terminal native positive source atom.

The current object-level target is now:

```math
BASACSourceAncestryCompactness.A
```

or an equivalent terminal time-face no-source-atom / reverse-Holder theorem for
the produced `B_ASAC` source-residue class.
