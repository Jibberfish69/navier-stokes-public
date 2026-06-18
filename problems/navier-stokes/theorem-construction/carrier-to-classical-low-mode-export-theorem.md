# Carrier-To-Classical Low-Mode Export Theorem

## Status

This note formalizes the missing bridge between the internal carrier mechanism
and the exact Euclidean low-mode control required by the classical route.

It does not prove the theorem.
Its job is to state the bridge in theorem form, isolate the exact subclaims,
and make precise what it would mean for the ontic/carrier route to export a
real classical closure mechanism rather than only an equation-level shadow.

The theorem-authority decision fixing the object hierarchy is now recorded in
[carrier-ontology-authority-decision.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-authority-decision.md).
The bridge now has three ordered export interfaces:

1. coherent readout versus the full classical low-mode band, recorded in
   [coherent-readout-low-mode-comparison-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-readout-low-mode-comparison-theorem.md);
2. selector-localized coherent transport on persistent support, recorded in
   [persistent-support-transport-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-support-transport-export-theorem.md);
3. noncoherent leakage export, recorded in
   [noncoherent-leakage-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/noncoherent-leakage-export-theorem.md).

## Problem Description

The bridge problem sits in the class of scale-critical transport-dissipation
equations whose nonlinear term moves activity across scales while dissipation
acts only locally in frequency. In such equations, regularity does not reduce
to a maximum principle or a single monotone norm. The central issue is whether
the transport mechanism can be forced to lose enough effectiveness when it is
read at the active classical scale.

Navier-Stokes is the model case. Its quadratic transport term couples low and
high modes, while viscosity damps each frequency locally rather than directly
controlling the whole cross-scale interaction geometry. That is why the
classical route keeps landing on low-mode strain and two-scale flux objects:
the problem is not sheer size, but whether cross-scale transport can continue
to act at full strength after passing through the available structural
splittings.

The carrier route changes that question. On the carrier side, the transport is
already split into a persistent coherent-support contribution and a residual
leakage term satisfying the carrier energy-surface bound. The missing step is
to prove that this internal carrier
mechanism survives classical readout in the precise form needed by the
Euclidean theorem surface. In other words, the live burden is not merely to
descend the equation, but to export the carrier-side closure mechanism itself
into a classical low-mode control law.

The first export interface is now isolated in
[carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md).
The first post-refactor theorem debt, namely comparison of the coherent readout
with the full classical low-mode target, is now isolated in
[coherent-readout-low-mode-comparison-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-readout-low-mode-comparison-theorem.md).
The second export interface, selector-localized coherent transport on
persistent support, is isolated in
[persistent-support-transport-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-support-transport-export-theorem.md).
The third export interface, noncoherent leakage export, is isolated in
[noncoherent-leakage-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/noncoherent-leakage-export-theorem.md).
The spectral realization of the thresholded selector family on `K_D` is
proved in
[holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md).
The stronger identification of the active abstract coherent projector with the
coherent-Laplacian spectral route is isolated in
[active-coherent-projector-spectral-identification-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/active-coherent-projector-spectral-identification-theorem.md).
The ontology correction governing the whole bridge is recorded in
[carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md):
`K_D` is persistent coherent support, while any thresholded family is derived
selector machinery rather than the carrier itself.

## Purpose

The internal carrier route already packages:

1. a persistent coherent support object,
2. spectral-gap leakage control off that support,
3. a coherent / remainder split for the projected transport,
4. the displayed energy-surface absorbability bound for the remainder.

