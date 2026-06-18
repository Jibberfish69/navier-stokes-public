# Survivor Compactness / Coercivity Theorem Shape Note

## Purpose

This note states the exact theorem shape behind the sentence

```math
u^{(n)} \longmapsto \Pi_{\mathrm{surv}}\mathcal Z^{(n)}
\quad
\text{is compact/coercive on the blowup-normalized class.}
```

It does **not** prove such a theorem.
It isolates the theorem meaning, the blowup-normalized class on which it acts,
and the discharge mechanism for the live Family `A` survivor route.

The role of this note is to replace slogan-level talk with one precise
mathematical interface.

## Abstract setup

Let `u^{(n)}` be a classical approximation or would-be concentrating sequence
for the original `3D` incompressible Navier-Stokes equation on `(0,T)\times
\mathbb R^3`.

Fix a route-dependent lifted profile

```math
\mathcal Z^{(n)}=\mathcal Z[u^{(n)}]
```

on a relative-scale domain, as in
[relative-band-quotient-compactness-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/relative-band-quotient-compactness-formalization-note.md).

Let

```math
\Pi_{\mathrm{surv}}:\mathcal Z \to \mathcal Q_{\mathrm{surv}}
```

be the route-specific survivor projection, where

```math
\mathcal Q_{\mathrm{surv}}
:=
\mathcal Z/\ker \Pi_{\mathrm{surv}}
\cong
\operatorname{Im}(\Pi_{\mathrm{surv}}).
```

The live Family `A` case is

```math
\Pi_{\mathrm{surv}}=\Pi_{\mathrm{aff}},
\qquad
\Pi_{\mathrm{aff}}\widetilde Z=(M_0,M_1).
```

## Blowup-normalized class

The right theorem acts on sequences already normalized to expose the survivor,
not on arbitrary smooth solutions.

Fix active-scale and relative-gap windows `I,J`, and define the survivor
target space

```math
\mathcal Y_{I,J}
:=
L^2\big((0,T);L_x^2\times L_x^2\big)
```

in the affine case, or the route-adapted Banach space for a more general
survivor family.

Define the blowup-normalized class

```math
\mathfrak B_{\mathrm{surv}}(I,J;C_0,C_H)
```

to consist of sequences `u^{(n)}` satisfying:

1. **classical compactness bounds**

```math
\sup_n \|u^{(n)}\|_{L_t^\infty L_x^2}
+
\sup_n \|u^{(n)}\|_{L_t^2 H_x^1}
+
\sup_n \|\partial_t u^{(n)}\|_{L_t^2 H_x^{-1}}
\le C_0;
\tag{B1}
```

2. **scale-memory route is defined**

```math
\mathcal Z^{(n)}=\mathcal Z[u^{(n)}]
```

exists on the chosen windows `I,J`;

3. **harmonic-weight bound**

```math
\sup_n \|H_{w^{(n)}}\|_{L^\infty(0,T)}\le C_H;
\tag{B2}
```

4. **survivor normalization**

after rescaling or subsequence renormalization,

```math
\|\Pi_{\mathrm{surv}}\mathcal Z^{(n)}\|_{\mathcal Y_{I,J}}=1
\qquad\text{for every }n.
\tag{B3}
```

Condition `(B3)` means we have already thrown away the bulk and are looking at
the first nontrivial survivor scale.

In the affine case this reads

```math
\int_0^T
\Big(
\|M_0^{(n)}(t)\|_{L_x^2}^2
+
\|M_1^{(n)}(t)\|_{L_x^2}^2
\Big)\,dt
=
1.
\tag{B4}
```

## What compactness means here

The statement

```math
u^{(n)} \mapsto \Pi_{\mathrm{surv}}\mathcal Z^{(n)}
\quad
\text{is compact on }
\mathfrak B_{\mathrm{surv}}
```

means:

### Theorem shape SC-1 (Survivor compactness)

For every sequence `u^{(n)}\in \mathfrak B_{\mathrm{surv}}(I,J;C_0,C_H)`,
the survivor sequence

```math
S^{(n)}
:=
\Pi_{\mathrm{surv}}\mathcal Z^{(n)}
```

has a strongly convergent subsequence in `\mathcal Y_{I,J}`:

```math
S^{(n_m)} \to S
\qquad\text{strongly in }\mathcal Y_{I,J}.
\tag{SC-1}
```

This is **not** total-space compactness of `u^{(n)}`.
It is compactness of the survivor coordinates after all exact/collar-trivial
directions have already been modded out.

## What coercivity means here

The statement

```math
u^{(n)} \mapsto \Pi_{\mathrm{surv}}\mathcal Z^{(n)}
\quad
\text{is coercive on }
\mathfrak B_{\mathrm{surv}}
```

