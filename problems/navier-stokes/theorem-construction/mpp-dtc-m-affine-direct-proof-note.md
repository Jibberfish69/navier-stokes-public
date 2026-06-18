# MPP DTC.M-Affine Direct Proof Note

## Status

Theorem-facing proof packet.

Role: close the retained-window `DTC.M-Affine_{\mathfrak p}` burden on the
installed `ACT.KX` route, stopping at `DTC.A_{\mathfrak p}` across the finite
required parameter set.

This note does not enter `DTC-to-TowerBound`, `End_NS`, `DTC.Read`, or the
averaged endpoint route.

## Route Boundary

The installed order is retained:

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-}Press,
```

```math
ACT.X\text{-}Cut+ACT.X\text{-}Press+ACT.X\text{-}MidRaw+ACT.X\text{-}TopVisc
\Longrightarrow
ACT.KX,
```

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A.
\tag{DMA.0}
```

The pressure-cell and center-core lines are read in this order:

```math
ACT.KX
\Longrightarrow
ACT.X\text{-}Press_{cell}
\Longrightarrow
ACT.Kcore
\Longrightarrow
ACT.Actr_{\mathrm{core}}.
\tag{DMA.1}
```

They are not pre-`ACT.KX` suppliers. The proof below uses `ACT.KX` exactly in
this installed position.

## `C_G` Compatibility

Let `\mathcal C_G` be the natural rank-`q` tensor action of the affine frame. The
needed compatibility identity is

```math
\frac d{dt}\mathcal C_{G_j(t)}^{-1}
=
-\mathcal C_{G_j(t)}^{-1}\circ\mathcal L_q(A_j(t)),
\qquad
\dot G_j=A_jG_j.
\tag{DMA.2}
```

This is installed by the affine-frame replay in `LCI.B2g5n`: differentiating
`\mathcal C_{G_j}^{-1}U_q(c_j,t)` cancels the endpoint
`\mathcal L_q(A_j)U_q` action and leaves only the transformed forcing and the
middle block with endpoints removed. The companion `LCI.B2g5p` identifies
`G_j` with the center deformation frame and gives bounded conversion under the
pack gauge. Thus the structural `DTC.AFF-L1a` gate is closed for this route.

Consequently the affine local equation has the form

```math
\partial_tR_{q,j}
-\nu\,\operatorname{div}_y(A_j^{aff}\nabla_yR_{q,j})
=
\mathcal M_{q,j}^{aff}
+\mathcal P_{q,j}^{aff}
+\mathcal C_{q,j}^{aff}
+\mathcal F_{q,j}^{aff},
\qquad
A_j^{aff}=G_j^{-1}G_j^{-T},
\tag{DMA.3}
```

with no unpaired coefficient
`|U_1(c_j,t)|\|R_{q,j}\|_{H^2_y}^2`.

## Stage Estimates

For a required parameter `\mathfrak p`, let `\mathcal E_{\le r}^{aff}` be the
affine energy packet through rung `r`, and let `\mathcal D_{\le r}^{aff}` be the
corresponding one-derivative-higher dissipation. The stage statement is

```math
ACT.Stage(r):
\quad
D^+\mathcal E_{\le r}^{aff}
+c_r\nu\mathcal D_{\le r}^{aff}
\le
B_r(t)\mathcal E_{\le r}^{aff}+F_r(t),
\qquad
B_r,F_r\in L^1(I),
\tag{DMA.4}
```

where `B_r,F_r` may use direct ledgers and already proved lower affine rungs,
but not the desired same-stage `L^\infty` bound.

### Base Stages

The stages `r=0,1` have no middle-block source. Their forcing is the retained
native center forcing, the affine first-rung residual equation, the normal-form
pressure energy atom, and the viscous local term. These are exactly the
`NKF.Native`, `ACT.X-Press_energy`, `ACT.X-Cut`, and `ACT.X-TopVisc` atoms fed
into `ACT.KX`. The only nonlinear non-`L^1` residue is

```math
(C_{cut}+C_{press})(X_{\mathrm{exc}})^{1/2}N,
\tag{DMA.5}
```

