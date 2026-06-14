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

Let `chi_R` be an exterior cutoff and apply `Lambda^s` to the equation. Testing against `chi_R Lambda^s u` gives the formal identity

```math
\frac{d}{dt}\int \chi_R |\Lambda^s u|^2
+2\nu\int \chi_R |\nabla\Lambda^s u|^2
=
\mathcal C_R+
\mathcal F_R+
\mathcal P_R.
```

Here `C_R` contains commutators with `u·nabla`, `F_R` contains cutoff fluxes, and `P_R` contains pressure/cutoff terms. Standard commutator estimates require a coefficient such as

```math
\|\nabla u(t)\|_{L^\infty}
```

or a localized high-order exterior dissipation ledger. Integrating to `T_*` needs

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
```

or an equivalent exterior high-order control. That information is continuation-grade and cannot be spent upstream.

## Conditional elimination theorem

If one adds the exterior high-order tail ledger

```math
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad(R\to\infty),
```

where `E_s^{tail}` dominates the commutator, cutoff, and pressure tail terms in the high-order exterior identity, then Gronwall gives

```math
Tail.Hs_{R^3}.
```

Under this extra ledger, `TailFace_R3^Hs` is eliminated and the whole-space tower-to-continuation theorem closes.

## Verdict

Current inputs eliminate only the `L^2` mass-escape tail. The high-frequency `H^s` tail face remains live. The next mathematical theorem needed for the `R^3` branch is an exterior high-order dissipation/tail ledger derived from original whole-space data without assuming the global continuation norm.
