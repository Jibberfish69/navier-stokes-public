# SCFBad Concentration-To-Tower Theorem

## Status

Conditional theorem.

## Target

Show that persistent SCF-bad concentration forces the endpoint tower face:

```math
\text{persistent SCF-bad concentration}
\Longrightarrow
tower\text{-}blown.
```

## Inputs

Assume `Pack.TTU`, so same-fluid cylinders are geometrically comparable on the terminal tail.

Assume `SCFBad.Persistence.Modulus`, so a pointwise SCF-bad event persists on a positive label-time-scale neighborhood. Thus there is a terminal sequence of same-fluid cylinders with

```math
SCF_{base}(Q_{r_n}^{\Phi}(a_n,t_n))\ge \varepsilon_m
```

at scales `r_n\downarrow0` and times `t_n\uparrow T_*`, with positive persistence in the label-time-scale variables.

## Contrapositive tower argument

Assume the endpoint tower is bounded:

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

Assume the endpoint depth is high enough to control all velocity and pressure carriers appearing in `SCF_base`. Then the velocity pieces of `SCF_base` are uniformly bounded on the active terminal packet.

For pressure, use the local split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The local source carrier is bounded by the tower hypothesis, and the harmonic tail is bounded by the energy ledger. Hence the pressure component of `SCF_base` is uniformly controlled at small scales.

Since `SCF_base` is scale critical and evaluated on shrinking same-fluid cylinders, bounded local tower/readout implies small-scale decay:

```math
SCF_{base}(Q_r^\Phi(a,t))\to0
\qquad(r\downarrow0)
```

uniformly on the persistent neighborhood.

This contradicts the persistent lower bound

```math
SCF_{base}(Q_{r_n}^{\Phi}(a_n,t_n))\ge \varepsilon_m.
```

Therefore the bounded tower alternative fails:

```math
tower\text{-}blown.
```

## Output

```math
SCFBad.Persistence.Modulus+Pack.TTU
\Longrightarrow
\left[SCF\text{-bad}\Longrightarrow tower\text{-}blown\right].
```

## Boundary

This theorem consumes persistence or an SCFBase modulus. It does not supply `SCFBase.Modulus` from original data. It also does not prove `TowerBound.Upstream`; it gives the contradiction link once an independent tower-bound exclusion is available.