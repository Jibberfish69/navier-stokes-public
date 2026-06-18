# Navier-Stokes Regularity Upgrade Schemas

## Status

Frontier schema inventory for the remaining Euclidean regularity upgrade on the
classical three-dimensional incompressible Navier-Stokes equation.

This note does not discharge the Clay gap. Its job is to state, on one fixed
classical surface, the admissible theorem shapes sufficient to close the final
vorticity/gradient continuation burden, provided one is proved from the
Navier-Stokes dynamics itself.

## Classical Surface

Work on the classical Cauchy problem

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu \Delta u,
\qquad
\nabla\cdot u = 0,
\qquad
u|_{t=0} = u_0 \in H^s(\mathbb R^3),
\qquad
s > \tfrac52,
```

with vorticity

```math
\omega := \nabla \times u.
```

On the local smooth existence interval `[0,T_*)`, the standard vorticity and
continuation formulas hold:

```math
\partial_t \omega + (u\cdot\nabla)\omega = (\omega\cdot\nabla)u + \nu\Delta\omega,
```

```math
\frac{d}{dt}\|\omega(t)\|_{L^2_x}^2
\le
2\|\nabla u(t)\|_{L^\infty_x}\|\omega(t)\|_{L^2_x}^2,
```

and any theorem that yields

```math
\int_0^T \|\nabla u(t)\|_{L^\infty_x}\,dt < \infty
```

forces continuation of the classical solution.

## Shared Closure Interface

All admissible final-bridge schemas in this note target one of the equivalent
critical controls:

```math
\int_0^T \|\omega(t)\|_{L^\infty_x}\,dt < \infty,
```

```math
\int_0^T \|\nabla u(t)\|_{L^\infty_x}\,dt < \infty,
```

or a critical substitute strong enough to imply one of those bounds on the same
classical solution surface.

The point is not to restate BKM or Serrin as a closure. The point is to record
the exact new theorem required to convert those continuation criteria into a
genuine global regularity proof.

## Theorem A. Critical Coercive Dissipation

Assume there exists a functional `\mathcal E(t)` on classical solutions such
that:

1. `\mathcal E(t)` is equivalent at critical strength to either
   `\|\omega(t)\|_{L^\infty_x}` or `\|\nabla u(t)\|_{L^\infty_x}`;
2. `\mathcal E` satisfies a coercive differential inequality
   ```math
   \frac{d}{dt}\mathcal E(t) + c\,\mathcal D(t)
   \le
   C\,\mathcal E(t),
   ```
   with `\mathcal D(t) \ge \Phi(\mathcal E(t))`;
3. the coercive profile `\Phi` dominates the logarithmic growth needed by the
   BKM mechanism, for example
   ```math
   \Phi(r) \ge r\log(e+r)
   ```
   for all sufficiently large `r`.

Then

```math
\int_0^T \|\nabla u(t)\|_{L^\infty_x}\,dt < \infty
```

for every finite `T`, and the classical solution extends globally.

### Mechanism

The dissipation term dominates the logarithmic growth channel that drives the
continuation criterion, forcing time-integrability of the critical Lipschitz
control.

## Theorem B. Strain-Vorticity Alignment Suppression

Let

```math
S(u) := \tfrac12(\nabla u + \nabla u^\top).
```

Assume there exists `\delta > 0` such that, for almost every `(t,x)` on the
same classical solution,

```math
|S(u)\xi\cdot\xi| \le (1-\delta)|S(u)|_{op},
\qquad
\xi := \omega/|\omega|
```

whenever `\omega(t,x) \neq 0`.

Then the vortex-stretching term obeys a strictly weakened bound of the form

```math
\left|\int_{\mathbb R^3} (\omega\cdot\nabla)u \cdot \omega\,dx\right|
\le
(1-\delta)\|\nabla u\|_{L^\infty_x}\|\omega\|_{L^2_x}^2,
```

and this improved stretching control yields

```math
\int_0^T \|\nabla u(t)\|_{L^\infty_x}\,dt < \infty.
```

### Mechanism

Geometric misalignment weakens the effective stretching channel enough to make
the growth subcritical rather than scale-critical.

## Theorem C. Transport-Mixing Enhancement

Assume there exists a mixing functional `\mathcal M(t)` on the same classical
solution such that:

1. `\mathcal M(t)` controls vorticity amplitude,
   ```math
   \|\omega(t)\|_{L^\infty_x} \le C\,\mathcal M(t);
   ```
2. `\mathcal M` satisfies an enhanced dissipation inequality
   ```math
   \frac{d}{dt}\mathcal M(t)
   \le
   -c\,\nu^\alpha \mathcal M(t)^{1+\beta} + C\,\mathcal M(t),
   \qquad
   \alpha>0,\ \beta>0.
   ```

Then `\mathcal M \in L^1(0,T)` and therefore

```math
\int_0^T \|\omega(t)\|_{L^\infty_x}\,dt < \infty.
```

### Mechanism

The transport creates small scales in a way that feeds dissipation strongly
enough to produce time-integrable critical control.

## Theorem D. Critical Same-Surface Upgrade

Assume the Navier-Stokes dynamics themselves imply the same-surface critical
upgrade

```math
\omega \in L^\infty_t L^2_x \cap L^2_t \dot H^1_x
\quad\Longrightarrow\quad
\omega \in L^1_t B^0_{\infty,1}.
```

Then, using the standard embedding `B^0_{\infty,1} \hookrightarrow L^\infty`,
one obtains

```math
\int_0^T \|\omega(t)\|_{L^\infty_x}\,dt
\le
C \|\omega\|_{L^1_t B^0_{\infty,1}}
<
\infty,
```

which closes the continuation criterion and yields global smoothness.

### Mechanism

This is a direct same-surface upgrade from subcritical control to an integrable
critical norm, with no modified equation and no geometric surrogate.

## Theorem E. Conditional Critical-Space Closure Via Dyadic Gain

Let `\omega` be a smooth vorticity field on `[0,T]` for the classical
three-dimensional Navier-Stokes system.

Assume:

1. **Dyadic dissipative bias.** For each dyadic block `j`,
   ```math
   \mathrm{cascade}_j(t)
   \le
   \varepsilon \nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
   +
   C_\varepsilon 2^{-2j}\|\omega(t)\|_{\dot H^{1/2}_x}^2.
   ```
   This is the conditional shell-gain hypothesis. The unconditional shell
   calculus only gives the exact dyadic interaction decomposition recorded in
   [exact-dyadic-interaction-decomposition.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-dyadic-interaction-decomposition.md).
2. **Independent half-derivative control.**
   ```math
   \sup_{t\in[0,T]}\|\omega(t)\|_{\dot H^{1/2}_x} \le M < \infty,
   ```
   and this bound is supplied by a mechanism other than endpoint `BMO`/log
   control; see
   [h2-standalone-half-derivative-bound.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/h2-standalone-half-derivative-bound.md).
3. **Energy-level control.**
   ```math
   \omega \in L^\infty(0,T;L^2_x)\cap L^2(0,T;\dot H^1_x).
   ```

Then:

1. **Dyadic summability.**
   ```math
   \sum_j \int_0^T \|\Delta_j\omega(t)\|_{L^\infty_x}\,dt < \infty.
   ```
2. **Critical Besov control.**
   ```math
   \omega \in L^1(0,T;B^0_{\infty,1}).
   ```
3. **Continuation.** The classical solution extends smoothly past time `T`.

### Proof

The proof is conditional and non-circular: the half-derivative bound in (2)
is taken as an independent input, not derived from the endpoint `BMO`/log
estimate.

1. The shell estimate in (1), together with (2), gives a uniform dyadic
   forcing bound after the low-mode and spill reductions recorded in
   `gradient-commutator-remainder-lemma.md` and
   `dyadic-shell-gain-lemma.md`.
2. Bernstein converts the resulting high-frequency `L^1_tL^2_x` control into
   the endpoint dyadic summability recorded in
   `dyadic-high-frequency-gain-theorem.md`.
3. Summing the dyadic blocks yields
   `\int_0^T \|\omega(t)\|_{B^0_{\infty,1}}\,dt < \infty`.
4. The embedding `B^0_{\infty,1}\hookrightarrow L^\infty` and the standard
   BKM continuation criterion then force smooth continuation beyond `T`.

### Boundary

This theorem is a closure schema, not a discharge of the half-derivative
bound. Its role is to make the dependency chain explicit:

- `H1` is the shell-level gain target;
- `H2` is the independent critical input;
- `H3` is the classical energy surface;
- `C1-C3` follow without circular use of endpoint `BMO`/log control.

### Static Littlewood-Paley Attempt And Exact Failure

The natural first attempt is to combine

```math
\omega \in L^\infty_t L^2_x
\qquad\text{and}\qquad
\nabla\omega \in L^2_t L^2_x
```

with a dyadic split

```math
\omega = \sum_{j\ge -1}\Delta_j \omega.
```

For low frequencies, Bernstein and Cauchy-Schwarz give

```math
\sum_{j\le J}\|\Delta_j \omega\|_{L^\infty_x}
\le C_{\mathrm{low}}
2^{\frac32 J}\|\omega\|_{L^2_x}.
```

For fixed `J`, this low-frequency block is bounded by the displayed finite
constant.

The high-frequency block is the real obstruction. Bernstein only yields

```math
\|\Delta_j \omega\|_{L^\infty_x}
\le C_B
2^{\frac32 j}\|\Delta_j \omega\|_{L^2_x}
\le C_B'
2^{\frac12 j}\|\nabla \Delta_j \omega\|_{L^2_x},
```

so summing over `j>J` does **not** produce a decaying factor `2^{-J/2}` from
`H^1` control alone. Instead, the displayed bound still contains the factor `2^{j/2}`. In
particular, the attempted bound

```math
\sum_{j>J}\|\Delta_j \omega\|_{L^\infty_x}
\le C_{\mathrm{false}}
2^{-\frac12 J}\|\nabla\omega\|_{L^2_x}
```

is false at this regularity level.

### Fractional-energy route failure

The same obstruction reappears in the `H3` bootstrap written in the fractional
energy form. The transport commutator

```math
[\Lambda^{1/2},u\cdot\nabla]\omega
```

cannot be controlled at the `L^2` level by a bound of the form

```math
\|[\Lambda^{1/2},u\cdot\nabla]\omega\|_{L^2_x}
\le C_{\mathrm{comm}}
\|\nabla u\|_{L^2_x}\,\|\omega\|_{\dot H^{1/2}_x}.
```

That estimate is scale-incompatible with the three-dimensional
Navier-Stokes scaling and does not follow from the standard endpoint
commutator machinery. Any valid `H3` closure must therefore replace it with a
genuinely critical control input, such as an `L^\infty_x`/`BMO`-level bound
or a shellwise gain estimate that supplies the missing half-derivative before
the Gronwall step.

The exact lesson is that `B^0_{\infty,1}` sits one half-derivative above the
`H^1` control available for `\omega` in the basic energy class. So Theorem D
cannot be obtained by static interpolation from

```math
\omega \in L^\infty_t L^2_x \cap L^2_t \dot H^1_x
```

alone.

Any genuine proof of Theorem D must therefore supply one additional same-surface
mechanism, for example:

- an extra half-derivative of summable high-frequency control;
- a time-decay factor strong enough to offset the `2^{j/2}` loss;
- or a structural cancellation that weakens the high-frequency stretching
  channel before the Besov summation.

### Circularity Warning

The fractional-energy route does not become a proof merely by inserting a
formal `\dot H^{1/2}` bound into the dyadic forcing estimate. That step is
only legitimate if the `\dot H^{1/2}` bound has already been proved from the
Navier-Stokes dynamics themselves. Any derivation that uses the same endpoint
BMO/logarithmic control to produce the bound is circular unless the critical
quantity is obtained independently from the shell gain or another genuine
same-surface mechanism.

The concrete theorem target for that missing mechanism is now recorded in
[dyadic-high-frequency-gain-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md).
It packages the exact endpoint statement

```math
\sum_{j\ge 0} 2^{\frac32 j}\,\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)} < \infty
```

as the live theorem object whose proof closes Theorem D.

### Endpoint Defect

The obstruction is not a vague lack of regularity. It is a precise half-
derivative gap at the critical scale:

```math
\dot H^1 \not\hookrightarrow B^0_{\infty,1}
```

by naive dyadic summation, because the `\ell^1` shell sum amplifies the
high-frequency factor `2^{j/2}` that remains after using one derivative of
control.

Equivalently, `\dot H^1` only supplies the dyadic scaling compatible with
`B^{-1/2}_{\infty,2}`-type control, while Theorem D requires an endpoint
`B^0_{\infty,1}` bound. Any valid closure theorem must therefore supply either
an extra half-derivative, a time-integrable high-frequency gain, or a
structure that converts the dyadic `\ell^2` control into `\ell^1` without
loss.

## Unified Closure Principle

Each of the schemas above implies a bound of the form

```math
\|\nabla u\|_{L^1(0,T;L^\infty_x)} \le F(\|u_0\|_{H^s})
```

for every finite `T`, and therefore the standard high-regularity estimate

```math
\frac{d}{dt}\|u(t)\|_{H^s}
\le
C\|\nabla u(t)\|_{L^\infty_x}\|u(t)\|_{H^s}
```

forces a global `H^s` bound and smooth continuation.

## Honest Frontier Statement

None of Theorems A-D is discharged in the present corpus.

What is already available:

- local smooth well-posedness in `H^s`, `s>\tfrac52`;
- the vorticity equation on the classical interval of smooth existence;
- the enstrophy identity;
- the BKM/Serrin-type continuation criteria;
- weak existence, compactness, and nonlinear limit passage.

What remains open:

- a theorem derived from the Navier-Stokes dynamics alone that produces one of
  the four closure mechanisms above on the same classical solution surface.

The strongest currently available internal route is the export theorem recorded
in
[carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md).
That theorem does not prove regularity by a raw classical endpoint upgrade. Its
required output is the carrier coherence defect and spectral-gap leakage control
exported directly into the classical low-frequency strain bound that underlies
the H2 target.

So the final unresolved burden is not the continuation criterion itself. It is
the missing critical-space or critical-geometry control required to make that
criterion global.

## Interfaces

- [gradient-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-package.md)
- [gradient-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/gradient-discharge-source-pack.md)
- [gradient-coercivity-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-coercivity-lemma.md)
- [gradient-commutator-remainder-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-commutator-remainder-lemma.md)
- [dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md)
- [exact-dyadic-interaction-decomposition.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-dyadic-interaction-decomposition.md)
- [h2-standalone-half-derivative-bound.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/h2-standalone-half-derivative-bound.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
- [dyadic-high-frequency-gain-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md)
- [main-theorem-draft.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/main-theorem-draft.md)
