# AACT.KX / AACT.Global.noJump restart-scheduler closure — compact continuation pointer

## Target

Complete the no-`Jump_avg` averaged globalization repair:

```math
\neg Jump_{avg}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow
AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}.
```

## Closure read

The theorem-facing closure is already installed in the MCP surfaces.

The restart seed obstruction is resolved by reanchoring. At each scheduler restart, the proof chooses a fresh same-fluid SCF-good cylinder from the finite no-`Jump_avg` terminal cover and shrinks by the `ATD_m^\varepsilon` factor. The seed

```math
X_{\alpha,j,p}(\tau_\alpha)\le\eta_X
```

is produced in the fresh restart frame rather than inherited from the previous affine frame.

The finite cover and finite route parameter set give common majorants

```math
B_*\in L^1,\qquad F_*\in L^1.
```

Absolute continuity gives scheduler cells satisfying

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le2\eta_X.
```

On each cell, local `AACT.KX` and first-exit closure yield

```math
X_{\alpha,j,p}\in L^\infty,
\qquad
N_{\alpha,j,p}\in L^1,
\qquad
\mathcal K_{\le m,\alpha,j,p}^{avg}\in L^1.
```

Finite-overlap summation gives

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1,
```

hence

```math
\boxed{DTC.A_{avg}.}
```

## Verdict

Claimed status: discharged for the no-`Jump_avg` averaged globalization cell.

## Boundary

This closure supplies the good-side averaged receiver spine. It does not eliminate the complementary `Jump_avg` branch. The branch-native no-escape theorem still needs same-charge lower production and scale-normalized upper control.