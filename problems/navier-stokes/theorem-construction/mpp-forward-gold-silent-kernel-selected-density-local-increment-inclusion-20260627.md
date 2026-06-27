---
theorem_id: forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627
status: local-support-included-global-root-packing-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source tent Carleson
audits_user_supplied_note: /Users/thomasbirnie/.codex/attachments/7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
attacks_hinge:
  - SilentKernelSourceOriginNormalForm.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - CriticalFreshSourceTentCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-root-reserve-branch-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-scale-memory-reduction-20260627.md
effect: >-
  Includes the supplied silent elliptic kernel theorem in the Gold authority
  surface. The theorem is a local packet increment result: an invisible
  pressure-Hodge source may exist, but it is not a free selected critical-strain
  carrier. It is either unselected gauge/constraint material or it is selected
  and paid by top-strain exchange/material service/legal loss. This supplies
  the local selected-density square-function increment used by the critical
  fresh-source Carleson route. It does not prove the global root packing of
  charged fresh innovations.
---

# Silent kernel / selected-density local increment inclusion

The supplied note corrects the old pressure-observability shape.  The boundary
trace is not expected to see every interior pressure-Hodge source.

Let \(A_Q\) be the transported parent collar and let

```math
\mathcal L_A W_Q=f_Q
```

be the pressure-Hodge equation in material coordinates.  The silent elliptic
kernel is

```math
\mathcal K_Q^{sil}
:=
\left\{
f:\ f=\mathcal L_Aw,\quad
w|_{\partial A_Q}=0,\quad
\partial_{\nu_A}w|_{\partial A_Q}=0
\right\}.
\tag{1}
```

This kernel is not zero.  Boundary Schur data alone cannot exclude it.

The correct local theorem is the zero-cost selected-source exclusion:

```math
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\left(
\mathcal E_Q^{top\text{-}ex}
+
\mathcal S_Q^{mat}
+
R_Q^{legal}
\right)
=\{0\}.
\tag{2}
```

Equivalently, a silent elliptic source is either gauge/constraint material with
zero selected action, or it is genuinely selected and pays through the same
material exchange/service ledger:

```math
A_{\rm sel}(f_Q^{sil})
\le
C\mathcal E_Q^{top\text{-}ex}
+C\mathcal S_Q^{mat}
+CR_Q^{legal}.
\tag{3}
```

The boundary-visible part is paid by the parent Schur form:

```math
A_{\rm sel}(f_Q^{bdry})
\le
C\langle U_Q,\mathsf S_QU_Q\rangle.
\tag{4}
```

Combining `(3)` and `(4)` gives the packet-level local payment:

```math
A_{\rm sel}(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\mathcal E_Q^{top\text{-}ex}
+C\mathcal S_Q^{mat}
+CR_Q^{legal}.
\tag{5}
```

This is the mathematical content of "invisible source is either unselected, or
selected-but-paid."

## Selected-density square-function role

For the retained laminar material tree, let \(\rho_Q\) be the selected density
on a packet and let

```math
\Delta_Q\rho_{\rm sel}=\rho_{Q'}-\rho_Q
```

for a child \(Q'\subset Q\).  The supplied local theorem gives the local
increment estimate

```math
|\Delta_Q\rho_{\rm sel}|^2\mu(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\mathcal E_Q^{top\text{-}ex}
+C\mathcal S_Q^{mat}
+CR_Q^{legal}.
\tag{6}
```

Thus the silent-source normal form supplies the missing local step for the
selected-density martingale estimate.  Summing `(6)` requires a global
same-history packing theorem:

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{\rm sel}|^2\mu(Q)
\le
C\left(
B_{\rm Schur}(Q_0)
+E_{\rm top\text{-}ex}(Q_0)
+S_{\rm mat}(Q_0)
+R_{\rm legal}(Q_0)
\right).
\tag{7}
```

This note includes the local support, not the global packing.

## Relation to the current live burden

The zero-cost dynamic silent freshness note already sharpened the branch:
silent material inherited from the parent is allowed, but it has zero fresh
quotient after parent-predictable transport is subtracted.  Any selected silent
fresh action is charged by commutator, covector, frame, turnstile, or exchange
motion.

Therefore the current global obstruction is not boundary invisibility and not
the existence of \(\mathcal K_Q^{sil}\).  It is the original-history packing of
the charged fresh increments before terminal positive readout:

```text
OriginalHistorySelectedLogAmplificationCarleson.A
```

together with the selector readout condition

```text
SelectorCarrierNondegeneracyOrPaidReselection.A.
```

The supplied theorem is consumed as a local branch estimate inside that global
root-packing problem.

