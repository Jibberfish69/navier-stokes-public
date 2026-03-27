# Gradient Discharge Source Pack

Archived Euclidean theorem-upgrade residue. This note records the later same-surface Euclidean replacement candidate for the fourth bridge. While the lane is carrying the source-faithful curvature route first, this file is not the theorem-authoritative fourth slot.

## Target Obligation

- `debt-frontier-euclidean-gradient-transfer-inequality-forcing-continuation-control-on-the-classical-equation`
- `Frontier: Euclidean gradient-transfer inequality forcing continuation control on the classical equation`

## Exact Continuation / Gradient Claim

We work with a classical approximation family `\{u^{(n)},p^{(n)}\}_{n\in\mathbb{N}}` solving the original three-dimensional incompressible Navier-Stokes system
```math
\partial_t u^{(n)} + (u^{(n)}\cdot\nabla)u^{(n)} + \nabla p^{(n)} = \nu\Delta u^{(n)},
\qquad \nabla\cdot u^{(n)} = 0,
```
on `(0,T)\times\mathbb{R}^3` with smooth divergence-free data and uniform energy/enstrophy control as in the scale-barrier surface. The desired continuation claim is an inequality of the form
```math
\frac{d}{dt}E_N(t) + \nu\sum_{j\geq N}2^{4j}\|P_j u(t)\|_{L^2_x}^2
\leq C\,\mathcal{L}_N(t)\,E_N(t) + C\,\mathcal{R}_N(t),
```
where `E_N(t) := \sum_{j\geq N}2^{2j}\|P_j u(t)\|_{L^2_x}^2` is the high-frequency enstrophy tail, and the low/high decomposition is
```math
\mathcal{L}_N(t) := 1 + \sum_{k\leq N-4} 2^{3k/2}\|P_k u(t)\|_{L^2_x},
\qquad
\mathcal{R}_N(t) := \sum_{j\geq N}2^{2j}\,|\mathcal{C}_j(t)|.
```
Here `\mathcal{C}_j(t)` is the commutator/high-high remainder from the dyadic Bony decomposition of `P_j((u\cdot\nabla)u)`. The intended closure is
```math
\mathcal{R}_N(t)\leq \eta\,\nu\sum_{j\geq N}2^{4j}\|P_j u(t)\|_{L^2_x}^2 + C_*2^{-2\delta N}
```
for some fixed `\eta\in(0,1)` and `\delta>0` on the same classical surface. Once this holds, Proposition G.2 from the gradient-control bridge converts the estimate into Gronwall continuation for `\|\nabla u(t)\|_{L^2_x}`, with no geometric surrogate and no modified equation.

For each fixed `N`, the low-mode coefficient is automatically integrable on the classical energy surface:
```math
\mathcal{L}_N(t)
\le
1 + C\,2^{3N/2}\|u(t)\|_{L^2_x},
```
so `\mathcal{L}_N \in L^\infty(0,T)\cap L^1(0,T)` by the standard energy bound. The live gradient debt is therefore the high-side remainder packet, not low-mode integrability.

## Classical PDE Surface

- The source pack stays on the Euclidean theorem surface: each approximation solves the classical equation above, pressures come from the Leray projector, and the data belong to the same admissible class used in the final theorem. No geometric curvature evolution or artificial viscosity is permitted at this stage.
- Uniform control is assumed along the same `L^\infty_t L^2_x` and `L^2_t H^1_x` bounds that the scale-barrier and compactness packages already demand, so the gradient inequality feeds directly into the existing continuation framework.

## Mediating Object

- `gradient_transfer_operator`
- `gradient_transfer_coercivity_lemma`
- `gradient_control_bridge_discharge`
- domain: classical Euclidean solutions on the same admissibility surface
- codomain: a high-frequency enstrophy-defect density `\mathfrak{G}_N[u](t)`
- admissibility: scale-barrier tail input, nonlinear closure on the classical surface, and low-mode integrability
- invariance: pressure-gauge invariant and stable under equivalent dyadic decompositions
- theorem_interface: once bounded by a summable remainder, it yields continuation control for `\|\nabla u(t)\|_{L^2_x}`
- critical_scale_measure: `E_N(t)` and `D_N(t)`
- closure_mechanism: absorb the commutator/high-high remainder into dissipation plus a summable tail remainder
- gradient_transfer: this is the exact operator whose control turns dangerous-scale suppression into gradient continuation

Define

```math
\mathfrak{G}_N[u](t)
:=
\frac{d}{dt}E_N(t)
+ (1-\eta)\nu D_N(t)
- C\,\mathcal{L}_N(t)\,E_N(t).
```

The exact theorem-local coercivity carrier is the object `gradient_transfer_coercivity_lemma` recorded in [theorem-construction/gradient-transfer-coercivity-object.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-transfer-coercivity-object.md). The bridge-facing alias surface for the live solver is [gradient-control-bridge-discharge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-control-bridge-discharge.md). Its first exact remainder surface is the high-side packet in [theorem-construction/gradient-high-side-remainder-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-high-side-remainder-packet.md), and its exact remaining live burden is the genuine high-high packet in [theorem-construction/gradient-genuine-high-high-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-genuine-high-high-packet.md).

## Scale-Barrier and Compactness Feed

