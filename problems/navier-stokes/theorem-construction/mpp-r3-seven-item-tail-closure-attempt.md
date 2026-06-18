# R3 Seven-Item Tail Closure Attempt

## Status

Failed discharge for the unconditional whole-space branch. This note closes the conditional downstream pieces and isolates the irreducible obstruction as the high-frequency exterior tail face.

## 1. Exterior high-order coefficient ledger

The desired theorem is

```math
OriginalSmoothData_{R^3}
\Longrightarrow
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0,
```

where the exterior ledger dominates the commutator, cutoff, and pressure terms in the high-order exterior identity.

Let `eta_R` be an exterior cutoff and set

```math
H_s^{tail}(R,t)=\|eta_R\Lambda^s u(t)\|_2^2.
```

Applying `Lambda^s` to Navier--Stokes and testing against `eta_R^2 Lambda^s u` gives

```math
\frac12\frac d{dt}H_s^{tail}(R,t)
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
\mathcal C_R+
\mathcal B_R+
\mathcal P_R.
```

The commutator satisfies the estimate

```math
\mathcal C_R
\le C_s\|\nabla u\|_{L^\infty}H_s^{tail}(R,t)+\mathcal C_R^{ann}.
```

The cutoff and pressure terms satisfy

```math
\mathcal B_R+
\mathcal P_R
\le
\frac\nu2\|eta_R\nabla\Lambda^s u\|_2^2
+
\mathcal E_s^{tail}(R,t).
```

Thus

```math
\frac d{dt}H_s^{tail}(R,t)
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_\infty H_s^{tail}(R,t)+
\mathcal E_s^{tail}(R,t).
```

If

```math
\int_0^{T_*}\|\nabla u(t)\|_\infty dt<\infty
```

and

```math
\int_0^{T_*}\mathcal E_s^{tail}(R,t)dt\to0,
\qquad
H_s^{tail}(R,0)\to0,
```

then Gronwall proves `Tail.Hs_R3`. The coefficient `int ||nabla u||_infty` is continuation-grade, so current original-data inputs do not prove this ledger noncircularly.

## 2. High-frequency tail face

The correct endpoint addition is

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{t<T_*}
\|eta_Ru(t)\|_{H^s}>0.
```

This face is not eliminated by finite energy. It records high-frequency derivative escape at spatial infinity. The R3 endpoint matrix must include this face until a separate exterior high-order theorem removes it.

## 3. Whole-space terminal cover theorem

### Conditional theorem `READ.COVER_R3`

Assume:

1. compact-core strict averaged-good cover;
2. exclusion of `TailFace_R3^Hs`;
3. exterior L2 tightness from `Tail.L2_R3`;
4. exterior Hs tail control `Tail.Hs_R3`.

Then

```math
READ.COVER_{R^3}
```

holds.

### Proof

Choose `R` so the exterior Hs tail is below the endpoint threshold. The active endpoint region inside `B_R` is compact and has a positive-scale SCF-good finite cover by the strict-margin argument. The exterior region cannot carry endpoint mass, field loss, or tower blow-up because `Tail.Hs_R3` removes high-order tail concentration. Combining the compact finite cover with exterior exclusion gives `READ.COVER_R3`.

## 4. Whole-space pressure-tail theorem

Let

```math
p=\mathcal R_i\mathcal R_j(u_i u_j).
```

On a compact ball `B_i' compactly contained in B_i compactly contained in B_{2R}`, split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Local Schauder or Calderon-Zygmund estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The far part is controlled by kernel decay and exterior Hs tail:

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i,R}\|u\|_{H^s(|x|>R)}^2
+
C_{q,i,R}^{loc}\|u\|_{H^s(B_{2R})}^2.
```

Thus pressure readout is valid on compact cores once exterior Hs tail control and local tower bounds are available.

## 5. Whole-space continuation bridge

Assume compact-core tower bounds and exterior Hs tail control. Choose `R` such that

```math
\sup_{t<T_*}\|u(t)\|_{H^s(|x|>R)}<1.
```

Cover `B_R` by finitely many tower charts. If `N>s+2`, finite-cover Sobolev patching gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(B_R)}<\infty.
```

Adding the exterior tail gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty.
```

Set `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}`. Whole-space `H^s` local theory,
`s>5/2`, gives a lifespan `\tau=\tau(\nu,s,M_s)>0`; choosing
`t_j\uparrow T_*` with `T_*-t_j<\tau/2`, the relaunch from `u(t_j)` exists
beyond `T_*` and agrees with the original solution on the overlap by uniqueness.

## 6. Conditional `TTU.A_R3`

Under `Tail.Hs_R3` or elimination of `TailFace_R3^Hs`, the periodic terminal-tail proof extends locally to the whole-space compact core. The exterior tail has no endpoint contribution. Therefore

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow TTU.A_{R^3}.
```

The implication without `Tail.Hs_R3` remains open.

## 7. Final R3 theorem statement

The conditional theorem currently supported is

```math
u_0\in C^\infty_\sigma(R^3)\cap H^s(R^3),\quad s>5/2,
\quad Tail.Hs_{R^3}
\Longrightarrow
u\in C^\infty([0,\infty)\times R^3).
```

The unconditional whole-space theorem remains open at

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

or equivalently at elimination of `TailFace_R3^Hs`.

## Verdict

Items 3--7 are closed conditionally once `Tail.Hs_R3` is available. Item 1 does not close from current inputs, and item 2 must be handled by adding `TailFace_R3^Hs` to the R3 endpoint matrix rather than eliminating it. The next genuine mathematical target is a noncircular exterior high-order tail theorem from whole-space original data.
