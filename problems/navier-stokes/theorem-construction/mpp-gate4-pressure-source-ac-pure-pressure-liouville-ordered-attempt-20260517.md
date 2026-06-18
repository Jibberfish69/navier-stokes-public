# Gate 4 — PressureSourceAC.A / PurePressureSustainResidueLiouville.A

Date: 2026-05-17

## Status

Failed from installed inputs.

## Target A: PressureSourceAC.A

The desired residue theorem is

```math
\mu_*^{press-sus}\ll \mu_*^{src}+\mu_*^{legal,src}.
```

This absolute-continuity statement converts pressure-sustain residue into native source residue or legal source residue.

## Failure of PressureSourceAC.A

Pressure Poisson and Calderon-Zygmund compactness give a pressure quadratic-gradient carrier. The native source-current carrier contains same-fluid ancestry, donor/refill structure, and one-sided terminal source selection. The route lacks a theorem dominating the pressure quadratic carrier by the native source-current carrier.

The finite-packet Leray version requires independent terminal gates:

```math
TerminalLerayOrientation_{ind}.A,
\quad
TerminalLerayCommutatorLegal_{ind}.A,
\quad
TerminalLeraySaturation_{ind}.A.
```

The installed Leray identity acts before terminal positive selection. These gates are unavailable without importing the source-current ledger circularly.

## Target B: PurePressureSustainResidueLiouville.A

The pressure carrier decomposition leaves a singular part

```math
\mu_*^{press\perp src}\perp(\mu_*^{src}+\mu_*^{legal,src}).
```

A pressure-only closure would prove

```math
\mu_*^{press\perp src}=0.
```

## Failure of pure pressure Liouville

Existing pressure legal ledgers pay cutoff, projector, harmonic collar, off-family tail, geometric collar, and boundary pressure work. The retained interior singular pressure-sustain residue appears after those exits are removed.

Compactness and Calderon-Zygmund structure identify a pressure quadratic-gradient residue. They do not force zero singular pressure-sustain residue and do not classify it as legal.

## Verdict

Gate 4 fails. The pressure branch reduces to uninstalled theorems:

```math
PressureSourceAC.A,
\qquad
LocalizedLeraySourceTether.A_{ind},
\qquad
PurePressureSustainResidueLiouville.A,
\qquad
TerminalPressurePureStrainLegal.A.
```

Proceed to Gate 5: `ProductionIntoRigidBASACTimeFaceSubclass.A`.
