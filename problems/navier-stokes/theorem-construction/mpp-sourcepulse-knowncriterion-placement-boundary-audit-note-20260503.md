# MPP SourcePulseKnownCriterionPlacement.A Boundary Audit

## Status

Theorem-facing audit for the current full-route obstruction:

```math
\boxed{
SourcePulseKnownCriterionPlacement.A
}
```

This note attacks the target directly and records the result.  The target is
not installed by the current repo inputs.  The exact surviving primitive is the
branch-native source/no-pulse theorem.  The same surviving primitive is also
recorded in this route as the same-carrier `JAVG.1+JAVG.2` pair or the
pre-Cauchy signed source theorem.

## Target

The desired placement theorem is:

```math
\boxed{
\text{Every terminal active source-pulse family from }OriginalSmoothData
\text{ either enters }
KC.L3\vee KC.Liouville\vee KC.CKN\vee KC.Dir
\text{ or has already exited }Pack\vee Part\vee Field.
}
\tag{SPKC}
```

This would eliminate the branch-native averaged jump obstruction without
assuming `Field_avg` on the `Jump_avg` branch:

```math
SourcePulseKnownCriterionPlacement.A
\Longrightarrow
PCTP.5.C
\Longrightarrow
PCTP.hard/TTU.A.
```

## Hidden-Spend Test

The retained-field argument proves only:

```math
Field^{\le C}_{N+2,r,Q}
\Longrightarrow
KC.CKN.
```

That is a valid conditional consumer on a retained positive-scale field branch.
It is not the missing branch-native theorem, because the open branch is

```math
Jump_{avg}:=\text{loss of every positive averaged field/coherence scale}.
```

Any proof of `SPKC` that first invokes `Field`, `Field_avg`, a uniform
terminal good cover, `AACT.Global.noJump`, or `READ.COVER` spends the predicate
denied on the branch.  Such a proof can close the retained non-jump branch, but
not `PCTP.5.C`.

## Four Placement Supply Tests

### `KC.L3Supply.A`

Finite energy gives

```math
u\in L_t^\infty L_x^2,\qquad \nabla u\in L^2_{t,x},
```

and interpolation gives the exact energy-class spacetime bound

```math
\|u\|_{L^{10/3}_{t,x}}^{10/3}
\le
C\|u\|_{L_t^\infty L_x^2}^{4/3}
\|\nabla u\|_{L^2_{t,x}}^2.
```

It does not give a uniform terminal
`L_t^\infty L_x^3` bound on the normalized source-pulse cylinders.

Installed conclusion:

```math
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
KC.L3.
```

### `KC.LiouvilleSupply.A`

The compactness route can extract a local suitable source-residue object after
localization and carrier tethering.  It does not place that object in any rigid
ancient class such as bounded ancient mild, Type I, self-similar,
axisymmetric, critical-small, or two-dimensional.

Installed conclusion:

```math
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
KC.Liouville.
```

### `KC.CKNSupply.A`

CKN smallness on a fixed positive terminal subcover is exactly what the
`Jump_avg` branch denies.  The retained-field proof yields CKN smallness only
after a positive field/coherence scale is already present.  On the raw jump
branch, the available statement is threshold failure of the base packet along
arbitrarily small terminal windows, not a small CKN subcover.

Installed conclusion:

```math
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
KC.CKN
\quad\text{on the branch-native }Jump_{avg}\text{ carrier}.
```

### `KC.DirSupply.A`

The Constantin--Fefferman criterion consumes vorticity-direction coherence.
The current inputs give energy, pressure Poisson structure, same-fluid geometry,
and endpoint/receiver ledgers; they do not force direction coherence or signed
decorrelation of the vortex-stretching source on terminal active windows.

Installed conclusion:

```math
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
KC.Dir.
```

## Closed Audit Verdict

The direct known-criteria placement route does not close from current inputs:

```math
\boxed{
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
SourcePulseKnownCriterionPlacement.A.
}
```

The exact surviving target is not another endpoint/readout bridge.  It is a
branch-native source theorem:

```math
\boxed{
LocalSource.NoPulse.A
\equiv_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A
\equiv_{\mathrm{route}}
SignedLocalSource.A.
}
```

The no-escape route can also close through the same-carrier pair:

```math
JAVG.1:
\quad
Jump_{avg}
\Longrightarrow
\text{separated terminal windows with a fixed normalized lower charge},
```

and

```math
JAVG.2:
\quad
\sum_k \operatorname{Norm}_{SCF}^{\nu}(Q_k)
\le C(E_0,\text{source},\text{atlas})
```

for the same carrier and schedule.

## Next Target List

The next theorem targets are now ordered:

1. `SignedLocalSource.A`: prove the signed weighted lifted-remainder estimate,
   or a route-proved active-square residual-tail / Carleson theorem, from
   `OriginalSmoothData`.
2. `JAVG.1+JAVG.2`: prove component selection and scale-normalized upper
   control for one shared terminal charge.
3. `SourcePulseKnownCriterionPlacement.A`: may re-enter only if one of
   `KC.L3Supply.A`, `KC.LiouvilleSupply.A`, `KC.CKNSupply.A`, or
   `KC.DirSupply.A` is supplied without retained `Field_avg`.

Until one of these is proved, the full route remains open at:

```math
\boxed{
PCTP.5.C / SOURCE.NO\text{-}PULSE.A / AWG.A.
}
```
