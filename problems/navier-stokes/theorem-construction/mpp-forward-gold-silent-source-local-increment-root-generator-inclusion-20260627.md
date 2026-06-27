---
theorem_id: forward-gold-silent-source-local-increment-root-generator-inclusion-20260627
status: local-increment-routed-into-root-generator-ledger-global-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
audits_user_supplied_note: /Users/thomasbirnie/.codex/attachments/7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
attacks_hinge:
  - SilentKernelSelectedDensityLocalIncrement.A
  - StoppedPredictableRootGeometryCompensator.A
  - OriginalLedgerRootDefectTightness.A
  - SelectedGeneratorStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-geometry-realization-unifies-affine-transition-martingale-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
effect: >-
  Routes the supplied silent-source local increment into the current stopped
  root-geometry producer.  Boundary-visible source is paid by the Schur/root
  visible component.  Boundary-flat selected source is paid by the same
  top-strain, material-service, commutator, covector, frame, turnstile, and
  collar terms already present in the parent-known root generator.  Thus the
  supplied theorem is local support for the root generator ledger; it is not a
  global square-function or full-clock producer by itself.
---

# Silent source local increment routed into root generator

The supplied silent-source theorem gives the correct local fork.  For a retained
parent collar \(A_Q\),

```math
\mathcal L_A W_Q=f_Q,
```

and the boundary-flat kernel

```math
\mathcal K_Q^{sil}
=
\{f:\ f=\mathcal L_Aw,\ w|_{\partial A_Q}=0,\ \partial_{\nu_A}w|_{\partial A_Q}=0\}
```

is nonzero.  Boundary Schur data alone cannot see this kernel.

The local theorem is instead

```math
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\bigl(
\mathcal E_Q^{top\text{-}ex}
+
\mathcal S_Q^{mat}
+
R_Q^{legal}
\bigr)
=\{0\}.
\tag{1}
```

Equivalently,

```math
A_{\rm sel}(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+
C\mathcal E_Q^{top\text{-}ex}
+
C\mathcal S_Q^{mat}
+
CR_Q^{legal}.
\tag{2}
```

This note records where `(2)` sits after the root-geometry correction.

## 1. Visible term is root-visible data

The parent Schur form is the visible pressure-Hodge part of the stopped root
geometry:

```math
\langle U_Q,\mathsf S_QU_Q\rangle
\le
C
\int_{\operatorname{Hist}(Q)}
H_Q^\ast
\|\Pi_{\rm vis}^{Q}\mathcal G_Q^{root}\|^2
\,d\sigma dt
+
CR_Q^{legal}.
\tag{3}
```

This is not a new pressure-only account.  The projection \(\Pi_{\rm vis}^Q\)
is one coordinate of the same lifted root generator.

## 2. Silent selected term is root-new data

For a boundary-flat source \(f_Q=\mathcal L_Aw_Q\), the projected force
\(\mathbb P_A\mathcal G_Aw_Q\) is zero.  The only selected reading is through
the material strain/Hessian packet.  The source-origin normal form gives

```math
dA_{\rm sel}^{sil}(Q)
\le
C\,d\Omega_Q^{top\text{-}strain/ex}
+
C\,dD_Q^{vis/rad}
+
dR_Q^{legal}.
\tag{4}
```

At the stopped root level, the right side is exactly the non-visible part of
the parent-known root generator:

```math
d\Omega_Q^{top\text{-}strain/ex}
+
dD_Q^{vis/rad}
\le
C
\int_{\operatorname{Hist}(Q)}
H_Q^\ast
\|\Pi_{\rm new}^{Q}\mathcal G_Q^{root}\|^2
\,d\sigma dt
+
C\,dA_Q^{sel/chart}
+
dR_Q^{legal}.
\tag{5}
```

Here

```math
\mathcal G_Q^{root}
=
\Pi_{\rm new}^Q
\left(
\partial_\sigma Z
+[D_t,\mathcal L_A]w
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
+\operatorname{frame}_\sigma
+\operatorname{collar/endpoint}_\sigma
\right).
\tag{6}
```

The silent selected source is therefore already inside the same root generator:
commutator, exchange, covector, frame, turnstile, collar/endpoint, viscosity,
and legal terms.  It is not a separate elliptic-observability theorem.

## 3. Local selected-density increment

Combining `(2)` through `(5)` yields the local increment estimate in the
current live coordinates:

```math
|\Delta_Q\rho_{\rm sel}|^2\mu(Q)
\le
C
\int_{\operatorname{Hist}(Q)}
H_Q^\ast
\|\mathcal G_Q^{root}\|^2
\,d\sigma dt
+
C\,dA_Q^{sel/chart}
+
CR_Q^{legal}.
\tag{7}
```

This is the precise use of the supplied silent-source note.  It turns the
boundary-flat selected-source escape into root-generator mass at the same
material packet.

## 4. What remains

Summing `(7)` over a laminar tree still requires the root producer:

```math
\int_{\operatorname{Hist}(P)}
H_P^\ast
\|\mathcal G_P^{root}\|^2
\,d\sigma dt
+
\int dA_P^{sel/chart}
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P)
+
Stop(P).
\tag{8}
```

That is `SelectedGeneratorStorageCoercivity.A` / `OriginalLedgerRootDefectTightness.A`,
and it is the noncircular input needed for
`StoppedPredictableRootGeometryCompensator.A`.

So the attachment is installed as a root-generator inclusion:

```text
silent source local increment -> root generator local mass.
```

It does not by itself prove the original-history root-generator storage bound
`(8)`.

Partial, not Gold closed.
