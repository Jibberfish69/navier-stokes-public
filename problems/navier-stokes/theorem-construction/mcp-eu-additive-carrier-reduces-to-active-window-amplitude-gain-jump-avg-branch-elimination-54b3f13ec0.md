# E_u additive carrier reduces to active-window amplitude gain

## Target

Construct an additive `E_u` carrier with bounded-overlap upper control for the `Jumpavg` no-escape route.

## Test

Raw finite carriers can control unweighted sums over bounded-overlap windows.
This is the mechanism behind the installed `nu_SCF` upper estimate.

The branch contradiction requires more: a terminal scale-normalized upper
estimate compatible with shrinking active windows.  For a separated terminal
family

```math
Q_k
:=
B_{r_k}(x_k)\times I_k,
\qquad
I_k=(t_k-r_k^2/\nu,t_k),
```

the required estimate is

```math
\sum_k r_k^{-\alpha} C_{\mathrm{final}}(Q_k)
\le
C(E_0,\mathcal S),
\qquad \alpha>0,
```

where `C_{\mathrm{final}}(Q_k)` is the same final charge used in the Jumpavg
no-escape contradiction and `\mathcal S` denotes the already-admitted source
records.  Equivalently, for the energy component itself one would need a
scale-normalized additive bound such as

```math
\sum_k \mathcal E_u^{sc}(Q_k)\le C(E_0,\mathcal S),
\qquad
\mathcal E_u^{sc}(Q_k)
:=
r_k^{-1}\sup_{t\in I_k}
\int_{B_{r_k}(x_k)}|u(x,t)|^2\,dx,
```

or an equivalent scale-normalized additive bound on the same separated terminal
window family.

For `E_u`, no additive carrier with this scale-normalized bounded-overlap
estimate is installed.

## Obstruction

The active-square / Carleson surfaces identify the exact missing ingredient. Raw finite mass does not provide the missing scale factor. To gain it, one needs an active-window amplitude gain or a heat-scale square-source theorem. Finite energy permits concentration on shrinking windows, so the desired estimate cannot be obtained from the global energy ledger alone.

Adding `E_u` to the charge proves only the set-theoretic lower inclusion:
if a selected `SCF_base` threshold packet is carried by the velocity-energy
component, then the enlarged packet functional counts that component.  It does
not prove the upper summability required by the branch contradiction.  The
missing estimate remains the same-scale terminal bound

```math
\sum_k \mathcal E_u^{sc}(Q_k)\le C(E_0,\mathcal S)
```

on the separated terminal window family, or an equivalent conversion of each
`E_u` threshold into `D_u/P` mass on that same family.

## Verdict

The additive `E_u` carrier theorem remains open. It reduces to:

```math
active-window amplitude gain
```

or an equivalent heat-scale square-source estimate.

## Boundary

This note records a failed construction of the additive E_u carrier and narrows the replacement theorem needed for the original-data branch.
