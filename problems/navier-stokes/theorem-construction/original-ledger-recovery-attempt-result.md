# Original Ledger Recovery Attempt Result

## Target

Recover the original lower-order ledger by proving

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)).
\tag{OLR.1}
```

Here

```math
M_{low}(X)
:=
\max_{j\in\mathcal L}
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{OLR.2}
```

## Scaling test

Let `e` be a coherent low-shell state with nonzero readout, and set

```math
X_A:=Ae.
\tag{OLR.3}
```

Then

```math
M_{low}(X_A)=A M_{low}(e).
\tag{OLR.4}
```

Thus `OLR.1` requires the original ledger to scale at least linearly with low-shell coherent amplitude:

```math
\Phi(\mathcal E_D(X_A))
\ge
cA M_{low}(e).
\tag{OLR.5}
```

## Recovery criterion

The original ledger route closes exactly under a ledger domination theorem:

```math
\Phi(\mathcal E_D(X))
\ge
c_{low}M_{low}(X)
\quad\text{on the finite low-shell active class.}
\tag{OLR.6}
```

Under `OLR.6`, `OLR.1` follows with `C=c_{low}^{-1}`.

## Readout sufficient condition

A sufficient condition is

```math
\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_\Phi\Phi(\mathcal E_D(X)).
\tag{OLR.7}
```

Readout comparison gives

```math
M_{low}(X)
\le
C_{read}\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_{read}C_\Phi\Phi(\mathcal E_D(X)).
\tag{OLR.8}
```

## Result

The original ledger recovery is conditional on `OLR.6` or the readout sufficient condition `OLR.7`. The finite low-shell block has finite cardinality, while amplitude domination requires an actual ledger-control theorem.

## Route decision

Until `OLR.6` is proved, the final collar route uses

```math
\Phi_*:=\Phi_{low}:=\Phi+	heta_{low}M_{low}.
\tag{OLR.9}
```

Once `OLR.6` is proved, the route may set

```math
\Phi_*:=\Phi.
\tag{OLR.10}
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md`
- `problems/navier-stokes/theorem-construction/low-shell-amplitude-domination-assessment-result.md`
- `problems/navier-stokes/theorem-construction/phi-low-ledger-propagation-result.md`
- `problems/navier-stokes/theorem-construction/final-collar-route-dependency-graph.md`