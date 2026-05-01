# R3 Exterior Cascade Theorem Final Status

## Status

Failed discharge. The `R^3` branch remains conditional.

## Target

The needed noncircular theorem is

```math
ExtCascade_s^{R^3}:
OriginalSmoothData_{R^3}
\Longrightarrow
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad(R\to\infty),
```

where `\mathcal E_s^{tail}` controls the commutator, cutoff, pressure, and high-frequency exterior flux terms in the localized `H^s` energy identity.

## Current inputs

The R3 branch currently has:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

uniform exterior `L^2` tightness, local tower/readout control on compact cores, and the whole-space Riesz pressure local/far split.

These inputs do not imply exterior `H^s` tightness. Exterior `L^2` tightness controls mass, not high-frequency derivative concentration.

## Attempted exterior cascade estimate

The localized high-order identity is

```math
\frac d{dt}\|\eta_R\Lambda^s u\|_2^2
+\nu\|\eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_{L^\infty}\|\eta_R\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{tail}(R,t).
```

To close this without circularity, one needs a bound on the exterior cascade ledger that avoids both

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt
```

and

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}.
```

The available finite-energy and compact-core estimates do not control the exterior high-frequency commutator terms. A high-frequency packet can move to spatial infinity with small `L^2` mass and non-small `H^s` tail. Thus the desired cascade estimate is not a consequence of the current inputs.

## Endpoint consequence

The exterior high-frequency endpoint face remains live:

```math
TailFace_{R^3}^{Hs}:
\limsup_{R\to\infty}\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s}>0.
```

The existing compact-core endpoint matrix does not eliminate this face. A valid R3 endpoint matrix must add a dedicated row:

```math
TailFace_{R^3}^{Hs}\quad\text{removed by }ExtCascade_s^{R^3}	ext{ or }Tail.Hs_{R^3}.
```

## Conditional R3 theorem retained

The whole-space theorem remains available only in the conditional form

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty
\Longrightarrow
T_*=\infty.
```

The unconditional R3 theorem requires a new noncircular proof of `ExtCascade_s_R3` or a different theorem eliminating `TailFace_R3^Hs`.

## Branch decision

The periodic `T^3` branch remains the completed theorem surface. The whole-space `R^3` branch is organized but conditional at the spatial-infinity high-frequency tail. It must not be promoted through the periodic matrix.

## Verdict

`ExtCascade_s_R3` is not solved by the current route. The correct closure state is:

```math
T^3\text{ branch: closed in theorem-program matrix},
```

```math
R^3\text{ branch: conditional on }Tail.Hs_R3\text{ / }ExtCascade_s_R3.
```