# Transpose-Weight To Flux-Time Rewrite Program

## Purpose

This note isolates the exact algebraic burden left after the global LP-family
reduction on the signed continuous-scale route.

The proof target here is identity-first, not estimate-first:

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
\tag{0}
```

with `\mathcal E_\ell` required to stay on named admissible residual surfaces
and not reintroduce a free far-scale packet.

From
[global-signed-lp-balance-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/global-signed-lp-balance-reduction-note.md),
the remaining Step 1 task is:

```math
\mathfrak c_\ell^{transpose}
+
\mathfrak w_\ell
\rightsquigarrow
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal E_\ell.
\tag{1}
```

This note does **not** prove `(1)`. It records the exact sane proof shape for
that rewrite.

## Proposition

For the fixed global LP family, the proposition to prove is that the
transpose/profile channel admits a local balance rewrite of the form `(0)`
after:

1. renormalizing away the pure scale-primitive part,
2. inserting the low-pass Navier--Stokes equation into the remaining dynamic
   term,
3. integrating by parts to expose exact divergence and time-derivative
   structure,
4. checking that every leftover belongs to an already named admissible residual
   surface.

The failure mode is a free far scale `r \gg \ell` surviving inside the
residual. That means the term is still carrying a genuine long lifted
interaction rather than a local flux/time response.

## Starting identity

With one fixed global LP family, the raw signed balance is

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
\tag{2}
```

where

```math
\Psi_\ell^{raw}
:=
\ell^{-2}
\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
u_{\le \ell}
\rangle,
\tag{3}
```

```math
\mathfrak c_\ell^{transpose}
:=
\ell^{-2}
\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
Q_\ell u
\rangle,
\tag{4}
```

and `\mathfrak w_\ell` is the derivative of the scalar weight / smooth LP
profile.

The edge term `\mathfrak s_\ell^{edge}` is already known to be the spill
channel. So the unresolved algebra on Step 1 is exactly the pair
`\mathfrak c_\ell^{transpose}+\mathfrak w_\ell`.

## What the rewrite means

The claim `(1)` is read as:

```math
\text{the transpose/profile channel is not another long lifted interaction;}
```

```math
\text{it is the dynamic response of the low-pass field }u_{\le \ell}
\text{ and is expressible as}
```

```math
\text{space flux}
\quad+\quad
\text{time evolution}
\quad+\quad
\text{admissible residual}.
\tag{5}
```

So the right target is a **local balance law**, not an estimate by absolute
values.

Equivalently, the transpose/profile channel must be reclassified as a dynamic
response of `u_{\le \ell}` rather than as an independent long-range source.
The only acceptable outputs are:

- an exact spatial flux term,
- an exact time-derivative term,
- or a residual term already known to be bounded-gap / spill / middle-band.

## Two-stage proof shape

The proof runs in two algebraic stages.

### Stage A: renormalize the raw scale potential

The transpose term comes from differentiating the second low-pass factor in
`\Psi_\ell^{raw}`. The weight term comes from differentiating `\ell^{-2}` and
the smooth multiplier profile.

So the first move is to replace `\Psi_\ell^{raw}` by a renormalized signed
potential

```math
\Psi_\ell
=
\Psi_\ell^{raw}
+
\Psi_\ell^{corr},
\tag{6}
```

chosen so that

```math
\mathfrak c_\ell^{transpose}
+
\mathfrak w_\ell
=
(\ell\partial_\ell)\Psi_\ell^{corr}
+
\mathcal W_\ell^{dyn}.
\tag{7}
```

The point of `(7)` is not to eliminate everything. It is to strip off the pure
scale-primitive part first, leaving one dynamically meaningful remainder
`\mathcal W_\ell^{dyn}`.

This is the signed-route version of a normal-form step: absorb whatever is
literally a scale derivative before invoking the PDE.

### Stage B: rewrite the dynamic remainder by the low-pass NS equation

After Stage A, the remaining term `\mathcal W_\ell^{dyn}` is rewritten
using the low-pass equation

```math
\partial_t u_{\le \ell}
+
P_{\le \ell}\big((u\cdot\nabla)u\big)
+
\nabla p_{\le \ell}
=
\nu\Delta u_{\le \ell}.
\tag{8}
```

The sane goal is

```math
\mathcal W_\ell^{dyn}
=
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal E_\ell.
\tag{9}
```

This is where the PDE enters. Up to Stage A, everything is only LP algebra.

The low-pass equation is used as an exact substitution rule, not as a black-box
bound. The only data needed from it are the transport, pressure, and viscous
pieces of `\partial_t u_{\le \ell}`.

## What `R_\ell`, `J_\ell`, and `\mathcal E_\ell` are

The exact formulas are not yet written, so only the candidate core can be named
here.

### Time potential `R_\ell`

`R_\ell` comes from a renormalized commutator-energy pairing between the global
commutator output and the low-pass state `u_{\le \ell}`, after the Stage A
correction terms are written.

The first candidate core is:

```math
R_\ell^{core}
:=
\ell^{-2}
\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
u_{\le \ell}
\rangle.
\tag{10}
```

The Stage A correction terms still have to be written before this becomes an
exact formula for `R_\ell`. Once `\partial_t` hits the completed pairing, the
low-pass NS equation can be inserted directly.

The time derivative is the place where the transpose channel stops being a
scale derivative and becomes a genuine evolution term.

### Space flux `J_\ell`

`J_\ell` collects the transport, pressure, and viscous fluxes produced
when the low-pass NS equation is substituted into `\partial_t R_\ell` and the
result is integrated by parts in `x`.

