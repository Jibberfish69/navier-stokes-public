# Phi Low Ledger Propagation Result

## Target

The finite low-shell ledger inclusion introduces

```math
\Phi_{low}(\mathcal E_D(X))
:=
\Phi(\mathcal E_D(X))+\theta_{low}M_{low}(X),
\qquad \theta_{low}>0.
\tag{PLP.1}
```

This note checks that replacing `\Phi` by `\Phi_{low}` preserves collar
coefficient-margin statements.

## Monotonicity

Since `M_{low}\ge0`,

```math
\Phi(\mathcal E_D(X))
\le
\Phi_{low}(\mathcal E_D(X)).
\tag{PLP.2}
```

Every estimate of the form

```math
A
\le
\varepsilon\nu2^{2j}B+C_\varepsilon\Phi(\mathcal E_D(X))
\tag{PLP.3}
```

implies

```math
A
\le
\varepsilon\nu2^{2j}B+C_\varepsilon\Phi_{low}(\mathcal E_D(X)).
\tag{PLP.4}
```

with the same viscous coefficient `\varepsilon\nu2^{2j}` and the larger
declared lower-order ledger.

## Low-shell residual insertion

The finite low-shell residual obeys

```math
\mathcal R_{low}(X)
\le
\theta_{low}^{-1}\Phi_{low}(\mathcal E_D(X)).
\tag{PLP.5}
```

Thus any collar estimate with an added low-shell residual term

```math
A
\le
\varepsilon\nu2^{2j}B+C_\varepsilon\Phi(\mathcal E_D(X))+C_L\mathcal R_{low}(X)
\tag{PLP.6}
```

becomes

```math
A
\le
\varepsilon\nu2^{2j}B+
\left(C_\varepsilon+C_L\theta_{low}^{-1}\right)
\Phi_{low}(\mathcal E_D(X)).
\tag{PLP.7}
```

The viscous absorption window is unchanged.

## Theorem PLP

Replacing `\Phi` by `\Phi_{low}` preserves every lower-order collar absorption statement whose lower-order terms enter additively and whose viscous term has already been absorbed. The replacement changes only the lower-order constant:

```math
C_\varepsilon
\mapsto
C_\varepsilon+C_L\theta_{low}^{-1}.
\tag{PLP.8}
```

## Boundary

The global theorem statement must explicitly use `\Phi_{low}` wherever the finite low-shell amplitude ledger is absorbed. Statements that insist on the original `\Phi` require the separate domination theorem

```math
M_{low}(X)
\le C\Phi(\mathcal E_D(X)).
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-residual-closure-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
