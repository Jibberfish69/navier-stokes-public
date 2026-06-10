# MPP OneSidedPressureSourceTether.A Reentry

## Status

Active-completion proof attempt after
`mpp-positive-source-adjoint-escape-identity-reentry-20260609.md`.

This note tests the pressure/Leray tether and its immediate pressure-child
gates.  It does not close public Clay finality.

## Target

The desired theorem is:

```math
OneSidedPressureSourceTether.A.
```

In concrete form, selected terminal pressure/eigenframe sustain should either
pay the native positive source carrier or vanish:

```math
PressureEigenframeSustain_{term}
\le
C\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+\,dxdt
+Loss_{legal}+o_N(1),
```

with enough reverse spending to deplete the native carrier when the pressure
channel is absent or legal.

## Direct Pressure Test

Pressure Poisson and Leray projection give spatial structure:

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad
\nabla^2p=\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

They act before terminal packet selection and before positive-part extraction.
The Riesz transforms and Leray projection are signed operators, not
positivity-preserving maps on:

```math
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

Thus signed pressure/eigenframe support does not imply a theorem-grade
one-sided comparison for the selected positive native source carrier.

The exact missing comparison is:

```math
SelectedPressurePositivePartComparison.A.
```

It is not installed.

## Time-Face Spread Child

The pressure time-spread route asks for:

```math
PressureSourceTimeFaceSpread.A.
```

This would give a terminal strip modulus for the native positive source
marginal.  Spatial pressure recovery does not change the time support.  The
terminal-layer model:

```math
g_m(s)=m\,{\bf 1}_{(-1/m,0]}(s)
```

can produce pressure partners on the same shrinking time layer.  Bare elliptic
recovery, Calderon-Zygmund estimates, and carrier trace do not upgrade
finite `L^1_s` source mass to super-`L^1_s` residence.

So `PressureSourceTimeFaceSpread.A` is not installed.

## Terminal Leray Gate Child

The independent terminal Leray gate package would need:

```math
TerminalLerayOrientation_{ind}.A
+
TerminalLerayCommutatorLegal_{ind}.A
+
TerminalLeraySaturation_{ind}.A.
```

The installed L3 Leray/native-capture package is narrower.  It belongs to the
public-critical paraproduct/native-source capture lane.  It does not promote
the independent `B_ASAC` pressure branch after one-sided terminal pressure /
source extraction and after ordinary legal pressure exits have been removed.

Thus the independent terminal Leray package is not installed.

## Pure Pressure Child

The retained pure pressure-Hessian sustain residue is defined after collar,
harmonic, cutoff/projector, boundary, off-family, and ordinary pressure exits
have been removed.  Existing pressure legal ledgers do not classify this
interior principal-local pressure lobe as legal loss.

The local tangent obstruction:

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
\Omega=0
```

keeps positive pressure-Hessian sustain while giving no automatic native
vorticity/source-current payment at the algebraic pressure-law level.

So `TerminalPressurePureStrainLegal.A` is not installed.

## Verdict

The pressure/Leray tether does not close:

```math
OneSidedPressureSourceTether.A
```

and:

```math
SelectedPressurePositivePartComparison.A
```

are both open.  Pressure gives useful signed and spatial partner structure, but
current inputs do not turn that structure into the one-sided terminal positive
native carrier or into terminal time-face spread.

## Next Loop Target

The pressure label cycle is exhausted at current authority.  The next
non-pressure production attempt should return to the actual all-doors-closed
class and test whether its equality clauses have any unused rigidity:

```math
\boxed{
ZeroASACEqualityRigidity.A
}
```

or equivalently:

```math
BASACZeroThicknessExclusion.A.
```

This theorem must prove that zero ASAC defect, no-free-sink equality
production, same-fluid terminal carrier, removed legal exits, removed finite
donor trees, and no fixed earlier selected slice force a terminal time-thickness
modulus for the native positive source measure.  It must not import
active-square reserve, pressure time-spread, branch-entropy charge, or generic
terminal anti-atom as an unproved premise.

Until that equality-rigidity theorem or a different genuine
terminal time-thickness mechanism is installed and propagated through
`SourcePulseExclusion.A` and `OriginalSmoothDataPackSurvival.A`, both PDFs
remain non-final.
