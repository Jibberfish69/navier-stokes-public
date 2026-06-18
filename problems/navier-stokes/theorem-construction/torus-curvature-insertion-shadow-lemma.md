# Torus Curvature-Insertion Shadow Lemma

## Status

Lane-local extraction of the exact NC-torus shadow move described in the
Marvin note. This is not a discharged theorem. Its job is to make the intended
`D_\Theta` expansion explicit inside `problems/navier-stokes/**` so the strict
shadow claim can be tracked as theorem work rather than as side commentary.

## Target Claim

For the torus-model curvature insertion term,

```text
\mathcal C(\iota_X\Omega_{D_\Theta}(X))=0,
```

where `\mathcal C` is the strict commutative shadow / abelianization map and
`D_\Theta` is the NC torus Dirac operator with deformation sector separated
from the commutative transport sector.

## Working Expansion

Write the torus Dirac operator as

```text
D_\Theta = D_0 + \mathsf K_\Theta,
```

with deformation carrier

```text
\mathsf K_\Theta = \Theta^{ab}K_{ab},
```

so that

```text
\Omega_{D_\Theta}(X)
=
[D_\Theta,X]
=
[D_0,X] + [\mathsf K_\Theta,X].
```

Contracting against `X` gives

```text
\iota_X\Omega_{D_\Theta}(X)
=
\iota_X[D_0,X] + \Theta^{ab}\,\iota_X[K_{ab},X].
```

The route is:

1. the `D_0` term is the commutative transport / exact-sector piece and is
   handled by the shadow split already used in D.3;
2. the deformation-dependent `\Theta^{ab}` term lies in the commutator sector
   or has vanishing strict-shadow symbol;
3. therefore the strict commutative shadow kills the curvature insertion
   sector.

## Three Proof Routes

### 1. Commutator-kernel route

Show that

```text
\iota_X\Omega_{D_\Theta}(X)\in \overline{[A_\Theta^\infty,A_\Theta^\infty]}.
```

Then

```text
\mathcal C(\iota_X\Omega_{D_\Theta}(X))=0
```

holds by substitution into the displayed identity.

### 2. Symbol-level antisymmetry route

Compute the principal symbol of the insertion term and show the
commutative-shadow symbol vanishes:

```text
\sigma_{\mathrm{ab}}\!\big(\iota_X\Omega_{D_\Theta}(X)\big)=0.
```

This is the model-specific version of the claim that the surviving classical
symbol is symmetric while the curvature insertion is antisymmetric in the NC
deformation parameter.

### 3. Trace-duality route

For every commutative test observable `\phi`, prove

```text
\langle \phi,\mathcal C(\iota_X\Omega_{D_\Theta}(X))\rangle = 0.
```

Equivalently,

```text
\langle \phi,\iota_X\Omega_{D_\Theta}(X)\rangle = 0
```

for all shadow-visible `\phi`, which forces the commutative readout to vanish.

## Torus-Model Interpretation

The point of the `\Theta^{ab}` expansion is not that every term is literally
zero before shadowing. The point is that the curvature insertion term is
strictly deformation-carried, so after the commutative quotient it has no
visible content.

In the lane-local proof surfaces, that means the shadow theorem should treat
the curvature insertion as a commutator-sector residual:

```text
\mathcal C(\iota_X\Omega_{D_\Theta}(X))=0
\quad\Longleftarrow\quad
\iota_X\Omega_{D_\Theta}(X)\text{ is deformation-carried.}
```

## Source Anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-ymg-hodge-program.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/carrier-block-closure-and-commutator-reduction.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/shadow-functor-lemma-chain.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`

## Honest Status

This lemma records the exact Marvin-style expansion target and the proof routes
available for it. It does not yet prove the target, but it makes the missing
torus-side shadow step explicit and lane-local.
