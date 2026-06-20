# Door 2 Zero-Readout Flat-Family Exclusion Direct Test

Date: 2026-06-20

Status: direct child test; not proved from current installed inputs.  The
test prevents a false shortcut in Door 2: zero point-force flux and zero
selected native source readout do not imply that the renormalized profile is
zero.  They only say that two selected terminal readouts vanish.  A rigidity
contradiction still needs a coercive terminal obstruction norm, a strict
no-waste/action identity, or production of an exact Liouville-consumable class.

## 1. Target under test

The no-neutral-loop branch left the rigidity clause

```math
\boxed{
\text{ZeroReadoutFlatFamilyExclusion.A}.
}
\tag{ZR.1}
```

The intended use is:

```math
\Phi_0=0,
\qquad
\mu^{+}_{src,sel}=0,
\qquad
\text{compact recurrent renormalized orbit}
\Longrightarrow
\text{no nonzero terminal Zeno profile}.
\tag{ZR.2}
```

This statement is not a formal consequence of the displayed hypotheses.

## 2. The zero-readout set is too large

Define the zero-readout set schematically by

```math
\mathcal M_0
:=
\left\{
U:
\Phi(U)=0,\ 
\mu^{+}_{src,sel}(U)=0
\right\}.
\tag{ZR.3}
```

The conditions in `(ZR.3)` are not the Navier--Stokes equation, not
stationarity, not homogeneity, and not a global energy/decay class.  They are
readout conditions.

There are many source-free smooth local Navier--Stokes states with zero point
force and no selected terminal source.  For example, a constant divergence-free
field on a local annulus satisfies

```math
\partial_s U=0,
\qquad
\nabla U=0,
\qquad
\nabla P=0,
\tag{ZR.4}
```

and has no point-force residue at the origin.  It is not a singular Landau
profile and it is not killed by zero point-force flux.  It is excluded from a
blow-up proof only by extra normalization, decay, homogeneity, or terminal
defect lower-bound hypotheses.

So the implication

```math
\mathcal M_0\ni U
\Longrightarrow
U=0
\tag{ZR.5}
```

is false without additional structure.

## 3. Compact orbit is not enough

Compactness modulo symmetries makes an omega-limit set meaningful:

```math
\{U(s):s\le0\}/\mathcal G_{NS}
\quad\text{precompact}.
\tag{ZR.6}
```

But compactness does not force a compact orbit to be a single point unless a
strict Lyapunov/no-waste identity gives dissipation of the motion.  The
ordinary physical energy monotonicity is discounted in terminal log time and
does not supply the needed unweighted drop.

Thus the compact zero-readout branch can still be:

```text
source-free but time-dependent;
stationary but not Landau-class;
moving along a neutral symmetry or selector family;
locally smooth with no terminal defect readout;
defect-free on the selected readouts but not normalized by a coercive terminal
obstruction norm.
```

None of these is automatically contradictory.

## 4. What would make exclusion true

The clean coercive version would add a terminal obstruction norm
\(\mathfrak Z(U)\) satisfying

```math
\mathfrak Z(U)>0
\quad\text{for every nonzero produced terminal Zeno element}
\tag{ZR.7}
```

and a no-escape/readout inequality

```math
\mathfrak Z(U)
\le
C\left(
|\Phi(U)|
+\mu^{+}_{src,sel}(U)
+\operatorname{Action}_{mod}(U)
+\operatorname{Def}_{ann}(U)
\right).
\tag{ZR.8}
```

Then zero readout plus zero action/defect would imply \(\mathfrak Z(U)=0\),
contradicting `(ZR.7)`.

This is not installed.  It is the same no-escape/coercive-readout theorem
already exposed in the annular compactness and no-neutral-loop branches.

## 5. Liouville version

A second route is to produce an exact rigid class:

```math
\begin{gathered}
U \text{ stationary on }\mathbf R^3\setminus\{0\},\\
U \text{ is }(-1)\text{-homogeneous},\\
U \text{ is smooth on }S^2,\\
\nabla\cdot U=0,\\
\Phi_0=0.
\end{gathered}
\tag{ZR.9}
```

Then the Landau/Sverak zero-force consumer gives \(U=0\).  But `(ZR.9)` is not
part of zero readout.  It is exactly the missing production theorem:

```math
\text{MinimalZenoProfileProduction.A}.
\tag{ZR.10}
```

So Landau rigidity cannot be used to prove `ZeroReadoutFlatFamilyExclusion.A`
unless the profile-production hypotheses are first produced.

## 6. Exact reduction

The direct test gives:

```math
\boxed{
\text{ZeroReadoutFlatFamilyExclusion.A}
\Leftarrow
\text{CoerciveTerminalObstructionNorm.A}
+
\text{CompleteAnnularNoEscapeReadout.A}
+
\text{StrictRescaledNoWasteLyapunov.A}.
}
\tag{ZR.11}
```

or, alternatively,

```math
\boxed{
\text{ZeroReadoutFlatFamilyExclusion.A}
\Leftarrow
\text{MinimalZenoProfileProduction.A}
+
\text{ZeroFluxLandauClassLiouville.A}.
}
\tag{ZR.12}
```

The first route is a no-escape/no-waste rigidity theorem.  The second route is
the Landau-class production route.  Neither is installed by zero readout alone.

## 7. Consequence for Door 2

The Door 2-specific gauge branch now has no independent shortcut:

```math
\Phi_0=0
+\mu^{+}_{src,sel}=0
+\text{compactness}
\not\Longrightarrow
U=0.
\tag{ZR.13}
```

To make the branch coercive, one must either:

1. prove a complete annular readout inequality whose zero set is exactly the
   zero terminal defect;
2. prove strict rescaled no-waste/unweighted action so compact recurrence
   becomes stationary;
3. produce the exact Landau-class profile.

## Verdict

`ZeroReadoutFlatFamilyExclusion.A` is not proved from current inputs.  Zero
readout is visibility information, not rigidity.  The missing mathematical
content is a coercive terminal obstruction norm with a complete annular
readout, or the full `MinimalZenoProfileProduction.A` route into the already
conditional Landau/Sverak consumer.
