# MPP MSC.DiagTether Direct Attempt Note

## Status

Bounded direct attempt on the diagonal tether left by
`mpp-msc-localize-diagonal-carrier-attempt-note.md`.

The target was:

```math
\boxed{
MSC.DiagTether:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local carrier}.
}
```

This note closes the direct route from the installed global mixed-shell product:
`MSC.DiagTether` is not a consequence of the present `MSC.BadAC` formulation.
The repair must return to a pre-Cauchy local source packet or install an
additional diagonal domination theorem.

## Cell Decomposition Test

At heat scale `r_j=2^{-j}`, decompose the torus into cells `{C_\alpha}` and set

```math
a_\alpha(t):=\int_{C_\alpha} d_j(x,t)\,dx,
\qquad
b_\beta(t):=\int_{C_\beta} d_\ell(y,t)\,dy.
```

Then the installed global product is

```math
D_j(t)D_\ell(t)
=
\sum_{\alpha,\beta}a_\alpha(t)b_\beta(t).
```

The near-diagonal part needed by a physical blow-up cylinder is only

```math
\sum_{(\alpha,\beta)\in\mathcal N_j}a_\alpha(t)b_\beta(t),
```

where
`\mathcal N_j:=\{(\alpha,\beta):\operatorname{dist}(C_\alpha,C_\beta)\le
2r_j\}`.

There is no lower bound of the second sum by the first.  If the mass is spread
over `M_j` cells of side `r_j`, with each cell having at most `C_{near}` cells
in its near-neighbor set, the diagonal fraction can be at most
`C_{near}M_j^{-1}`, while the global product remains normalized to one.
If the two shell masses are carried by separated cell families, the diagonal
fraction can be even smaller.

This is an abstract density model, not a Navier-Stokes counterexample.  It is
enough to show that the installed inequality

```math
\mathfrak B_N^\sigma(t)
\le
C_{MSC}
\sum_{N<j\le\ell} K_{j,\ell}^\sigma D_j(t)D_\ell(t)
```

has lost the co-location information needed for compactness extraction.

## Same-Fluid Tether Test

The same-fluid endpoint packet needs a carrier tied to one terminal material
family.  A Fourier-shell product after global integration does not remember
which physical cells or labels produced the two factors.  Incompressible
transport preserves volume, but it does not convert off-diagonal product mass
into a same-label near-diagonal carrier.

Thus bounded pack gauge and same-fluid geometry do not repair the loss created
by global Cauchy multiplication.

## Pre-Cauchy Locality Check

The Navier-Stokes nonlinearity is spatially local before absolute values and
global norm products are taken.  A compactness route could still be viable if
one proves a theorem at that earlier level, for example:

```math
\boxed{
DiagSource.A:
\text{the active pre-Cauchy source packet has a positive near-diagonal
same-fluid carrier whenever the branch no-pulse theorem fails.}
}
```

Equivalently, define a local diagonal mixed-shell carrier

```math
\mathfrak B_{N,diag}^\sigma(t)
:=
\sum_{N<j\le\ell}K_{j,\ell}^\sigma
\iint_{|x-y|\le C_{diag}2^{-j}} d_j(x,t)d_\ell(y,t)\,dx\,dy
```

and prove either

```math
\boxed{
DiagDom.A:
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt
\le
C_{Diag}
\int_{Bad_N(\eta)}\mathfrak B_{N,diag}^\sigma(t)\,dt
+o_N(1),
}
```

or bypass the global product entirely with

```math
\boxed{
LocalSource.NoPulse.A:
\int_{Bad_N(\eta)}
\mathfrak S_{N,loc}^{active}(t)\,dt=o_N(1),
}
```

where `\mathfrak S_{N,loc}^{active}` is the pre-Cauchy same-fluid source packet
that still carries physical co-location.

## Verdict

The compactness branch cannot use

```math
\neg MSC.BadAC
\Longrightarrow MSC.DiagTether
```

from the currently installed global shell-time product.  The exact repaired
compactness dependency is:

```math
\boxed{
(DiagDom.A+Ancient.NoPulse^{src})
\quad\text{or}\quad
LocalSource.NoPulse.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
}
```

This does not close `SOURCE.NO-PULSE.A`; it closes the direct `MSC.DiagTether`
attempt by identifying the first theorem that must preserve co-location before
global absolute-value estimates erase it.
