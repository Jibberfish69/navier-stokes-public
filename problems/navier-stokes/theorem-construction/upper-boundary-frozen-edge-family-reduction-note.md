# Upper-Boundary Frozen Edge-Family Reduction Note

## Purpose

This note records the sharpest explicit same-scale normal form currently
supported for the upper-boundary packet

```math
\mathfrak B_N^{upper}(t)
:=
\int (\partial_s\chi_{mid})(s)\,\Psi(s,t)\,ds.
\tag{1}
```

The point is not to prove the final upper-boundary estimate `(UB)` here. The
point is to rewrite `\mathfrak B_N^{upper}` as a finite same-scale edge family
plus collar residual, so the only genuinely missing theorem becomes the model
same-scale edge absorption estimate.

## Input surfaces already available

The current route already supplies:

1. one fixed global LP family `P_{\le \ell}`, `Q_\ell`, and the raw potential
   `\Psi_\ell^{raw}`, from
   `global-signed-lp-balance-reduction-note.md`;
2. the Step 1 local balance rewrite
   \[
   \mathfrak c_\ell^{transpose}+\mathfrak w_\ell
   \rightsquigarrow
   \nabla_x\cdot J_\ell+\partial_tR_\ell+\mathcal E_\ell,
   \]
   from `transpose-profile-local-balance-identity-note.md`;
3. the fact that, on the same-scale side, no new free far scale may survive in
   the residual.

So the remaining upper-boundary question is local-in-scale.

## Collar freezing

Let `s=-\log \ell` and let `s_N=-\log \ell_N`. Since `\partial_s\chi_{mid}` is
supported in a collar of fixed width `C_\chi` near the top edge,

```math
\operatorname{supp}(\partial_s\chi_{mid})
\subset
\{\,|s-s_N|\le C_\chi\,\}.
\tag{2}
```

Throughout the integration in `(1)` one has

```math
e^{-C_\chi}\ell_N\le \ell\le e^{C_\chi}\ell_N,
\qquad
e^{-C_\chi}\ell_N^{-1}\le \ell^{-1}\le e^{C_\chi}\ell_N^{-1},
\tag{3}
```

with constants depending only on the fixed cutoff profile.

This is the exact freezing step: every scale-dependent multiplier appearing in
`\Psi(s,t)` is evaluated only on a bounded relative-offset collar around the
active scale.

## Symbol templates on the collar

On the collar `(2)`, the only multiplier families that can appear are built
from finitely many symbolic templates:

1. `P_{\le \ell}` and `Q_\ell`;
2. the drift derivative `\ell\partial_\ell b_\ell^{meso}`;
3. the Stage A correction symbols from `\Psi_\ell^{corr}`;
4. the same-scale commutator coefficient derivatives coming from
   `\nabla\cdot C_\ell` and `\nabla C_\ell`.

Because the LP profile is fixed and smooth, and because the collar width is
bounded independently of `N`, these templates generate only a finite family
`\{M_a(\ell_N D)\}_{a\in \mathcal A_{ub}}` of annular order-zero multipliers
with bounded relative offset from the active scale.

So the collar does not create a continuum of new packet types. It creates a
finite symbolic family at one frozen scale.

## Exact reduction shape

The upper-boundary packet should therefore be read in the form

```math
\mathfrak B_N^{upper}(t)
=
\sum_{a\in\mathcal A_{ub}} c_a\,\Pi_{N,a}^{edge}(t)
+
\mathcal E_N^{ub,collar}(t),
\tag{4}
```

where:

```math
\Pi_{N,a}^{edge}(t)
```

is the scalarized same-scale commutator / stress-strain pairing associated to
the divergence-free annular multiplier field `M_a(\ell_N D)u`, and

```math
\mathcal E_N^{ub,collar}(t)
```

contains only the already admissible collar leftovers:

- spill-edge contributions,
- same-scale commutator leftovers,
- profile corrections that remain bounded-gap at the active scale.

No free far-scale packet is allowed inside `\mathcal E_N^{ub,collar}`.

## Why `(4)` is the right explicit family statement

The ingredients of `(4)` come directly from the existing notes:

1. the raw upper-boundary potential is already global and explicit;
2. the transpose/weight channel is already reclassified as flux/time plus
   admissible residual;
3. on the top collar, every surviving multiplier is same-scale because `(3)`
   fixes the relative scale ratio between `e^{-C_\chi}` and `e^{C_\chi}`;
4. the only large-gap survivor of Step 1 is the middle-band packet, which is
   not created anew on the upper collar.

So the honest same-scale claim is not “the upper boundary is estimated already.”
It is:

```math
\text{the upper boundary is already reduced to a finite same-scale edge family plus collar residual.}
\tag{5}
```

## Weighted-carrier consequence

The reduction `(4)` is already enough to put the upper-boundary packet on the
installed weighted carrier surface. Assume the collar residual obeys the same
admissible residual bound used in
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md):

```math
\int_0^T |\mathcal E_N^{ub,collar}(t)|\,dt
\le
\varepsilon_{ub}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{ub,*}^{res}2^{-2\delta N}.
\tag{6}
```

For each frozen edge packet, the model same-scale theorem and carrier kill
already give

```math
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_a\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{7}
```

Summing `(7)` over the finite family `\mathcal A_{ub}` in `(4)` and then using
`(6)` yields the explicit weighted-carrier corollary

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\varepsilon_{ub}\nu\int_0^T D_N(t)\,dt
+
C_{ub}\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt
+
C_{ub,*}2^{-2\delta N}.
\tag{UB^\sharp\text{-}carrier}
```

So on the weighted spectral carrier-floor-leakage route the upper-boundary
packet is no longer a distinct analytic theorem burden. Once the frozen family
reduction `(4)` is invoked, the packet already sits on the same installed
carrier surface as the rest of the same-scale side.

## Honest boundary

This note does **not** prove the coefficient-level identity `(4)` term by term
from a fully written explicit formula for `\Psi_\ell`.

That is the remaining local algebraic packaging step.

What this note fixes is the correct target of that algebraic step:

```math
\text{write } \mathfrak B_N^{upper}
\text{ as a finite family at frozen scale } \ell_N,
\text{ not as a new large-gap packet.}
\tag{8}
```

Once `(4)` is written explicitly, the weighted-carrier consequence
`(\mathrm{UB}^\sharp\text{-carrier})` is already available. So the remaining
gap on this note is not a new analytic theorem; it is only the coefficientwise
writeup of the frozen same-scale family reduction.
