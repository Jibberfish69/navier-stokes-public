# MPP Open Dead-Patch Rigidity Theorem

## Status

Candidate theorem-facing rigidity note with classical analyticity import.

Role: first literal dead-tower rigidity lemma on the class-membership branch.

This note isolates only the strongest dead-patch statement:

```text
a nonempty open region of the positive-time connected fluid cannot be identically
dead while the rest of that connected component remains live.
```

It does **not** yet prove the full dead-tower rigidity theorem. It proves only
the open-set vanishing form.

## Purpose

Discharge the first rigidity slot in the sharpest literal form:

```math
\boxed{
\text{open-set deadness at positive time forces whole-component collapse on that time slice.}
}
\tag{DTR.0}
```

This is the theorem-grade version of the bug-check:

```text
can a nonempty open region of the same connected positive-time MPP fluid be
completely zeroed out?
```

For the actual fluid field, the answer is no.

## Route Position

The class-membership notes already separate:

1. ordinary stagnation, which is allowed;
2. dead-tower / transport-dead failure, which is a class-exit notion;
3. blown-tower / packing failure;
4. jump-tower / one-field failure.

This note settles only one strongest literal subcase of item 2:

```math
u(\cdot,t_0)\equiv 0
\quad\text{on a nonempty open region.}
\tag{DTR.0a}
```

That subcase is already too rigid to occur locally inside a connected
positive-time classical field.

## Imported Classical Infrastructure

The proof spends exactly the following imported classical facts. They are not
scale estimates and they are not consequences of the class-membership grammar
itself; they are external hypotheses of this note on the periodic or decaying
whole-space classical Navier--Stokes surface.

### Import 1. Positive-time spatial analyticity

Let `\Omega=\mathbf T^3`, or let `\Omega=\mathbf R^3` with the same decaying
classical solution class used below for pressure normalization and uniqueness.
If `(u,p)` is a classical incompressible Navier--Stokes solution on
`\Omega\times[0,T)` and `t_0\in(0,T)`, then each component
`u_i(\cdot,t_0)` is real analytic on each connected component of `\Omega`.

### Import 2. Identity theorem for analytic fields

If a real-analytic scalar function on a connected domain vanishes on a nonempty
open set, then it vanishes identically on that connected component.

### Import 3. Classical uniqueness from zero data

On the same periodic or decaying whole-space classical surface, with pressure
normalized in the theorem-surface class, if
`u(\cdot,t_0)\equiv 0`, then the classical continuation from `t_0` is unique and
is the trivial velocity solution on `[t_0,T)`.

Thus Theorem `DTR.1` uses only Import 1 plus the identity theorem. Corollary
`DTR.3` additionally uses Import 3. No profile assumption, same-scale estimate,
or linearized dead-patch estimate is being used.

## Exact Theorem

### Theorem DTR.1 (open dead-patch rigidity at positive time)

Let `\Omega=\mathbf T^3` or `\mathbf R^3`, and let `(u,p)` be a classical
incompressible Navier--Stokes solution on `\Omega\times[0,T)` belonging to one
of the imported theorem-surface classes above. Fix `t_0\in(0,T)`. Assume
`\Omega` is connected on the chosen theorem surface, and use Import 1 so that
each component `u_i(\cdot,t_0)` is real analytic on `\Omega`.

If there exists a nonempty open set `U\subset\Omega` such that

```math
u(x,t_0)=0
\qquad
\text{for every }x\in U,
\tag{DTR.1}
```

then

```math
u(\cdot,t_0)\equiv 0
\qquad
\text{on all of }\Omega.
\tag{DTR.2}
```

Equivalently:

```math
\boxed{
\text{a nonempty open dead patch at positive time cannot sit inside an otherwise live connected classical NS slice.}
}
\tag{DTR.3}
```

### Proof

By positive-time spatial analyticity, each component `u_i(\cdot,t_0)` is a
real-analytic function on the connected domain `\Omega`.

Since `u_i=0` on the nonempty open set `U`, the analytic identity theorem gives

