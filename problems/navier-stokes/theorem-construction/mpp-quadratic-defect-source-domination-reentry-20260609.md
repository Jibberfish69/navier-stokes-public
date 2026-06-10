# MPP QuadraticDefectSourceDomination.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The previous pass reduced the pressure native-face endpoint to:

```math
QuadraticDefectSourceDomination.A.
```

The desired source-only statement is:

```math
\mu_*^{press-sus}\ll \nu_*^{src}+\nu_*^{legal,src}.
```

Here `\mu_*^{press-sus}` is the selected pressure-Hessian sustain residue and
`\nu_*^{src}` is the native same-fluid source-current residue.

If this were proved, it would feed:

```text
PressureSourceAC.A
=> TerminalPressureHessianNoSustain.A
=> SourceTimeConcentrationCost.A
=> terminal time-thickness
=> NoGenuineExitFromSmoothData.A.
```

## Checked carrier obstruction

The source-only theorem is not installed. The pressure carrier and the native
source carrier are different objects:

```math
\nabla^2p=\mathcal R\mathcal R((S+\Omega)\otimes(S+\Omega)),
```

while the native positive source carrier is:

```math
|w_j|^2[e_j\cdot S_{<j}^{loc}e_j]_+.
```

The trace-free tangent test separates them:

```math
S=\operatorname{diag}(2,-1,-1),\qquad \Omega=0.
```

Then the native vorticity source carrier vanishes, while the local
pressure-Hessian sustain sign is positive. This blocks source-only domination
from pressure algebra alone.

## Noncircular result actually available

The checked noncircular theorem is the Lebesgue carrier dichotomy:

```math
\mu_*^{press-sus}
=
f(\nu_*^{src}+\nu_*^{legal,src})
+\mu_*^{press\perp src},
```

so:

```math
PressureQuadraticCarrierDichotomy.A:
\mu_*^{press-sus}>0
\Longrightarrow
\nu_*^{src}+\nu_*^{legal,src}>0
\quad\text{or}\quad
\mu_*^{press\perp src}>0.
```

The first branch is useful source-wall input. The second branch is the pure
pressure-source singular residue.

Thus the source-only theorem would follow only after a new exclusion:

```math
NoPurePressureSourceSingularResidue.A.
```

## Pure pressure endpoint check

The three checked ways to remove the pure pressure branch are still open.

### 1. Independent Leray gates

The localized Leray identity recombines convection and pressure before terminal
selection. It does not preserve one-sided orientation, commutator legality, or
partner saturation after terminal positive selection. The needed package is:

```math
TerminalLerayOrientation_{ind}.A
+ TerminalLerayCommutatorLegal_{ind}.A
+ TerminalLeraySaturation_{ind}.A.
```

All three gates remain open.

### 2. Pure pressure Liouville

`PurePressureSustainResidueLiouville.A` remains open. Local ancient compactness,
Calderon-Zygmund pressure structure, and zero native source-legal carrier do not
produce vorticity-free, trace-balanced, Type-I, critical, self-similar, or
global finite-energy rigidity.

The only new rigid-class producer isolated by the checked notes is:

```math
PressureTimeSpread.A / EllipticTimeSmearing.A,
```

which would have to create a terminal time-spread modulus for the pure pressure
residue.

### 3. Pure pressure legal classification

`TerminalPressurePureStrainLegal.A` remains open. Existing pressure legal
ledgers pay collar/boundary work, harmonic tails, cutoff/projector
commutators, off-family pressure tails, and packets outside the retained
family. The pure pressure residue is interior, retained, and principal-local
after those exits are removed.

Legalizing it would require a new legal class and a terminal-weight summability
estimate:

```math
\mu_*^{press\perp src}\le Legal^{pure-strain}_{press,*}.
```

That estimate is a new pressure depletion theorem.

## Result

`QuadraticDefectSourceDomination.A` is not proved. The reentry produces a
smaller exact split:

```text
source-carried pressure residue: useful but conditional,
pure pressure-source singular residue: still live.
```

The next non-alias target is:

```math
NoPurePressureSourceSingularResidue.A.
```

At current checked resolution, its sharpest remaining child is:

```math
PressureTimeSpread.A / EllipticTimeSmearing.A,
```

because trace/angular saturation returns to partner saturation, independent
Leray returns to the three open terminal gates, and legal classification needs
a new pressure depletion theorem.

## Loop consequence

The public Clay finality chain remains open:

```text
QuadraticDefectSourceDomination.A: open
=> PressureSourceAC.A: open
=> TerminalPressureHessianNoSustain.A: open
=> SourceTimeConcentrationCost.A: open
=> ExternalTerminalTimeThicknessMechanism.A: open
=> NoGenuineExitFromSmoothData.A: open
=> pdfs_final: false.
```
