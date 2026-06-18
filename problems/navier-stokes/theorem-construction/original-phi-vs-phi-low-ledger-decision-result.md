# Original Phi Versus Phi Low Ledger Decision Result

## Target

The finite low-shell branch offers two ledger choices.

Original-ledger route:

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)).
\tag{PLD.1}
```

Extended-ledger route:

```math
\Phi_{low}(\mathcal E_D(X))
:=
\Phi(\mathcal E_D(X))+\theta_{low}M_{low}(X).
\tag{PLD.2}
```

## Decision criterion

Use the original ledger `\Phi` exactly when a theorem proves `PLD.1` from the installed energy/defect quantities.

Use the extended ledger `\Phi_{low}` when `M_{low}` is only known as a finite residual scalar and no domination theorem has been supplied.

## Current decision

The current route promotes the collar branch to `\Phi_{low}`.

Reason: finite cardinality of the low-shell block reduces the problem to finitely many amplitudes, while amplitude domination by the old `\Phi` is an extra theorem. The scaling test

```math
X_A=Ae
\quad\Longrightarrow\quad
M_{low}(X_A)=A M_{low}(e)
\tag{PLD.3}
```

shows that a ledger which does not measure low-shell amplitude cannot dominate `M_{low}` uniformly.

## Theorem PLD

With

```math
\Phi_*:=\Phi_{low},
\tag{PLD.4}
```

all collar coefficient-margin statements remain valid by the `\Phi_{low}` ledger propagation theorem:

```math
A
\le
\varepsilon\nu2^{2j}B+C_\varepsilon\Phi(\mathcal E_D(X))+C_LM_{low}(X)
\Longrightarrow
A
\le
\varepsilon\nu2^{2j}B+C'_\varepsilon\Phi_{low}(\mathcal E_D(X)).
\tag{PLD.5}
```

The viscous absorption window is unchanged.

## Reversion condition

The route may revert to the original `\Phi` after proving

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)).
\tag{PLD.6}
```

Until then, theorem statements using the finite low-shell residual must use `\Phi_{low}` explicitly.

## Boundary

This is a bookkeeping decision. It preserves the collar estimates while making the low-shell amplitude dependence explicit.

## Source surfaces

- `problems/navier-stokes/theorem-construction/low-shell-amplitude-domination-assessment-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/phi-low-ledger-propagation-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
