# AACT.KX / AACT.Global.noJump restart-seed scheduler repair to `DTC.A_avg`

## Status

Theorem-note repair for the averaged ACT globalization step on the no-`Jump_avg` branch.

Target:

```math
AACT.KX + AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}
```

with the explicit repair items:

1. restart seed;
2. scheduler cover;
3. finite-cover propagation to `DTC.A_avg`.

This note uses the MCP-visible sources listed in the write metadata. It records a local theorem/audit artifact for the no-jump averaged branch. Release or Clay-level promotion certification is outside this artifact.

## Source audit

The prior obstruction notes isolated the precise defect:

```math
X_R(s_k)\le\eta_X
```

was needed at each scheduler restart. Carrying forward the previous local envelope gives only bounded `X_R`; the local absorption argument needs a fresh small averaged affine-excess seed in the active restart frame.

The repair changes the restart mechanism. A scheduler restart does not inherit the previous affine-excess frame. It reanchors to a fresh same-fluid SCF-good cylinder supplied by `TGC.A.cover`, shrinks by the `ATD_m^\varepsilon` factor, and uses `ATD_m^\varepsilon` to produce the small seed in that fresh frame.

The old obstruction therefore becomes a reanchoring requirement:

```math
\text{restart point in no-}Jump_{avg}\text{ terminal tail}
\Longrightarrow
\exists Q_{\rho}^{\Phi}\text{ SCF-good with }\rho\ge\rho_*
\Longrightarrow
X_{\rho}(s)\le\eta_X.
```

## Theorem

Let `\mathcal T` be a bounded-distortion same-fluid terminal tail satisfying

```math
\neg Jump_{avg}(\mathcal T).
```

Assume the installed `TGC.A.cover` conclusion: after replacing `\mathcal T` by a terminal subtail, every retained material-time point has a same-fluid SCF-good radius bounded below by `r_*>0`, and the retained tail has a finite SCF-good cover with finite overlap.

Let `\mathscr P_{req}` be the finite route parameter set. For each selected shrunken moving cylinder and each `p\in\mathscr P_{req}`, local `AACT.KX` gives

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p},
\tag{1}
```

with

```math
B_{j,p},F_{j,p}\in L^1.
```

Then there is a finite reanchored scheduler cover of a terminal subtail such that

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

Consequently,

```math
\boxed{DTC.A_{avg}.}
```

## Step 1. Finite interior scheduler cover

By `TGC.A.cover`, after terminal subtail replacement there is a finite same-fluid SCF-good cover

```math
\mathcal T'
\subset
\bigcup_{j=1}^{J}Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
r_j\ge r_*>0,
\qquad
\operatorname{ovlp}\le\Omega.
```

Shrink and color the cover once. The shrunken cover still has a common lower radius

```math
\rho_* >0
```

and finite overlap

```math
\Omega_*<\infty.
```

This interior refinement gives room for scheduler restarts. Each restart material-time point lies inside a shrunken SCF-good cylinder whose radius is at least `\rho_*`.

## Step 2. Reanchored restart seed

At a restart time `\tau_\alpha`, for each active cover element and route parameter, choose the fresh same-fluid SCF-good cylinder centered at the restart material-time point and shrink it by the `ATD_m^\varepsilon` factor `\theta_m`.

The local completion theorem gives

```math
SCF_{base}(Q_{\rho}^{\Phi})\le\varepsilon_m
\Longrightarrow
ATD_m(Q_{\theta_m\rho}^{\Phi}).
```

In particular, the averaged affine residual packet satisfies

```math
X_{\alpha,j,p}(\tau_\alpha)\le\eta_X.
\tag{2}
```

This is the restart seed. The seed is produced in the newly chosen restart frame. The previous scheduler cell contributes only completed local packets to the finite-overlap sum.

## Step 3. Common scheduler majorants

For the finite reanchored cover and finite `\mathscr P_{req}`, define

```math
B_*(t):=\sum_{\alpha,j,p}\mathbf 1_{I_{\alpha,j}}(t)B_{\alpha,j,p}(t),
```

and

```math
F_*(t):=\sum_{\alpha,j,p}\mathbf 1_{I_{\alpha,j}}(t)F_{\alpha,j,p}(t).
```

Finiteness and finite overlap give

```math
B_*,F_*\in L^1.
```

Choose `\eta_X` so that

```math
C_X(2\eta_X)^{1/2}\le c/2.
\tag{3}
```

By absolute continuity of the `L^1` integrals, choose the scheduler cells so that each cell satisfies

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le 2\eta_X.
\tag{4}
```

