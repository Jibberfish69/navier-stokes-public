# Pack.TTU Vorticity-Direction Depletion Test

## Status

Failed discharge for `Pack.TTU`.

## Target

Test whether a Constantin--Fefferman-type depletion route can supply

```math
S_{pack,Q}\in L^1([t_0,T_*))
```

from vorticity-direction coherence plus energy/enstrophy.

## Pack strain ledger

```math
S_{pack,Q}(t)=
\sup_{a\in A_Q(t)}
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

This is the full two-sided operator norm of the symmetric strain along active material labels.

## Vorticity-direction route

Let

```math
\xi=\omega/|\omega|
```

where `\omega\ne0`. Direction-coherence hypotheses can deplete the vortex-stretching term

```math
\omega\cdot S\omega
=|\omega|^2\langle S\xi,\xi\rangle.
```

This controls the strain component seen by the vorticity direction.

## Obstruction

`S_pack,Q` requires every strain eigen-direction:

```math
\|S\|_{op}
=
\sup_{|e|=1}|\langle Se,e\rangle|.
```

Control of

```math
\langle S\xi,\xi\rangle
```

leaves transverse eigenvalues uncontrolled. It also gives no information where `\omega` is small or zero, while the pack gauge still follows the material deformation through those regions.

The Biot-Savart relation expresses `\nabla u` as singular integrals of `\omega`. Energy/enstrophy gives `\omega\in L^2_{t,x}`, and Calderon-Zygmund maps this to finite-`p` strain controls, while the pack ledger needs a material `L^\infty`-type supremum.

Thus direction coherence plus energy/enstrophy fails to imply

```math
S_{pack,Q}\in L^1([t_0,T_*)).
```

## Conditional route still possible

A stronger depletion package could become a continuation criterion if it supplied either

```math
\int_{t_0}^{T_*}\|S(t)\|_{L^\infty}\,dt<\infty,
```

or the pack-native ledger directly:

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty.
```

Such a package would be a continuation-grade replacement for BKM.

## Verdict

The vorticity-direction depletion route, at the level of direction coherence plus energy/enstrophy, fails to close `Pack.TTU`.

The live obstruction remains

```math
OriginalSmoothData\Longrightarrow S_{pack,Q}\in L^1([t_0,T_*)).
```