# SCFBase.Modulus Component Decomposition

## Status

Direct discharge failed; exact blocking component isolated. Conditional BKM route recorded.

## Target modulus

For same-fluid cylinders, the desired terminal modulus is

```math
|SCF_{base}(Q_r^\Phi(a,t))-SCF_{base}(Q_{r'}^\Phi(a',t'))|
\le
\Omega(d(a,a')+|t-t'|+|\log r-\log r'|),
```

with a terminally usable modulus `\Omega`, strong enough to prevent moving bad SCF packets near `T_*`.

## Decomposition of `SCF_base`

Define the component split by

```math
SCF_{base}(Q_r^\Phi)
=
E_u(Q_r^\Phi)+D_u(Q_r^\Phi)+P(Q_r^\Phi)+G_\Phi(Q_r^\Phi),
```

where:

```math
E_u(Q_r^\Phi)
```

is the scale-critical velocity energy term,

```math
D_u(Q_r^\Phi)
```

is the scale-critical gradient/dissipation term,

```math
P(Q_r^\Phi)
```

is the pressure or pressure-oscillation term, and

```math
G_\Phi(Q_r^\Phi)
```

records same-fluid geometric distortion and normalization.

## Component tests under `OriginalSmoothData + Pack.TTU`

### Transport distortion

`Pack.TTU` supplies

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

Thus moving same-fluid cylinders are uniformly comparable to CKN cylinders. The geometric component `G_\Phi` has the required comparability. This component is controlled.

### Velocity energy term

Original data supplies

```math
u\in L_t^\infty L_x^2.
```

This controls the global energy size. It gives compact-time continuity of `E_u` on `[t_0,T_0]` for every `T_0<T_*`. It does not give a terminal label-time-scale modulus for `E_u` as `t\uparrow T_*` and `r\downarrow0` uniformly over active labels.

A moving packet can carry the scale-critical velocity energy through fresh labels and shrinking scales while preserving the global energy ledger.

### Gradient/dissipation term

Original data supplies

```math
\nabla u\in L^2_{t,x}.
```

This gives spacetime integrability. It does not give a pointwise-in-time, label-scale modulus for

```math
D_u(Q_r^\Phi(a,t)).
```

The same moving-packet obstruction applies: gradient concentration can move through labels and scales while preserving the global `L^2_{t,x}` ledger.

### Pressure term

Use the local pressure split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The harmonic tail is controlled by energy. The local term requires a product-source carrier:

```math
\nabla^k(\chi u\otimes u)
```

in a local Hölder or Sobolev class, depending on the SCF pressure norm. That carrier is exactly a local regularity / velocity-gradient supplier. It is unavailable from `OriginalSmoothData+Pack.TTU` alone on the terminal tail.

Thus the pressure oscillation modulus is blocked by the same missing analytic regularity as the velocity tower.

## Exact blocker

The controlled component is:

```math
G_\Phi.
```

The blocking components are:

```math
D_u(Q_r^\Phi),
\qquad
P(Q_r^\Phi),
```

and, through moving scale/label concentration, the terminal modulus for

```math
E_u(Q_r^\Phi).
```

The concise obstruction is:

```math
OriginalSmoothData+Pack.TTU
\not\Rightarrow
\text{terminal label-time-scale analytic modulus for }SCF_{base}.
```

## BKM conditional side route

Assume

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty.
```

Then BKM gives terminal high-Sobolev bounds:

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
```

for all finite route depths. These bounds give uniform velocity, gradient, pressure, and label-time-scale moduli on same-fluid cylinders. Therefore

```math
BKM
\Longrightarrow
SCFBase.Modulus.
```

Consequently,

```math
BKM
\Longrightarrow
SCFBad.Persistence.Modulus
\Longrightarrow
TowerBound.Upstream
\Longrightarrow
GoodScale.TTU.
```

This is a conditional continuation route, not an original-data discharge.

## GoodScale conditional closure

If `TowerBound.Upstream` is supplied, then the already installed typing upgrade gives

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown.
```

Hence

```math
\neg tower\text{-}blown
+
(SCF\text{-}bad\Rightarrow tower\text{-}blown)
\Longrightarrow
GoodScale.TTU.
```

## Verdict

`SCFBase.Modulus` remains open from `OriginalSmoothData+Pack.TTU`. The exact blocker is terminal analytic variation of the velocity-gradient and pressure components of `SCF_base`; pack control supplies geometry only.
