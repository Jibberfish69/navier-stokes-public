# ExtCascade_s^{R3} Theorem Attempt

## Status

Failed discharge / conditional theorem note.

## Target

For `s>5/2`, the intended theorem is

```math
ExtCascade_s^{R3}:
OriginalSmoothData_{R^3}
\Longrightarrow
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad(R\to\infty),
```

where `E_s^{tail}` controls exterior commutator, cutoff, pressure, and high-frequency flux terms in the localized `H^s` identity.

## Exterior identity

For an exterior cutoff `eta_R`,

```math
eta_R=0\quad |x|\le R,
\qquad
eta_R=1\quad |x|\ge 2R,
\qquad
|\nabla^k eta_R|\le C_k R^{-k},
```

the localized high-order energy identity gives

```math
\frac d{dt}\|\eta_R\Lambda^s u\|_2^2
+\nu\|\eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_{L^\infty}\|\eta_R\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{tail}(R,t).
```

The first term is the transport/stretching coefficient. The tail ledger contains annular commutators, cutoff losses, and pressure commutators from the Riesz pressure localization.

## Conditional cascade closure

If one has

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
```

and

```math
\int_0^{T_*}\mathcal E_s^{tail}(R,t)dt\to0,
```

then Gronwall yields

```math
\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s}\to0.
```

Thus the cascade mechanism would imply `Tail.Hs_R3`.

## Obstruction

The coefficient `int_0^{T_*} ||nabla u||_{L^infty}` is continuation-grade. Spending it here would assume the high-order control that the R3 branch aims to prove. Exterior `L^2` tightness and compact-core tower bounds leave high-frequency derivative packets at spatial infinity uncontrolled.

## Verdict

`ExtCascade_s_R3` is conditionally valid as a Gronwall mechanism, while its derivation from `OriginalSmoothData_R3` remains open. The next theorem can only use `ExtCascade_s_R3` as an explicit hypothesis.
