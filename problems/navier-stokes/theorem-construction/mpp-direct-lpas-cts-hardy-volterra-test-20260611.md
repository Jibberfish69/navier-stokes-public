# MPP Direct LPAS/CTS Hardy-Volterra Test

## Status

Historical forward-positive direct test of the far-corona child left after
`mpp-spill-collar-to-far-corona-forward-positive-collapse-20260611.md`.

Current authority supersedes the raw target by the residual refill ledger.  The
live target is:

```math
\mathrm{ResidualSourceBalancedLPAS.A}
\quad\text{or}\quad
\mathrm{ResidualDirectCTSOrFCTS.A}.
```

This note records why the raw direct Hardy/Volterra route fails before the
residual object is isolated.

## Exact LPAS Target

Use the dyadic notation from `lower-prefix-active-square-theorem.md`:

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

The lower prefix is:

```math
\mathcal P_j^\downarrow(t)
:=
\sum_{k\le j-C_1}E_k(t).
```

The theorem is:

```math
\boxed{
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)\,
2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
}
\tag{LPAS}
```

## Direct Absorption Test

For one active shell, the summand is:

```math
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2
=
\Big(\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)\Big)D_j(t).
```

Absorption into the dissipation budget requires:

```math
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)\ll \nu
\tag{1}
```

on the active support, or an integrated replacement that gives the same
effect.  The current energy surface supplies:

```math
\int_0^T D_j(t)\,dt,
```

not the active-square quantity:

```math
\int_0^T 2^{-j}D_j(t)^2\,dt.
```

So the direct coefficient-margin attempt reduces directly to active-shell amplitude
normalization.

## Continuum CTS / Schur Test

The continuum route writes the far-corona piece with the two-scale density
`\mathcal A_{\ell,r}` and the gap kernel:

```math
K(\ell,r)=\mathbf 1_{r\ge c_1\ell}{\ell\over r}.
```

`middle-band-flux-gap-kernel-theorem.md` proves that the Schur step is formal
once the density factors as:

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t)
```

with square budgets for `U` and `V`.

The issue is not Schur summation.  The issue is that the natural `U` budget is
the active stress square:

```math
\|\tau_\ell^{H^1}[u](t)\|_{L_x^2}^2
\le
C_\tau
2^{-j}D_j(t)^2,
```

and the natural `V` side is the lower accumulated strain/prefix.  Substituting
those natural budgets is exactly `(LPAS)`.  Thus direct CTS does not bypass
LPAS from current inputs; it exposes LPAS as the dyadic square budget needed by
the continuum theorem.

## Dyadic Hardy/Volterra Reindexing

Reindexing `(LPAS)` gives:

```math
LPAS_N
=
\int_0^T
\sum_{k}
E_k(t)
\left(
\sum_{j\ge \max(N,k+C_1)}
2^{-j}D_j(t)^2
\right)dt.
\tag{2}
```

This is a lower-triangular Volterra square.  The available upper-tail queues
control the opposite orientation or linear tail-square objects.  They do not
control the lower prefix multiplied by the active square.

The Volterra reindexing is useful because it identifies the object exactly.
It does not reduce the active-square power.

## Heat-Scale Pulse Test

On a heat-scale active window

```math
c_h2^{-2j}\le |I_j|\le C_h2^{-2j},
```

take a source-balanced shell profile with total first moment `M_j`:

```math
D_j(t)={M_j\over |I_j|}\mathbf 1_{I_j}(t).
```

Then:

```math
\int_{I_j}D_j(t)\,dt=M_j,
```

while:

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt
=
2^{-j}{M_j^2\over |I_j|}
\ge
C_h^{-1}2^jM_j^2.
```

Thus first-moment drain and heat-scale residence do not control the active
square.  The missing information is not overlap, selection, or Schur summation.
It is amplitude normalization on the active shell.

## Square-Source Route

`active-square-control-blocked-by-square-source.md` and
`square-source-shell-flux-estimate-result.md` identify one possible supplier:

```math
\int_I |F_j(t)|^2dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

The universal form fails by the fixed-shell cubic amplitude identity. Scaling
smooth finite-band data by amplitude `A` makes the shell source satisfy:

```math
F_j(0;Au_0)=A^3F_j(0;u_0),
```

so the square source is `A^6|F_j(0;u_0)|^2` while the proposed universal
right-hand side is amplitude-independent.

Therefore the square-source path is conditional only.  It needs active
interval amplitude normalization, a structural signed cancellation in the
shell source, or a direct active-square Carleson theorem.

## Result

Raw `DirectLPAS.A` and raw `DirectCTSOrFCTS.A` are not proved by the current
forward-positive inputs and are not the live theorem names after the residual
refill correction.

The exact non-alias obstruction is:

```math
\boxed{
\text{active-shell square payment cannot be obtained from first-moment drain,
Volterra visibility, Schur summation, or universal square-source control.}
}
```

Equivalently, any renewed forward pass must prove the residual version of one
of:

```text
ResidualSourceBalancedLPAS.A
ResidualDirectCTSOrFCTS.A
StrongerSourceDepletion.A
```

in a form strong enough to control:

```math
\int_I
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
```

on the selected heat-scale active windows.

At current authority, none of those residual theorem suppliers is installed.
