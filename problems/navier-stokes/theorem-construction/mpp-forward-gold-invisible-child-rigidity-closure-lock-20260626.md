---
theorem_id: forward-gold-invisible-child-rigidity-closure-lock-20260626
status: closure-lock-recorded-theorem-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
current_hinge:
  - InvisibleChildBlowupRigidity.A
  - SelectedActionTraceCoercivity.A
  - ParentDrop.A
  - MonotoneLaminarAdjointSelectedCapacityGain.A
---

# Invisible-child rigidity closure lock

This note records the exact theorem needed to close the current lockpick. It is not a proof of the theorem.

## 1. The theorem to prove

To close the invisible-child route, prove:

```math
\boxed{
\mathsf S_\infty U_\infty=0
\quad\Longrightarrow\quad
\mu^{\rm sel}_{\Sigma,\infty}=0
}
```

for the retained same-material Navier-Stokes pressure-Hodge packet.

Here:

- `S_infty` is the limiting parent-child pressure-Hodge Dirichlet-to-Neumann Schur complement;
- `U_infty` is the limiting parent pressure-Hodge trace;
- `mu^{sel}_{Sigma,infty}` is the limiting selected critical-strain carrier.

Plainly: a child packet with real selected critical-strain action cannot be completely invisible to the parent pressure-Hodge Schur defect.

## 2. Required proof content

The proof must show three things.

### 2.1 Zero Schur defect gives true gluing

Zero Schur defect must imply that the parent and child pressure-Hodge fields glue with no hidden flux or jump:

```math
\mathsf S_\infty U_\infty=0
\quad\Rightarrow\quad
[W_\infty]=0,
\qquad
[\partial_{\nu_A}W_\infty]=0
```

across the retained parent-child collar interface, modulo legal errors that vanish in the blow-up limit.

### 2.2 The selected carrier is the same packet source

The selected critical-strain carrier must be exactly the source seen by the same pressure-Hodge/material packet, not an arbitrary silent elliptic source:

```math
\mathcal L_{A_\infty}W_\infty
=
\Pi_{\rm PH}\bigl(\mu^{\rm sel}_{\Sigma,\infty}\bigr)
```

in the limiting material coordinates, again with legal residue vanished or already paid.

### 2.3 Nonzero selected carrier produces a visible signal

Any nonzero selected carrier must create at least one of:

```math
\langle U_\infty,\mathsf S_\infty U_\infty\rangle>0,
```

a legal/nonlaminar exit, or a retained material-service signal. Equivalently:

```math
\mu^{\rm sel}_{\Sigma,\infty}\ne 0
\quad\Rightarrow\quad
\mathsf S_\infty U_\infty\ne 0
```

inside the retained same-material pressure-Hodge packet.

## 3. Contradiction structure

Assume `SelectedActionTraceCoercivity.A` fails. Then there is a normalized sequence with unit selected action but vanishing parent-child Schur defect:

```math
A_n(Q'_n)=1,
\qquad
\langle U_{Q_n},\mathsf S_{Q_n}U_{Q_n}\rangle+R_{\rm legal}(Q_n)\to0.
```

After rescaling to the child material scale and passing to a compactness limit, obtain:

```math
A_\infty>0,
\qquad
\mathsf S_\infty U_\infty=0.
```

The theorem above gives:

```math
\mu^{\rm sel}_{\Sigma,\infty}=0,
```

hence

```math
A_\infty=0,
```

contradicting the normalized nonzero selected action.

Therefore the bad invisible child cannot exist.

## 4. Closure chain

Once the rigidity theorem is proved, the implication chain is:

```math
\text{InvisibleChildBlowupRigidity.A}
\Longrightarrow
\text{SelectedActionTraceCoercivity.A}
\Longrightarrow
\text{ParentDrop.A}
\Longrightarrow
\sum_Q A(Q)<\infty.
```

More explicitly, rigidity gives the quantitative coercivity:

```math
A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C R_{\rm legal}(Q).
```

This supplies the missing action term in the parent Bellman drop:

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q).
```

Telescoping over the retained laminar ancestry tree yields:

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
B_{\rm cap}(Q_0)+R_{\rm legal}(Q_0).
```

Root finiteness then gives:

```math
\sum_Q A(Q)<\infty.
```

That is the missing selected first-ratio / selected-capacity closure step inside the forward-gold same-material full-clock route.