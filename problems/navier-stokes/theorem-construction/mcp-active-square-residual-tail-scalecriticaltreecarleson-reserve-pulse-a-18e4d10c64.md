# Active-square residual-tail / ScaleCriticalTreeCarleson reserve

## Target

Prove the active-square residual-tail estimate, equivalently the scale-critical tree Carleson reserve:

```math
ScaleCriticalTreeCarleson.A.
```

A concrete upper-tail form is

```math
\int_I
\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

In the localized source-pulse language, this is the positive pre-Cauchy source estimate

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le
o_N(1)+\text{summable legal losses}.
```

## Attempt 1: reduce to single-shell active-square estimates

The upper-tail estimate follows if every active shell satisfies

```math
\int_I2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

The entrance-tail reserve is already installed. The missing input is the square-source theorem controlling the shell flux/source at heat scale.

The universal square-source theorem fails by fixed-shell cubic amplitude scaling: a smooth finite-mode packet can have source size scaling cubically in amplitude, while original-data inputs provide finite data-dependent amplitude, not terminal scale-normalized smallness.

## Attempt 2: use shell-amplitude gain

A shell-amplitude gain would give

```math
2^{-j}D_j^2
\le
\varepsilon\nu D_j+r_j(t),
```

with summable reserve. Summing and integrating would prove active-square Carleson.

That implication is valid. The amplitude gain itself is not installed. The same active pulse model permits source-balanced active shells unless a no-pulse source theorem is added.

## Attempt 3: direct localized positive source Carleson

Keeping the source pre-Cauchy preserves child-parent geometry. The desired estimate is then exactly the local positive source Carleson bound. Direct Cauchy/Young estimates yield positive envelopes containing the same active-square residual. Global skew symmetry vanishes after localization, one-sided weights, and positive-part selection. Pressure/cutoff routing removes legal losses but leaves legal interior source-parent production.

Therefore direct localized Carleson control is equivalent to the source-pulse theorem at this route resolution.

## Result

The active-square residual-tail branch is not discharged. The valid reduction is:

```math
\boxed{
\text{active-square residual-tail control}
\Longleftarrow
\text{square-source estimate or active-shell amplitude gain or localized positive source Carleson.}
}
```

Current installed surfaces supply none of those inputs from `OriginalSmoothData`.

## Verdict

This item remains open and returns to the same source-control atom:

```math
\boxed{SOURCE.NO\text{-}PULSE.A / SourcePulseExclusion.A.}
```

The loop should proceed to the localized positive-strain depletion route.