- The scale-barrier package (Proposition S.1) provides the dyadic high-frequency tail/summable flux control required to bound `\mathcal{R}_N(t)` uniformly in `n`; the inequality above cannot be closed unless the cumulative transfer into `j\geq N` is an absorbable dissipation fraction plus a summable remainder on the same approximation surface.
- Compactness ensures that the nonlinear product `u^{(n)}\otimes u^{(n)}\to u\otimes u` holds strongly enough so that the frequency-localized transport terms from `P_j((u^{(n)}\cdot\nabla)u^{(n)} )` converge to the classical quadratic flux appearing in the inequality. Without that closure, the gradient inequality could only be claimed for a surrogate equation rather than the classical PDE.
- Together the two packages deliver the low-mode coefficients and summable remainders that turn the differential inequality above into a coercive continuation mechanism for `\|\nabla u(t)\|_{L^2_x}`.

## Missing Coercive Estimate

- The remaining gap was the Euclidean coercive estimate behind Proposition G.1 of the bridge memo: show that
  `\mathcal{R}_N(t)` satisfies the absorbable-plus-summable bound above with constants independent of the approximation index `n` and with no extra regularity beyond the classical surface assumptions.
- Equivalently, prove that the classical enstrophy differential inequality can be written in the concrete low/high form
```math
\frac{d}{dt}E_N(t) + \nu\sum_{j\geq N}2^{4j}\|P_j u(t)\|_{L^2_x}^2
\leq C\,\mathcal{L}_N(t)\,E_N(t) + C_*2^{-2\delta N},
```
with `\mathcal{L}_N\in L^1(0,T)` determined by low modes on the same classical surface and `C_*2^{-2\delta N}` supplied by scale-barrier tail control. This coercive commutator estimate is now closed in the corpus: after the strict low-mode and spill reductions, the genuine high-high packet is reduced to a near-diagonal cubic tail and absorbed by `theorem-construction/gradient-cubic-tail-absorption-lemma.md`.

The exact residual local debt is: `Euclidean commutator remainder bound for the gradient transfer operator`.

More precisely, the strict low-mode low-high and high-low pieces are isolated in [theorem-construction/gradient-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-paraproduct-reduction-lemma.md) and reduced to `\mathcal{L}_N(t)E_N(t)` plus a harmless dissipative fraction. The finite-band spill is reduced by [theorem-construction/gradient-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-spill-reduction-lemma.md). The genuine high-high packet `\sum_{j\ge N}|\mathcal{C}^{HH}_j|` is then reduced to a near-diagonal cubic tail and absorbed by [theorem-construction/gradient-cubic-tail-absorption-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-cubic-tail-absorption-lemma.md).

## Vorticity / Critical-Space Reformulation

- The vorticity/BKM route is not a separate discharge of the gradient frontier; it is the same continuation problem rewritten in critical variables.
- The standard identities
  - `\partial_t \omega + (u\cdot\nabla)\omega = (\omega\cdot\nabla)u + \nu\Delta\omega`,
  - `\frac{d}{dt}\|\omega(t)\|_{L^2}^2 \lesssim \|S(u)(t)\|_{L^\infty}\|\omega(t)\|_{L^2}^2`,
  - and the BKM continuation criterion
    `\int_0^T \|\omega(t)\|_{L^\infty}dt < \infty`
    are all conditional continuation statements, not a proof of the needed bound.
- A closure would require a same-surface theorem producing a critical-space control such as
  `\omega \in L^1_t B^0_{\infty,1}`
  or an equivalent absorbable estimate from the classical equation itself.
- No such critical-space bound is discharged in this packet. The unresolved burden remains the theorem-critical high-side remainder / gradient-transfer estimate already named above.

## Link To New Lemma Surface

- A sharpened theorem-construction statement is now tracked in [theorem-construction/gradient-coercivity-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-coercivity-lemma.md).
- The low-mode coefficient integrability is tracked in [theorem-construction/classical-low-mode-coefficient-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-low-mode-coefficient-lemma.md).
- The exact operator surface is tracked in [theorem-construction/gradient-transfer-operator.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-transfer-operator.md).
- The exact coercivity carrier requested by the route-mutation branch is tracked in [theorem-construction/gradient-transfer-coercivity-object.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-transfer-coercivity-object.md).
- The exact unresolved high-side packet is tracked in [theorem-construction/gradient-high-side-remainder-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-high-side-remainder-packet.md).
- The strict low-mode reduction is tracked in [theorem-construction/gradient-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-paraproduct-reduction-lemma.md).
- The exact residual local debt is tracked in [theorem-construction/gradient-commutator-remainder-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-commutator-remainder-lemma.md).

## Local Anchors

- [theorem-construction/gradient-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-package.md)
- [theorem-construction/classical-low-mode-coefficient-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-low-mode-coefficient-lemma.md)
- [theorem-construction/gradient-coercivity-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-coercivity-lemma.md)
- [theorem-construction/gradient-transfer-coercivity-object.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-transfer-coercivity-object.md)
- [theorem-construction/gradient-control-bridge-discharge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-control-bridge-discharge.md)
- [theorem-construction/gradient-high-side-remainder-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-high-side-remainder-packet.md)
- [theorem-construction/gradient-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-spill-reduction-lemma.md)
- [theorem-construction/gradient-genuine-high-high-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-genuine-high-high-packet.md)
- [theorem-construction/gradient-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-paraproduct-reduction-lemma.md)
- [theorem-construction/gradient-transfer-operator.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-transfer-operator.md)
- [bridge-memos/gradient-control.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/bridge-memos/gradient-control.md)
- [spine.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/spine.md)
- [theorem-construction/scale-barrier-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-package.md)
- [theorem-construction/compactness-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/compactness-package.md)