The classical Euclidean route, by contrast, still needs the low-mode strain
suppression statement

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
c\,\nu\,2^{2j_0}.
```

This note states the exact theorem that would identify those two mechanisms.
That identification now splits into the comparison theorem, the persistent-
support transport export theorem, and the noncoherent leakage export theorem.

## Fixed Setup

Let

```text
X(t) \in \mathfrak R
```

be a carrier solution on the same theorem surface as:

- the carrier projector `\mathbb P_D`,
- the coherent projector `\mathbb H_D`,
- the carrier decomposition
  ```text
  \mathbb P_D N_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
  ```
- the carrier energy
  ```text
  \mathcal E_D(X),
  ```
- and a classical readout map
  ```text
  \rho : \mathfrak R \to L^2_\sigma(\mathbb R^3),
  \qquad
  u:=\rho(X).
  ```

Fix a classical dyadic threshold `j_0`.

Let

```math
u_{<j_0}:=P_{\le j_0}u.
```

Assume the carrier-side localization package produces a derived selector family
on the persistent coherent support,

```text
\mathbb S_D(j_0):K_D\to K_D,
```

which isolates the active threshold used by the classical comparison. This
localization is theorem-control selector machinery on the already-given
persistent carrier `K_D`, not a second ontic carrier.

Define the selector-localized coherent readout by

```math
u_{\mathrm{coh},\le j_0}
:=
\rho(\mathbb S_D(j_0)\mathbb H_D X).
```

## Export Theorem

### Theorem E\_export

Assume, on one common theorem surface:

1. **Frequency-aligned readout.**

   The selector-localized coherent readout at threshold `j_0` exports to the
   classical low-mode projector:

   ```math
   \rho(\mathbb S_D(j_0)\mathbb H_D X)=P_{\le j_0}u_{\mathrm{coh}},
   \qquad
   u_{\mathrm{coh}}:=\rho(\mathbb H_D X).
   ```

2. **Coherent transport export.**

   The carrier transport on persistent coherent support, localized by the
   selector `\mathbb S_D(j_0)`, pushes forward to the principal low-mode strain
   channel, and its operator norm is bounded at the viscous scale:

   ```math
   \|B_i(X)\mathbb S_D(j_0)\mathbb H_D\|_{\mathrm{op}}
   \le
   c_0\,\nu\,2^{2j_0},
   ```

   where `B_i(X)` denotes the localized carrier transport operator on the
   persistent coherent support.

3. **Leakage export.**

   The exact carrier leakage identity

   ```math
   P_\perp Q_i\mathbb P_DN_D(X)e_\beta
   =
   (\Delta_D-\lambda_\beta)^{-1}P_\perp
   [\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta
   ```

   satisfies the displayed readout bound

   ```math
   \|\nabla \rho(P_\perp Q_i\mathbb P_DN_D(X)e_\beta)\|_{L^\infty_x}
   \le
   C\,\Psi(\mathcal E_D(X)),
   ```

   with `\Psi(\mathcal E_D(X))` subcritical relative to the Euclidean shell
   barrier.

Then there exist constants `c_1,C_1>0` such that the classical low-mode strain
satisfies

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
c_1\,\nu\,2^{2j_0}

+ C_1\,\Psi(\mathcal E_D(X(t))).
```

In particular, if the exported remainder term is absorbable on the same carrier
energy surface, then

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
\tilde c\,\nu\,2^{2j_0}.
```

This is exactly the low-mode strain suppression statement needed by the
classical Euclidean route.

## Proof Reduction

The theorem reduces to three bridge steps.

### Step 1. Compare the coherent readout target with the full classical low modes

By frequency-aligned readout,

```math
\rho(\mathbb S_D(j_0)\mathbb H_D X)=P_{\le j_0}u_{\mathrm{coh}},
```

and the remaining comparison burden is exactly the noncoherent low-mode term

```math
P_{\le j_0}\rho((I-\mathbb H_D)X).
```

This comparison debt is isolated in
[coherent-readout-low-mode-comparison-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-readout-low-mode-comparison-theorem.md).

### Step 2. Principal transport comes from persistent support after selector localization

By coherent transport export, the support-localized transport acts at the
viscous scale:

```math
\|B_i(X)\mathbb S_D(j_0)\mathbb H_D\|_{\mathrm{op}}
\le
c_0\,\nu\,2^{2j_0}.
```

After readout, this gives the principal contribution to

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}.
```

So the main low-mode strain is generated by persistent coherent support after
selector localization and is bounded at the correct scale.

### Step 3. Off-block leakage satisfies the readout bound

The carrier leakage identity plus the spectral gap already shows that the
off-block contribution is controlled by a commutator term on the carrier side.
The leakage export hypothesis says this control survives after applying
`\rho`, yielding

```math
\|\nabla \rho(P_\perp Q_i\mathbb P_DN_D(X)e_\beta)\|_{L^\infty_x}
\le
C\,\Psi(\mathcal E_D(X)).
```

Hence the classical low-mode strain splits into:

- a principal coherent contribution at scale `\nu 2^{2j_0}`,
- an exported leakage term satisfying the displayed `C\Psi(\mathcal E_D(X))`
  readout bound.

Combining the two gives the claimed estimate.

## Meaning

This theorem is stronger than the exact shadow theorem.

The exact shadow theorem says:

```text
carrier equation -> classical NS equation.
```

This export theorem says:

```text
carrier closure mechanism -> classical low-mode control mechanism.
```

That is the actual bridge missing from the present Euclidean route.

## Honest Boundary

This note does not prove the theorem.

The unresolved subclaims are exactly:

1. identification of the active coherent projector with the spectrally aligned
   low-pass carrier projector from
   [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md),
2. a theorem identifying the coherent carrier transport norm with the viscous
   low-mode strain scale,
3. a theorem showing that spectral-gap leakage satisfies the displayed readout
   bound after classical readout.

Without those three export steps, the carrier route remains an internal closure
architecture and the Euclidean route remains forced to rediscover suppression by
shell bookkeeping alone.

## Interfaces

- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
- [carrier-commutator-coercive-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-commutator-coercive-lemma.md)
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [d4-shadow-continuation-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [classical-closure-warrant-carrier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-closure-warrant-carrier.md)
