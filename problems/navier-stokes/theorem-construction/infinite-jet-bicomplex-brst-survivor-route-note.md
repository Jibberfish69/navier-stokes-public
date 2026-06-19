# Infinite Jet -> Variational Bicomplex -> BRST Survivor Route Note

## Purpose

This note tests the proposed route

```math
\boxed{
\text{Infinite jet spaces}
\to
\text{variational bicomplex}
\to
\text{BRST quantization}
}
```

against the actual current Navier--Stokes lane.

The question is not whether these words are fashionable.
The question is:

```math
\boxed{
\text{can this route sharpen the live classical burden without leaving the same-surface theorem program?}
}
```

## Current verdict

The route splits into three different verdicts.

### 1. Infinite jet spaces: yes

This is already latent in the lane.

The present mixed-jet tower

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u
```

is exactly the concrete coordinate shadow of the infinite prolongation of the
classical Navier--Stokes system.

So the tower route is already an infinite-jet route in disguise.

### 2. Variational bicomplex: probably useful

Not because raw Navier--Stokes is an ordinary Euler--Lagrange system, but
because the bicomplex is the natural way to separate:

- horizontal evolution / transport,
- vertical variation,
- contact-trivial pieces,
- genuinely surviving cohomological content of the prolonged PDE.

This makes it a candidate tool for the **survivor dictionary theorem**.

### 3. Literal BRST quantization: probably not the main theorem route

For deterministic incompressible classical Navier--Stokes, the phrase "BRST
quantization" is too large and too quantum.

The usable part is narrower:

```math
\boxed{
\text{BRST/Koszul--Tate style constraint resolution as a cohomological classifier,}
}
```

not full quantization as the proof engine.

So the best version of the route is:

```math
\boxed{
\text{Infinite jet space}
\to
\text{variational bicomplex}
\to
\text{BRST-style survivor cohomology.}
}
```

## 1. Why infinite jet space is already real in this lane

The strongest existing local footholds are:

- [jet-substitution-and-exponential-closure-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/jet-substitution-and-exponential-closure-note.md)
- [mixed-jet-cross-rung-pairing-matrix.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md)
- [weighted-mixed-jet-closure-implies-classical-continuation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-mixed-jet-closure-implies-classical-continuation.md)
- [time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md)

The exact facts already proved there are:

1. the full differentiated tower closes back to NS form on the jet generating
   field;
2. factorial/exponential weights convert the binomial spread into an ordinary
   quadratic convolution law;
3. if a weighted mixed-jet norm closes, classical continuation is already
   obtained.

So the infinite-jet viewpoint is not a new branch.
It is a cleaner statement of what the mixed-jet route already is:

```math
\boxed{
\text{the classical theorem burden is already living on a prolonged jet space.}
}
```

## 2. What the variational bicomplex adds as a theorem target

Let `\mathcal E_{\mathrm{NS}}^\infty` denote the infinite prolongation of the
classical incompressible Navier--Stokes system on fields `(u,p)` or on a
Lagrangian package `(v,G,q)`.

On the ambient jet space the variational bicomplex decomposition is

```math
d = d_H + d_V,
```

where:

- `d_H` is the horizontal differential built from total derivatives;
- `d_V` is the vertical/contact differential.

The potential value of this for the lane is not abstract elegance.
It is that several current "cancellations" become exactness statements only
after the quotient complex and survivor class are specified.

### Pressure

In the mixed-jet matrix law, pressure cancels in every jet-vs-jet pairing.

This strongly suggests:

```math
\boxed{
\text{the pressure contribution is cohomologically trivial in the relevant pairing complex.}
}
```

### Base transport

Base transport is skew across every jet-vs-jet pairing.

So the visible transport contribution may also be a horizontal exact / antisymmetric
transfer object rather than a genuine growth source.

### Live matrix burden

What remains after pressure cancellation and transport skewness is the mixed
source matrix

```math
\mathcal R_{A,B}
:=
\langle \widetilde T_A,J_B\rangle
+
\langle J_A,\widetilde T_B\rangle.
```

So the bicomplex route suggests a new mathematical job:

```math
\boxed{
\text{separate the tower into horizontal/contact exact pieces and a residual survivor class.}
}
```

That is already much closer to the current central theorem need than a generic
"new framework" slogan.

## 3. Why literal BRST quantization is too large

Raw deterministic Navier--Stokes is not presently being used in the lane as a
clean classical gauge action whose direct quantization solves regularity.

So the phrase

```math
\text{BRST quantization}
```

is likely too ambitious and too far from the actual proof contract.

Three things make it risky if taken literally.

1. The route lock is same-surface classical.
2. The current live burden is a concrete shell/tower/deformation survivor, not
   a quantum observable problem.
3. The lane already suffers from sidecar overgrowth whenever a powerful
   auxiliary language tries to replace the theorem route instead of clarifying
   it.

So full BRST quantization is support-language only unless it is restricted to
the survivor-class quotient.

## 4. The usable BRST move

The usable move is narrower:

```math
\boxed{
\text{use BRST or Koszul--Tate style machinery only to resolve constraints and identify the nontrivial survivor class.}
}
```

In the present lane, that means:

- the divergence-free constraint,
- pressure redundancy / pressure-trivial pairings,
- contact-trivial jet terms,
- possibly pure relabelling artifacts on the Lagrangian side.

The practical output is not a quantum fluid. It is a cohomological statement of
the form:

```math
\boxed{
\text{all but one survivor complex are exact/trivial after the correct jet-resolution quotient.}
}
```

That is exactly the kind of theorem-classification step the lane still lacks.

## 4A. Why the Lie derivative and Cartan formula are the right bridge

This is the strongest refinement of the route.

In the BRST page, the Ward operator is identified with the Lie derivative along
the vertical vector field generated by the gauge transformation. That is the
part of the story that actually fits the present lane.

The key geometric identities are:

```math
\mathcal L_X Y = [X,Y]
```

for vector fields, and on differential forms

```math
\mathcal L_X\omega = i_X d\omega + d(i_X\omega).
```

So the right mathematical moral is not:

```math
\text{add ghosts and quantize the fluid.}
```

It is:

```math
\boxed{
\text{identify which NS transport/deformation terms are Lie-dragged or Cartan-exact,}
}
```

```math
\boxed{
\text{and isolate the residual class that is not removable by this geometry.}
}
```

That matches the current lane almost perfectly.

### Eulerian side

The advective operator is already the Lie derivative on scalars:

```math
\mathcal L_u f = u\cdot\nabla f.
```

For vectors and tensorial objects, the true transport object is not just
`u\cdot\nabla`, but the full Lie derivative, which naturally brings in strain
and commutator structure.

That is exactly what the lane has already rediscovered in less geometric
language:

- base transport is skew / transfer-like;
- the real source is the commutator/strain remainder;
- raw advection is partly representation-level structure.

### Lagrangian side

The comoving pullback kills explicit transport because the material derivative
becomes an ordinary time derivative. This is the literal classical version of
"quotienting out a Lie-dragged sector."

So the clean bridge is:

```math
\boxed{
\text{BRST-style Lie derivative language is honest only after it is interpreted through Lagrangian relabelling or constraint geometry.}
}
```

### Bicomplex side

On the prolonged jet system, the natural hope is:

- horizontal differential = total derivative structure;
- contraction = insertion of the relabelling/constraint generator;
- Lie derivative = Cartan homotopy operator on the relevant jet/differential-form package.

Then one can try to prove that:

- pressure terms are exact/trivial,
- pure transport transfer channels are exact/skew,
- only the true survivor packet remains nontrivial.

This is the sharpest version of the idea.

## 4B. Why asymptotic Fock space is probably not the right endpoint

The Fock-space language in BRST is about quantized asymptotic states and
unitarity after gauge fixing.

That is almost certainly not the right destination for classical NS
regularity. The NS lane is not trying to classify scattering states. It is
trying to prove global smoothness for the classical PDE.

So the asymptotic-Fock-space part is motivational background only, not the route
target.

The right endpoint here is:

```math
\boxed{
\text{a classical survivor cohomology / exactness theorem on the prolonged NS system,}
}
```

not a quantum asymptotic-state construction.

## 4C. Why differential forms and the exterior product matter

This is the next correct refinement.

The useful step is not merely "use differential forms" in the abstract.
It is:

```math
\boxed{
\text{move to the intrinsic, coordinate-free differential-form package wherever the live object is antisymmetric or exactness-sensitive.}
}
```

That matters for three reasons.

### 1. Intrinsic definitions fit the lane's current needs

The lane is already trying to stop treating identities as coordinate accidents.

Differential forms are intrinsically defined on the manifold, and the main
operations

```math
d,\qquad i_X,\qquad \mathcal L_X,\qquad \wedge
```

are coordinate-free.

So if a cancellation is really geometric rather than coordinate-dependent, the
form package is the natural place to record it.

### 2. Exterior product is the correct algebra for antisymmetric transport structure

The wedge product

```math
\alpha\wedge\beta
```

is alternating. That means it naturally records:

- orientation,
- antisymmetric transfer,
- vorticity-type structure,
- exact-vs-nonexact distinctions through `d` and Stokes-type identities.

So on the NS side, wedge/exterior algebra is a strong candidate language for:

- vorticity channels,
- transport circulation identities,
- commutator classes that are genuinely antisymmetric,
- exactness statements made via Cartan's formula.

### 3. Cartan formula becomes more honest in the form package

Once one works on differential forms, the formula

```math
\mathcal L_X\omega = i_X d\omega + d(i_X\omega)
```

is not metaphorical. It is the actual bridge between:

- Lie-dragged transport,
- exact differentials,
- and residual geometric content.

That is exactly the algebraic shape the lane is looking for.

## 4D. But forms alone do not see the whole NS burden

This is the critical qualifier.

The current live lane judgment is that the deep burden is not only antisymmetric
transport content. It also involves symmetric deformation geometry:

```math
G=AA^\top,
\qquad
\partial_t G
=
-A\big((\nabla u)+(\nabla u)^\top\big)A^\top.
```

That is strain/deformation data, not pure differential-form data.

So the correct verdict is:

```math
\boxed{
\text{differential forms are probably the right intrinsic package for the antisymmetric/exact channels,}
}
```

```math
\boxed{
\text{but they are not, by themselves, the whole closure language for Navier--Stokes.}
}
```

In practical terms:

- forms/wedge are likely excellent for identifying trivial transport and
  vorticity-side channels;
- the deformation metric and symmetric strain still require tensor/deformation
  geometry.

So the best package is probably:

```math
\boxed{
\text{forms for exact/antisymmetric structure}
\quad+\quad
\text{deformation tensors for symmetric strain structure.}
}
```

## 4E. Best reformulation of your proposed chain

With this correction, the route becomes:

```math
\boxed{
\text{Infinite jet prolongation}
\to
\text{intrinsic differential-form/tensor package}
\to
\text{variational bicomplex}
\to
\text{BRST-style survivor cohomology.}
}
```

That is much stronger than the raw BRST slogan, because it already tells us the
split:

- use differential forms and wedge structure where Cartan exactness is the
  right invariant;
- use deformation tensors where the symmetric geometric burden survives.

## 4F. The actual NS differential-form package

The right way to use forms here is not abstractly but through the intrinsic fluid
objects.

Let

```math
\alpha := u^\flat
```

be the velocity `1`-form obtained from the metric, and let

```math
\omega := d\alpha
```

be the vorticity `2`-form.

Then the natural operators become:

- incompressibility:
  ```math
  \delta \alpha = 0
  ```
  or equivalently
  ```math
  d\star \alpha = 0;
  ```
- vorticity:
  ```math
  \omega = d\alpha;
  ```
- viscosity:
  the Hodge Laplacian on the `1`-form side,
  ```math
  \Delta_H = d\delta + \delta d;
  ```
- transport:
  Lie derivative and interior product,
  ```math
  \mathcal L_u,\qquad i_u.
  ```

So the geometric NS rewrite lives on:

```math
\alpha,\qquad \omega=d\alpha,\qquad \delta\alpha=0,\qquad \Delta_H\alpha.
```

This is much more concrete than just saying "use forms."

## 4G. Why de Rham and Stokes are genuinely relevant

The de Rham complex

```math
0\to \Omega^0(M)\xrightarrow{d}\Omega^1(M)\xrightarrow{d}\Omega^2(M)\xrightarrow{d}\cdots
```

matters because:

- `d^2=0` is the exactness machine;
- closed versus exact is the first intrinsic survivor test;
- Stokes identifies exact contributions with boundary flux:
  ```math
  \int_M d\eta = \int_{\partial M}\eta.
  ```

So for the current lane, the right cohomological question is:

```math
\boxed{
\text{which apparent nonlinear packets are exact transport/boundary channels, and which survive as genuine interior obstructions?}
}
```

That is exactly the theorem-classification problem we keep running into.

## 4H. Pullback is the Lagrangian bridge

The pullback formalism is not decorative here.
It is the exact classical bridge from Eulerian transport language to the
Lagrangian deformation route.

Because pullback respects:

```math
f^*(\omega\wedge\eta)=f^*\omega\wedge f^*\eta,
\qquad
f^*(d\omega)=d(f^*\omega),
```

it is the intrinsic version of "transport disappears in the comoving frame."

So the Lagrangian route can be re-read as:

```math
\boxed{
\text{pull back the Eulerian form package by the flow map,}
}
```

```math
\boxed{
\text{quotient out the Lie-dragged part, and study what survives in deformation geometry.}
}
```

That is the cleanest bridge so far between:

- Cartan/Lie derivative language,
- mixed-jet tower language,
- and the deformation metric `G`.

## 4I. Currents are probably Body III language

The mention of currents is also useful, but likely in a different slot.

Currents are the form-dual analogue of generalized domains of integration.
That makes them much more naturally aligned with:

- weak limits,
- compactness,
- generalized Stokes pairings,
- exact-object production.

So in the present four-body reading, currents are probably:

```math
\boxed{
\text{Body III / compactness language,}
}
```

not the main Body II/IV closure engine.

That does not make them irrelevant.
It just means:

- forms + Hodge + Cartan are likely the right intrinsic language for the
  transport/vorticity/exactness side;
- currents may become useful later when the lane must pass to weak limits or
  generalized same-surface objects.

## 5. New synthesized insight

The strongest insight from trying this route is:

```math
\boxed{
\text{the repo's "survivor dictionary theorem" can be reformulated as a cohomology-identification theorem.}
}
```

More concretely:

### Theorem A becomes

Show that:

```math
\text{tail leakage}
\leftrightarrow_{\mathrm{same\ readout}}
\text{tower flux/debt}
\leftrightarrow_{\mathrm{same\ readout}}
\text{deformation commutator}
```

are not merely analogous packets, but representatives of the same residual
class after quotienting out:

- contact-trivial jet terms,
- pressure-trivial pieces,
- skew transport transfer pieces,
- frame/relabeling artifacts.

### Theorem B becomes

Show that the geometry-evolving heat law on the deformation side makes this
residual class:

- exact,
- contractive,
- or coercively dominated.

That is the cohomological version of the drain theorem once the residual class
and domination/exactness alternative are proved.

So the jet/bicomplex/BRST route does **not** replace the current final-proof
program.
It clarifies its algebraic target.

## 6. The strongest lane-specific reformulation

The modern lane is already saying:

```math
\text{tail leakage}
\leftrightarrow
\text{tower flux/debt}
\leftrightarrow
\text{deformation-geometry commutator}.
```

The new route suggests sharpening that to:

```math
\boxed{
\text{these are three representatives of one survivor cohomology class on the prolonged NS system.}
}
```

If that is right, then the current central burden becomes:

1. identify the exact quotient in which the class lives;
2. show the historical lower-prefix / Volterra survivor and the current lifted
   high-side survivor map to the same class or prove precisely where they split;
3. show the deformation-geometry heat law annihilates or contracts that class.

That is much more specific than merely saying "use BRST."

## 7. Best concrete use of this route right now

The best bounded use is:

### Step 1. Recast the mixed-jet tower as the infinite prolongation surface

Do this without changing the theorem target.

### Step 2. Introduce a bicomplex reading of the exact cancellations

Re-read:

- pressure cancellation,
- transport skewness,
- cross-rung off-diagonal identities,

as exactness/triviality statements rather than as isolated lucky cancellations.

### Step 3. Define the survivor quotient

Name the quotient that kills:

- contact noise,
- pressure-trivial channels,
- skew transport channels,

and leaves the real survivor packet.

### Step 4. Only then consider BRST-style resolution

If a cohomological resolution is useful, use it as a classifier for the
survivor quotient.

Do **not** jump straight to full quantization language.

## 8. Verdict

The route is promising only after one correction:

```math
\boxed{
\text{Infinite jet spaces: yes.}
}
```

```math
\boxed{
\text{Variational bicomplex: likely useful for survivor classification.}
}
```

```math
\boxed{
\text{Literal BRST quantization: probably too large.}
}
```

```math
\boxed{
\text{Best version: jet prolongation + bicomplex exactness + BRST-style survivor cohomology.}
}
```

So the right thing to try next is not "quantize Navier--Stokes."
It is:

```math
\boxed{
\text{turn the current survivor dictionary theorem into a jet/cohomological theorem.}
}
```
