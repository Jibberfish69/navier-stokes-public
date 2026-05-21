# MPP Pressure Singular Residue Hard Stop Certificate

Date: 2026-05-17

## Status

Hard-stop certificate for the pressure/eigenframe alternative after `B_ASAC` exhaustion.

## Branch

The pressure route has reached the singular pressure branch

```math
\mu_*^{press\perp src}>0,
\qquad
\mu_*^{press\perp src}\perp(\nu_*^{src}+\nu_*^{legal,src}).
```

This branch carries selected pressure-Hessian sustain while avoiding the native source-current carrier.

## Tested Closure Gates

The three available pressure-specific gates are:

```math
TerminalPressurePureStrainLegal.A,
```

```math
PurePressureSourceSingularLiouville.A,
```

and

```math
TerminalLerayOrientation_{ind}.A
+TerminalLerayCommutatorLegal_{ind}.A
+TerminalLeraySaturation_{ind}.A.
```

Each remains open from installed inputs.

## Stop Reason

The pure-strain tangent test produces pressure-Hessian sustain without native vorticity source-current support. This blocks source-carrier forcing from algebraic pressure identities alone.

The legal route needs a theorem pricing the retained interior pure-strain pressure lobe as legal pressure residue after ordinary pressure exits have already been removed.

The Liouville route needs retained-class pressure rigidity beyond local compactness and Calderon-Zygmund pressure-quadratic support.

The Leray route needs terminal one-sided orientation, commutator pricing, and saturation independent of the existing terminal skew/source-current ledger.

## Consequence

The pressure/eigenframe alternative is now closed as a search branch at current authority:

```text
source-carried pressure residue -> ordinary source-wall machinery,
pure pressure-source singular residue -> new pressure-specific theorem required.
```

Further progress in this branch requires one of the three named gates. Reusing Calderon-Zygmund pressure control, local pressure Poisson structure, Leray recombination, local energy, or the strain equation returns to the same hard branch.

## Next Search Direction

Search outside the already tested families:

```text
B_ASAC temporal anti-atom,
preterminal parent-cloud concentration,
transported no-incoming flux,
rigid anti-atom subclass production,
branch entropy / two-tower donor depletion,
pressure/source AC and Leray tether.
```