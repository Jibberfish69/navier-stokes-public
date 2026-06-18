# Relative-Band Quotient Compactness Formalization Note

## Purpose

This note formalizes the first serious candidate for a genuinely non-Sobolev
compactness notion that can see the moving mesoscopic band geometry left alive
by the current Navier-Stokes obstruction.

The point is not to replace the existing classical compactness bridge on the
velocity field. The point is to add a second compactness layer on a lifted
relative-scale profile, so that the fixed low/high decomposition on `u^(n)`
and the moving mesoscopic survivor are no longer conflated.

The exact theorem shape this new layer would need to satisfy on a
blowup-normalized class is recorded in
[survivor-compactness-coercivity-theorem-shape-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/survivor-compactness-coercivity-theorem-shape-note.md).

## Why the current compactness bridge is not enough

The current classical compactness package is fixed-cutoff:

```math
\mathfrak K_{R,N}[u^{(n)},u]
:=
\limsup_{n\to\infty}\|P_{<N}(u^{(n)}-u)\|_{L^2_tL^2(B_R)}
\;+\;
\sup_m \|P_{\ge N}u^{(m)}\|_{L^2_tL^2(B_R)}.
```

Its proof is:

1. compactify `P_{<N}u^{(n)}` by Aubin-Lions;
2. make `P_{\ge N}u^{(n)}` small by the scale barrier;
3. recombine.

This sees:

- fixed low modes,
- fixed high tails.

It does **not** natively see the moving lifted-band geometry

```math
N+M<k<j-4,
```

or its continuum analogue

```math
r \ge c_1 \ell,
\qquad
\ell \text{ active},\ r \text{ coarser}.
```

That geometry is relative, not absolute. It is indexed by **gap from the
active scale**, not by one fixed threshold.

So the current compactness bridge closes nonlinear passage on the total
velocity space, but it does not automatically kill the mesoscopic survivor
class.

## Lifted relative-band profile

The right object is not the velocity field alone, but a lifted profile on the
relative-scale variables.

Let `s` denote active logarithmic scale and let `\rho` denote relative gap:

```math
s := -\log \ell,
\qquad
\rho := s-\sigma \ge \kappa,
```

where `\sigma` is the lower/coarser logarithmic scale and `\kappa > 0`
encodes the fixed collar offset.

The relative-band domain is therefore

```math
\mathcal T_\kappa
:=
\{(s,\rho): s \in \mathbb R,\ \rho \in [\kappa,\infty)\}.
```

For a route-dependent interaction form `\mathcal B`, define the lifted
relative-band profile

```math
\mathcal Z^{(n)}(s,\rho,x,t)
:=
\mathcal B\!\left(Q_{e^{-(s-\rho)}}u^{(n)}(t),\,Q_{e^{-s}}u^{(n)}(t)\right)(x).
\tag{RBP}
```

Examples:

1. **Body `1` lifted-band transport**

```math
\mathcal B_1(a,b):= a\,\nabla b.
```

Then `\rho` records the shell gap `j-k`.

2. **Far-corona / cumulative-tail route**

```math
\mathcal B_2(a,b):= \tau_{e^{-(s-\rho)}}^{H^1}[u]
```

paired later against the active weight at scale `e^{-s}`.

3. **Signed lifted commutator route**

```math
\mathcal B_3(a,b):=
\ell^{-2} b [Q_\ell,a\cdot\nabla]u.
```

The point is the same in all three cases: the moving mesoscopic band becomes a
fixed region in the relative variable `\rho`.

## Exact directions and survivor map

The measured object is the lifted relative-scale profile after quotienting out
the directions already shown to be irrelevant.

Let

```math
\Pi_{\mathrm{surv}} : \mathcal Z \to \mathcal P
```

be the route-specific survivor projection.

Its kernel contains:

- exact refinement derivatives / coboundaries,
- collar and spill directions already separated,
- any component invisible to the relevant quotient readout.

The current scale-memory route gives the model case:

```math
c_F(t)
=
\int \theta_\kappa(\sigma)\,\widetilde Z(\sigma,t)\,d\sigma,
```

so the survivor depends only on the affine quotient of `\widetilde Z`.
Then

```math
\Pi_{\mathrm{aff}}\widetilde Z
=
\big(M_0(\widetilde Z),M_1(\widetilde Z)\big),
```

and

```math
\ker \Pi_{\mathrm{aff}}
=
\{\widetilde Z : M_0(\widetilde Z)=M_1(\widetilde Z)=0\}.
```

The abstract survivor space is therefore

```math
\mathcal Q_{\mathrm{surv}}
:=
\mathcal Z / \ker \Pi_{\mathrm{surv}}
\cong
\operatorname{Im}(\Pi_{\mathrm{surv}}).
```

This is the space on which the new compactness theory should live.

## Quotient compactness defect

Fix:

- a spatial radius `R`,
- a relative-gap window `J \subset [\kappa,\infty)`,
- an active-scale window `I \subset \mathbb R`,
- a weak profile limit candidate `\mathcal Z`.

