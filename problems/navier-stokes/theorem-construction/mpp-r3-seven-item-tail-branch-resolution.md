# R3 Seven-Item Tail Branch Resolution

## Status

Historical direct-tail obstruction package, superseded for the CM-facing branch
by `mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md`.

This note remains authority for the stronger direct positive theorem
`Tail.Hs_R3`. It no longer states the live CM-facing whole-space completion
boundary. After the June 8 endpoint-consumption theorem, a surviving exterior
high-order source is treated as an endpoint face and lands in Pack, Part, or
Field after bounded-frequency removal and dyadic survivor extraction.

## 1. Exterior high-order coefficient ledger

### Target

For `s>5/2`, the desired ledger is

```math
OriginalSmoothData_{R^3}
\Longrightarrow
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad (R\to\infty).
```

Here `E_s^{tail}` must dominate all exterior high-order commutator, cutoff, and pressure tail terms in the localized `H^s` energy identity.

### Computation

Let `eta_R` be an exterior cutoff with `eta_R=0` on `|x|<=R`, `eta_R=1` on `|x|>=2R`, and `|nabla^k eta_R|<=C_kR^{-k}`. Applying `Lambda^s` and testing against `eta_R^2 Lambda^s u` gives

```math
\frac12\frac d{dt}\|eta_R\Lambda^s u\|_2^2
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
\mathcal C_R+
\mathcal B_R+
\mathcal P_R.
```

The commutator term satisfies the exact recorded inequality

```math
\mathcal C_R
\le
C_s\|\nabla u\|_{L^\infty}\|eta_R\Lambda^s u\|_2^2
+\mathcal C_R^{ann}.
```

The cutoff and pressure terms satisfy

```math
\mathcal B_R+
\mathcal P_R
\le
\frac\nu2\|eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{tail}(R,t).
```

Thus

```math
\frac d{dt}\|eta_R\Lambda^s u\|_2^2
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_{L^\infty}\|eta_R\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{tail}(R,t).
```

### Result

If one adds the exterior coefficient assumptions

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty,
\qquad
\int_0^{T_*}\mathcal E_s^{tail}(R,t)dt\to0,
```

then Gronwall proves exterior `H^s` tightness. These assumptions are continuation-grade. They are not currently derived from `OriginalSmoothData_R3`.

## 2. High-frequency tail face

Define

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{t<T_*}
\|eta_R u(t)\|_{H^s}>0.
```

Exterior `L^2` tightness eliminates mass escape, but high-frequency packets can
have small `L^2` mass and large `H^s` norm. Therefore `TailFace_R3^Hs` is not
eliminated as a direct positive `Tail.Hs_R3` theorem by these inputs alone.

For the CM-facing branch, this direct-tail obstruction is consumed by the
June 8 endpoint theorem: after the Duhamel split, fixed bounded frequencies are
removed by the exterior source estimate
`L^1_t L^{3/2}_x -> L^\infty_t L^2_x`; any surviving tail must be dyadic
escape, and the dyadic survivor fails Pack, Part, or Field.

Conditional elimination holds under `Tail.Hs_R3`:

```math
Tail.Hs_{R^3}
\Longrightarrow
\neg TailFace_{R^3}^{Hs}.
```

The noncircular theorem proving `Tail.Hs_R3` from original data remains open.

## 3. Whole-space terminal cover theorem

### Conditional theorem `READ.COVER_R3`

Assume the terminal active region splits into a compact core and a tail:

```math
A_{term}=A_{core}\cup A_{tail}.
```

Assume the compact core has a strict positive-scale SCF-good cover and the tail satisfies `Tail.Hs_R3`, eliminating `TailFace_R3^Hs`. Then

```math
READ.COVER_{R^3}
```

holds.

### Proof

The compact core is covered by finitely many SCF-good cylinders using openness and compactness. The tail contributes no endpoint face because `Tail.Hs_R3` removes high-frequency exterior obstruction. The union gives the noncompact terminal readout cover: finite on the active core, harmless on the controlled tail.

## 4. Whole-space pressure-tail theorem

Let

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

up to an additive function of time. On a compact readout ball, split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local term obeys

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The far part is controlled by the Riesz kernel tail. Exterior `L^2` tightness controls low-order far pressure on compact sets; exterior `H^s` tail control supplies the derivative and product-source tail required for endpoint rungs. Hence

```math
Tail.Hs_{R^3}+\text{compact-core tower bounds}
\Longrightarrow
\text{R3 pressure readout to endpoint depth }N.
```

## 5. Whole-space continuation bridge

Assume compact-core tower bounds and `Tail.Hs_R3`. For any `epsilon>0`, choose `R` such that

```math
\sup_{t<T_*}\|u(t)\|_{H^s(|x|>R)}<\epsilon.
```

Cover `B_R` by finitely many local tower charts. If `N>s+2`, finite-cover Sobolev patching gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(B_R)}<C_R.
```

Therefore

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty.
```

The whole-space `H^s` local theory continues the solution beyond `T_*`.

## 6. Whole-space `TTU.A`

Conditional theorem:

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}.
```

On compact cores, the periodic averaged terminal-tail proof is local and applies with local pressure normalization. The noncompact tail is controlled by `Tail.Hs_R3`. The local/far Riesz pressure readout replaces periodic zero-mean pressure. Thus the pointwise endpoint package is recovered on `R^3`, conditionally on tail control.

## 7. Final R3 theorem statement

The desired whole-space theorem is

```math
u_0\in C^\infty_\sigma(R^3)\cap H^s(R^3),\quad s>5/2
\Longrightarrow
u\in C^\infty([0,\infty)\times R^3).
```

The branch currently proves only the conditional form

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty
\Longrightarrow
T_*=\infty.
```

## Verdict

The seven requested items are resolved as follows:

1. exterior high-order ledger: conditional only;
2. high-frequency tail face: live unless `Tail.Hs_R3` is proved;
3. terminal cover: conditional on tail control;
4. pressure-tail theorem: conditional on tail control;
5. continuation bridge: conditional on tail control;
6. `TTU.A_R3`: conditional on tail control;
7. final R3 theorem: conditional on tail control.

The exact remaining theorem is

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

or a separate endpoint theorem eliminating `TailFace_R3^Hs` without assuming the continuation norm.
