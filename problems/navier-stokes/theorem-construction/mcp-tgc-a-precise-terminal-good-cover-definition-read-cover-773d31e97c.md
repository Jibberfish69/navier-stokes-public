# TGC.A Precise Terminal-Good-Cover Definition

Status: conditional terminal cover theorem.

## Definition

Let `T` be a bounded-distortion same-fluid terminal approach tail. Define the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

The averaged jump face is

```math
Jump_{avg}(T)
```

when either `T` meets `mathcal B_{epsilon_m}^Phi` or the terminal SCF-good cover radii degenerate to zero on `T`.

## Theorem `TGC.A`

Assume

```math
SGC.A_{a.e.}+ATD_m^\varepsilon.
```

Then the terminal tail satisfies the dichotomy

```math
Jump_{avg}(T)
\quad\vee\quad
\text{there exists a finite positive-scale SCF-good same-fluid cover of }T
\text{ with scheduler-ready }L^1\text{ majorants}.
```

Equivalently, on the no-jump branch,

```math
\neg Jump_{avg}(T)
\Longrightarrow
\exists\{Q_{r_j}^{\Phi}(a_j,t_j)\}_{j=1}^{J}
```

such that

```math
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
r_j\ge r_*>0,
\qquad
\operatorname{ovlp}\le\Omega<\infty,
```

and the local `ATD_m^epsilon` / `AACT.KX` ledgers admit common finite scheduler majorants

```math
B_*,F_*\in L^1([t_0,T_*)).
```

## Proof

`SGC.A_a.e` covers compact subsets of the good material region by finitely many SCF-good cylinders. The complement and terminal radius degeneration are typed by `TGC.class` as `Jump_avg`. Therefore, if `Jump_avg` is absent, no bad material point and no terminal radius degeneration remains. A terminal subtail then has a finite positive lower SCF-good scale and finite overlap cover.

`ATD_m^epsilon` supplies the local averaged tower packets on the selected cylinders. Since the cover and route parameter set are finite, the local `L^1` coefficients sum into common majorants

```math
B_*,F_*\in L^1.
```

This is the scheduler-ready terminal cover required by `AACT.Global.noJump`.

## Boundary

`TGC.A` supplies the cover/scheduler input. It does not itself produce pointwise `READ.COVER`; that appears downstream of `End_NS_avg`.