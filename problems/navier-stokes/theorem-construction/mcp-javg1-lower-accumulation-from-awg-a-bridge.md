# JAVG.1 lower accumulation from `AWG.A`

## Status

Conditional bridge theorem.

This note closes the lower side of the shared-charge `Jump_avg` route under the active-window gain source theorem:

```math
AWG.A \Longrightarrow JAVG.1.
```

Here `JAVG.1` means positive terminal lower accumulation for the same analytic charge used by the upper carrier:

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Statement

Assume a terminal same-fluid `Jump_avg` schedule admits a bounded-overlap extracted family

```math
\mathcal Q=\{Q_{R_\ell}^{\Phi}\}_{\ell\ge1},
\qquad t_\ell\uparrow T_*.
```

Assume `AWG.A` on this family. Then there are infinitely many terminal windows in a separated or bounded-overlap subfamily such that

```math
SCF^{\nu}_{norm}(Q_{R_\ell}^{\Phi})\ge c_m>0.
```

Equivalently, after returning to the selected normalization,

```math
\nu_{SCF}(Q_{R_\ell}^{\Phi})
\ge c_m\,\mathrm{scale}(R_\ell)
```

on infinitely many terminal windows. This is the required lower-production side for the same charge controlled by the upper-carrier estimate.

## Proof

On each terminal window define the base packet decomposition by

```math
SCF_{base}(Q_R^\Phi)
:=
E_R^{aff}+Z_R+G_R^\Phi,
```

where

```math
Z_R=SCF_{norm}^{\nu}(Q_R^\Phi)
```

is the normalized `\nu_{SCF}` contribution, and `G_R^\Phi` is the geometric pack term.

On retained same-fluid pack packets, `G_R^\Phi` is already controlled. The affine Poincare component selection gives

```math
E_R^{aff}\le C(A_R^{aff}D_R)^{3/4}.
```

Hence, for the chosen `\varepsilon_m`, there are constants `c_m,a_m>0` such that every terminal `SCF_base` threshold window satisfies the dichotomy

```math
Z_R\ge c_m
\quad\text{or}\quad
A_R^{aff}\ge a_m.
\tag{1}
```

`Jump_avg` supplies infinitely many terminal threshold windows after bounded-overlap extraction:

```math
SCF_{base}(Q_{R_\ell}^\Phi)>\varepsilon_m.
```

Assume the analytic alternative in (1) occurs only finitely many times. Then, after discarding finitely many windows, every remaining threshold window has

```math
A_{R_\ell}^{aff}\ge a_m.
```

This forces

```math
\sum_\ell A_{R_\ell}^{aff}=\infty
```

on the remaining infinite separated terminal schedule.

The lower reserve part of `AWG.A` gives a finite active-window bound for the same family:

```math
\sum_\ell A_{R_\ell}^{aff}
\le C_{AWG}<\infty.
```

This contradiction proves that the analytic alternative occurs infinitely many times:

```math
Z_{R_\ell}=SCF_{norm}^{\nu}(Q_{R_\ell}^\Phi)\n\ge c_m
```

along a terminal separated or bounded-overlap subfamily.

Thus `Jump_avg` plus `AWG.A` produces positive terminal lower accumulation for `\nu_{SCF}`.

## Output

```math
\boxed{
AWG.A+Jump_{avg}
\Longrightarrow
JAVG.1.
}
```

## Boundary

The unconditional source theorem remains:

```math
OriginalSmoothData\Longrightarrow AWG.A.
```

Once `AWG.A` is installed, the lower side `JAVG.1` uses the same charge as the finite upper carrier, so the charge-mismatch obstruction is removed.
