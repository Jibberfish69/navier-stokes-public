# MPP Direct Active-Window Carleson Attempt Note

## Status

Theorem-facing supplier attempt for `AWG.A`.

This note attacks the direct active-window Carleson form:

```math
OriginalSmoothData
\Longrightarrow
\sum_\ell SCF_{norm}^{\mathcal Q}(Q_\ell^\Phi)
\le C(E_0,\nu,\text{atlas},\text{source})
```

for separated terminal same-fluid active windows. The theorem is not
discharged.

## Raw Bound Available

For the pressure/dissipation carrier,

```math
\nu_{SCF}=|\nabla u|^2dxdt+\sum_\chi |p_\chi^{loc}|^{3/2}dxdt,
```

finite energy, pressure Poisson structure, the finite transported atlas, and
bounded overlap give the raw estimate

```math
\sum_\ell \nu_{SCF}(Q_\ell)
\le
C_{atlas}\nu_{SCF}(total).
```

This is unweighted.

## Missing Scale Factor

The active-window Carleson target is scale-normalized. It asks for control of
the same terminal family after inserting the shrinking-window weights produced
by the `SCF_base` threshold:

```math
\sum_\ell r_\ell^{-\alpha}\nu_{SCF}(Q_\ell)
\le C.
```

Raw finite measure does not imply this. A finite measure can concentrate on
shrinking windows with finite total mass while the normalized weighted sum
diverges.

## Direct PDE Attempt

The only way to gain the missing scale factor is to use active-window dynamics:
terminal active windows must either decay, pay dissipation/pressure charge
faster than scale-critical rate, or be forbidden by a source/monotonicity law.
Those are exactly the active-shell amplitude gain, heat-scale square-source,
or monotone source-normalization theorems.

No installed estimate from `OriginalSmoothData` supplies that gain.

## Verdict

The direct active-window Carleson theorem is not independently discharged.

It is equivalent, at the present route resolution, to the same primitive:

```math
\boxed{
OriginalSmoothData\Longrightarrow
\text{active-window source normalization}.
}
```
