# ACT.KX Affine-Normalized Conditional Discharge

Status: conditional receiver-local discharge.

## Target

The item attacked here is the affine-normalized `ACT.KX` estimate:

```math
\frac{d}{dt}\mathcal X^{exc}
+c_\nu\mathcal N
\le
(L_0+C\mathcal A_{core}^{ctr})\mathcal X^{exc}
+C_X(\mathcal X^{exc})^{1/2}\mathcal N
+F_0,
```

with the companion center ledger

```math
\frac{d}{dt}\mathcal A_{core}^{ctr}
\le
\mathcal K_{\le m}^{ctr}
+\mathcal T_{tri}(\mathcal A_{core}^{ctr}),
```

and the center-forcing estimate

```math
\mathcal K_{\le m}^{ctr}
\le
C((\mathcal X^{exc})^{1/2}\mathcal N^{1/2}+\mathcal X^{exc})+F_K.
```

Here `L_0,F_0,F_K in L^1(I)` on each retained scheduler interval.

## Local atoms

### `ACT.X-Press`

`NKF.Native + NKF.Ann + NKF.Quad` yield the pressure contribution

```math
|\mathcal T_{press}|
\le
\varepsilon\mathcal N
+C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+L_{press}\mathcal X^{exc}
+F_{press}.
```

The native affine pressure cell removes the affine and affine-linear center modes. The remaining quadratic pressure cell is controlled by the affine excess and dissipation. The harmonic far tail is controlled by the energy ledger.

### `ACT.X-Cut`

In affine coordinates,

```math
D_ty=G_j^{-1}(u(x,t)-u(c_j,t)-A_j(x-c_j)).
```

The moving cutoff therefore sees affine defect. This gives

```math
|\mathcal T_{cut}|
\le
C_{cut}(\mathcal X^{exc})^{1/2}\mathcal N
+L_{cut}\mathcal X^{exc}+F_{cut}.
```

### `ACT.X-MidRaw`

The affine-frame cancellation removes the endpoint `U_1U_q` action. The middle block is finite-depth triangular. The zero-mode linear terms are carried by `\mathcal A_{core}^{ctr}`:

```math
|\mathcal T_{mid}|
\le
C\mathcal A_{core}^{ctr}\mathcal X^{exc}
+C_{mid}(\mathcal X^{exc})^{1/2}\mathcal N
+\varepsilon\mathcal N
+L_{mid}\mathcal X^{exc}+F_{mid}.
```

### `ACT.X-TopVisc`

The top viscous term supplies the dissipative sign. The commutators obey

```math
|\mathrm{Com}_{visc}|
\le
\varepsilon\mathcal N+L_{top}\mathcal X^{exc}+F_{top}.
```

The top buffer modes live in the full readout packet

```math
\mathcal Y^{read}
=
\mathcal A_{core}^{ctr}+\mathcal A_{buf}^{ctr}+\mathcal X^{exc}.
```

They are readout/buffer data, while only `\mathcal X^{exc}` is the small variable in the coefficient-margin term.

## Scheduler

Set

```math
\eta_X=\left(\frac{c_\nu}{4C_X}\right)^2.
```

`ACT.X-Scale` supplies restart seeds

```math
\mathcal X^{exc}(s_a;R_a)\le\eta_X.
```

On a retained scheduler interval, before first exit from `\mathcal X^{exc}\le4\eta_X`,

```math
C_X(\mathcal X^{exc})^{1/2}\mathcal N
\le
\frac{c_\nu}{2}\mathcal N.
```

Thus

```math
\frac{d}{dt}\mathcal X^{exc}
+\frac{c_\nu}{2}\mathcal N
\le
(L_0+C\mathcal A_{core}^{ctr})\mathcal X^{exc}+F_0.
```

The center system closes by finite-depth triangular induction together with

```math
(\mathcal X^{exc})^{1/2}\mathcal N^{1/2}
\le
\delta\mathcal N+C_\delta\mathcal X^{exc}.
```

The scheduler budget keeps the Gronwall factor and forcing integrals below the fixed absorption threshold. The first-exit argument yields

```math
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I),
\qquad
\mathcal A_{core}^{ctr}\in L^\infty(I).
```

This is `ACT.KX` on the retained receiver interval.

## Readout consequence

`RWS.C_scale` transfers the small restarted packets to fixed-radius readout through the finite same-fluid cover. Then

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

## Boundary

This discharges item 2 conditionally on the retained-window hypotheses. It uses `RSCB.NKF`, bounded pack gauge, retained restart seeds, and the finite scheduler budget.

The terminal production theorem remains:

```math
TTU:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained Pack/Part/Field/tower data}.
```

That theorem is the next global step after the receiver-local `ACT.KX` package.
