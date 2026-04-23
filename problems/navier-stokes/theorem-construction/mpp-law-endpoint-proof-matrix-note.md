# MPP Law / Endpoint Proof Matrix Note

## Status

Theorem-facing route-correction note.

Role: separate primitive law burdens from legacy endpoint shells, record which
matrix entries are actually installed on disk, and block any inference from one
installed entry to a whole-law discharge or a surviving-pair frontier claim.

## Purpose

The route needs one exact distinction:

```math
\boxed{
\text{`Pack`, `Part`, and `Field` are primitive law burdens;}
}
\tag{PMX.0}
```

```math
\boxed{
\text{`Dead`, `Blown`, and `Jump` are endpoint shells / manifestation shells.}
}
\tag{PMX.1}
```

The theorem task is therefore not a paired triple. It is a proof matrix.

## Matrix Convention

Rows are primitive laws:

```math
\mathrm{Pack}_Q,
\qquad
\mathrm{Part}_{N,Q},
\qquad
\mathrm{Field}_{N,r,Q}.
\tag{PMX.2}
```

Columns are legacy endpoint shells:

```math
\mathrm{Dead},
\qquad
\mathrm{Blown},
\qquad
\mathrm{Jump}.
\tag{PMX.3}
```

An entry

```math
(\text{law burden},\ \text{endpoint shell})
\tag{PMX.4}
```

means:

```math
\text{use that shell to test or discharge that burden on still-live windows.}
\tag{PMX.5}
```

No theorem on disk is allowed to infer:

1. one shell owns one law by default;
2. one installed entry discharges the whole law row;
3. one installed entry deletes all other columns for that row;
4. one installed entry reduces the live frontier to the other two rows.

## Native Shell Alignments

The route-native shell alignments currently installed on disk are:

```math
\mathrm{Dead}\leadsto \mathrm{Part},
\qquad
\text{pack-side `Blown` face}\leadsto \mathrm{Pack},
\qquad
\mathrm{Jump}\leadsto \mathrm{Field}.
\tag{PMX.5a}
```

Here `\leadsto` means "native shell alignment on the present route," not
primitive identity and not exclusivity.

Inside the blown column, the route already separates two local faces:

```math
\text{packing-detached},
\qquad
\text{tower-blown}.
\tag{PMX.5b}
```

Only the first is native to `Pack`. The second is a mixed tower-amplitude face
and does not yet isolate a unique law row.

## Installed Entries

### Entry `(Part, Dead)`

This is the only actually discharged matrix entry on disk.

The installed route is:

```math
\text{dead-shell rigidity/reduction}
\Longrightarrow
\text{shared participation no-drop on still-live neighborhoods.}
\tag{PMX.6}
```

Authoritative installed surface:

1. [mpp-shared-participation-no-drop-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-no-drop-theorem.md)

So the honest consequence is only:

```math
\boxed{
\text{the `(Part, Dead)` entry is installed.}
}
\tag{PMX.7}
```

It is **not**:

```math
\text{`Part` is discharged globally,}
\qquad
\text{or}
\qquad
\text{the frontier is now only `Pack` / `Field`.}
\tag{PMX.8}
```

### Entry `(Pack, Blown)` and the internal blown split

This is the canonical pack-side shell program already installed as a theorem
surface, but not yet discharged.

Authoritative surfaces:

1. [mpp-shared-packing-exact-predicate-draft.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-packing-exact-predicate-draft.md)
2. [mpp-pack-side-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pack-side-forward-preservation-reduction-note.md)

