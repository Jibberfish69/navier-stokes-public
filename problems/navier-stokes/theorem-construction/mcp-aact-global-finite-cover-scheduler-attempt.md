# AACT.Global Finite-Cover Scheduler Attempt

## Status

Failed discharge / sharpened obstruction.

This note attempts the frontier-loop item:

```math
AACT.Global:
\qquad
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on a face-free terminal same-fluid approach branch, without using `READ.COVER` upstream.

## What is already local

The local averaged ACT budget is available on each SCF-good moving cylinder. The installed averaged ACT packet gives

```math
SCF_{avg}^m
\Longrightarrow
AACT.KX
```

with outputs

```math
X_R\in L^\infty(I_R),
\qquad
N_R\in L^1(I_R),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I_R).
```

The moving-cylinder gain gives

```math
SCF_{base}(Q_R^\Phi)\le \varepsilon_m
\Longrightarrow
ATD_m(Q_{\theta_m R}^\Phi).
```

Thus the local chain

```math
SCF_{base}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
```

is a valid cylinder-local theorem.

## Compact-good cover step

`SGC.A_{a.e.}` supplies material-a.e. SCF-good cylinders and finite subcovers on compact subsets of the good material region

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi\setminus\mathcal B_{\varepsilon_m}^{\Phi}.
```

The complement is the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

`CAVG.J` gives the face implication

```math
\mathcal B_{\varepsilon_m}^{\Phi}\cap\mathcal T\ne\varnothing
\Longrightarrow
Jump_{avg}(\mathcal T)
```

for a terminal approach tail `\mathcal T`.

Therefore, on a branch with no `Jump_avg`, every point of the terminal tail has at least one positive SCF-good radius. This gives pointwise good-cylinder existence.

## Attempted globalization

To prove `DTC.A_avg`, one wants to cover the terminal same-fluid approach tail by good cylinders, shrink them by `\theta_m`, run `AACT.KX` on each shrunken cylinder, and sum the resulting averaged packets through `RWS.C_scale` to obtain the fixed averaged transported-center package.

For a compact subwindow

```math
[t_0,T_0]\subset [t_0,T_*),
```

this works: compactness plus `SGC.A_a.e` gives finitely many good cylinders, `ATD_m^\varepsilon` gives the finite-depth local packets, and `AACT.KX` gives the averaged budget on each scheduled cylinder. Finite overlap then yields a compact-subwindow version of `DTC.A_avg`.

The terminal step is where the proof fails. The required conclusion is on the whole half-open approach window

```math
[t_0,T_*).
```

The inputs above do not give a finite cover of this half-open terminal window, nor a positive lower bound for the good-cylinder radii. A sequence

```math
(a_n,t_n)\to T_* ,
\qquad
r_n\downarrow0,
\qquad
SCF_{base}(Q_{r_n}^\Phi(a_n,t_n))\le\varepsilon_m
```

is compatible with every point having a positive good radius. Hence it avoids `\mathcal B_{\varepsilon_m}^{\Phi}` pointwise and is not ruled out by `CAVG.J` as currently defined.

This terminal scale-collapse scenario blocks the passage

```math
\text{local compact-good covers}
\Longrightarrow
RWS.C_{scale}
\Longrightarrow
DTC.A_{avg}
```

because `RWS.C_scale` needs a fixed finite cover, or an explicit summable infinite-cover replacement with controlled overlap, parameter set, and scheduler budgets.

## Exact failed implication

The unsupported implication is

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
\text{terminal finite SCF-good same-fluid cover with scheduler bounds}.
```

Equivalently, the missing theorem is one of the following.

### Option A: terminal finite-cover theorem

```math
\neg Jump_{avg}
\Longrightarrow
\exists r_*>0,\ J<\infty
\text{ such that the terminal tail has an SCF-good same-fluid cover }
\{Q_{r_j}^\Phi\}_{j=1}^{J},
\quad r_j\ge r_*.
```

This is strong and close to `READ.COVER`, so it cannot be assumed before `End_NS_avg`.

### Option B: summable infinite-cover scheduler theorem

Replace the finite-cover demand by a Carleson or Vitali scheduler:

```math
\sum_j \mathbf 1_{Q_j}\le C_{ov},
\qquad
\sum_j \int_{I_j}(F_{0,j}+F_{K,j})<\infty,
\qquad
\sum_j \int_{I_j}(1+A_j+V_j+P_j)<\infty,
```

with all route-required parameters covered. This would allow the local `AACT.KX` estimates to be summed and would produce `DTC.A_avg` without finite terminal scale.

### Option C: endpoint-face refinement

Add a new averaged endpoint face:

```math
ScaleCollapse_{avg}:=
\text{terminal good radii collapse to zero while every point remains SCF-good}.
```

Then prove either

```math
ScaleCollapse_{avg}\Longrightarrow Jump_{avg}
```

under a sharpened definition of `Jump_avg`, or add `ScaleCollapse_avg` to `End_NS_avg` and exclude it separately. The current `CAVG.J` definition does not already include this scenario.

## Verdict

`AACT.Global` is not discharged by the current surfaces. The local theorem is strong: `SCF_base+ATD_m^\varepsilon` gives `AACT.KX` on each good moving cylinder. The global theorem fails at the terminal cover/scheduler step.

The exact next theorem is:

```math
TGC.A:
\qquad
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
\text{terminal summable SCF-good cover sufficient for }DTC.A_{avg}.
```

`TGC.A` must avoid `READ.COVER`, `End_NS`, pointwise retained native forcing, and old pointwise `DTC.A` upstream.

If `TGC.A` is proved, then the existing local `AACT.KX` budget and averaged receiver chain give `DTC.A_avg` and continue the PCTP.hard averaged route.