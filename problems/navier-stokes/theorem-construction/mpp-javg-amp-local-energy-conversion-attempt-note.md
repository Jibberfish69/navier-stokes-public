# MPP JAVG.Amp Local-Energy Conversion Attempt Note

## Status

Failed theorem-facing bounded solve attempt.

This note attacks the exact lower-side target left by the affine-Poincare
component-selection test:

```math
JAVG.Amp:
\quad
A_R^{aff}\text{ terminal threshold}
\Longrightarrow
D_R+P_R^{loc}\text{ lower mass on a comparable same-fluid window}.
```

The attempt does not prove `JAVG.Amp`. It identifies the remaining amplitude
persistence / active-square wall.

## Target Setup

On a CKN-admissible same-fluid cylinder `Q_R^\Phi`, set

```math
A_R^{aff}
:=
R^{-1}\sup_{t\in I_R}
\int_{B_R^\Phi(t)}|u-u_R^{aff}|^2,
```

```math
D_R
:=
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2,
```

and let `P_R^{loc}` denote the packet-local pressure contribution in the
selected charge.

The affine-Poincare estimate already gives

```math
R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3
\le
C(A_R^{aff}D_R)^{3/4}.
```

An `SCF_base` threshold carried by the velocity term either sees `D_R`, or it
sees the amplitude channel `A_R^{aff}`. The target is to force that amplitude
channel back into `D_R+P_R^{loc}`.

## Local Energy Attempt

Test the local energy inequality against a transported cutoff adapted to
`Q_R^\Phi`. In normalized form,

```math
A(t_2)+\nu D([t_1,t_2])
\le
A(t_1)
+F_{cut}
+F_{conv}
+F_{press}
+F_{frame}.
```

The pressure term is controlled by `P_R^{loc}` plus the already separated
harmonic/far carrier. The cutoff and frame terms are controlled by the bounded
same-fluid geometry. For `v=u-u_R^{aff}`, the convective term obeys the exact
normalized interpolation bound

```math
|F_{conv}|
\le
C\,R^{-2}\iint_{Q_R^\Phi}|v|^3
\le
C(A_R^{aff}D_R)^{3/4}.
```

This is the active amplitude flux. It is not absorbed by `D_R+P_R^{loc}` unless
an additional amplitude-gain, recurrence-decay, or active-flux depletion theorem
controls `A_R^{aff}`.

The local energy inequality yields only the dichotomy:

```math
A_R^{aff}\text{ is paid by }D_R+P_R^{loc},
```

or

```math
A_R^{aff}\text{ persists / is transported through the active flux channel}.
```

The second alternative is not excluded by finite energy, bounded pack gauge, or
pressure Poisson structure alone.

## Why The Attempt Fails

At a single time, Poincare gives a spatial relation between affine residual
energy and instantaneous gradient energy. But `D_R` is a heat-scale time
integral. A terminal amplitude packet may be narrow in time, transported by the
flow, or inherited from an earlier adjacent window. The installed estimates do
not force it to deposit comparable heat-scale dissipation or local pressure mass
on the same selected terminal schedule.

A backward-in-time persistence argument would need an additional theorem:

```math
\text{terminal affine amplitude cannot persist or hop indefinitely}
```

without creating scale-normalized dissipation / pressure charge. That theorem is
not installed. It is an active-square or amplitude-gain theorem in different
language.

## Verdict

`JAVG.Amp` is not proved.

The correct reduction is:

```math
\boxed{
JAVG.Amp
\text{ requires amplitude persistence exclusion, active-shell gain,}
\text{ or heat-scale square-source control.}
}
```

Consequently, the lower side of branch-native `Jump_avg` elimination remains
open at the same active-amplitude wall.
