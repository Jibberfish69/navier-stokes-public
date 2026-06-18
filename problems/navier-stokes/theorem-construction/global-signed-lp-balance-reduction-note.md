# Global Signed LP Balance Reduction Note

## Purpose

This note records the first honest theorem move for the signed continuous-scale
route:

```math
\text{replace local gluing language by one fixed global Littlewood-Paley family.}
```

It does **not** prove the full signed theorem `(L-Signed)`. What it does prove
is the exact algebraic reduction that survives once one stops speaking
abstractly about cocycles and instead works from one global multiplier family.

The gain is methodological but real:

```math
\text{gluing is no longer a separate theorem burden;}
\quad
\text{the remaining burden is explicit symbolic rewriting.}
```

## Global setup

Fix one smooth global continuous Littlewood-Paley family

```math
P_{\le \ell}:=\varphi(\ell D),
\qquad
Q_\ell:=-\,\ell\partial_\ell P_{\le \ell},
\qquad
u_\ell:=Q_\ell u,
\qquad
u_{\le \ell}:=P_{\le \ell}u.
\tag{1}
```

Let the global mesoscopic drift be

```math
b_\ell^{meso}
:=
P_{\le c/\ell}u - P_{\le 2^{N+M}}u.
\tag{2}
```

Define the global signed commutator density

```math
\mathfrak c_\ell
:=
\ell^{-2}\,
\big\langle
u_\ell,\,
[Q_\ell,b_\ell^{meso}\!\cdot\nabla]u
\big\rangle.
\tag{3}
```

Define the raw cumulative commutator potential

```math
\Psi_\ell^{raw}
:=
\ell^{-2}\,
\big\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
u_{\le \ell}
\big\rangle.
\tag{4}
```

All objects in `(1)`-`(4)` are globally defined on the full scale interval
`0<\ell\le \ell_N`. So there is no genuine local-chart ambiguity at this level.

## Lemma A: global raw scale derivative identity

For the globally defined raw potential `(4)`, one has the exact identity

```math
\ell\partial_\ell \Psi_\ell^{raw}
=
\mathfrak c_\ell
+
\mathfrak c_\ell^{transpose}
+
\mathfrak s_\ell^{edge}
+
\mathfrak w_\ell,
\tag{5}
```

where:

```math
\mathfrak c_\ell^{transpose}
:=
\ell^{-2}\,
\big\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
Q_\ell u
\big\rangle,
\tag{6}
```

```math
\mathfrak s_\ell^{edge}
:=
\ell^{-2}\,
\big\langle
[P_{\le \ell},(\ell\partial_\ell b_\ell^{meso})\!\cdot\nabla]u,\,
u_{\le \ell}
\big\rangle,
\tag{7}
```

and `\mathfrak w_\ell` is the exact derivative-of-weight term coming from
`\ell^{-2}` and the smooth multiplier profile. It remains on the ledger as a
fixed multiplier-derivative contribution; it may be bounded only by the
corresponding uniform profile-derivative constants.

### Proof

Differentiate `(4)` in logarithmic scale.

Because

```math
Q_\ell=-\,\ell\partial_\ell P_{\le \ell},
\tag{8}
```

the derivative of the first low-pass factor produces the signed commutator
density `(3)`. The derivative of the second low-pass factor produces the
transpose term `(6)`. The derivative falling on the drift produces `(7)`. The
remaining scalar profile derivatives are exactly `\mathfrak w_\ell`.

This is the same computation previously recorded locally in
`signed-lifted-band-scale-descent-identity.md`, but here it is already global
because all multiplier fields are global.

## Lemma B: the drift derivative is exactly the spill channel

The derivative of the global mesoscopic drift is

```math
\ell\partial_\ell b_\ell^{meso}
=
\ell\partial_\ell P_{\le c/\ell}u.
\tag{9}
```

So `\mathfrak s_\ell^{edge}` is supported only at the top edge of the
mesoscopic band. In particular, it is a same-scale spill term, not a new long
lifted interaction.

### Proof

The lower cutoff `P_{\le 2^{N+M}}u` is fixed in `\ell`, so only the upper edge
of the mesoscopic band moves under `\ell\partial_\ell`. That is exactly the
structural reason the edge term belongs to the spill collar geometry.

## Corollary: gluing is not the next theorem

If one works with the fixed global LP family `(1)`, then the signed route is
already globally defined up to the explicit symbolic terms in `(5)`.

So the next theorem is **not**

```math
\text{a sheaf-theoretic gluing theorem for local LP charts.}
\tag{10}
```

The next theorem is the global symbolic rewrite:

```math
\mathfrak c_\ell^{transpose}
+
\mathfrak w_\ell
\rightsquigarrow
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal E_\ell,
\tag{11}
```

with `\mathcal E_\ell` already on the admissible residual surface.

That is the honest remaining algebraic content of Step 1.

## Exact remaining algebraic move

To turn `(5)` into the global signed balance

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
\mathcal E_\ell,
\tag{12}
```

one has to rewrite the transpose and weight terms using the low-pass
Navier--Stokes equation

```math
\partial_t u_{\le \ell}
+
P_{\le \ell}\big((u\cdot\nabla)u\big)
+
\nabla p_{\le \ell}
=
\nu \Delta u_{\le \ell}.
\tag{13}
```

So the smallest honest next note after this one is not a proof of `(12)`, but
an explicit symbolic derivation of `(11)` from `(13)` for the fixed global LP
family.

That program note is now recorded in
[transpose-weight-to-flux-time-rewrite-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-weight-to-flux-time-rewrite-program.md):
the sane proof shape is a two-stage rewrite, first absorbing the pure
scale-primitive part of the transpose/profile channel into a renormalized scale
potential, then using the low-pass Navier--Stokes equation to rewrite the
dynamic remainder as `\nabla_x\cdot J_\ell + \partial_t R_\ell + \mathcal E_\ell`.
The exact local theorem target for that step is now written in
[transpose-profile-local-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-profile-local-balance-identity-note.md).

## What this settles

This note settles exactly one issue:

```math
\text{with one fixed LP family, the signed route is globally posed from the start.}
\tag{14}
```

The first new work item is therefore explicit algebra on global formulas, not a
new abstraction about overlap classes.

## Honest boundary

This note does **not** prove the full global signed balance `(12)`.

What it does prove is that the route can be globalized without adding a new
theorem burden. After globalizing, the remaining content is concrete and
visible:

```math
\text{write }J_\ell,\ R_\ell,\ \mathcal E_\ell
\text{ explicitly from the transpose/weight channel.}
\tag{15}
```
