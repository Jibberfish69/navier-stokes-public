# Phi Controls M_low Original Ledger Result

## Target

The original-ledger branch requires

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)).
\tag{PCM.1}
```

where

```math
M_{low}(X)
:=
\max_{j\in\mathcal L}
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{PCM.2}
```

## Necessary domination property

For every coherent low-shell state `e` with nonzero low-shell readout, set

```math
X_A:=Ae.
\tag{PCM.3}
```

Then

```math
M_{low}(X_A)=A M_{low}(e).
\tag{PCM.4}
```

Thus `PCM.1` can hold uniformly only if the ledger satisfies

```math
\Phi(\mathcal E_D(X_A))
\ge
cA M_{low}(e)
\qquad A\ge1.
\tag{PCM.5}
```

This is the exact amplitude domination requirement for the original ledger.

## Sufficient condition

If the installed lower-order ledger contains a low-shell amplitude component, meaning

```math
\Phi(\mathcal E_D(X))
\ge
c_{amp}M_{low}(X),
\tag{PCM.6}
```

then

```math
M_{low}(X)
\le
c_{amp}^{-1}\Phi(\mathcal E_D(X)).
\tag{PCM.7}
```

This proves the original-ledger recovery.

## Readout route

A sufficient analytic route is

```math
\sup_{r\in I_{low}}\|X(r)\|_{H_D^s}
\le
C_\Phi\Phi(\mathcal E_D(X)).
\tag{PCM.8}
```

Together with readout comparison,

```math
M_{low}(X)
\le
C_{read}\sup_{r\in I_{low}}\|X(r)\|_{H_D^s},
\tag{PCM.9}
```

this gives `PCM.1`.

## Result

The theorem `M_{low}\le C\Phi` is discharged exactly when the original ledger includes or dominates low-shell amplitude through `PCM.6`, or when the readout route `PCM.8` is proved.

Absent one of these inputs, the original-ledger recovery remains unavailable and the route uses

```math
\Phi_*:=\Phi_{low}:=\Phi+	heta_{low}M_{low}.
\tag{PCM.10}
```

## Boundary

The current collar route remains complete with `\Phi_* = \Phi_{low}`. Recovering the original `\Phi` ledger is an optional sharpening whose precise burden is `PCM.6` or `PCM.8`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/original-ledger-recovery-attempt-result.md`
- `problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md`
- `problems/navier-stokes/theorem-construction/low-shell-amplitude-domination-assessment-result.md`
- `problems/navier-stokes/theorem-construction/final-collar-route-dependency-graph.md`