means there is a route-adapted defect functional `\mathfrak D^{(n)}` such that

```math
\|\Pi_{\mathrm{surv}}\mathcal Z^{(n)}\|_{\mathcal Y_{I,J}}^2
\le
C\,\mathfrak D^{(n)}+\varepsilon_n,
\qquad
\varepsilon_n\to 0,
\tag{SC-2}
```

and the blowup-normalized class forces

```math
\mathfrak D^{(n)}\to 0.
\tag{SC-3}
```

Then the survivor norm itself tends to zero, contradicting `(B3)`.

So coercivity is stronger than mere boundedness.
It says the survivor coordinates are controlled by a defect budget proved to
vanish or explicitly hypothesized to vanish.

## Rigidity add-on

Compactness alone does not kill the survivor. It only produces a strong limit.
To finish the argument one also needs a rigidity statement.

### Theorem shape SC-2R (Survivor rigidity)

Every limit point `S` produced by `(SC-1)` belongs to a tame class
`\mathcal T_{\mathrm{surv}}`.

The strongest desired form is

```math
\mathcal T_{\mathrm{surv}}=\{0\}.
\tag{SC-4}
```

A weaker but still useful form is

```math
\|S\|_{\mathcal Y_{I,J}}
\le
C\,\|S_{2D}\|_{\mathcal Y_{I,J}},
\tag{SC-5}
```

where the `2D` reference survivor is known either to vanish or to be controlled
by the reference theorem.

So the compactness route really has the shape

```math
\text{compactness}
\;+\;
\text{rigidity of limit points}
\Longrightarrow
\text{survivor kill}.
```

## Family A specialization

For the live affine survivor route, define

```math
\mathcal S_{\mathrm{aff}}[u^{(n)}]
:=
\Pi_{\mathrm{aff}}\widetilde Z^{(n)}
=
\big(M_0^{(n)},M_1^{(n)}\big).
\tag{A1}
```

The compactness theorem shape is:

### Theorem shape ASC-1 (Affine survivor compactness)

If `u^{(n)}\in \mathfrak B_{\mathrm{aff}}(I,J;C_0,C_H)`, then

```math
\big(M_0^{(n)},M_1^{(n)}\big)
```

is precompact in

```math
L^2\big((0,T);L_x^2\times L_x^2\big).
\tag{A2}
```

The coercive theorem shape is:

### Theorem shape ASC-2 (Affine survivor coercivity)

There exists a route-adapted defect functional `\mathfrak D_{\mathrm{aff}}^{(n)}`
such that

```math
\int_0^T
\Big(
\|M_0^{(n)}(t)\|_{L_x^2}^2
+
\|M_1^{(n)}(t)\|_{L_x^2}^2
\Big)\,dt
\le
C\,\mathfrak D_{\mathrm{aff}}^{(n)}+\varepsilon_n,
\qquad
\varepsilon_n\to0.
\tag{A3}
```

If `\mathfrak D_{\mathrm{aff}}^{(n)}\to0`, then the affine survivor vanishes.

## Why this kills the persistent weighted quotient mode

The note
[affine-survivor-quotient-compactness-interface-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-survivor-quotient-compactness-interface-note.md)
already proves:

```math
\text{affine survivor smallness}
\Longrightarrow
\mathfrak P^{(n)}\to 0.
```

So either of the following is enough:

1. **compactness + rigidity**

```math
\Pi_{\mathrm{aff}}\widetilde Z^{(n)}
\to 0
\quad\text{strongly in }L_t^2L_x^2\times L_t^2L_x^2;
\tag{A4}
```

2. **coercivity**

```math
\|\Pi_{\mathrm{aff}}\widetilde Z^{(n)}\|_{\mathcal Y_{I,J}} \to 0.
\tag{A5}
```

Then Lemma `AQC-2` gives

```math
\mathfrak P^{(n)}\to0.
\tag{A6}
```

This contradicts any blowup-normalization in which the persistent weighted
quotient term remains nontrivial.

## Honest current stop

The current NS stack does **not** prove `(SC-1)`, `(SC-2)`, `(SC-2R)`,
`(ASC-1)`, or `(ASC-2)`.

What it does prove is weaker:

1. total-space compactness on `u^{(n)}` via the classical compactness bridge;
2. exact factorization of the Family `A` obstruction through the affine
   quotient;
3. collapse of the persistent weighted quotient term once affine survivor
   smallness is granted.

So the exact missing theorem is now cleanly stated:

```math
\boxed{
\text{prove compactness/coercivity of the survivor coordinates on the blowup-normalized class.}
}
```

Not compactness of the whole field.
Not another crude estimate on the full source.
Compactness or coercivity of the survivor coordinates themselves.
