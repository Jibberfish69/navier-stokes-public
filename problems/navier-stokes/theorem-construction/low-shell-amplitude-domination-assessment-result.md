# Low-Shell Amplitude Domination Assessment Result

## Target

The sharp finite low-shell target is

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)),
\tag{LSA.1}
```

where

```math
M_{low}(X)
:=
\max_{j\in\mathcal L}
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{LSA.2}
```

If `LSA.1` holds, the finite low-shell block closes using the original lower-order ledger `\Phi`.

## Scaling obstruction

Let `e` be a coherent low-shell state with nonzero readout on the persistent support, and set

```math
X_A:=Ae.
\tag{LSA.3}
```

Then

```math
M_{low}(X_A)=A M_{low}(e).
\tag{LSA.4}
```

Therefore `LSA.1` requires the lower-order ledger to dominate the same low-shell amplitude scaling:

```math
\Phi(\mathcal E_D(X_A))
\ge
c_\Phi A M_{low}(e).
\tag{LSA.5}
```

A ledger that measures only higher-order defects, collar errors, or normalized residuals has no automatic control of `M_{low}`.

## Conditional domination criterion

A sufficient and necessary route-level condition is

```math
\Phi(\mathcal E_D(X))
\ge
c_{low}M_{low}(X)
\tag{LSA.6}
```

on the finite low-shell active class. Under `LSA.6`,

```math
M_{low}(X)
\le
c_{low}^{-1}\Phi(\mathcal E_D(X)).
\tag{LSA.7}
```

This proves `LSA.1`.

## Readout sufficient condition

If the ledger controls the carrier Sobolev norm on the low-shell interval,

```math
\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_\Phi\Phi(\mathcal E_D(X)),
\tag{LSA.8}
```

then readout comparison gives

```math
M_{low}(X)
\le
C_{read}\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_{read}C_\Phi\Phi(\mathcal E_D(X)).
\tag{LSA.9}
```

## Result

The sharper domination theorem `M_{low}\le C\Phi` is available exactly when the original lower-order ledger already controls finite low-shell amplitude. The finite nature of the block reduces the burden to finitely many amplitudes; it creates no amplitude domination on its own.

## Boundary

If `\Phi` already contains or dominates low-shell amplitude, keep the original ledger. Otherwise use the extended ledger

```math
\Phi_{low}:=\Phi+	heta_{low}M_{low}.
\tag{LSA.10}
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/finite-low-shell-residual-closure-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/phi-low-ledger-propagation-result.md`
