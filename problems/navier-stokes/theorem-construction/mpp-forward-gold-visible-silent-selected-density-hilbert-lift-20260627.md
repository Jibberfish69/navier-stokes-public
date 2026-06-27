---
theorem_id: forward-gold-visible-silent-selected-density-hilbert-lift-20260627
status: new-route-reduces-selected-density-square-function-to-hilbert-lift-bmo
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - OriginalHistorySelectedReserve.A
  - SilentSourceBubbleEnergyCarleson.A
  - SelectedCompressionRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-reserve-normal-form-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626.md
---

# Visible-silent selected-density Hilbert lift

## 1. Why the previous local closures do not finish Gold

The silent-source relay has removed the local invisible-child escape.  On one
parent,

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
C\,\Omega_Q^{strain/ex}
C\,D_Q^{vis/rad}
C R_{\rm legal}(Q).
\tag{1}
```

This is the correct branch-local parent-drop law after the source-origin normal
form.  It is not yet the global Gold reserve.  The Gold hinge is the tree
square-function or entropy gain for the selected density:

```math
\sum_{Q\subseteq Q_0}
\left|\rho_Q-\rho_{\operatorname{par}(Q)}\right|^2
\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{2}
```

Raw service summability still permits the critical half-tail

```math
N_L\simeq {2^{-L}\over L+1}.
\tag{3}
```

So another scalar branch-local estimate will not close the route.  The new
idea has to manufacture the missing exponent by changing the object from a
scalar positive tail to a Hilbert martingale.

## 2. The better object

For a retained material root \(Q_0\), build a carrier Hilbert space

```math
\mathcal H_{\rm lift}(Q_0)
=
\mathcal H_{\rm vis}(Q_0)
\oplus
\mathcal H_{\rm sil}(Q_0)
\oplus
\mathcal H_{\rm ex}(Q_0).
\tag{4}
```

The three summands are:

- \(\mathcal H_{\rm vis}\): the pressure-Hodge Schur quotient, orthogonal to
  the silent kernel;
- \(\mathcal H_{\rm sil}\): the boundary-flat pressure-potential bubble space
  with energy \(\int G\nabla_aw\cdot\nabla_aw\);
- \(\mathcal H_{\rm ex}\): the same-material complete-frame exchange and
  compression carrier that pays genuinely selected silent sources.

The desired lift is an adapted vector martingale \(Z_Q\in\mathcal H_{\rm lift}\)
such that each selected density increment is a uniformly bounded readout of the
Hilbert increment:

```math
\Delta_Q\log \rho_{\rm sel}
=
\ell_Q(\Delta_Q Z)+e_Q,
\qquad
\|\ell_Q\|\le C,
\tag{5}
```

and

```math
\sum_{Q\subseteq Q_0}|e_Q|^2\mathcal R(Q)
\le
R_{\rm legal}(Q_0).
\tag{6}
```

Equivalently,

```math
|\Delta_Q\log \rho_{\rm sel}|^2\mathcal R(Q)
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
+R_{\rm legal}(Q).
\tag{7}
```

If the projections defining \(Z_Q\) are nested, then Bessel/Pythagoras gives

```math
\sum_{Q\subseteq Q_0}\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
\le
C\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
+C R_{\rm legal}(Q_0).
\tag{8}
```

Thus `(7)` and `(8)` give the martingale BMO estimate

```math
\sup_{Q_0}
{1\over \mathcal R(Q_0)}
\sum_{Q\subseteq Q_0}
|\Delta_Q\log\rho_{\rm sel}|^2\mathcal R(Q)
\le C_N(u_0).
\tag{9}
```

By dyadic John--Nirenberg / martingale \(A_\infty\), `(9)` gives a reverse
Holder gain for the selected density:

```math
\int_{Q_0}\rho_{\rm sel}^{1+\varepsilon}\,d\mathcal R
\le
C_N(u_0)\mathcal R(Q_0),
\tag{10}
```

for some \(\varepsilon>0\).  This is exactly the exponent missing from the
strict good-lambda half-barrier.

## 3. Why this is better than another invisible-child attack

The invisible-child attacks tried to make the parent boundary detect every
selected child source.  The boundary-flat audit shows that this is the wrong
request: silent interior pressure-potential bubbles exist.

The Hilbert lift keeps the correct local split:

```math
\Delta Z_Q
=
\Delta Z_Q^{vis}
\oplus
\Delta Z_Q^{sil}
\oplus
\Delta Z_Q^{ex}.
\tag{11}
```

The visible part is paid by the Schur quotient.  The silent bubble part is paid
by pressure-potential energy.  The genuinely selected silent part enters
through strain-Hessian / complete-frame exchange and is placed in
\(\mathcal H_{\rm ex}\).

The cross term is controlled before the scalar positive selection is taken:

```math
\|\Delta Z_Q^{vis}\oplus\Delta Z_Q^{sil}\oplus\Delta Z_Q^{ex}\|^2
=
\|\Delta Z_Q^{vis}\|^2
+\|\Delta Z_Q^{sil}\|^2
+\|\Delta Z_Q^{ex}\|^2
\tag{12}
```

up to legal quasi-orthogonal errors.  That is the point: the selected scalar
tail can no longer choose a terminal positive cross term after signed
orthogonality has already been lost.

## 4. Exact theorem to prove

The new theorem is:

```text
VisibleSilentSelectedDensityOrthogonalLift.A
```

Statement:

On every retained same-material tree rooted at \(Q_0\), the pressure-visible,
silent-bubble, and exchange-routed selected density admits a Hilbert lift
\(Z_Q\) satisfying `(5)`--`(8)` with root bound

```math
\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{13}
```

This implies:

```math
VisibleSilentSelectedDensityOrthogonalLift.A
\Rightarrow
SelectedDensityHilbertBMOAInfinity.A
\Rightarrow
SelectedDensityMartingaleSquareFunctionCarleson.A
\Rightarrow
OriginalHistorySelectedReserve.A.
\tag{14}
```

## 5. First unsupported line

The installed notes do not yet prove `(5)`.  That is the honest hard line.

One must show that the selected-density increment is a Lipschitz readout of the
same Hilbert carrier that carries the parent-drop currency:

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q.
\tag{15}
```

This is smaller than proving the whole selected reserve directly, because it
does not ask for positive action summability first.  It asks for a structural
selector-to-carrier derivative bound.  Once `(15)` is known, the global tree
summation is Hilbert geometry rather than another scalar good-lambda guess.

## 6. Result

The better Gold idea is:

```text
do not chase one more scalar detector for invisible children;
lift the selected density into the visible/silent/exchange Hilbert carrier and
prove martingale BMO/A_infty from orthogonal increments.
```

The local source-origin and augmented parent-drop work supply the three
components of the carrier.  The remaining theorem is the selector-to-Hilbert
lift bound `(15)` plus the original-data root bound `(13)`.
