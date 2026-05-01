# TowerCover.TTU Direct Test

## Status

Failed direct theorem attempt.

## Target

```math
TowerCover.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon
```

on a terminal positive-scale same-fluid cover.

## Decomposition

The target has three separate burdens.

### 1. Pack geometry

`Pack.TTU` gives

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This stabilizes same-fluid distortion and prevents packing detachment. It supports finite-cover transport and uniform comparison of moving same-fluid cylinders.

### 2. Local tower gain

`ATD_m^\varepsilon` is available on any CKN-admissible same-fluid cylinder satisfying

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

Thus local regularity is available after an SCF-good cylinder is supplied.

### 3. Full terminal SCF-good cover

`READ.COVER` needs a finite positive-scale cover of the full active terminal approach family:

```math
Q^\Phi([t_0,T_*),A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0,
```

with each cylinder `\varepsilon_m`-SCF-good.

Finite energy gives SCF-good cylinders material-a.e. and finite subcovers on compact subsets of the good region. It does not give full pointwise coverage of every active terminal material point.

The complement is the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

A terminal tail meeting this set is typed as

```math
Jump_{avg}
```

by `CAVG.J`.

## Test Result

`OriginalSmoothData+Pack.TTU` supplies pack-stabilized geometry and a.e. SCF-good coverage. It does not eliminate

```math
\mathcal B_{\varepsilon_m}^{\Phi}
```

on the terminal approach tail.

Therefore it does not currently imply the full `READ.COVER` required for pointwise tower readout.

## Exact Obstruction

The failed piece is strong terminal SCF-good coverage:

```math
SGC.A_{strong}:
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

or equivalently a theorem that every terminal active material point has a positive SCF-good scale.

## Next Target

The next theorem target is

```math
GoodScale.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\forall(a,t)\in Q^\Phi([t_0,T_*),A_\sharp),\ \exists r>0:
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

Once `GoodScale.TTU` is supplied, compactness plus pack-stabilized geometry gives `READ.COVER`, and `ATD_m^\varepsilon` gives the finite-depth local tower packet.

## Verdict

`TowerCover.TTU` remains open. The obstruction is full terminal SCF-good positive-scale coverage, not pack geometry and not the local `ATD_m^\varepsilon` theorem.