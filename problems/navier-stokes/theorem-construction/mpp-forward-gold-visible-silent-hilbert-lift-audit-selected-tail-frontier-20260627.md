---
theorem_id: forward-gold-visible-silent-hilbert-lift-audit-selected-tail-frontier-20260627
status: audit-installed-hilbert-lift-is-valid-reduction-not-closure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / full-tower action
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - VisibleSilentSelectedDensityOrthogonalLift.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - WeightBeatingTailLaw.A
  - OriginalHistorySelectedReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Visible-silent Hilbert lift audit for the selected tail frontier

This note audits the current Gold branch after the silent interior source fork.

The corrected question is not whether the parent boundary trace sees every
interior pressure-Hodge source.  It does not.  A boundary-flat source of the
form

```math
f=L_Aw,\qquad w|_{\partial Q}=0
```

can be invisible to the parent Schur trace.  The correct source-origin split is:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
```

must be classified before applying trace coercivity.

## 1. Installed source-origin result

The installed silent-source closure has this content.

As projected pressure force, a boundary-flat pressure-potential bubble is
constraint material and is not selected.  If the same interior source is
genuinely selected, then it enters the material equation through the strain
Hessian / complete-frame exchange channels.  Thus the silent selected branch is
not a zero-cost Schur counterexample.  It is routed into same-material exchange.

Consequently the branch-local parent-drop is the augmented estimate

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}
+CR_{\rm legal}(Q).
```

The pressure-visible part is paid by the parent Schur defect.  The
Schur-silent selected part is paid by top-strain / complete-frame exchange.
This closes the local invisible-child escape.

## 2. What remains after the silent branch is routed

The remaining theorem is global, not local.  The route still needs finite
selected first-ratio action, equivalently the selected-density square-function
or reverse-Holder gain:

```math
\sum_{Q\subseteq Q_0}
\left|f_Q-f_{\operatorname{par}(Q)}\right|^2
\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
```

Without a strict gain, the critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
```

still has finite raw mass and divergent first-ratio action:

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
```

So the silent-source fix does not by itself close Gold.  It removes one escape
inside the selected-density theorem.

## 3. Hilbert-lift reduction

The current promising reduction is the visible/silent/exchange Hilbert lift.
Build

```math
\mathcal H_{\rm lift}(Q_0)
=
\mathcal H_{\rm vis}(Q_0)
\oplus
\mathcal H_{\rm sil}(Q_0)
\oplus
\mathcal H_{\rm ex}(Q_0),
```

where the three summands are the pressure-visible Schur quotient, the silent
pressure-potential bubble space, and the same-material exchange/compression
carrier.

This would close the selected-density square-function theorem if all three
lines are proved:

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q,
```

```math
\sum_{Q\subseteq Q_0}|e_Q|^2\mathcal R(Q)
\le
R_{\rm legal}(Q_0),
```

and

```math
\sum_{Q\subseteq Q_0}\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
\le
C\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
+CR_{\rm legal}(Q_0),
```

with the original-data root bound

```math
\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
```

Then Bessel/Pythagoras gives martingale BMO for
\(\log\rho_{\rm sel}\), and martingale \(A_\infty\) gives the missing
reverse-Holder exponent for \(\rho_{\rm sel}\).

## 4. First unsupported line

The installed notes do not prove the selector-to-Hilbert readout

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q.
```

They also do not prove the noncircular root norm bound for \(Z_{Q_0}\).

The silent-bubble decomposition shows the risk exactly: if

```math
W=L_A^{-1}f_{\rm sel},
```

then

```math
\|W\|_{\mathcal H_A(Q_0)}^2
```

can be the same size as the selected reserve being sought unless its evolution
is controlled by an independent source-origin / exchange law.  Defining the
root Hilbert vector from the selected future tail is only the descendant-tail
reserve in Hilbert coordinates.

## 5. Classification

The current audited state is:

```text
silent-source origin normal form: installed local routing support;
augmented parent-drop: installed local parent-drop support;
visible/silent/exchange Hilbert lift: valid reduction, not a proof;
selected-density martingale square-function: current global theorem;
critical half-tail no-go: installed warning that raw support axioms are insufficient.
```

So the live Gold line is:

```text
prove the selector-to-Hilbert lift bound and original-data root norm bound,
or prove the selected-density square-function / weight-beating tail theorem directly.
```

This is the same global selected-density / full-tower same-material exchange
action burden, now with the silent interior source branch correctly routed and
without returning to Schur-only observability.
