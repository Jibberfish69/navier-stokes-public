# MPP B_ASAC Pressure Subfork Exhaustion

Date: 2026-05-17

## Status

Failed target-local closure. This note exhausts the pressure subforks surfaced after the `B_ASAC` all-doors and pressure-fork passes.

## Starting point

The survivor is

```math
B_{ASAC}^{closed},
```

with terminal source atom and all audited source-side doors closed. The pressure fork asks for one of:

```math
PressureSourceAC.A / LocalizedLeraySourceTether.A_{ind},
```

or

```math
PurePressureSustainResidueLiouville.A.
```

## Subfork 1: FinitePacketLeraySourceAnchoring.A

The finite-packet hope is that the localized Leray pressure-convection pair anchors every retained pressure lobe to a same-fluid native source edge.

After terminal positive selection this requires three independent gates:

```math
TerminalLerayOrientation_{ind}.A,
\quad
TerminalLerayCommutatorLegal_{ind}.A,
\quad
TerminalLeraySaturation_{ind}.A.
```

The installed Leray identity is algebraic before selection. The one-sided terminal packet ledger requires these gates. Importing the existing terminal skew/source-current ledger would make the fork circular. Thus finite-packet Leray anchoring remains open.

## Subfork 2: EllipticTimeSmearing.A

The hope is that elliptic pressure recovery smears a terminal time-face source atom into preterminal residence.

Pressure recovery is spatial and time-slice based. It can spread a pressure lobe across space at a fixed time, while the `B_ASAC` obstruction is concentration in time. Therefore elliptic recovery supplies no terminal time-face anti-atom estimate.

This subfork returns to temporal residence or pressure-source absolute continuity plus a separate spread estimate.

## Subfork 3: TerminalPressurePureStrainLegal.A

The hope is that a pure pressure-sustain residue can be classified as legal pressure strain output.

Existing pressure legal ledgers cover cutoff, projector, harmonic collar, off-family tail, geometric collar, and boundary pressure work. The retained pure pressure-sustain residue is interior and appears after those exits have been removed.

Thus legal classification requires a new theorem:

```math
TerminalPressurePureStrainLegal.A.
```

Current route data do not supply it.

## Subfork 4: PurePressureSourceSingularLiouville.A

The remaining singular residue satisfies

```math
\mu_*^{press\perp src}\perp(\mu_*^{src}+\mu_*^{legal,src}).
```

A pure pressure Liouville theorem would assert

```math
\mu_*^{press\perp src}=0.
```

The installed compactness and Calderon-Zygmund structure give a pressure quadratic-gradient residue. They do not force zero singular pressure-sustain residue. Hence this endpoint is a genuine new theorem.

## Verdict

All pressure subforks remain open from installed inputs. The pressure branch is exhausted at the following precise fork:

```math
\boxed{
TerminalLerayOrientation_{ind}.A
+TerminalLerayCommutatorLegal_{ind}.A
+TerminalLeraySaturation_{ind}.A
}
```

or

```math
\boxed{TerminalPressurePureStrainLegal.A}
```

or

```math
\boxed{PurePressureSourceSingularLiouville.A.}
```

None is currently installed. The `B_ASAC` terminal atom remains as the canonical target-local obstruction.