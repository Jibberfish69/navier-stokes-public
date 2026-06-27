---
theorem_id: forward-gold-silent-interior-source-to-stopped-compensator-audit-20260627
status: silent-interior-source-classified-live-burden-is-stopped-compensator
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped exchange-reselection
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
uses:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - AugmentedStoppedParentDrop.A
  - StoppedExchangeReselectionCompensator.A
supersedes_as_primary_target:
  - pure Schur observability of all interior sources
  - standalone invisible-child boundary observability
  - standalone terminal-density atom exclusion
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
---

# Silent interior source to stopped compensator audit

The better idea is correct: attack the silent interior source by source-origin
before asking the boundary trace to see it.

Boundary-flat sources exist:

```math
f=\mathcal L_A w,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
```

So pure parent Schur trace observability of every interior source is false.
The right question is whether such an invisible source can also be a retained
selected pressure-Hodge carrier at zero same-material cost.

## 1. Source-origin split

The material gradient force from \(w\) is

```math
\mathcal G_Aw=A^\top\nabla_aw.
```

The material Hodge projector is

```math
\mathbb P_A=I-\mathcal G_A\mathcal L_A^{-1}D_A.
```

Therefore

```math
\mathbb P_A\mathcal G_Aw=0.
```

As projected pressure force, the boundary-flat potential is constraint/gauge
material and is not selected velocity activity.

If the same silent potential is selected, it must be selected through the
strain-Hessian reading. In the material strain equation,

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal}.
```

For \(q=w\) and selected unit direction \(e\),

```math
\left[-e\cdot\nabla_A^2w\,e\right]_+
\le
\left[D_t(e\cdot Se)\right]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_AS|
+|\mathcal C_A^{legal}|.
```

Thus a genuinely selected silent source is not free. It is paid by
top-strain exchange, complete-frame strain/vorticity service, viscous/radius
service, and legal coefficient/collar residue.

The transverse trace-free symbol kernel is covered the same way. A single
pressure-Hodge direction can miss a transverse trace-free tensor, but the
complete-frame packet does not:

```math
\operatorname{tr}S=0
\quad\Longrightarrow\quad
p\cdot Sp+n\cdot Sn=-\hat\xi\cdot S\hat\xi .
```

So a transverse silent mode is either unselected as projected pressure force,
or selected only through complete-frame strain exchange.

The zero-cost rigidity form is therefore:

```math
\mathsf S_\infty U_\infty=0,
\qquad
\Omega_\infty^{strain/ex}=0
\quad\Longrightarrow\quad
A_\infty=0.
```

## 2. Parent-drop consequence

The valid stopped parent-drop is augmented:

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{stop}U_S\rangle
+C\Omega_S^{strain/ex}
+CD_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
```

The Schur term pays the pressure-visible quotient. The source-origin split pays
the boundary-flat selected part through same-material exchange. This removes
the silent-kernel escape from the local parent-drop argument.

## 3. What remains

The remaining Gold work is not another boundary observability theorem. It is
global summability of the stopped exchange/reselection compensator on the
original material history.

The current nonduplicate target is:

```text
StoppedExchangeReselectionCompensator.A
```

with two live components:

```text
SelectorStratumCrossingVariationBound.A
```

and

```text
StoppedFullExchangeActionCarleson.A
```

Equivalently, in tail language, this is the selected compression/root reserve
or weight-beating tail law:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

Standalone terminal-density atom exclusion is not the primary theorem after
the source-origin split. The terminal selected half-tail is still the thing to
beat, but it must be beaten through the same-material stopped compensator/root
reserve, not by asking a boundary trace to see boundary-flat pressure
potentials.
