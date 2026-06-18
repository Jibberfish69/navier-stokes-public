# Finite Low-Shell Ledger Inclusion Result

## Target

The finite low-shell residual closure reduced the remaining low-shell branch to

```math
M_{low}(X)
\le
C_{low}\Phi(\mathcal E_D(X)),
\tag{FLL.1}
```

where

```math
M_{low}(X)
:=
\max_{j\in\mathcal L}
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{FLL.2}
```

## Amplitude domination is an extra datum

The inequality `FLL.1` cannot be derived from finiteness of `\mathcal L` alone. If `e` is a coherent low-shell state and `X_A=Ae`, then

```math
M_{low}(X_A)=A M_{low}(e).
\tag{FLL.3}
```

Thus a fixed lower-order ledger that does not see this finite amplitude cannot dominate `M_{low}` uniformly over amplitudes.

## Ledger inclusion theorem

Define the extended lower-order ledger

```math
\Phi_{low}(\mathcal E_D(X))
:=
\Phi(\mathcal E_D(X))+	heta_{low}M_{low}(X),
\qquad \theta_{low}>0.
\tag{FLL.4}
```

Then

```math
M_{low}(X)
\le
\theta_{low}^{-1}\Phi_{low}(\mathcal E_D(X)).
\tag{FLL.5}
```

Consequently, the finite low-shell residual satisfies

```math
\mathcal R_{low}(X)
\le
C_{low}\Phi_{low}(\mathcal E_D(X)).
\tag{FLL.6}
```

with `C_{low}` depending only on `\theta_{low}` and the fixed finite-block constants.

### Proof

The bound `FLL.5` is the definition `FLL.4`. The residual estimate follows from

```math
\mathcal R_{low}(X)\le M_{low}(X)
```

recorded in the finite residual closure file. ∎

## Conditional non-extended version

If the existing energy ledger already satisfies

```math
M_{low}(X)
\le
C_\Phi\Phi(\mathcal E_D(X)),
\tag{FLL.7}
```

then no extension is needed, and

```math
\mathcal R_{low}(X)
\le
C_\Phi\Phi(\mathcal E_D(X)).
\tag{FLL.8}
```

## Boundary

The finite low-shell branch has two honest closure routes:

```text
prove M_low(X) <= C Phi(E_D(X));
```

or

```text
extend the lower-order ledger to include M_low(X).
```

The second route is bookkeeping-valid for the collar estimate, provided the global theorem statement explicitly uses `\Phi_{low}` rather than the older `\Phi`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/finite-low-shell-residual-closure-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-amplitude-residual-control-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
