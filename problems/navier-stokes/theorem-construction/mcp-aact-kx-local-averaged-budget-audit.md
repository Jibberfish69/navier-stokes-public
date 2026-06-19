# AACT.KX Local Averaged Budget Audit

## Status

Conditional local budget audit for one averaged ACT cylinder.

This note audits the local estimate

```math
D^+X_R+cN_R
\le
B_R X_R+C X_R^{1/2}N_R+F_R
```

with moving-frame, cutoff, pressure-cell, middle-block/core, top-viscous, and nonlinear terms separated.

## Local setup

Work on a shrunken same-fluid moving cylinder

```math
Q_R^\Phi=Q_R^\Phi(a_0,t_0)
```

where `SCF_avg^m` holds after `ATD_m^\varepsilon`. Let

```math
X_R(t)=\text{averaged affine-subtracted excess},
\qquad
N_R(t)=\text{averaged dissipative packet},
\qquad
A_R(t)=\text{averaged affine core}.
```

Set

```math
B_R(t):=1+A_R(t)+V_R(t)+P_R(t),
```

where `V_R` carries moving-frame, cutoff, and viscous-coefficient ledgers, while `P_R` carries pressure-response coefficients. The forcing packet `F_R` contains source, residual, harmonic/far pressure, cutoff, and finite-frame remainder ledgers.

## Term audit

### 1. Moving-frame transport

The pulled-back local energy identity in the same-fluid moving frame gives transport by the affine-relative velocity

```math
u_{rel}=u-c'(t)-\dot A(t)A(t)^{-1}(x-c(t)).
```

Because the affine mode is subtracted in `SCF_base`, pure center and pure affine transport cancel. The remaining frame terms obey

```math
|I_{tr}|\le C(1+V_R)X_R+\frac{c\nu}{16}N_R+F_{tr,R}.
```

This passes provided the scale-normalized frame ledger is included in `V_R` and the affine-relative residual is the velocity component measured by `SCF_base`.

### 2. Cutoff and moving-boundary terms

Write the transported cutoff as

```math
\chi_R(x,t)=\chi(y_R(x,t)),
\qquad
y_R(x,t):=R^{-1}A(t)^{-1}(x-c(t)).
```

Then the actual derivative identities are

```math
\nabla_x\chi_R
=
R^{-1}A(t)^{-T}\nabla\chi(y_R),
\qquad
D_x^2\chi_R
=
R^{-2}A(t)^{-T}D^2\chi(y_R)A(t)^{-1},
```

and

```math
\partial_t\chi_R
=
-\left(A^{-1}\dot A\,y_R+R^{-1}A^{-1}c'(t)\right)\cdot\nabla\chi(y_R).
```

The cutoff packet can be spent only after the same-fluid distortion ledger in
`V_R` bounds `A`, `A^{-1}`, `A^{-1}\dot A`, and `R^{-1}A^{-1}c'` on the
cell.  Under those hypotheses it satisfies

```math
|I_{cut}|\le C(1+V_R)X_R+\frac{c\nu}{16}N_R+F_{cut,R}.
```

The remainder `F_{cut,R}` is part of the local `L^1` forcing ledger.

### 3. Pressure-cell terms

Use the CKN-compatible pressure normalization

```math
p^{norm}=p-c(t)-p_{aff}^{frame}(x,t).
```

The constant gauge has zero gradient, and the affine frame potential has finite-depth frame derivatives already carried by the moving-frame ledger. Decompose

```math
p=p_R^{loc}+h_R+p_R^{far}.
```

The local Poisson cell gives

```math
|I_{press}^{loc}|\le C P_R X_R+\frac{c\nu}{16}N_R+F_{press,R}^{loc}.
```

The harmonic and far pieces give

```math
|I_{press}^{harm}|\le C P_R X_R+F_{press,R}^{harm},
\qquad
|I_{press}^{far}|\le F_{press,R}^{far}.
```

Thus

```math
|I_{press}|\le C P_R X_R+\frac{c\nu}{16}N_R+F_{press,R}.
```

This passes because the pressure normalization is only a gauge/frame normalization and later original-pressure derivatives are recovered by fixed-cover Poisson readout.

### 4. Middle-block / affine-core terms

The averaged affine core is chosen by the local moment equations. Its ledger satisfies

```math
D^+A_R\le\mathcal K_{\le m}^{avg,R}+C A_R^2+F_{A,R}.
```

Inserted into the excess identity, this gives

```math
|I_{core}|\le C A_R X_R+\frac{c\nu}{16}N_R+F_{A,R}.
```

This passes because `A_R` is included in `B_R`, and the middle-block estimate is supplied by the local averaged tower packet rather than read back from the desired `L^\infty` conclusion.

### 5. Top-viscous and tower terms

The viscous rung supplies the coercive portion of `N_R`. Moving-frame and finite-cutoff commutators obey

```math
|I_{visc}^{comm}|\le C V_R X_R+\frac{c\nu}{16}N_R+F_{visc,R}.
```

The averaged tower ledger supplies

```math
\mathcal K_{\le m}^{avg,R}
\le C(X_R^{1/2}N_R^{1/2}+X_R)+F_{K,R}.
```

Top-viscous data are used as readout/top-viscous buffer data through the `m+2` depth provided by `ATD_m^\varepsilon`, not as an upstream pressure Gronwall input.

### 6. Nonlinear excess term

The affine-subtracted quadratic excess gives

```math
|I_{nl}|\le
C_*\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R
+C B_R X_R+F_{nl,R}.
```

On a scheduler cell, choose `\eta_X` and the cell size so that

```math
C_*\left((2\eta_X)^{1/2}+\|V_R\|_{L^1(I)}^{1/3}+\|P_R\|_{L^1(I)}^{2/3}\right)
\le\frac c2.
```

Then the nonlinear term is absorbed into the left-hand dissipation.

## Combined inequality

Summing the audited terms gives

```math
D^+X_R+c_0N_R
\le
B_R X_R
+C_*\left(X_R^{1/2}+V_R^{1/3}+P_R^{2/3}\right)N_R
+F_R.
```

After scheduler absorption,

```math
D^+X_R+\frac{c_0}{2}N_R
\le
B_R X_R+F_R.
```

Gronwall on the scheduler cell yields

```math
X_R(t)\le
\left(X_R(t_0)+\int_I F_R\right)
\exp\left(\int_I B_R\right).
```

The scheduler condition keeps

```math
X_R\le2\eta_X.
```

Therefore the first-exit threshold is not reached, and integration gives

```math
N_R\in L^1(I),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I).
```

## Output

The local averaged ACT packet is installed on the scheduler cell:

```math
X_R\in L^\infty(I),
\qquad
N_R\in L^1(I),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I).
```

This is `AACT.KX.local`, the local input used by `AACT.Global.noJump` to produce `DTC.A_avg` after finite-cover summation.

## Boundary

This audit passes locally. It does not by itself prove terminal globalization; the finite-cover scheduler is supplied by `Field_avg`, `TGC.A`, and `AACT.Global.noJump`. The proof uses no `READ.COVER`, `End_NS`, old pointwise `DTC.A`, old `Field`, or old `CFI.A`.
