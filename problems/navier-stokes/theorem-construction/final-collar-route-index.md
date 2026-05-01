# Final Collar Route Index

## Canonical final files

### Final selector theorem

```text
problems/navier-stokes/theorem-construction/final-global-selector-plateau-theorem.md
```

Constructs the global plateau selector from carrier-localized active readouts and a proper persistent carrier collar.

### Final amplitude/speed theorem

```text
problems/navier-stokes/theorem-construction/final-amplitude-speed-gate-theorem.md
```

States the coherent amplitude/speed gate and derives the coherent coefficient inputs.

### Final collar absorption theorem

```text
problems/navier-stokes/theorem-construction/final-low-pass-commutator-collar-absorption-theorem.md
```

States the final local collar absorption estimate.

### Final dependency graph

```text
problems/navier-stokes/theorem-construction/final-collar-route-dependency-graph.md
```

Maps the route from carrier-localized active readouts to collar absorption.

### Ledger decision

```text
problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md
```

Records the current ledger decision: use Phi_low unless M_low <= C Phi is proved.

### Original-ledger recovery criterion

```text
problems/navier-stokes/theorem-construction/phi-controls-mlow-original-ledger-result.md
```

Records the exact condition for reverting from Phi_low to the original Phi.

### Notation audit

```text
problems/navier-stokes/theorem-construction/final-collar-route-notation-audit-result.md
```

Audits the final route files for notation consistency and placeholder artifacts.

## Route statement

```text
carrier-localized active readouts
-> proper carrier collar
-> global plateau selector
-> amplitude/speed supplier
-> coherent coefficient inputs
-> collar absorption
```

## Final collar estimate

```text
||nabla C_{i,j}[X;Y]||_infty
<= epsilon nu 2^{2j} ||Y||_{H_D^s}
   + C_epsilon Phi_*(E_D(X)).
```

## Ledger convention

```text
Phi_* := Phi_low := Phi + theta_low M_low
```

unless the original-ledger recovery condition

```text
M_low <= C Phi
```

is proved.

## Status

The final collar route is conditionally closed under the displayed supplier hypotheses and the Phi_* ledger convention.