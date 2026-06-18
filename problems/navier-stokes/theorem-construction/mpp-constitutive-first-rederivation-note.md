# MPP Constitutive-First Re-Derivation Note

## Status

Theorem-facing route correction note.

Role: state the stronger correction that class membership must enter before the
branch-start hypotheses and consumer equations, not merely as a later supplier
header.

## Purpose

The earlier constitutive-import patches were not yet sharp enough. They made the
branches acknowledge the class-membership carrier, but they still left too much
of the branch-start algebra looking semantically autonomous.

The stronger correction is:

```math
\boxed{
\text{the Navier--Stokes PDE stays fixed, but the admissible derivation tree does not.}
}
\tag{CFR.0}
```

So the real task is not just “add CM headers.” It is:

```math
\boxed{
\text{re-derive each branch from the earliest point where class membership changes what counts as a legal hypothesis, legal observable, or legal error term.}
}
\tag{CFR.1}
```

## Exact Split

Three different things must not be confused.

### 1. The PDE itself

The base equation remains

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{CFR.2}
```

That part is unchanged.

### 2. Universal algebra on top of the PDE

Pure identities and linear-algebra facts remain valid wherever they are stated:

1. flow-map identities;
2. projector triangle inequalities;
3. measurable covector selection from a rank-two bundle;
4. Cauchy--Green definitions.

These are still true as identities.

### 3. Branch-start theorem packets

This is the part that changes.

Branch-start hypotheses such as

1. transport coherence on a good family;
2. projector-identification error ledgers;
3. normal-covector observability windows;
4. alignment hypotheses like `TCJ` / `TEA`;

are **not** neutral anymore once the route says the fluid is one shared
incompressible pressure-viscosity object.

Under that doctrine, these branch starts must be re-read as one of:

```math
\text{CM-exported consequence,}
\tag{CFR.3a}
```

```math
\text{earliest open CM-to-branch precipitating theorem,}
\tag{CFR.3b}
```

or

```math
\text{genuinely branch-local residual theorem after the CM export has already been consumed.}
\tag{CFR.3c}
```

Nothing else is honest.

## What “Injected At The Start” Actually Means

It means the first nontrivial line of a branch cannot be something like

```math
\text{Assume }TCJ,\ TEA,\ \mathrm{Err}_{J,\mathrm{id}},\ \text{etc.}
\tag{CFR.4}
```

unless the note says right there which of those are:

1. forced by packing/participation/one-field import;
2. still-open export theorems from the class-membership carrier;
3. truly branch-local after the export.

So the right rewrite pattern is:

```math
\mathrm{CM}_{NS}
\Longrightarrow
\text{earliest admissibility consequences}
\Longrightarrow
\text{branch readout packet}
\Longrightarrow
\text{consumer equation}
\Longrightarrow
\text{downstream closure}.
\tag{CFR.5}
```

That is the sense in which the old branch starts are not “still valid under the
new assumptions.” The identities may remain true, but their role as autonomous
starting points is no longer valid.

## Concrete Early Precipitating Changes

### A. `TCJ` / transport coherence

`TCJ` cannot remain a free geometric opening move. It is now either:

1. a CM consequence of packing plus transported coherence; or
2. the exact earliest missing CM-to-branch theorem.

So the old angular packet start is too late in the derivation tree.

### B. `\mathrm{Err}_{J,\mathrm{id}}`

This cannot remain one opaque branch error. It must precipitate earlier as

```math
\mathrm{Err}_{J,\mathrm{id}}
=
\mathrm{Err}_{J,\mathrm{pack}}^{cm}
+
\mathrm{Err}_{J,\mathrm{tc}}^{cm}
+
\mathrm{Err}_{J,\mathrm{cal}}^{branch}.
\tag{CFR.6}
```

So the abstract projector-identification surface is no longer an admissible
semantics start by itself.

### C. Normal-covector observability

The measurable normal covector remains a valid geometric object, but the branch
is not allowed to begin as though the transported bundle geometry were floating
free. The earliest admissible start is the CM-to-normal-readout splice
`NWI.A`, not the downstream `PD.70z` consumer inequality by itself.

## Live Route Consequence

The exact live correction is:

```math
\boxed{
\text{rewrite branch starts at the earliest CM-sensitive precipitating theorem, not at the first branch-local consumer equation.}
}
\tag{CFR.7}
```

So if a branch currently begins too late, the repair is not “mention CM in the
introduction.” The repair is “move the branch start upstream until the CM
doctrine has already constrained the admissible hypotheses.”

## Immediate Practical Rule

From now on, every closure-driving NS branch should expose two starts:

1. `constitutive start`:
   the earliest CM-sensitive export/precipitation theorem;
2. `consumer start`:
   the first branch-local equation after that export has been consumed.

That is the exact formal meaning of injecting class membership into the start of
the branches.

For the surface-by-surface version of this rule, see
[mpp-surface-ontology-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-surface-ontology-ledger.md),
which records for each active branch note what projection of the whole CM fluid
it is, what coupling it preserves, what it discards, and whether it is only a
consumer start.
