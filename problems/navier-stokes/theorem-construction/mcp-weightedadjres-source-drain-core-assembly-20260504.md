# Source-drain analytic core: `WeightedAdjBessel.A + ResidualPair.A => WeightedAdjRes.A`

## Status

Theorem-grade assembly conditional on the projected affine packet frame already locked in the source-drain definition surfaces.

## Target

Prove the analytic core of the source-drain route:

```math
WeightedAdjBessel.A+ResidualPair.A\Longrightarrow WeightedAdjRes.A.
```

## Inputs

For each terminal child tile `T`, let `\psi_T` be the projected strain-gauged adjoint packet and set

```math
\chi_T:=g_T^{-1}\psi_T,
\qquad
g_T=e^{\Gamma_T}.
```

The weighted Bessel estimate is

```math
\boxed{
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2.
}
\tag{WAB}
```

The residual estimate is

```math
\boxed{
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
\tag{RP}
```

Here `R` is the locked residual decomposition from the source-drain definition surface:

```math
R=R^{comm}+R^{press}+R^{cut}+R^{off},
```

with pressure handled in the projected packet frame and packet geometry measured in the affine metric.

## Proof

Let `\{a_T\}` be any finitely supported coefficient family with

```math
\sum_T|a_T|^2=1.
```

Define

```math
\Xi(t,x):=\sum_T a_T\chi_T(t,x).
```

By `WeightedAdjBessel.A`,

```math
\|\Xi\|_{L_t^2H_x^1}\le C.
```

Now compute the dual pairing:

```math
\sum_T a_T g_T^{-1}
\int_{I_T}\langle R,\psi_T\rangle\,dt
=
\int_I\langle R,\Xi\rangle\,dt.
```

By duality between `H^{-1}` and `H^1`,

```math
\left|\int_I\langle R,\Xi\rangle\,dt\right|
\le
\|R\|_{L_t^2H_x^{-1}}\|\Xi\|_{L_t^2H_x^1}.
```

Using `(WAB)` and `(RP)`,

```math
\left|\sum_T a_T g_T^{-1}
\int_{I_T}\langle R,\psi_T\rangle\,dt\right|^2
\le
C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

Taking the supremum over all unit `\ell^2` coefficient families gives

```math
\boxed{
\sum_T g_T^{-2}
\left|\int_{I_T}\langle R,\psi_T\rangle\,dt\right|^2
\le
C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
\tag{WAR}
```

This is `WeightedAdjRes.A`.

## Consequence inside the source-drain route

`WeightedAdjRes.A` is the analytic charge estimate used in the parent-or-charge dichotomy. Together with `GainStop.A`, `ParentKernel.A`, and `FirstPulseKill.A`, it yields

```math
LemmaB.SourceDrain.
```

Then

```math
LemmaB.SourceDrain
\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```

## Claimed status

Analytic core assembled. The theorem uses already-locked inputs `WeightedAdjBessel.A` and `ResidualPair.A`; it does not reprove their packet-calculus hypotheses.