```math
u_i(\cdot,t_0)\equiv 0
\qquad
\text{on }\Omega
\tag{DTR.4}
```

for each component `i=1,2,3`. Hence `(DTR.2)` holds. ∎

## Strengthened Corollaries

### Corollary DTR.2 (all higher spatial derivatives vanish on the region)

Under the hypotheses of Theorem `DTR.1`, if in addition

```math
\partial_x^\alpha u(x,t_0)=0
\qquad
\text{for every multiindex }\alpha
\text{ and every }x\in U,
\tag{DTR.5}
```

then the same conclusion `(DTR.2)` holds. This stronger hypothesis adds no new
local freedom; `u=0` on the open set already forces the collapse.

### Corollary DTR.2a (pointwise infinite-order deadness collapses the slice)

Under the hypotheses of Theorem `DTR.1`, assume there exists one point
`x_\ast\in\Omega` such that

```math
\partial_x^\alpha u(x_\ast,t_0)=0
\qquad
\text{for every multiindex }\alpha.
\tag{DTR.5a}
```

Then

```math
u(\cdot,t_0)\equiv 0
\qquad
\text{on all of }\Omega.
\tag{DTR.5b}
```

**Proof.**
By positive-time spatial analyticity, each component `u_i(\cdot,t_0)` admits its
convergent Taylor expansion at `x_\ast`. Since every spatial derivative of every
component vanishes at `x_\ast`, every Taylor coefficient is zero, so
`u(\cdot,t_0)=0` on some neighborhood of `x_\ast`. Theorem `DTR.1` then gives
`(DTR.5b)`. ∎

### Corollary DTR.3 (future-time collapse on the standard surface)

Assume the setting of Theorem `DTR.1` and the standard periodic or decaying
whole-space normalization for pressure.

If `(DTR.2)` holds, then

```math
-\Delta p(\cdot,t_0)=\partial_i\partial_j(u_i u_j)(\cdot,t_0)=0.
\tag{DTR.6}
```

So `p(\cdot,t_0)` is constant on the theorem surface, hence

```math
\nabla p(\cdot,t_0)=0.
\tag{DTR.7}
```

The equation at time `t_0` becomes

```math
\partial_t u
=
-(u\cdot\nabla)u-\nabla p+\nu\Delta u
=0.
\tag{DTR.8}
```

By classical uniqueness from the zero datum at `t_0`,

```math
u(\cdot,t)\equiv 0
\qquad
\text{for all }t\in[t_0,T).
\tag{DTR.9}
```

So an open dead patch forces not merely local silence but trivial continuation on
the standard theorem surface.

## Interpretation

This theorem proves:

1. open-set literal deadness is over-rigid;
2. the actual dead-tower burden cannot be reduced to an ordinary open zero patch;
3. if dead-tower is real, it must be a stronger class-membership nonparticipation
   notion than simple open-set vanishing of `u`.

So the theorem sharpens the endpoint doctrine:

```math
\text{transport-dead / tower-dead}
\neq
\text{ordinary open region with }u=0.
\tag{DTR.10}
```

The latter already collapses to whole-slice triviality.

## Honest Boundary

This note does **not** yet prove:

1. the full dead-tower rigidity theorem for lower-dimensional or non-open dead
   sets;
2. exclusion of strong class-membership nonparticipation not represented by
   literal open-set vanishing;
3. the jump-tower rigidity theorem.

It only settles the strongest literal open-patch version.

## Downstream Use

This theorem should be used as the first installed rigidity lemma in the
class-membership stack:

1. it supports the claim that `transport-dead` is stronger than ordinary
   stagnation;
2. it reduces the remaining dead-tower burden to non-open-set or genuinely
   participation-law failure modes;
3. it belongs in the structural-rigidity layer before the packet first-exit /
   endpoint-exclusion handoff.

## Source Surfaces

Primary local surfaces for this theorem:

1. `problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md`
2. `problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
3. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
4. `problems/navier-stokes/theorem-construction/external-classical-validation-note.md`