So `J_\ell` is not mysterious. It is the sum of the exact divergence-form
terms generated by:

- the low-pass transport flux,
- the pressure flux,
- the viscous flux,
- and any commutator flux corrections that remain in exact divergence form.

The intended algebraic decomposition is:

```math
-C_\ell\cdot P_{\le \ell}\big((u\cdot\nabla)u\big)
=
-\nabla_x\cdot\big(C_\ell : P_{\le \ell}(u\otimes u)\big)
+
\mathrm{Comm}^{tr}_\ell,
\tag{12}
```

```math
-C_\ell\cdot \nabla p_{\le \ell}
=
-\nabla_x\cdot(p_{\le \ell} C_\ell)
+
\mathrm{Comm}^{pr}_\ell,
\tag{13}
```

```math
\nu\,C_\ell\cdot \Delta u_{\le \ell}
=
\nu\,\nabla_x\cdot(C_\ell\cdot\nabla u_{\le \ell})
+
\mathrm{Comm}^{vis}_\ell.
\tag{14}
```

The flux `J_\ell` is the sum of the exact divergence-form pieces in
`(12)`--`(14)`.

### Residual `\mathcal E_\ell`

`\mathcal E_\ell` contains only terms that are already on an admissible
residual surface:

- profile/weight corrections left after Stage A,
- bounded-gap commutator corrections from the low-pass nonlinear term,
- viscosity leftovers not fitting exact flux or time-derivative form,
- terms already reducible to spill or middle-band residual classes.

The crucial constraint is:

```math
\mathcal E_\ell
\text{ must not secretly contain another copy of the long lifted packet.}
\tag{11}
```

In particular, if the residual still depends on an unconstrained far scale
`r \gg \ell`, then it is not admissible yet. It must be pushed back into the
named middle-band / spill / bounded-gap classes before the rewrite counts as a
success.

## The actual proof mechanism

The proof therefore runs as follows.

1. Write
   \[
   C_\ell := \ell^{-2}[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u.
   \]

2. Differentiate the raw potential and obtain `(2)`.

3. Build the correction `\Psi_\ell^{corr}` so that the pure scale-primitive
   part of `\mathfrak c_\ell^{transpose}+\mathfrak w_\ell` is absorbed into
   `( \ell\partial_\ell)\Psi_\ell`.

4. For the leftover `\mathcal W_\ell^{dyn}`, use the low-pass NS equation `(8)`
   on `u_{\le \ell}`.

5. Expand the transport, pressure, and viscous pieces and integrate by parts in
   `x` to isolate exact divergence terms. Package these into `J_\ell`.

6. Use the time derivative landing on the commutator-energy pairing to define
   `R_\ell`.

7. Check that every nonexact leftover lands in the already admissible residual
   class `\mathcal E_\ell`, with the spill piece still separated.

## Sanity test

The rewrite is accepted only if every leftover term satisfies at least one of
the following:

- exact `\nabla_x\cdot(\cdot)` form,
- exact `\partial_t(\cdot)` form,
- already named admissible residual classification.

If a term cannot be assigned to one of those, and instead carries a free
large-gap parameter `r \gg \ell`, then it is a hidden long-range source and the
rewrite has failed.

So the proof is a **normal-form plus conservation-law rewrite**:

```math
\text{scale renormalization first,}
\qquad
\text{low-pass NS balance second.}
\tag{12}
```

## What not to do

Three things would be mistakes here.

### 1. Do not take absolute values first

If one estimates `\mathfrak c_\ell^{transpose}` before rewriting it, the local
balance structure is destroyed and the route falls back into shellwise positive
bookkeeping.

### 2. Do not treat gluing as the primary issue

With one fixed LP family, the identity is global from the start. The remaining
content is symbolic algebra, not sheaf theory.

### 3. Do not hide the far-corona theorem inside `\mathcal E_\ell`

The residual may land on the middle-band / far-corona route, but it must do so
honestly through the already named packets. `\mathcal E_\ell` is not allowed to
be a black box containing the whole open theorem.

## Exact next theorem note

The smallest honest next theorem note after this program is:

```math
\text{an explicit symbolic derivation of }(7)\text{ and }(9)
\text{ from }(2)\text{ and }(8).
\tag{13}
```

That note should:

- write the Stage A correction `\Psi_\ell^{corr}`,
- define `R_\ell` explicitly,
- list the exact divergence pieces entering `J_\ell`,
- and identify the residual pieces entering `\mathcal E_\ell`.

That theorem-facing target is now recorded in
[transpose-profile-local-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-profile-local-balance-identity-note.md),
which states the active local balance identity `(TP-LBI)` and the explicit
transport/pressure/viscous decomposition that must be checked term-by-term.

That sharper theorem-facing anchor is now recorded in
[transpose-profile-local-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-profile-local-balance-identity-note.md),
which states the exact local balance target, the transport/pressure/viscous
decomposition, and the admissibility test forbidding a free far scale
`r \gg \ell` from surviving inside `\mathcal E_\ell`.
The canonical local-balance note now also carries the narrower Step 1
classification of the explicit PDE-response remainders: no new residual
geometry appears beyond bounded-gap/collar terms, the existing middle-band
packet, and same-scale short-range viscosity structure.

## Honest boundary

This note does **not** prove `(1)`.

What it does settle is how the proof should be organized:

```math
\text{transpose/profile channel}
\Longrightarrow
\text{scale renormalization}
\Longrightarrow
\text{low-pass NS flux/time rewrite}
\Longrightarrow
\text{admissible residual}.
\tag{14}
```

That is the cleanest sane route I can see for this algebraic step.
