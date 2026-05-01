# SCFBase Gradient Concentration Modulus Test

## Status

Direct gradient-modulus discharge failed; moving concentration is the obstruction.

## Target

For the gradient component

```math
D_u(Q_r^\Phi(a,t)),
```

the desired estimate is a terminal label-time-scale modulus:

```math
|D_u(Q_r^\Phi(a,t))-D_u(Q_{r'}^\Phi(a',t'))|
\le
\Omega(d(a,a')+|t-t'|+|\log r-\log r'|).
```

## Available control

The energy inequality gives

```math
\nabla u\in L^2_{t,x}([t_0,T_*)\times\mathbb T^3).
```

`Pack.TTU` gives bounded same-fluid distortion, so transported cylinders are uniformly comparable with ordinary parabolic cylinders.

Therefore `D_u` is geometrically well-defined on pack-stabilized cylinders, and total dissipation is finite.

## Test result

The target modulus asks for regular variation of local scale-critical dissipation as label, time, and radius vary. The spacetime `L^2` ledger controls total dissipation, while allowing concentration to move through fresh labels and smaller cylinders near the terminal time.

Pack geometry controls cylinder shape and transport. It supplies no analytic distribution control for `|\nabla u|^2` inside those cylinders.

The local energy inequality supplies local balances for fixed cutoffs and compact-time windows. It supplies no terminal uniform variation estimate for

```math
(a,t,r)\mapsto D_u(Q_r^\Phi(a,t)).
```

## Obstruction

The blocking component is the terminal distribution of the dissipation measure across labels and scales.

The correct replacement target is

```math
SCFBase.ConcentrationCompactness:
\text{failure of terminal }D_u/P\text{ modulus}
\Longrightarrow
\text{finite concentration defect entering }tower\text{-}blown\vee Jump_{avg}.
```

## Conditional comparison

Under a BKM-type high-regularity ledger, pointwise bounds and continuity for `\nabla u` give the desired modulus for `D_u`. This remains a conditional comparison route.