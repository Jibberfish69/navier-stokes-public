# Shared Pack Non-One-Field Grammar Closure

## Status

Theorem-facing closure for the `ESM.N6` shared Pack / Euler non-one-field
participation split.

Role: close the final nonsmooth-boundary row as a class-grammar theorem rather
than a fake additional witness. `ESM.N6` says exactly which part of the
Navier-Stokes class grammar survives into Euler and which part becomes an extra
regularity layer.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N6` nonsmooth-control row.

## Claim

On the Euler mirror, the shared primitive with Navier-Stokes is flux-volume
membership:

```math
EVol_Q(u),\qquad \nabla\cdot u=0.
\tag{SPG.1}
```

The Euler base member is

```math
Member_E(Q)=EVol_Q(u)\wedge EMom_Q(u,p).
\tag{SPG.2}
```

The Navier-Stokes `Part` and `Field` rows do not survive as primitive Euler
membership faces. They become optional regularity or one-field coherence layers:

```math
Member_E
\not\Longrightarrow
ELag,\quad
Member_E
\not\Longrightarrow
EReg,\quad
Member_E
\not\Longrightarrow
\text{one-field coherence}.
\tag{SPG.3}
```

## Proof

The Euler membership note defines base membership as `EVol + EMom` and demotes
Lagrangian carriers, one-field smoothness, and positive-scale field coherence to
extra structures. This proves the grammar split.

The split is not merely definitional. The global periodic slip-sheet bridge
constructs a bounded finite-energy `Member_E` object with a tangential jump, so
one-field continuity fails while flux-volume and weak momentum hold. The global
periodic unbounded-shear bridge constructs a finite-energy `Member_E` object
whose velocity is unbounded on a sheet, so classical smoothness and the receiver
ledger fail while flux-volume and weak momentum hold.

Thus the optional regularity faces cannot be recovered from base membership by
renaming `Pack`, `Part`, or `Field`.

## Navier-Stokes Comparison

A genuine flux-volume failure is shared: if distributional incompressibility or
normal flux balance fails, both Euler and Navier-Stokes lose their base
incompressible equation membership.

The one-field participation rows are not shared. Navier-Stokes may attack them
with viscosity, shear participation, top-viscous readout, dyadic damping, or
parabolic machinery. Euler has no such primitive mechanism. So `Part` and
`Field` become Euler diagnostics of extra regularity, not Euler membership
requirements.

## Route Readback

This closes `ESM.N6`:

```text
shared Pack / flux-volume law
-> Euler Member_E = EVol + EMom
-> Part/Field/one-field coherence demoted to extra regularity
-> concrete failures supplied by ESM.N1 and ESM.N2.
```

`ESM.N6` is therefore fully accounted for without pretending it is a new global
witness beyond the already installed slip-sheet and unbounded-shear theorems.
