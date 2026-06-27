---
theorem_id: forward-gold-fresh-potential-average-transfer-direct-attempt-20260627
status: potential-average-reduced-to-weighted-stopped-potential-record-or-second-order-exactness
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh affine quotient branch
attacks_hinge:
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - FreshPotentialAverageKill.A
  - StoppedPotentialRecordAverageBound.A
  - FreshPositiveStressSecondOrderExactness.A
inputs_checked:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-support-to-record-return-live-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
effect: >-
  Attacks the fresh potential-average positive-transfer branch.  The exact
  signed identity shows why first-order scale descent is one derivative short:
  the affine functional kills the derivative part except for an endpoint value
  and the scale-average of the potential.  The positive selected source is the
  signed source plus the negative return, so fixed stopped-score return/BV pays
  only the return part.  The remaining open term is the weighted stopped
  potential average.  It cannot be killed by ordinary gauge normalization or
  Poincare without importing the selected source square.  The noncircular
  alternatives are a parent-known weighted stopped-potential record bound or a
  direct second-order exactness formula for the positive fresh stress source.
---

# Fresh potential-average transfer: direct attempt

The fresh affine quotient route starts from a signed scale-descent identity

```math
Y(\sigma,t)
=
\partial_\sigma\Psi(\sigma,t)
+S^{spill}(\sigma,t)
+E(\sigma,t).
\tag{1}
```

Against the affine test \(\theta_\kappa\), this gives

```math
\mathcal C_\theta[Y]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma
+
\mathcal C_\theta[S^{spill}]
+
\mathcal C_\theta[E].
\tag{2}
```

The selected positive source satisfies, after polar-compatible signed lift,

```math
Y_+=Y+Y_-.
\tag{3}
```

Therefore

```math
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+
\mathcal P_{avg}(t)
+
\mathcal C_\theta[Y_-](t)
+
\mathcal C_\theta[S^{spill}](t)
+
\mathcal C_\theta[E](t),
\tag{4}
```

where

```math
\mathcal P_{avg}(t)
:=
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma.
\tag{5}
```

This is the whole obstruction in one line.  The derivative part has been used,
and the affine mode left over is the scale-average of the potential.

## 1. Terms already assigned

The spill and soft errors are legal/collar/soft-residual terms.

The negative return term is assigned to the fixed stopped-score return/BV
mechanism when the branch is genuinely on one stopped score:

```math
P_R=\Gamma_RZ^S,
\qquad
{\rm Var}(P_R)
\lesssim
\int_{\operatorname{Hist}(P)}w|\partial_{\sigma,t}Z^S|^2
+d\Theta^{selector/frame/connection}
+R_{\rm legal}.
\tag{6}
```

That pays \(\mathcal C_\theta[Y_-]\) only after the selected positive source has
been lifted to the same stopped signed channel.  It does not pay the fresh
potential average itself.

## 2. The open weighted average term

The required estimate is

```math
\int_0^{T^*}
H_w(t)\|\mathcal P_{avg}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{7}
```

Ordinary gauge normalization does not prove `(7)`.  The transformation
\(\Psi\mapsto \Psi+C(t,x)\) changes the raw average `(5)`, so the proof must use
an endpoint-corrected stopped potential, not an arbitrary representative.

Poincare in \(\sigma\) also does not prove `(7)` in the required form.  It would
bound the average by a boundary value plus

```math
\int_J\|\partial_\sigma\Psi\|^2\,d\sigma,
\tag{8}
```

and `(8)` is the signed source square.  Importing it at the selected positive
weight is the same selected-critical quantity the branch is trying to prove.

So the potential-average theorem must be one of the following two real
statements.

## 3. Option A: weighted stopped-potential record

Construct a parent-known endpoint-corrected potential record \(\Psi^\sharp\)
with

```math
\mathcal P_{avg}(t)
=
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
+Err_{\rm legal}(t),
\tag{9}
```

and prove the original-history weighted record estimate

```math
\int_0^{T^*}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{10}
```

This estimate is noncircular only if \(H_w\) and \(\Psi^\sharp\) are fixed from
parent-known stopped history before the descendant selected tail is read.

## 4. Option B: direct second-order exactness

Avoid the potential average by proving a second-order scale identity for the
positive fresh stress source:

```math
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh},
\tag{11}
```

with retained boundary terms cancelled and

```math
\int_0^{T^*}
H_w(t)
\left\|
\int_J\theta_\kappa(\sigma)R^{fresh}(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{12}
```

This is stronger but cleaner: it removes the affine survivor before the
positive projection can carry it.

## 5. Result

This direct attempt proves the exact reduction:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
```

is equivalent, after signed lift and fixed stopped-score return assignment, to

```text
StoppedPotentialRecordAverageBound.A
```

or

```text
FreshPositiveStressSecondOrderExactness.A.
```

The branch is not closed by first-order signed descent, ordinary gauge choice,
Poincare, or fixed stopped-score return/BV alone.

Partial, not Gold closed.
