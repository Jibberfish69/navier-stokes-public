# R3 Tail.Hs Face Elimination Attempt

## Status

Failed discharge. This note sharpens the remaining whole-space obstruction.

## Target

For `s>5/2`, the desired theorem is

```math
Tail.Hs_{R^3}:
\qquad
\lim_{R\to\infty}\sup_{0\le t<T_*}\|u(t)\|_{H^s(|x|>R)}=0.
```

Equivalently, the branch must eliminate the endpoint face

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{t<T_*}\|u(t)\|_{H^s(|x|>R)}>0.
```

## Available inputs

The preceding exterior-energy theorem gives

```math
\lim_{R\to\infty}\sup_{t<T_*}\|u(t)\|_{L^2(|x|>R)}=0.
```

The periodic/compact-core route gives local tower bounds on every fixed compact core. Combining these gives strong compact-core control plus exterior energy tightness.

## Direct implication test

The implication

```math
\text{exterior }L^2\text{ tightness}
\Longrightarrow
\text{exterior }H^s\text{ tightness}
```

fails. Smooth far-field packets can have arbitrarily small `L^2` mass and arbitrarily large `H^s` norm by moving to high frequency while keeping small amplitude. Thus exterior mass control cannot eliminate high-frequency derivative escape.

## High-order exterior energy identity

Let `eta_R` be an exterior cutoff with

```math
eta_R=0\quad |x|\le R,\qquad
eta_R=1\quad |x|\ge 2R,\qquad
|\nabla^j eta_R|\le C_jR^{-j}.
```

Set

```math
\mathcal H_s^{tail}(R,t)
:=\|eta_R\Lambda^s u(t)\|_2^2.
```

The exact localized high-order inequality needed here is not the schematic
statement that commutator, cutoff, and pressure fluxes are ``standard''.  Apply
`\Lambda^s` to the equation and test against `eta_R^2\Lambda^s u`.  After
integration by parts,

```math
\frac12\frac d{dt}\|eta_R\Lambda^s u\|_2^2
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
\mathcal C_R+
\mathcal B_R+
\mathcal P_R.
```

The transport commutator is

```math
\mathcal C_R
=\left|\int eta_R^2\Lambda^s u\cdot
[\Lambda^s,u\cdot\nabla]u\,dx\right|,
```

and Kato--Ponce gives

```math
\mathcal C_R
\le
C_s\|\nabla u(t)\|_{L^\infty}
\mathcal H_s^{tail}(R,t)
+\mathcal C_R^{ann}(t),
```

where `\mathcal C_R^{ann}` is supported in `A_R=\{R<|x|<2R\}` and contains the
cutoff commutators.  The cutoff and pressure terms are recorded as

```math
\mathcal B_R
\le
\frac\nu4\|eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal E_s^{ann}(R,t),
\qquad
\mathcal P_R
\le
\frac\nu4\|eta_R\nabla\Lambda^s u\|_2^2
+C_{s,\nu}\mathcal P_s^{tail}(R,t).
```

Thus the precise inequality being spent is

```math
\frac d{dt}\mathcal H_s^{tail}(R,t)
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\mathcal H_s^{tail}(R,t)
+C_{s,\nu}\mathcal E_s^{tail}(R,t),
```

with

```math
\mathcal E_s^{tail}
:=\mathcal C_R^{ann}+\mathcal E_s^{ann}+\mathcal P_s^{tail}.
```

Integrating this inequality to `T_*` needs

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
```

and

```math
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0,
\qquad
\mathcal H_s^{tail}(R,0)\to0
\qquad(R\to\infty),
```

or an equivalent exterior high-order control.  The first condition is
continuation-grade and the second is a genuine exterior high-order tail ledger,
so neither may be spent upstream as a ``standard'' estimate.

## Conditional elimination theorem

If one adds the exact exterior high-order tail ledger

```math
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad(R\to\infty),
```

plus the coefficient condition above, then Gronwall gives

```math
Tail.Hs_{R^3}.
```

Under this extra ledger, `TailFace_R3^Hs` is eliminated for the direct-positive
whole-space export branch.

## Verdict

Current inputs eliminate only the `L^2` mass-escape tail. The high-frequency `H^s` tail face remains live. The next mathematical theorem needed for the `R^3` branch is an exterior high-order dissipation/tail ledger derived from original whole-space data without assuming the global continuation norm.
