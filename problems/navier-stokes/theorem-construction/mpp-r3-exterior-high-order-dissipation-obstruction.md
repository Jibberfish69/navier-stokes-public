# R3 Exterior High-Order Dissipation Obstruction

## Status

Failed discharge / sharp obstruction note for the whole-space branch.

This note derives the exterior high-order energy identity and identifies the missing ledger needed to prove `Tail.Hs_R3`.

## Target

For `s>5/2`, define an exterior cutoff `eta_R` with

```math
eta_R=0\quad |x|\le R,
\qquad
eta_R=1\quad |x|\ge 2R,
\qquad
|\nabla^k eta_R|\le C_k R^{-k}.
```

The desired high-order tail theorem is

```math
Tail.Hs_{R^3}:
\qquad
\lim_{R\to\infty}\sup_{0\le t<T_*}\|eta_R u(t)\|_{H^s(R^3)}=0.
```

A sufficient ledger is

```math
\mathcal H_s^{tail}(R,t)
:=\|eta_R\Lambda^s u(t)\|_2^2
```

with

```math
\sup_{t<T_*}\mathcal H_s^{tail}(R,t)	o0
\qquad(R\to\infty).
```

## Exterior high-order identity

Apply `Lambda^s` to the equation and test against `eta_R^2 Lambda^s u`. After integration by parts,

```math
\frac12\frac d{dt}\|eta_R\Lambda^s u\|_2^2
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
\mathcal C_R+
\mathcal B_R+
\mathcal P_R.
```

The commutator term is

```math
\mathcal C_R
=\left|\int eta_R^2\Lambda^s u\cdot
[\Lambda^s,u\cdot\nabla]u\,dx\right|.
```

A Kato-Ponce estimate gives

```math
\mathcal C_R
\le
C_s\|\nabla u\|_{L^\infty}\|eta_R\Lambda^s u\|_2^2
+\mathcal C_R^{ann},
```

where `C_R^{ann}` is supported in the annulus `R<|x|<2R` and contains cutoff commutators.

The boundary/cutoff term obeys the recorded cutoff estimate

```math
\mathcal B_R
\le
\frac\nu4\|eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\sum_{k\le s}R^{-2(s-k+1)}\|\nabla^k u\|_{L^2(A_R)}^2.
```

The pressure term is controlled by the localized Leray/Riesz commutator:

```math
\mathcal P_R
\le
\frac\nu4\|eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal P_s^{tail}(R,t),
```

where `P_s^{tail}` is an exterior pressure commutator ledger controlled by local product-source bounds plus far-field pressure tail estimates.

Combining,

```math
\frac d{dt}\mathcal H_s^{tail}(R,t)
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_{L^\infty}\mathcal H_s^{tail}(R,t)
+\mathcal E_s^{ann}(R,t)+\mathcal P_s^{tail}(R,t).
```

## Conditional ledger theorem

If

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
```

and

```math
\int_0^{T_*}\bigl(\mathcal E_s^{ann}(R,t)+\mathcal P_s^{tail}(R,t)\bigr)dt\to0,
```

while

```math
\mathcal H_s^{tail}(R,0)	o0,
```

then Gronwall gives

```math
\sup_{t<T_*}\mathcal H_s^{tail}(R,t)	o0.
```

Thus `Tail.Hs_R3` follows under this added exterior high-order coefficient ledger.

## Obstruction

The coefficient

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt
```

is continuation-grade. Spending it here would already imply the whole-space continuation criterion. The annular and pressure ledgers also require high-order exterior control beyond exterior `L^2` tightness.

Therefore the current R3 branch inputs prove only the conditional statement above. They do not derive the exterior high-order dissipation ledger from `OriginalSmoothData_R3`.

## Endpoint interpretation

The remaining whole-space endpoint face is

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{t<T_*}\|eta_Ru(t)\|_{H^s}>0.
```

The R3 branch must either prove the exterior high-order coefficient ledger directly from original data, or add `TailFace_R3^Hs` to the endpoint matrix and eliminate it by a separate theorem.

## Verdict

The exterior high-order dissipation route is conditionally valid, with an explicit Gronwall ledger. The noncircular derivation of that ledger from `OriginalSmoothData_R3` remains open.
