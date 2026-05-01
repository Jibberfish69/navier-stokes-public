# Final Collar Route Notation Audit Result

## Audited files

```text
final-global-selector-plateau-theorem.md
final-amplitude-speed-gate-theorem.md
final-low-pass-commutator-collar-absorption-theorem.md
final-collar-route-dependency-graph.md
phi-controls-mlow-original-ledger-result.md
```

## Symbols checked

```text
u_coh
Phi_*
Phi_low
Gamma_j
K_{i,j}
w_j
M_low
```

## Result

The audited final files use `u_{coh}` consistently as the coherent velocity coefficient and reserve `\nu` for viscosity.

The coherent frequency localization is stated canonically as

```math
\boxed{u_{coh}=P_{\le j+A}u_{coh}.}
```

The ledger symbols are consistent:

```math
\Phi_*\in\{\Phi,\Phi_{low}\},
\qquad
\Phi_{low}=\Phi+\theta_{low}M_{low}.
```

The carrier and selector symbols are consistent:

```math
K_{i,j}(t)
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})^{+M},
\qquad
K_{i,j}(t)\subseteq\mathcal P_j(t),
\qquad
w_j=1\text{ on }K_{i,j}(t).
```

## Placeholder audit

No live placeholder strings remain in the audited final files. The route-facing notation is clean.

## Boundary

This audit covers the five listed final files. Earlier intermediate notes may still contain obsolete exploratory branches, so the final route should cite the final theorem, index, and dependency graph files for canonical statements.

## Source surfaces

- `problems/navier-stokes/theorem-construction/final-global-selector-plateau-theorem.md`
- `problems/navier-stokes/theorem-construction/final-amplitude-speed-gate-theorem.md`
- `problems/navier-stokes/theorem-construction/final-low-pass-commutator-collar-absorption-theorem.md`
- `problems/navier-stokes/theorem-construction/final-collar-route-dependency-graph.md`
- `problems/navier-stokes/theorem-construction/phi-controls-mlow-original-ledger-result.md`