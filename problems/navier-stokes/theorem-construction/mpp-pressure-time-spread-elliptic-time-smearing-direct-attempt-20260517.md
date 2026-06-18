# MPP PressureTimeSpread.A / EllipticTimeSmearing.A Direct Attempt

Date: 2026-05-17

Status: failed direct theorem; current pressure branch reaches a hard obstruction.

Purpose: test the final pressure-specific alternative from the pure pressure-sustain residue branch: temporal spread of pressure residue strong enough to produce a rigid class or remove a terminal pressure atom.

## 0. Target

The desired theorem is

```math
\boxed{PressureTimeSpread.A}
```

or equivalently

```math
\boxed{EllipticTimeSmearing.A.}
```

A useful exact form is

```math
\mu_*^{press\perp src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^\alpha,
\qquad \alpha>0.
```

This estimate rules out a terminal pressure atom and feeds

```math
PressureRigidClassProduction.A
\Longrightarrow
PurePressureSustainResidueLiouville.A.
```

## 1. Elliptic smearing test

Pressure is recovered by a spatial Calderon-Zygmund operator:

```math
\nabla^2p(t)=T\bigl((S+\Omega)\otimes(S+\Omega)\bigr)(t).
```

This relation is time-slice elliptic. It provides spatial angular cancellation and spatial nonlocality. It supplies no temporal averaging. A pressure-sustain atom concentrated on shrinking terminal time windows remains compatible with the elliptic identity whenever the quadratic-gradient carrier concentrates on the same windows.

Thus elliptic recovery gives spatial smearing, not temporal smearing.

## 2. Local energy time test

Local energy inequalities integrate pressure work in time. For the selected pressure-sustain residue, the needed bound is super-`L^1_t` or positive time thickness on the terminal pressure measure. Local energy gives only the cutoff-paired pressure work term

```math
\iint p\,u\cdot\nabla\phi
```

under the local energy integrability available for \(p\), \(u\), and the cutoff
\(\phi\). After positive directional selection and terminal weights, it returns
to active-square/source-strength estimates or pressure-source carrier control.

Thus local energy does not prove the desired time-spread estimate.

## 3. Material residence test

A material residence theorem must say a pressure lobe that sustains a terminal packet remains tied to a same-fluid material ancestry over a positive time interval. That statement is the temporal-thickness input.

The required theorem is

```math
\boxed{MaterialPressureResidence.A.}
```

But pressure influence is elliptic rather than transported. To turn pressure influence into material residence, one must recombine it with convection through the localized Leray pair. That is exactly

```math
LocalizedLeraySourceTether.A_{ind}.
```

Therefore material residence returns to the source-current wall.

## 4. Finite packet time-atom model

A compatible bad sequence has pressure-sustain packets with

```math
\Pi_N^{press,+}\ge c_0
```

supported on time intervals of length

```math
\tau_N\downarrow0,
```

with amplitude growing like `\tau_N^{-1}` after terminal normalization. Elliptic pressure recovery sees each time slice and does not spread the mass in time. Local compactness extracts a terminal pressure residue. The native source-legal carrier can vanish on the same support by the pure-pressure singular construction.

This model matches the current hypotheses and violates `PressureTimeSpread.A`.

## 5. Verdict

`PressureTimeSpread.A` / `EllipticTimeSmearing.A` fails from installed inputs. The pressure branch has now tested the available alternatives:

```text
PressureSourceAC.A / LocalizedLeraySourceTether.A_ind,
PurePressureSustainResidueLiouville.A,
PressureRigidClassProduction.A,
TerminalPressureTraceAngularSaturation.A,
PurePressureSustainResidueLegal.A,
PressureTimeSpread.A / EllipticTimeSmearing.A.
```

All tested routes either return to the terminal source-current wall or require a genuinely new pressure-specific endpoint.

## 6. Current closed frontier statement

The branch is completed as a negative closure:

```math
\boxed{
\text{The pressure/eigenframe route does not close from installed inputs.}
}
```

The irreducible alternatives left for future work are exactly:

```math
\boxed{PressureSourceAC.A / LocalizedLeraySourceTether.A_{ind}}
```

or

```math
\boxed{PurePressureSustainResidueLiouville.A}
```

or a new legal class

```math
\boxed{TerminalPressurePureStrainLegal.A.}
```

The pressure route at this theorem resolution is therefore exhausted.
