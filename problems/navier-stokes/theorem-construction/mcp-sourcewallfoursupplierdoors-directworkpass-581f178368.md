# SourceWallFourSupplierDoors.DirectWorkPass

## Status

Forward supplier discharge failed from installed inputs.  This note records the direct work pass on all four remaining supplier doors.

The common target is

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

The native carrier is

```math
\mathcal S_N(\mathcal F_N)
=
\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}\right]_+dxdt.
```

The endpoint time-marginal witness that survives all four attempts is the zero-thickness source-balanced terminal pulse.

## Door 1: TerminalSourceReverseHolder.A

### Target

Prove for some `p>1`:

```math
\left\|\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\right\|_{L_s^p((-1,0))}
\le C_R.
```

This gives

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p}
```

and removes terminal time atoms.

### Attempt

Fixed viscosity, local energy trace, `B_ASAC`, same-fluid ancestry, and first-pulse selection provide finite `L^1_s` source mass and legal lineage.  They do not provide the `p>1` time gain.

The terminal layer model

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has bounded `L^1_s` mass and divergent `L^p_s` norm for every `p>1`.

### Missing estimate

```math
\boxed{UniformTemporalSourceIntegrability_p.A}
```

or an equivalent source-residence theorem.

## Door 2: ActiveShellSourceNormalize.A

### Target

Normalize the active shell trilinear source on selected terminal windows so that source-balanced shell pulses are excluded.

A sufficient form is

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t)
```

with summable reserve `r_j` on the selected family.

### Attempt

The shell balance is

```math
E_j' + c\nu D_j \le F_j.
```

On a shrinking terminal layer, the nonlinear source `F_j` can balance viscous damping while leaving finite terminal source mass.  `B_ASAC` gives equality/tangent structure, while it supplies no amplitude normalization for the trilinear flux.

### Missing estimate

```math
\boxed{ActiveShellSourceNormalize.A}
```

in a scale-normalized form on moving terminal shells.

## Door 3: SquareSourceEstimate.A

### Target

Prove square-source control strong enough to imply super-`L^1` temporal source control and active-square reserve.

One sufficient target inequality is

```math
\int_{I_P} |Source_P^{loc}(t)|^2\,dt
\le
Charge_P+Loss_P.
```

### Attempt

Cauchy/Young conversions turn the positive carrier into an active-square upper-tail term.  The lower dissipation tail is legal.  The upper-tail square carrier is the missing scale-critical source reserve.

The absolute-value branch gives terms of the form

```math
\sum_{k>N}2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
```

Current first-moment dissipation controls do not pay this shellwise square density.

### Missing estimate

```math
\boxed{ActiveSquareUpperTailCarleson.A}
```

or an equivalent square-source reserve.

## Door 4: ScaleNormalizedBranchEntropyReserve.A

### Target

Charge diffuse Zeno ancestry by a scale-normalized entropy or branch-complexity reserve.

The target form is

```math
\sum_{P\in\mathcal F_N} Entropy(P)
\le
Charge_N(\mathcal F_N)+Loss_N(\mathcal F_N)+o_N(1).
```

### Attempt

Same-fluid ancestry gives legal lineage.  Diffuse parent clouds can spread mass over arbitrarily many legal parents.  Zeno heat-time windows may form a convergent series.  Local donor balance and entrance leaf decay pay finite and non-Zeno refill, while the terminal diffuse Zeno branch remains.

### Missing estimate

```math
\boxed{ScaleNormalizedBranchEntropyReserve.A}
```

or an equivalent quantized donor/branch reserve.

## Combined result

The direct work pass proves the exact forward supplier condition:

```math
\boxed{
TerminalSourceReverseHolder.A
\vee
ActiveShellSourceNormalize.A
\vee
SquareSourceEstimate.A
\vee
ScaleNormalizedBranchEntropyReserve.A
\Longrightarrow
SourcePulseExclusion.A.
}
```

The installed inputs prove none of the four doors in this pass.

## Final obstruction

The remaining model is

```math
\boxed{\text{zero-thickness source-balanced terminal pulse}.}
```

It has finite `L^1_t` source mass, zero heat-time thickness, source-balanced shell amplitude, and diffuse/Zeno ancestry with finite first-moment cost.

## Verdict

The four supplier doors were worked directly.  The forward source-wall supplier remains open.  The retained CM diagnostic branch remains closed by `SourceWallDichotomyToCMRetainedClosure.A`.