Define the finite-order tower-amplitude gauge at depth `N` by

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}\big(|U_k(x,t)|+|K_k(x,t)|\big).
\tag{PMX.9}
```

Then the blown-side regime gauge used by the bridge note is exactly

```math
\mathfrak B_{N,Q}(t)
=
\Gamma_{\mathrm{pack},Q}(t)
+
\mathfrak A_{N,Q}(t).
\tag{PMX.9a}
```

So the blown column already contains two local faces:

```math
\text{packing-detached}
\quad\Longleftrightarrow\quad
\forall M<\infty,\ \exists Q,\ \exists t\text{ meeting }Q:
\Gamma_{\mathrm{pack},Q}(t)>M,
\tag{PMX.9b}
```

and

```math
\text{tower-blown}
\quad\Longleftrightarrow\quad
\forall M<\infty,\ \exists Q,\ \exists t\text{ meeting }Q:
\mathfrak A_{N,Q}(t)>M.
\tag{PMX.9c}
```

### Proposition `PMX.A` (Blown-column split)

At any fixed depth `N`,

```math
\text{blown manifestation via }\mathfrak B_{N,Q}
\Longleftrightarrow
\text{packing-detached manifestation or tower-blown manifestation.}
\tag{PMX.9d}
```

#### Proof

If either `(PMX.9b)` or `(PMX.9c)` holds, then `(PMX.9a)` escapes every finite
bound because `\mathfrak B_{N,Q}\ge \Gamma_{\mathrm{pack},Q}` and
`\mathfrak B_{N,Q}\ge \mathfrak A_{N,Q}`.

Conversely, suppose blown manifestation holds through `(PMX.9a)` but neither
packing-detached nor tower-blown manifests. Then there exist finite bounds
`M_{\mathrm{pack}}, M_{\mathrm{amp}}<\infty` such that

```math
\Gamma_{\mathrm{pack},Q}(t)\le M_{\mathrm{pack}},
\qquad
\mathfrak A_{N,Q}(t)\le M_{\mathrm{amp}}
\tag{PMX.9e}
```

for every still-live `Q` and every time `t` meeting `Q`. Hence

```math
\mathfrak B_{N,Q}(t)\le M_{\mathrm{pack}}+M_{\mathrm{amp}},
\tag{PMX.9f}
```

contradicting blown manifestation. `\square`

So the honest consequence is:

```math
\boxed{
\text{only the `packing-detached` face is the native `(Pack, Blown)` shell entry.}
}
\tag{PMX.9g}
```

The `tower-blown` face is a different blown-side branch and remains mixed.

### Entry `(Field, Jump)`

This is the canonical one-field shell program already installed conditionally on
retaining `Pack` and `Part`, but not yet discharged.

Authoritative surface:

1. [mpp-field-coherence-remainder-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-field-coherence-remainder-note.md)

The installed theorem content is:

```math
\text{under retained `Pack` and `Part`, jump manifestation forces coherence fracture.}
\tag{PMX.10}
```

So the honest consequence is:

```math
\boxed{
\text{the `(Field, Jump)` shell alignment is installed conditionally, but the entry is still open.}
}
\tag{PMX.11}
```

Here "conditionally" means exactly:

```math
\text{under retained `Pack` and retained `Part`, jump reduces to coherence fracture.}
\tag{PMX.11a}
```

## Discriminated Cross-Entries

### `Jump` against `Pack` and `Part`

Theorem `FCR.D` already fixes the route posture:

```math
\text{retained `Pack`}
\;+\;
\text{retained `Part`}
\;+\;
\text{jump manifestation}
\Longrightarrow
\text{coherence fracture.}
\tag{PMX.12}
```

So on the present route:

```math
\boxed{
(\mathrm{Pack},\mathrm{Jump})
\text{ and }
(\mathrm{Part},\mathrm{Jump})
\text{ are not direct shell entries.}
}
\tag{PMX.12a}
```

### `Dead` against `Pack` and `Field`

The route-native semantic surfaces already place `Dead` on the participation
side. So on the present route:

```math
\boxed{
(\mathrm{Pack},\mathrm{Dead})
\text{ and }
(\mathrm{Field},\mathrm{Dead})
\text{ are non-native shell entries.}
}
\tag{PMX.12b}
```

### `Tower-blown` against `Pack`, `Part`, and `Field`

The mixed tower-amplitude face uses `\mathfrak A_{N,Q}`, not the deformation
gauge `\Gamma_{\mathrm{pack},Q}`. So it is not a pure `Pack` entry.

It is also not yet a pure `Part` entry: `\mathrm{Part}_{N,Q}` controls the
carrier family `K_k` through `\mathfrak P_{N,Q}`, but it does not by itself
bound the absolute rung amplitudes `U_k`.

And it is not yet a pure `Field` entry: `\mathrm{Field}_{N,r,Q}` controls
neighboring differences through `\mathfrak C_{N,r,Q}`, not the absolute tower
amplitude at a basepoint.

So the mixed blown-side entries

```math
(\mathrm{Pack},\mathrm{Blown}),
\qquad
(\mathrm{Part},\mathrm{Blown}),
\qquad
(\mathrm{Field},\mathrm{Blown})
\tag{PMX.12c}
```

must be read carefully:

```math
\boxed{
\text{`packing-detached` is the native pack-side blown face, while `tower-blown` is still mixed and does not yet isolate a unique law row.}
}
\tag{PMX.12d}
```

## Matrix Verdict

The honest theorem-facing matrix is therefore:

```math
\begin{array}{c|c|c|c}
 & \mathrm{Dead} & \mathrm{Blown} & \mathrm{Jump} \\
\hline
\mathrm{Pack} & \text{non-native} & \text{pack-native open + tower-mixed} & \text{not direct} \\
\mathrm{Part} & \text{native installed} & \text{tower-mixed} & \text{not direct} \\
\mathrm{Field} & \text{non-native} & \text{tower-mixed} & \text{native open conditional}
\end{array}
\tag{PMX.13}
```

## Route Consequence

The live frontier is not a surviving paired row-set.

It is:

```math
\boxed{
\text{the unresolved law / endpoint proof matrix,}
}
\tag{PMX.14}
```

with one installed discharge entry `(Part, Dead)` and two currently strongest
open shell programs: the pack-native blown branch and `(Field, Jump)`.

## Hard Boundary

This note does **not** prove:

1. endpoint exhaustiveness;
2. shell ownership of any law;
3. collapse of the matrix to a surviving pair;
4. discharge of any mixed or open cross-entry.

What it does fix is the theorem grammar:

```math
\boxed{
\text{one proved matrix entry never discharges an entire law row by itself.}
}
\tag{PMX.15}
```