Define the relative-band quotient compactness defect by

```math
\mathfrak Q_{R,I,J}[\mathcal Z^{(n)},\mathcal Z]
:=
\limsup_{n\to\infty}
\|(I-\Pi_{\mathrm{surv}})(\mathcal Z^{(n)}-\mathcal Z)\|_
{L^2((0,T)\times B_R\times I\times J)}
\;+\;
\sup_m \|\Pi_{\mathrm{surv}}\mathcal Z^{(m)}\|_{\mathcal Y_{R,I,J}}.
\tag{QCD}
```

Interpretation:

1. the first term demands strong compactness modulo exact/collar-trivial
   directions;
2. the second term measures the persistent quotient modes in a route-adapted
   norm `\mathcal Y_{R,I,J}`.

This is the right analogue of the old compactness defect `\mathfrak K_{R,N}`,
but now on the moving mesoscopic profile rather than on the raw velocity field.

## Candidate theorem interface

The existing compactness bridge remains:

```math
u^{(n)} \to u
\quad\text{strongly in local }L^2,
\qquad
u^{(n)}\otimes u^{(n)} \to u\otimes u.
```

The proposed second layer is:

```math
\mathfrak Q_{R,I,J}[\mathcal Z^{(n)},\mathcal Z] \to 0
\quad\text{as the approximation index stabilizes and the windows are refined.}
```

If that held in a theorem-grade way, then the moving mesoscopic band would be
controlled not by absolute Sobolev order, but by compactness/coercivity on the
persistent quotient modes of the relative-scale profile.

So the full compactness architecture would become:

```math
\boxed{
\text{total-space compactness on }u^{(n)}
\quad+\quad
\text{quotient compactness on }\mathcal Z^{(n)}.
}
```

## A new notion of order on the quotient

This quotient theory is ordered by a persistence filtration rather than
primarily by integer derivative count.

Instead, define a persistence filtration

```math
\Pi_{\le m}^{\mathrm{pers}} : \mathcal Q_{\mathrm{surv}} \to \mathcal Q_{\mathrm{surv}},
```

where the levels correspond to surviving classes such as:

1. constant / boundary mode,
2. affine / first-moment mode,
3. higher moment or higher resonant mode,
4. route-specific weighted quotient modes.

Then the natural "order" of a survivor is

```math
\operatorname{ord}_{\mathrm{pers}}(Z)
:=
\min\{m : \Pi_{\le m}^{\mathrm{pers}}[Z]\neq 0\}.
```

This is the cleanest current formal replacement for derivative order.

The present affine-quotient route is the model example:

```math
\operatorname{ord}_{\mathrm{pers}}(\widetilde Z)\le 1
```

means the obstruction is completely captured by the first two affine moments.

## Relation to Sobolev and non-Sobolev compactness

Ordinary Sobolev compactness measures regularity of `u` by derivative order.
The old non-Sobolev compactness package improves that by adding absolute
high-frequency suppression.

The present proposal is different:

```math
\boxed{
\text{measure compactness on a lifted relative-band profile modulo exact directions.}
}
```

So this is not "a stronger Sobolev space on `u`."
It is a quotient compactness theory on the survivor profile that the moving
mesoscopic band actually leaves behind.

## Honest boundary

This note does **not** prove such a compactness theorem.

What it does fix is the correct formal target:

1. the raw velocity space is too coarse to see the moving meso band;
2. the relevant object is a lifted relative-scale profile on `\mathcal T_\kappa`;
3. the correct compactness notion is modulo exact/collar-trivial directions;
4. the remaining persistent modes are measured by the proposed persistence
   order, not by ordinary derivative order alone.

So the next route question is precise:

```math
\boxed{
\text{can the NS defect tower be made compact/coercive on }\mathcal Q_{\mathrm{surv}}
\text{ even when ordinary Sobolev compactness on }u\text{ is too coarse?}
}
```

The first route-specific specialization of this abstract framework, on the
actual affine survivor left by the Volterra / weighted-quotient route, is now
recorded in
[affine-survivor-quotient-compactness-interface-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-survivor-quotient-compactness-interface-note.md).

The stricter terminal comparison in
[two-family-terminal-impasse-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/two-family-terminal-impasse-note.md)
shows how to read the present scope correctly:
this quotient-compactness formalization is currently a **Family A**
construction. It does not yet compare the affine/cumulative-readout terminal
family with the gap-kernel / upper-tail family.

## Local anchors

- [compactness-upgrade-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/compactness-upgrade-lemma.md)
- [nonlinear-compactness-upgrade-operator.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/nonlinear-compactness-upgrade-operator.md)
- [one-sided-scale-memory-obstruction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/one-sided-scale-memory-obstruction-note.md)
- [volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md)
- [lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md)
- [persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md)
- [persistent-weighted-quotient-kill-routes-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md)
- [defect-reduction-tower-and-four-body-recurrence-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/defect-reduction-tower-and-four-body-recurrence-note.md)
