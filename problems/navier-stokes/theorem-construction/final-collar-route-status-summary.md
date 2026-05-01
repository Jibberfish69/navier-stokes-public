# Final Collar Route Status Summary

## Status

```text
local collar route: conditionally closed
active ledger: Phi_*
default ledger: Phi_low
original Phi route: open unless Phi controls M_low
superlinear non-Osgood branch: open unless stronger energy structure is proved
```

## Closed local collar statement

The final local collar theorem is recorded as

```text
||nabla C_{i,j}[X;Y]||_infty
<= epsilon nu 2^{2j} ||Y||_{H_D^s}
   + C_epsilon Phi_*(E_D(X)).
```

The canonical file is

```text
problems/navier-stokes/theorem-construction/final-low-pass-commutator-collar-absorption-theorem.md
```

## Active ledger

The active ledger is

```text
Phi_*
```

with default choice

```text
Phi_* := Phi_low := Phi + theta_low M_low.
```

The original ledger route reopens only after proving

```text
M_low(X) <= C Phi(E_D(X)).
```

The current recovery criterion is recorded in

```text
problems/navier-stokes/theorem-construction/phi-controls-mlow-original-ledger-result.md
```

## High-shell energy branch

The Osgood branch supplies uniform H_D^s control where the lifted energy comparison is Osgood-subcritical. The superlinear non-Osgood case requires one of:

```text
dissipative dominance
renormalized subcritical energy
integrated growth budget
```

The boundary is recorded in

```text
problems/navier-stokes/theorem-construction/superlinear-non-osgood-energy-branch-assessment-result.md
```

## Canonical index

The route index is

```text
problems/navier-stokes/theorem-construction/final-collar-route-index.md
```

## Boundary

This status note closes the collar-route bookkeeping and points upstream to the next Navier-Stokes theorem burden beyond the collar chain.