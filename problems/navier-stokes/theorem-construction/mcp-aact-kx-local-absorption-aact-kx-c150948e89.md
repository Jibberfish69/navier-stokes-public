# AACT.KX local absorption — queue discharge note

## Target

Discharge the local `aact-kx-local-absorption` item from the independent audit.

## Repaired local inequality

On one shrunken same-fluid moving cylinder `Q_R^Phi`, after `SCF_avg^m` and `ATD_m^epsilon`, use the direct-variable local ledger

```math
D^+X_R+c_1N_R
\le
\bar B_R(t)X_R+C_0X_R^{1/2}N_R+\bar F_R(t),
```

with `c_1>0`, `C_0<infty`, and

```math
\bar B_R,\bar F_R\in L^1(I).
```

All lower-order affine, frame, cutoff, pressure-response, viscous-commutator, harmonic/far-pressure, source, and finite-frame terms are placed into `\bar B_RX_R+\bar F_R`. The only coefficient left multiplying `N_R` is `C_0X_R^{1/2}`.

## Scheduler and bootstrap constants

Choose

```math
\eta_X\le {c_1^2\over 64C_0^2}.
```

Assume a restart time `s in I` satisfies

```math
X_R(s)\le \eta_X,
```

and the scheduler cell satisfies

```math
\exp\left(\int_I\bar B_R\right)
\left(X_R(s)+\int_I\bar F_R\right)
\le 2\eta_X.
```

## First-exit proof

Let `J` be the maximal interval from `s` on which

```math
X_R(t)\le 4\eta_X.
```

On `J`,

```math
C_0X_R(t)^{1/2}
\le 2C_0\eta_X^{1/2}
\le {c_1\over4}.
```

Hence

```math
D^+X_R+{3c_1\over4}N_R
\le
\bar B_R(t)X_R+\bar F_R(t).
```

Gronwall gives

```math
\sup_JX_R+{3c_1\over4}\int_JN_R
\le
\exp\left(\int_J\bar B_R\right)
\left(X_R(s)+\int_J\bar F_R\right)
\le 2\eta_X.
```

This improves the first-exit bound and extends the estimate across the scheduler cell. Therefore

```math
X_R\in L^\infty(I),
\qquad
N_R\in L^1(I).
```

The averaged tower ledger then yields

```math
K_{\le m}^{avg,R}\in L^1(I).
```

## Verdict

`aact-kx-local-absorption` is discharged at the local scheduler-cell level. The repaired proof uses pointwise bootstrap absorption for `C_0X_R^{1/2}N_R` and handles all `V_R` and `P_R` effects through integrable coefficient/source ledgers.

## Remaining queue

1. `Jump_avg` branch elimination.
2. `PCTP.hard` terminal-tail production after child discharge assembly.

The pressure/source supplier row already has the strengthened-route write `mcp-pressure-source-supplier-line-by-line-aact-kx-5ccc977444.md`.