This term is controlled only by the `ACT.KX` first-exit margin. Therefore
`ACT.Stage(0)` and `ACT.Stage(1)` hold on each retained scheduler interval with
`B_0,F_0,B_1,F_1\in L^1` after the margin below is enforced.

The exact first-exit condition is

```math
(C_{cut}+C_{press})(X_{\mathrm{exc}})^{1/2}\le \frac{c_\nu}{2},
\qquad
X_{\mathrm{exc}}\le 4\eta_X,
\qquad
\eta_X=\left(\frac{c_\nu}{4(C_{cut}+C_{press})}\right)^2.
```

Thus `(DMA.5)` is not a free scheduler payment; it is spendable only while the
retained interval remains below the `ACT.KX` barrier.

### Middle Block

For `r\ge2`, the affine middle block is triangular:

```math
\mathcal M_{r,j}^{aff}
=
\sum_{\ell=2}^{r-1}
\mathcal B_{r,\ell}
\left(
\widetilde U_{\ell,j}+R_{\ell,j},
\widetilde U_{r+1-\ell,j}+R_{r+1-\ell,j}
\right)
-\text{center-mode part}.
\tag{DMA.6}
```

There is no same-rung product `R_{r,j}R_{r,j}`. By `ACT.Stage(r-1)`, every
factor in `(DMA.6)` is either lower-rung bounded data or carries at most one
same-rung derivative. The same-rung derivative terms are spent only through
Young's inequality with a displayed margin: for each such product
`ab`, choose the local parameter so that
`ab <= eps_{r,\ell}\nu\mathcal D_r^{aff}+C_{r,\ell,eps} a^2`, with
`\sum_\ell eps_{r,\ell}\le 1/8`. Local finite-depth product estimates then give

```math
\left|
\sum_j\langle R_{r,j},\mathcal M_{r,j}^{aff}\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_r^{aff}
+B_{mid,r}(t)\mathcal E_r^{aff}
+F_{mid,r}(t),
\qquad
B_{mid,r},F_{mid,r}\in L^1(I).
\tag{DMA.7}
```

### Pressure And Top-Forcing

Use the installed normal-form pressure split on each affine ball:

```math
p=p_j^{loc}+h_j,\qquad
\pi_j^{loc}=p_j^{loc}-p_j^{aff},
\tag{DMA.8}
```

where `p_j^{aff}` matches the affine and affine-linear center pressure
functionals. Thus the residual local pressure cell is quadratic in the affine
excess plus projected annular and harmonic/far-tail terms:

```math
\Lambda_{r,j}\pi_j^{loc}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b(\eta_jw_{j,a}w_{j,b})
+\Lambda_{r,j}\Pi_j^{ann}.
\tag{DMA.9}
```

Fixed-ball Calderon-Zygmund on the local term gives the same-rung contribution.
The derivative factors are controlled by Young inequalities whose parameter
sum is included in the displayed `\varepsilon\nu\mathcal D_r^{aff}` margin;
lower-rung factors are external by `ACT.Stage(r-1)`. The annular part is
controlled by the projected annular ledger, and the harmonic part is controlled
by the energy far-tail. Therefore

```math
|\mathcal T_{press,r}^{aff}|
\le
\varepsilon\nu\mathcal D_r^{aff}
+B_{press,r}(t)\mathcal E_r^{aff}
+F_{press,r}(t),
\qquad
B_{press,r},F_{press,r}\in L^1(I).
\tag{DMA.10}
```

The top-viscous center contribution is not a pre-pressure amplitude ledger. It
is read from the included buffer rungs:

```math
K_{\mathrm{visc},top}^{ctr}
=
\nu\sum_j\left(|U_{m+1}(c_j)|+|U_{m+2}(c_j)|\right),
\tag{DMA.11}
```

which are present in `Y_read=A_{\mathrm{core}}^{ctr}+A_{\mathrm{buf}}^{ctr}
+X_{\mathrm{exc}}` after `ACT.KX`.

### Moving Cutoff And Frame Terms

The affine coordinate velocity is

```math
D_ty
=
G_j^{-1}\left(u(x,t)-u(c_j,t)-A_j(t)(x-c_j(t))\right).
\tag{DMA.12}
```

