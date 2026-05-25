# No-Boundary Smooth-Data Euler Class Boundary

## Status

Theorem-facing boundary note for the Euler mirror after the `ESM.N1` through
`ESM.N6` closure pass.

Role: prevent the proved nonsmooth rows from being overread as a no-boundary
smooth-data finite-time blowup theorem. This is not a burden note for the
already-closed `ESM` matrix; it is the exact class boundary separating what the
branch has proved or imported from the stronger no-boundary smooth-data problem.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and
[euler-ns-continuum-closure-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml).

## Exact Boundary

The following statement is not supplied by the installed Euler mirror rows:

```math
u_0\in C^\infty_{\mathrm{div}}(\mathbb R^3)
\text{ or }
C^\infty_{\mathrm{div}}(\mathbb T^3),
\quad E(u_0)<\infty
\Longrightarrow
\exists T_*<\infty:\ \text{the classical Euler branch loses smoothness}.
\tag{NBS.1}
```

The branch has proved or imported different statements:

1. global periodic weak `Member_E` nonsmoothness from nonsmooth initial data
   (`ESM.N1`, `ESM.N2`);
2. global periodic singular limits of smooth stationary shears, with a different
   smooth datum for each thickness (`ESM.N3`);
3. global same-datum nonclassical weak branches from smooth periodic data
   (`ESM.N4`);
4. smooth-data finite-time blowup in the boundary/axisymmetric class (`ESM.N5`);
5. the class-grammar split between shared flux-volume membership and one-field
   regularity (`ESM.N6`).

None of these is `(NBS.1)`.

## Promotion Rule

To promote the no-boundary smooth-data class, a new theorem would have to state
and prove:

```math
\exists u_0\in C^\infty_{\mathrm{div}}(\mathbb T^3)
\text{ or }
C^\infty_{\mathrm{div}}(\mathbb R^3),\ E(u_0)<\infty,
\quad
\exists T_*<\infty:
\limsup_{t\uparrow T_*}\|u(t)\|_{C^1}=\infty
\tag{NBS.2}
```

for the classical Euler branch from that same datum, without boundary geometry,
without switching to nonclassical weak branches, and without using a
zero-thickness family of changing initial data.

## Route Readback

This boundary keeps the branch honest:

```text
proved weak periodic nonsmoothness
+ proved periodic singular limits
+ imported weak branch nonuniqueness
+ imported boundary/axisymmetric smooth-data blowup
does not equal
no-boundary smooth-data finite-time blowup.
```

The no-boundary class is therefore accounted for as a separate theorem class,
not silently claimed by the completed `ESM` rows.
