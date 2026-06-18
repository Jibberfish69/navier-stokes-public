# MPP JAVG.2 Active-Shell Gain To Carleson Note

## Status

Theorem-facing conditional discharge of the upper side of the `Jump_avg`
no-escape route.

This note proves:

```math
AAG.A
\Longrightarrow
JAVG.2.
```

It does not prove `AAG.A` from `OriginalSmoothData`.

## Target

For the final pressure/dissipation charge

```math
\nu_{SCF}
=
|\nabla u|^2\,dx\,dt
+
\sum_\chi |p_\chi^{loc}|^{3/2}\,dx\,dt,
```

`JAVG.2` asks for a scale-normalized upper estimate on a separated terminal
same-fluid window family `{Q_\ell}`.  Here `SCF_{norm}(Q_\ell)` denotes the
normalized packet functional on `Q_\ell`; it is not the raw mass
`\nu_{SCF}(Q_\ell)`:

```math
\sum_\ell SCF_{norm}(Q_\ell)
\le
C(E_0,\nu,\text{atlas},\text{source}).
```

Raw finite mass gives only

```math
\sum_\ell \nu_{SCF}(Q_\ell)\le C\nu_{SCF}(\text{total}),
```

which is not scale-normalized and is insufficient for the `Jump_avg`
contradiction.

## Active-Shell Gain Hypothesis `AAG.A`

Let `Q_\ell` have radius satisfying
`c_r\,2^{-k_\ell}\le r_\ell\le C_r\,2^{-k_\ell}`. Assume the terminal atlas has the
shell-to-window comparison

```math
SCF_{norm}(Q_\ell)
\le
C\int_{I_\ell}\sum_{j\ge k_\ell-C_0}2^{-j}D_j(t)^2\,dt
+R_\ell,
\tag{AAG.1}
```

with

```math
\sum_\ell R_\ell\le C_R.
```

Assume active-shell amplitude gain:

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t),
\tag{AAG.2}
```

and the reserve summability on the selected family

```math
\sum_\ell
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}r_j(t)\,dt
\le C_R.
\tag{AAG.3}
```

Finally assume exact active-tail overlap/first-moment control.  In concrete
terms, the selected family must satisfy

```math
\mathcal M_{\mathcal Q}
:=
\sup_{j,t}
\sum_\ell {\bf 1}_{I_\ell}(t){\bf 1}_{\{j\ge k_\ell-C_0\}}
<\infty,
```

and the active first moment must obey

```math
\int_0^{T_\ast}\sum_j D_j(t)\,dt\le C_D(E_0,\nu).
```

Equivalently, the exact family estimate being spent is

```math
\sum_\ell
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}D_j(t)\,dt
\le \mathcal M_{\mathcal Q} C_D(E_0,\nu).
\tag{AAG.4}
```

## Theorem `JAVG.2|AAG`

Under `(AAG.1)`--`(AAG.4)`, for every separated terminal window family
`{Q_\ell}`,

```math
\boxed{
\sum_\ell SCF_{norm}(Q_\ell)
\le
C(E_0,\nu,\text{atlas},\mathcal M_{\mathcal Q},C_R).
}
```

## Proof

Sum `(AAG.1)` over `\ell`:

```math
\sum_\ell SCF_{norm}(Q_\ell)
\le
C\sum_\ell
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}2^{-j}D_j(t)^2\,dt
+C_R.
```

Use `(AAG.2)`:

```math
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}2^{-j}D_j^2
\le
\varepsilon\nu
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}D_j
+
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}r_j.
```

Sum over `\ell` and apply `(AAG.3)`--`(AAG.4)`:

```math
\sum_\ell
\int_{I_\ell}\sum_{j\ge k_\ell-C_0}2^{-j}D_j^2
\le
C\varepsilon\nu\,\mathcal M_{\mathcal Q} C_D(E_0,\nu)
+C_R.
```

Substituting this into the summed `(AAG.1)` estimate gives

```math
\sum_\ell SCF_{norm}(Q_\ell)
\le
C(E_0,\nu,\text{atlas},\mathcal M_{\mathcal Q},C_R).
```

This proves `JAVG.2` under `AAG.A`.

## Why `AAG.A` Is Not Installed From Original Data

`OriginalSmoothData` gives smoothness on compact preterminal intervals and the
energy/dissipation ledgers

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

These supply raw mass and fixed-shell preterminal control. They do not supply
decay on terminal active shells whose frequencies drift to infinity as
`t\uparrow T_\ast`.

The scalar active-shell model

```math
E_j'(t)+c\nu 2^{2j}E_j(t)=F_j(t)
```

shows the obstruction. A source term can sustain an active amplitude on a
heat-scale interval while preserving raw source/dissipation mass. The desired
Carleson estimate needs square control

```math
\int_I 2^{-j}D_j(t)^2\,dt,
```

not only first-moment source or dissipation control.

The missing `AAG.A` input is one of:

```math
\text{heat-scale square-source estimate},
```

```math
\text{direct active-square Carleson theorem},
```

```math
\text{terminal active-shell amplitude decay},
```

or

```math
\text{monotone-dominance law whose dissipation controls the active square}.
```

No current surface proves any of these from `OriginalSmoothData`.

## Verdict

The upper theorem is conditionally solved:

```math
\boxed{
AAG.A\Longrightarrow JAVG.2.
}
```

The remaining analytic target for the upper side is:

```math
\boxed{
OriginalSmoothData\Longrightarrow AAG.A
}
```

or a heat-scale square-source / direct active-square theorem with the same
selected-family normalization and active-tail overlap hypotheses.
