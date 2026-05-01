# MPP AACT.Global.noJump Restart-Scheduler Closure Note

## Status

Theorem-facing discharge of the `AACT.KX / AACT.Global.noJump` globalization
cell on the no-`Jump_avg` branch.

This note does not eliminate `Jump_avg`. It proves that once the terminal tail
is on the no-`Jump_avg` side, the averaged ACT packets globalize to
`DTC.A_avg`.

## Target

```math
\neg Jump_{\mathrm{avg}}
+TGC.A.cover
+ATD_m^\varepsilon
+AACT.KX.local
\Longrightarrow
AACT.Global.noJump
\Longrightarrow
DTC.A_{\mathrm{avg}}.
\tag{AACT.GNJ.0}
```

No step may use `READ.COVER`, `READ.END`, old pointwise `Field`, old pointwise
`DTC.A`, old `CFI.A`, or `End_NS`.

## Local Input

The local averaged ACT term audit is supplied by
`mpp-averaged-act-kx-scale-critical-forcing-packet-note.md`:

```math
D^+X_R+c_\nu N_R
\le
(1+A_R+V_R+P_R)X_R
+
C_\ast
\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R
+
F_R.
\tag{AACT.GNJ.1}
```

On the first-exit interval `X_R\le 4\eta_X`, and under the small averaged
scale-critical packet `SCF_avg^m\le\varepsilon_\ast`, choose
`\eta_X,\varepsilon_\ast` so that

```math
C_\ast
\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)
\le
\frac{c_\nu}{2}.
\tag{AACT.GNJ.2}
```

Then

```math
D^+X_R+\frac{c_\nu}{2}N_R
\le
B_R X_R+F_R,
\qquad
B_R:=1+A_R+V_R+P_R.
\tag{AACT.GNJ.3}
```

## Step 1 — No-Jump Terminal Cover

By `TGC.A.cover`,

```math
\neg Jump_{\mathrm{avg}}(\mathcal T)
\Longrightarrow
\exists\mathcal T'\subset\mathcal T,\quad
\mathcal T'\subset\bigcup_{j=1}^{J}Q_{r_j}^{\Phi}(a_j,t_j),
\tag{AACT.GNJ.4}
```

with

```math
r_j\ge r_*>0,\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
\operatorname{ovlp}\le\Omega<\infty.
\tag{AACT.GNJ.5}
```

After the fixed `ATD_m^\varepsilon` shrink, the cover still has a common lower
scale

```math
\rho_*:=\theta_m r_*/4>0.
\tag{AACT.GNJ.6}
```

## Step 2 — Reanchored Restart Seed

At each scheduler restart time `\tau_\alpha`, reanchor to a fresh same-fluid
SCF-good cylinder in the finite cover and shrink by `\theta_m`. The
`ATD_m^\varepsilon` packet gives the small affine-excess seed in the fresh
restart frame:

```math
X_{\alpha,j,p}(\tau_\alpha)\le\eta_X
\tag{AACT.GNJ.7}
```

for every active cover element `j` and every parameter
`p\in\mathscr P_{req}`. This is the missing restart seed; it is not inherited
from the previous affine frame.

## Step 3 — Common Scheduler

For the finite cover and finite route parameter set, define

```math
B_*(t):=
\sum_{\alpha,j,p}\mathbf 1_{I_{\alpha,j}}(t)B_{\alpha,j,p}(t),
\qquad
F_*(t):=
\sum_{\alpha,j,p}\mathbf 1_{I_{\alpha,j}}(t)F_{\alpha,j,p}(t).
\tag{AACT.GNJ.8}
```

Finite overlap and local `L^1` control give

```math
B_*,F_*\in L^1.
\tag{AACT.GNJ.9}
```

By absolute continuity of `L^1` integrals, choose scheduler cells so that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le
2\eta_X.
\tag{AACT.GNJ.10}
```

Because `B_*` and `F_*` dominate every local `B_{\alpha,j,p}` and
`F_{\alpha,j,p}`, this single partition works simultaneously for all active
cover elements and all required route parameters.

## Step 4 — Local First-Exit Closure

On a scheduler cell, `(AACT.GNJ.3)`, the restart seed `(AACT.GNJ.7)`, and the
scheduler inequality `(AACT.GNJ.10)` imply

```math
X_{\alpha,j,p}(t)
\le
\left(
\eta_X+\int_{I_\alpha}F_{\alpha,j,p}
\right)
\exp\left(\int_{I_\alpha}B_{\alpha,j,p}\right)
\le
2\eta_X.
\tag{AACT.GNJ.11}
```

Thus the first-exit bootstrap closes:

```math
X_{\alpha,j,p}\in L^\infty(I_\alpha),
\qquad
N_{\alpha,j,p}\in L^1(I_\alpha),
\qquad
\mathcal K_{\le m,\alpha,j,p}^{avg}\in L^1(I_\alpha).
\tag{AACT.GNJ.12}
```

## Step 5 — Finite-Cover Propagation

Summing `(AACT.GNJ.12)` over the finite index set `(alpha,j,p)` preserves the
receiver-scale constants because the overlap, lower radius, and route parameter
set are finite. Therefore

```math
X_{\mathrm{avg}}\in L^\infty,
\qquad
N_{\mathrm{avg}}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
\tag{AACT.GNJ.13}
```

The averaged dynamic tower certificate follows:

```math
\boxed{DTC.A_{\mathrm{avg}}.}
\tag{AACT.GNJ.14}
```

## Verdict

The no-`Jump_avg` averaged ACT globalization cell is discharged:

```math
\boxed{
\neg Jump_{\mathrm{avg}}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow
AACT.Global.noJump
\Longrightarrow
DTC.A_{\mathrm{avg}}.
}
\tag{AACT.GNJ.15}
```

The complementary `Jump_avg` branch remains open and must be eliminated without
spending `Field_avg` on that same branch.

