# AACT.Global Promotion Audit

## Status

Conditional promotion audit for the averaged globalization theorem

```math
AACT.Global:
Field_{avg}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on the no-`Jump_avg` branch.

## Chain under audit

The chain is

```math
Field_{avg}
\Longrightarrow
\text{terminal finite positive-scale SCF-good cover}
\Longrightarrow
ATD_m^\varepsilon\text{ on each shrunken cover cylinder}
\Longrightarrow
AACT.KX.local
\Longrightarrow
\text{common finite scheduler}
\Longrightarrow
DTC.A_{avg}.
```

The complementary branch is

```math
\neg Field_{avg}\Longleftrightarrow Jump_{avg},
```

and is carried to the averaged endpoint matrix.

## Audit 1: cover source

`Field_avg` is now installed as the terminal positive-scale cover object:

```math
Field_{avg}(T)
\Longleftrightarrow
\exists T'\subset T,\ \exists r_*>0
\text{ with }r_{good}(a,t)\ge r_*\text{ on }T'.
```

By the Field_avg equivalence theorem, this is equivalent to a terminal finite positive-scale SCF-good cover. This cover is produced without `READ.COVER`, `End_NS_avg`, or pointwise endpoint closure.

## Audit 2: local estimate source

On each selected cylinder, `ATD_m^\varepsilon` supplies the finite-depth averaged affine tower packet. The local averaged budget audit gives

```math
AACT.KX.local:
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R,
```

and after scheduler absorption,

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

This uses only local moving-frame, pressure, cutoff, core, top-viscous, tower, and nonlinear ledgers supplied by `ATD_m^\varepsilon` and `SCF_avg^m`.

## Audit 3: finite scheduler source

The cover and route parameter set are finite. For each cover element and each parameter instance, local `AACT.KX.local` gives `B_{j,p},F_{j,p}\in L^1`. Hence the common majorants

```math
B_*:=\sum_{j,p}\mathbf 1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}\mathbf 1_{I_j}F_{j,p}
```

belong to `L^1`. Absolute continuity gives scheduler cells satisfying the first-exit inequality for all local packets simultaneously.

Therefore the finite-cover summation gives

```math
DTC.A_{avg}.
```

## Circularity audit

The proof does not use any of the following upstream:

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad End_{NS,avg},
\quad End_{NS},
\quad old\ Field,
\quad old\ DTC.A,
\quad old\ CFI.A.
```

`READ.COVER` appears only later, after

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

`Jump_avg` is not removed here. It remains a downstream averaged endpoint face.

## Promotion verdict

Within theorem-construction, the averaged globalization theorem is promotion-ready in the following conditional form:

```math
AACT.Global.noJump:
Field_{avg}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}.
```

The complementary branch is exactly

```math
Jump_{avg}.
```

Thus the complete averaged split is

```math
SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}\ \vee\ Jump_{avg}.
```

No hidden circular dependency remains in the cover/scheduler/globalization chain.

## Boundary

This audit does not update generated proof matrices, release decisions, or review verdicts. It also does not prove `FCI.5f_avg`, `AVG.END.Cert`, or `READ.END`; those remain separate checks.