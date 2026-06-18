# Finite Low-Shell Residual Closure Result

## Target

The finite low-shell residual ledger is

```math
\mathcal R_{low}(X)
:=
\max_{j\in\mathcal L}
\left[
A_j^{low}(I_j)-\kappa_U\nu2^j-C_U2^{-j}\Phi(\mathcal E_D(X))
\right]_+,
\tag{FLSC.1}
```

where

```math
A_j^{low}(I_j)
:=
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{FLSC.2}
```

The desired closure is

```math
\boxed{
\mathcal R_{low}(X)
\le
C_{low}\Phi(\mathcal E_D(X)).
}
\tag{FLSC.3}
```

## Finite-dimensional reduction

Let the finite low-shell block be

```math
\mathcal L=
\{j:j<J_{high}(C_X,\nu,\kappa_U)\}
\cap \mathcal A,
\tag{FLSC.4}
```

where `\mathcal A` is the active dyadic range. If `\mathcal L` is finite, define

```math
M_{low}(X)
:=
\max_{j\in\mathcal L}A_j^{low}(I_j).
\tag{FLSC.5}
```

Then

```math
\mathcal R_{low}(X)
\le
M_{low}(X).
\tag{FLSC.6}
```

Thus `FLSC.3` follows from the finite low-shell amplitude domination condition

```math
M_{low}(X)
\le
C_{low}\Phi(\mathcal E_D(X)).
\tag{FLSC.7}
```

## Readout sufficient condition

By readout Sobolev comparison,

```math
A_j^{low}(I_j)
\le
C_{read}\sup_{r\in I_j}\|X(r)\|_{H_D^s}.
\tag{FLSC.8}
```

Therefore

```math
M_{low}(X)
\le
C_{read}\sup_{r\in I_{low}}\|X(r)\|_{H_D^s},
\qquad
I_{low}:=\bigcup_{j\in\mathcal L}I_j.
\tag{FLSC.9}
```

Consequently, the lower-order ledger closure follows if

```math
C_{read}\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_{low}\Phi(\mathcal E_D(X)).
\tag{FLSC.10}
```

## Theorem FLSC

Assume the finite low-shell amplitude domination condition `FLSC.7`, or equivalently the readout sufficient condition `FLSC.10`. Then

```math
\mathcal R_{low}(X)
\le
C_{low}\Phi(\mathcal E_D(X)).
\tag{FLSC.11}
```

Hence the finite low-shell block enters the same lower-order ledger as the collar closure.

### Proof

From `FLSC.1`, each positive residual is bounded by `A_j^{low}(I_j)`. Taking
the maximum gives `FLSC.6`. Under `FLSC.7`, `FLSC.3` bounds each
`A_j^{low}(I_j)` by `C_{low}\Phi(\mathcal E_D(X))`, so `FLSC.6` becomes
`FLSC.11`. Under `FLSC.10`, use `FLSC.8` and take the maximum over the finite
block to obtain `FLSC.7`. ∎

## Boundary

This note closes the finite low-shell branch only under an explicit amplitude-domination hypothesis. The finite nature of the block reduces the problem to finitely many scalar amplitudes; it supplies no automatic smallness by itself.

The next useful supplier is therefore either:

```text
prove M_low(X) <= C_low Phi(E_D(X));
```

or fold the finite amplitudes into the definition of the lower-order ledger `Phi`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/finite-low-shell-amplitude-residual-control-result.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