The finite scheduler uses the common pair `B_*,F_*`, so the partition works simultaneously for every active cover element and every route parameter.

## Step 4. Local first-exit closure on each scheduler cell

On the first-exit interval where

```math
X_{\alpha,j,p}\le2\eta_X,
```

(3) absorbs the nonlinear dissipation term in (1), yielding

```math
D^+X_{\alpha,j,p}+\frac c2N_{\alpha,j,p}
\le
B_{\alpha,j,p}X_{\alpha,j,p}+F_{\alpha,j,p}.
\tag{5}
```

Using the restart seed (2), Gronwall, and the scheduler condition (4),

```math
X_{\alpha,j,p}(t)
\le
\left(\eta_X+\int_{I_\alpha}F_{\alpha,j,p}\right)
\exp\left(\int_{I_\alpha}B_{\alpha,j,p}\right)
\le2\eta_X.
```

Thus the first-exit bootstrap closes on the cell:

```math
X_{\alpha,j,p}\in L^\infty(I_\alpha),
\qquad
\|X_{\alpha,j,p}\|_{L^\infty(I_\alpha)}\le2\eta_X.
```

Integrating (5) gives

```math
N_{\alpha,j,p}\in L^1(I_\alpha).
```

The local tower ledger gives

```math
\mathcal K_{\le m,\alpha,j,p}^{avg}\in L^1(I_\alpha).
```

## Step 5. Finite-cover propagation to `DTC.A_avg`

Sum the local scheduler packets over the finite index set `(\alpha,j,p)`. The finite overlap `\Omega_*`, the lower scale `\rho_*`, and the finite route parameter set preserve the receiver-scale constants. Therefore

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

The affine pressure, viscous, cutoff, source, and far-pressure ledgers are already included in the local `F_{\alpha,j,p}` and `\mathcal K_{\le m,\alpha,j,p}^{avg}` packets. Finite summation preserves their `L^1` bounds.

This is exactly the averaged dynamic tower certificate:

```math
DTC.A_{avg}.
```

## Dependency order

Upstream dependencies used here:

```math
SGC.A_{a.e.},
\quad
TGC.A.cover/class,
\quad
ATD_m^\varepsilon,
\quad
AACT.KX.local,
\quad
\text{finite overlap},
\quad
\text{absolute continuity of }L^1\text{ budgets}.
```

Upstream dependencies excluded from this proof:

```math
READ.COVER,
\quad
DTC.Read,
\quad
Field.Read,
\quad
End_{NS},
\quad
\text{pointwise }DTC.A,
\quad
\text{pointwise Field}.
```

## Repair conclusion

The averaged ACT globalization repair is:

```math
\boxed{
\neg Jump_{avg}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow
AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}.
}
```

The restart seed is supplied by reanchored `ATD_m^\varepsilon` at each scheduler restart. The scheduler cover remains finite by the positive-scale terminal cover and finite partition. The finite-cover propagation gives `DTC.A_avg` by receiver-scale summation.

## Boundary

The complementary `Jump_avg` branch remains a separate downstream target. Full `PCTP.hard` terminal-tail production also requires the support-branch audit and endpoint/readout chain beyond this no-jump averaged globalization step.