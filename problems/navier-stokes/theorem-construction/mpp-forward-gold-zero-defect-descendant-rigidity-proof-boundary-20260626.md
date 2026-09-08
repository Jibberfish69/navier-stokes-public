---
theorem_id: forward-gold-zero-defect-descendant-rigidity-proof-boundary-20260626
status: direct-proof-boundary-pressure-helmholtz-faithfulness-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - ICBR.A
  - SelectedActionTraceCoercivity.A
  - ParentDrop.A
  - MonotoneLaminarAdjointSelectedCapacityGain.A
---

# Zero-defect descendant rigidity proof boundary

This note tests the direct proof of the retained same-material pressure-Helmholtz--Leray zero-defect rigidity theorem.

## 1. Target

The desired rigidity theorem is

```math
\mathsf S_\infty U_\infty=0
\quad\Longrightarrow\quad
\mu^{\rm sel}_{\Sigma,\infty}=0.
\tag{ZD.1}
```

Here `S_infty` is the limiting parent-descendant pressure-Helmholtz--Leray Dirichlet-to-Neumann Schur complement, `U_infty` is the limiting parent trace, and `mu^{sel}_{Sigma,infty}` is the selected critical-strain source in the limiting packet.

The normalized counter-sequence would have

```math
A_\infty>0,
\qquad
\mathsf S_\infty U_\infty=0.
\tag{ZD.2}
```

## 2. What zero Schur defect gives

Let `W_P` be the parent pressure-Helmholtz--Leray extension with trace `U_infty`, and let `W_D` be the synchronized descendant extension. The Schur complement is the energy loss between these two extension problems:

```math
\langle U_\infty,\mathsf S_\infty U_\infty\rangle
=
\mathcal E_P(W_P)-\mathcal E_D(W_D).
\tag{ZD.3}
```

By variational minimality, equality in `(ZD.3)` forces the two pressure-Helmholtz--Leray fields to glue without residual trace defect:

```math
[W_\infty]=0,
\qquad
[\partial_{\nu_A}W_\infty]=0,
\tag{ZD.4}
```

modulo legal terms that vanish under the blow-up normalization.

Thus zero Schur defect gives genuine pressure-Helmholtz--Leray gluing: no hidden interface flux, no jump, and no parent-descendant capacity loss.

## 3. Source equation

The limiting same-material pressure-Helmholtz--Leray equation has the form

```math
\mathcal L_{A_\infty}W_\infty
=
\Pi_{PH}(\mu^{\rm sel}_{\Sigma,\infty}).
\tag{ZD.5}
```

Testing against compactly supported adjoint functions and using the gluing relation `(ZD.4)` gives

```math
\Pi_{PH}(\mu^{\rm sel}_{\Sigma,\infty})=0.
\tag{ZD.6}
```

This is the strongest conclusion obtained directly from zero Schur defect.

## 4. Remaining theorem

To conclude `(ZD.1)`, one needs faithfulness of the pressure-Helmholtz--Leray projection on the retained selected source class:

```math
\boxed{
\Pi_{PH}(\mu^{\rm sel}_{\Sigma})=0
\quad\Longrightarrow\quad
A(\mu^{\rm sel}_{\Sigma})=0.
}
\tag{ZD.7}
```

Call this theorem

```text
PressureHelmholtzSelectedSourceFaithfulness.A
```

It says that a retained selected critical-strain source cannot be nonzero while having zero pressure-Helmholtz--Leray visibility inside the same material packet.

## 5. Conditional closure

If `(ZD.7)` is proved, then

```math
\mathsf S_\infty U_\infty=0
\Rightarrow
\Pi_{PH}(\mu^{\rm sel}_{\Sigma,\infty})=0
\Rightarrow
A_\infty=0.
```

This contradicts the normalization `A_infty > 0`. Hence the zero-defect limiting packet cannot exist.

Therefore

```math
\text{PressureHelmholtzSelectedSourceFaithfulness.A}
\Longrightarrow
\text{ICBR.A}
\Longrightarrow
\text{SelectedActionTraceCoercivity.A}
\Longrightarrow
\text{ParentDrop.A}
\Longrightarrow
\sum_Q A(Q)<\infty.
```

## 6. Result

The direct proof does not close the rigidity theorem unconditionally. It reduces the remaining burden to the exact projection-faithfulness theorem `(ZD.7)`.

The current closure lock is therefore: prove that the retained selected critical-strain source has faithful pressure-Helmholtz--Leray visibility in the same-material packet.