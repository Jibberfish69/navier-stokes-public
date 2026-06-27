---
theorem_id: forward-gold-augmented-stopped-selected-action-trace-coercivity-20260627
status: augmented-trace-coercivity-proved-pure-schur-form-rejected
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped source-carrier production
proves:
  - AugmentedStoppedSelectedActionTraceCoercivity.A
rejects_overstrong:
  - PureSchurStoppedSelectedActionTraceCoercivity.A
attacks_hinge:
  - StoppedSelectedActionTraceCoercivity.A
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedFullExchangeActionCarleson.A
  - CriticalFreshSourceTentCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-direct-production-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-faithfulness-into-selector-correct-bmo-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-kernel-classification-and-branch-refinement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-readout-root-bound-merge-audit-20260627.md
---

# Augmented stopped selected-action trace coercivity

The silent interior source fork proves the trace coercivity theorem only after
the stopped trace defect is allowed to include the same-material exchange
charge.  The pure Schur-only form is too strong because boundary-flat
pressure-potential sources exist.

## 1. Correct theorem

For a stopped parent \(S\) and its legally synchronized stopped children
\(S'\in ch_{\rm stop}(S)\), the usable estimate is

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\left\langle
U_S,
\left(\Lambda_S-\bigoplus_{S'}\Lambda_{S'}\right)U_S
\right\rangle
+C\Omega_S^{top\text{-}strain/ex}
+CD_S^{vis/rad}
+CR_{\rm stop}(S)
+CR_{\rm legal}(S).
\tag{1}
```

This is the stopped version of the augmented parent-drop estimate.  The Schur
term pays the pressure-visible quotient.  The exchange and viscous/radius terms
pay selected silent material that has no parent boundary trace.

The overstrong estimate

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\left\langle
U_S,
\left(\Lambda_S-\bigoplus_{S'}\Lambda_{S'}\right)U_S
\right\rangle
+CR_{\rm stop}(S)
+CR_{\rm legal}(S)
\tag{2}
```

is not the theorem supplied by the source-origin normal form.

## 2. Contradiction proof of the augmented form

Assume `(1)` fails.  Then there is a sequence of stopped parent-child packets
with normalization

```math
\sum_{S'\in ch_{\rm stop}(S_n)}A(S')=1,
\tag{3}
```

but

```math
\left\langle
U_{S_n},
\left(\Lambda_{S_n}-\bigoplus_{S'}\Lambda_{S'}\right)U_{S_n}
\right\rangle
+\Omega_{S_n}^{top\text{-}strain/ex}
+D_{S_n}^{vis/rad}
+R_{\rm stop}(S_n)
+R_{\rm legal}(S_n)
\longrightarrow0.
\tag{4}
```

Choose a stopped child carrying a fixed fraction of the selected action and
rescale it to unit size.  Retained same-material compactness gives a limiting
packet with

```math
A_\infty\ge c_0>0.
\tag{5}
```

The vanishing Schur defect gives zero pressure-Hodge visible quotient:

```math
\Pi_{\rm PH}(\mu_{\Sigma,\infty}^{sel})=0.
\tag{6}
```

The vanishing exchange and viscous/radius terms give

```math
d\Omega_\infty^{top\text{-}strain/ex}=0,
\qquad
dD_\infty^{vis/rad}=0.
\tag{7}
```

The vanishing stopped and legal defects remove selector/order-lock/collar
escape:

```math
R_{\rm stop,\infty}=0,
\qquad
R_{\rm legal,\infty}=0.
\tag{8}
```

So the limiting source is a retained selected carrier in the silent kernel at
zero same-material exchange cost.

The source-origin normal form says exactly that this cannot happen:

```math
\mathcal K_{\rm sil}
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{d\Omega^{top\text{-}strain/ex}=0,\ dD^{vis/rad}=0\}
=\{0\}.
\tag{9}
```

Equivalently,

```math
\mathsf S_\infty U_\infty=0,
\quad
d\Omega_\infty^{top\text{-}strain/ex}=0,
\quad
dD_\infty^{vis/rad}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{10}
```

This contradicts `(5)`.  Therefore `(1)` holds.

## 3. Why the pure Schur theorem is rejected

If the exchange term is omitted, a boundary-flat pressure-potential source

```math
f=L_Aw,
\qquad
w|_{\partial A}=0,
\qquad
\partial_{\nu_A}w|_{\partial A}=0
\tag{11}
```

can have zero parent Schur trace.  Boundary data alone cannot detect it.  If it
is hidden-potential material, it is unselected.  If it is selected, it is
selected through the strain-Hessian reading and is paid by
\(\Omega^{top\text{-}strain/ex}+D^{vis/rad}\).

Thus the missing theorem is not pure boundary observability.  The correct
operator statement is augmented trace coercivity `(1)`.

## 4. Consequence for stopped source-carrier production

The stopped carrier production test asked for the pure-looking parent-drop
line

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
\left\langle
U_S,
\left(\Lambda_S-\bigoplus_{S'}\Lambda_{S'}\right)U_S
\right\rangle
+R_{\rm stop}(S)+R_{\rm legal}(S).
\tag{12}
```

The source-origin fork corrects it to `(1)`.  Summing `(1)` over a stopped tree
telescopes the Schur capacity pieces and leaves the already identified global
exchange reserve:

```math
\sum_{S\subseteq P}
\left(
\Omega_S^{top\text{-}strain/ex}
+D_S^{vis/rad}
\right)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{13}
```

So this note discharges the local stopped trace-coercivity boundary.  It does
not prove the global stopped full-exchange action Carleson estimate `(13)`, and
it does not prove paid reselection no-escape.

## 5. Current live producer after this proof

After augmented trace coercivity, the stopped source-carrier route needs two
global producers:

```text
StoppedFullExchangeActionCarleson.A
```

and

```text
PaidReselectionStoppingCarleson.A / StoppedReselectionNoEscape.A.
```

The first controls the exchange terms exposed by the silent-source branch.  The
second prevents the selector from restarting through infinitely many shrinking
stopped windows at summable raw cost.  Together they give
`StoppedSourceCarrierAndPaidReselection.A`, then the stopped stochastic
exponential reverse-Holder theorem, then the strict selected first-ratio gain.
