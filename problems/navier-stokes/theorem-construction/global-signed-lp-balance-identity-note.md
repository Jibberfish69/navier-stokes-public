# Global Signed LP Balance Identity Note

## Purpose

This note performs the first exact move in the signed continuous-scale closure
program:

```math
\text{replace local overlap language by one fixed global LP family.}
```

It does **not** prove the quantitative barrier estimates. What it does is
remove one source of avoidable mystery: the signed balance identity itself does
not need to be introduced through local patches and later gluing. It can be
written globally from one fixed continuous Littlewood--Paley family.

So the cocycle language is no longer the first existence mechanism for the
signed route. It becomes, at most, a comparison language for alternative local
presentations of one already global identity.

## Global setup

Fix one smooth low-pass family

```math
P_{\le \ell}:=\varphi(\ell D),
\qquad
Q_\ell:=-\,\ell\partial_\ell P_{\le \ell},
\qquad
u_\ell:=Q_\ell u.
\tag{1}
```

For the lifted mesoscopic band define

```math
b_\ell^{meso}
:=
P_{\le c/\ell}u - P_{\le 2^{N+M}}u.
\tag{2}
```

Define the global signed commutator density

```math
\mathfrak c_\ell(x,t)
:=
\ell^{-2}\,
u_\ell(x,t)\,
[Q_\ell,b_\ell^{meso}(t)\cdot\nabla]u(x,t),
\tag{3}
```

and the cumulative commutator potential

```math
\mathcal A_\ell(x,t)
:=
\ell^{-2}
\big([P_{\le \ell},b_\ell^{meso}(t)\cdot\nabla]u(t)\big)(x)\,
\big(P_{\le \ell}u(t)\big)(x).
\tag{4}
```

All of `(1)`-`(4)` are globally defined on

```math
Z_N:=(0,\ell_N]_\ell\times\mathbb R^3_x\times[0,T]_t.
```

No cover and no overlap data are required to define them.

## Global differentiation identity

Differentiate `(4)` in logarithmic scale. Since

```math
Q_\ell=-\,\ell\partial_\ell P_{\le \ell},
\tag{5}
```

the derivative produces the band-pass commutator directly:

```math
\ell\partial_\ell \mathcal A_\ell
=
\mathfrak c_\ell
+
\mathfrak c_\ell^{transpose}
+
\mathfrak s_\ell^{edge}
+
\mathfrak w_\ell.
\tag{6}
```

Here:

- `\mathfrak c_\ell` is the signed lifted commutator density `(3)`;
- `\mathfrak c_\ell^{transpose}` comes from differentiating the second
  low-pass factor;
- `\mathfrak s_\ell^{edge}` is the derivative of the drift
  `\ell\partial_\ell b_\ell^{meso}`;
- `\mathfrak w_\ell` collects the derivative of the scalar prefactor and smooth
  multiplier profile.

This identity is global because every term is built from the same global family
`P_{\le \ell},Q_\ell`.

## Why the edge term is already local in scale

From `(2)`,

```math
\ell\partial_\ell b_\ell^{meso}
=
\ell\partial_\ell P_{\le c/\ell}u.
\tag{7}
```

The fixed cutoff `P_{\le 2^{N+M}}u` is independent of `\ell`, so it drops out.
Therefore the derivative of the drift sees only the top edge of the mesoscopic
window. It does **not** recreate the full lifted bulk.

So the global scale derivative already splits the hard geometry into:

```math
\text{bulk scale derivative}
\quad+\quad
\text{top-edge spill packet}.
\tag{8}
```

That is the key structural gain from the global LP representation.

## Global signed balance form

Insert the Navier--Stokes equation on the globally defined low-pass field
`P_{\le \ell}u`. After regrouping the transpose term and the profile term,
define global fields `\Psi_\ell,J_\ell,R_\ell,\mathcal S_\ell^{spill},
\mathcal E_\ell` by the explicit algebraic decomposition of the differentiated
low-pass commutator pairing.

Then the signed density satisfies a global identity of the same shape as the
local one:

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal S_\ell^{spill}
+
\mathcal E_\ell.
\tag{GSB}
```

The important point is not the letter names. It is that `(GSB)` is obtained
from one global calculation on `(1)`-`(4)`.

## Consequence for the cocycle language

The older local formulation said:

```math
\text{build local signed potentials on }U_\alpha,
\quad
\text{then ask whether they glue.}
\tag{9}
```

After `(GSB)`, the better reading is:

```math
\text{one global signed balance identity already exists;}
```

```math
\text{local potentials are restrictions or alternative normal forms of that global identity.}
\tag{10}
```

So the cocycle question should be demoted from

```math
\text{existence of the signed representation}
```

to

```math
\text{uniqueness / transportability / compatibility of alternate local representatives.}
\tag{11}
```

This is the sane use of the cocycle language on the current route.

## What remains genuinely analytic

Writing `(GSB)` globally does **not** close the theorem. It only clears away the
representation issue.

The actual analytic debts remain:

1. the upper-boundary barrier estimate on `\mathfrak B_N^{upper}`;
2. the finite-offset moving-spill stability theorem;
3. the far-corona `CTS` / `LPAS` theorem.

So the route becomes:

```math
\text{global signed identity}
\Longrightarrow
\text{boundary + near-corona + far-corona theorems}.
\tag{12}
```

## Honest boundary

This note does **not** provide a full coefficient-level derivation of the
explicit formulas for `\Psi_\ell,J_\ell,R_\ell`. It records the correct global
theorem shape and the exact reason that local gluing is not the primary
obstruction anymore.

That is enough to justify the next theorem moves:

- attack the upper boundary as a finite-width same-scale packet;
- attack the near corona by finite-offset spill stability;
- reserve the genuine large-gap work for `CTS` / `LPAS`.
