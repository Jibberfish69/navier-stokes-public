# CS.SCF_to_nu component selection — theorem attempt

## Target

Prove the component-selection bridge needed for branch-native `Jump_avg` elimination:

```math
SCF_{base}(Q_r^\Phi)>\varepsilon_m
\Longrightarrow
\nu_{SCF}(Q_r^\Phi)\ge c_* >0
```

after pack/geometric stabilization.

The selected final charge is

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Decomposition

The canonical component split is

```math
SCF_{base}=E_u+D_u+P_{loc}+G_\Phi.
```

Pack stabilization controls `G_Phi`. The selected charge `nu_SCF` sees `D_u` and packet-local pressure `P_loc`. It does not contain the velocity-energy channel `E_u`.

## Direct proof on the analytic branch

If the threshold defect satisfies

```math
D_u(Q_r^\Phi)+P_{loc}(Q_r^\Phi)
\ge c\varepsilon_m,
```

then component selection follows directly:

```math
\nu_{SCF}(Q_r^\Phi)
\ge c_*.
```

This branch is solved.

## Remaining branch

The unsolved branch is

```math
E_u(Q_r^\Phi)
\ge c\varepsilon_m,
\qquad
D_u(Q_r^\Phi)+P_{loc}(Q_r^\Phi)	ext{ small.}
```

The local energy inequality supplies same-fluid local balances, yet it supplies a forward energy inequality rather than a terminal reverse component selector. Global energy bounds also allow moving shrinking terminal energy packets.

## Verdict

Full component selection is open. The precise remaining theorem is one of:

```math
E_u\text{ terminal threshold}
\Longrightarrow
D_u/P_{loc}\text{ terminal mass},
```

or

```math
\nu_{SCF}^{+}=E_u+\nu_{SCF}
\text{ has the needed scale-normalized upper control.}
```

Claimed status: failed for the full bridge; solved on the `D_u+P_loc` analytic subbranch.