Hence the cutoff sees the affine defect, not the full center amplitude. In the
base stages, its non-`L^1` piece is exactly the `C_{cut}X_{\mathrm{exc}}^{1/2}N`
term controlled by the `ACT.KX` first-exit condition above. At higher stages,
the first-rung affine defect is a lower-stage controlled coefficient, and the
same-rung derivative terms are again spent by Young parameters whose total
dissipative leakage is chosen below the reserved viscous margin. Thus

```math
|\mathcal T_{cut,r}^{aff}|+|\mathcal T_{frame,r}^{aff}|
\le
\varepsilon\nu\mathcal D_r^{aff}
+B_{cut,r}(t)\mathcal E_r^{aff}
+F_{cut,r}(t),
\qquad
B_{cut,r},F_{cut,r}\in L^1(I).
\tag{DMA.13}
```

Combining `(DMA.7)`, `(DMA.10)`, `(DMA.13)`, and the viscous coercivity of
`A_j^{aff}` gives `(DMA.4)`. Gronwall gives `ACT.Stage(r)`. Since the required
depth is finite,

```math
ACT.Stage(0),\ldots,ACT.Stage(m+2)
\Longrightarrow
ACT.E2.
\tag{DMA.14}
```

## `DTC.MA-Energy` Readouts

By `(DMA.14)` and the installed `ACT.KX` scheduler,

```math
\mathcal E_{\mathfrak p}^{aff}\in L^\infty(I),
\qquad
\mathcal D_{\mathfrak p}^{aff}\in L^1(I),
\tag{DMA.15}
```

on every retained scheduler interval, and summing the finite retained partition
preserves the bounds.

Local Morrey applied to the finite affine packet gives

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{DMA.16}
```

The affine first-rung defect is controlled by the affine packet, the zero-rung
center ledger, the pressure far-tail, and the local pressure/viscous readout:

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\le
C_{\mathfrak p}
\left(
1+\mathcal E_{\mathfrak p}^{aff}(t)
+\mathcal A_{\mathrm{core}}^{ctr}(t)^2
+\mathcal T_{1,\rho,\psi}^{press,far}(t)
\right),
\tag{DMA.17}
```

so `\mathfrak D_1^{aff}\in L^1(I)`. Finally,

```math
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
=
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}
+\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}
\in L^1(I),
\tag{DMA.18}
```

because the pressure part is `ACT.X-Press_cell` after `ACT.KX`, and the
top-viscous part is read from the included `m+1,m+2` buffer rungs.

Thus the exact coefficient subledger is closed:

```math
\boxed{
\mathfrak H^{osc,\alpha}\in L^2(I)
\quad\wedge\quad
\mathfrak D_1^{aff}\in L^1(I)
\quad\wedge\quad
\mathfrak F^{ctr,res}\in L^1(I).
}
\tag{DMA.19}
```

This is `ACT.A`.

## `DTC.M-Affine_{\mathfrak p}` And `DTC.A_{\mathfrak p}`

The affine energy identity therefore has direct pre-`DTC.A` coefficients:

```math
\frac d{dt}\mathcal E_{\mathfrak p}^{aff}
+c_\nu\mathcal D_{\mathfrak p}^{aff}
\le
B_{\mathfrak p}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}
+F_{\mathfrak p}^{aff}(t),
\qquad
B_{\mathfrak p}^{aff},F_{\mathfrak p}^{aff}\in L^1(I),
\tag{DMA.20}
```

without spending `EOC.A`, `AFD.A`, `RCF.A`, `LCI.A`, `CSP.A`, `OFP.A`, `Field`,
or any endpoint conclusion. This proves `DTC.M-Affine_{\mathfrak p}`.

Gronwall gives the affine transported-center multiplier packet:

```math
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{DMA.21}
```

Combining `DTC.PRE_{\mathfrak p}` with the formal moving-center differential
inequality `DTC.LINEAR_{\mathfrak p}` gives

```math
DTC.A_{\mathfrak p}.
\tag{DMA.22}
```

Since the required parameter set is finite, the same argument applies to every
`\mathfrak p\in\mathscr P_{\rm req}`:

```math
\boxed{
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}.
}
\tag{DMA.23}
```

This is the stopping point of the proof packet.
