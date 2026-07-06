---
theorem_id: forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706
status: exact-broadband-beltrami-neutrality-requires-eigenvalue-gap-cancellation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - BroadbandBeltramiBath.EigenvalueMismatchTurnover
  - SameHelicityBeltrami.NeutralitySingleShellOnly
  - NearUniformWKBBath.BroadbandForkPricedOrCertified
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-beltrami-bath-model-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-free-periodic-beltrami-not-evasion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-whole-space-beltrami-eigenfield-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706.md
completion_truth: >-
  Exact algebraic broadband fork only. If u=sum_a u_a is a sum of
  divergence-free Beltrami components with curl u_a=lambda_a u_a, then modulo
  a gradient the nonlinear term is
  P((u.nabla)u)=-P sum_{a<b}(lambda_b-lambda_a) u_a x u_b. Therefore exact
  Beltrami projected-neutrality is automatic only on a single curl-eigenvalue
  shell, or after an explicit cancellation of every eigenvalue-mismatch cross
  term. A two-mode same-helicity Fourier witness with k=(1,0,0), l=(0,2,0)
  has nonzero projected output at k+l, so the mismatch row is not vacuous.
  Thus the finite-energy whole-space escape "broaden the shell but keep
  Beltrami neutrality" is not free: radial broadening creates projected
  turnover proportional to eigenvalue gaps unless a new cancellation
  certificate is supplied. This proves no lower bound for all broadband
  mixtures, no exclusion of a carefully canceled WKB bath, no custody theorem,
  no crowd theorem, no confinement constant, and no MPP closure.
---

# Beltrami bandwidth mismatch creates projected turnover

## 1. Question

The constant Beltrami cell is an exact neutralizer only on one curl eigenvalue:
\[
  \nabla\times W=\lambda W.
  \tag{BBM.1}
\]

The whole-space obstruction then says that a nonzero exact
\(L^2(\mathbb R^3)\) field cannot live on one sharp frequency sphere. A
finite-energy survivor has to localize or broaden the shell.

This note tests the radial-broadening escape:
\[
  \text{Can a broadband same-helicity Beltrami bath keep the same projected}
  \quad
  \text{neutrality as a one-shell Beltrami cell?}
  \tag{BBM.2}
\]

The answer is no without a new cross-eigenvalue cancellation certificate.

## 2. Exact mismatch identity

Let
\[
  u=\sum_a u_a,
  \qquad
  \nabla\cdot u_a=0,
  \qquad
  \nabla\times u_a=\lambda_a u_a .
  \tag{BBM.3}
\]
Use
\[
  (u\cdot\nabla)u
  =
  \nabla {|u|^2\over2}
  -
  u\times(\nabla\times u).
  \tag{BBM.4}
\]

The self terms \(u_a\times\lambda_a u_a\) vanish. For \(a<b\), the pair
contribution to \(u\times(\nabla\times u)\) is
\[
  \lambda_b u_a\times u_b+\lambda_a u_b\times u_a
  =
  (\lambda_b-\lambda_a)\,u_a\times u_b .
  \tag{BBM.5}
\]
Therefore, after Leray projection,
\[
  \boxed{
  \mathbb P((u\cdot\nabla)u)
  =
  -
  \mathbb P
  \sum_{a<b}(\lambda_b-\lambda_a)\,u_a\times u_b .
  }
  \tag{BBM.6}
\]

Thus exact Beltrami neutrality is automatic when all active components have
the same \(\lambda_a\). It is not automatic for a broadband shell.

## 3. Nonzero two-mode witness

The mismatch row is not a formal artifact. On the torus, use complex
same-helicity modes
\[
  k=(1,0,0),
  \qquad
  h_k=(0,1,i),
  \qquad
  i\,k\times h_k=h_k,
  \tag{BBM.7}
\]
and
\[
  l=(0,2,0),
  \qquad
  h_l=(1,0,-i),
  \qquad
  {i\over2}\,l\times h_l=h_l.
  \tag{BBM.8}
\]
Let
\[
  u_k=h_k e^{ik\cdot x},
  \qquad
  u_l=h_l e^{il\cdot x}.
  \tag{BBM.9}
\]
Then \(\lambda_k=1\), \(\lambda_l=2\), and the cross product at frequency
\[
  m=k+l=(1,2,0)
  \tag{BBM.10}
\]
is
\[
  h_k\times h_l=(-i,i,-1).
  \tag{BBM.11}
\]

This vector is not parallel to \(m\), since it has a nonzero third component
while \(m_3=0\). Hence the Leray projection at \(m\) is nonzero:
\[
  \mathbb P_m(h_k\times h_l)\ne0.
  \tag{BBM.12}
\]
By (BBM.6), the projected nonlinear output at frequency \(m\) is nonzero and
has coefficient proportional to
\[
  \lambda_l-\lambda_k=1.
  \tag{BBM.13}
\]

Adding conjugate modes gives a real trigonometric field with the same nonzero
projected output at \(\pm m\). So a same-helicity two-shell Beltrami
superposition is generically not a projected-neutral Beltrami cell.

## 4. Consequence for finite-energy broadening

The whole-space exact eigenfield obstruction forces a finite-energy Beltrami
neutralizer to stop being a sharp \(L^2\) eigenfield. One way is localization;
the filed localization notes route that to cutoff/Hodge, envelope-stress, and
Reynolds-certificate rows.

The other way is radial broadening. This note says radial broadening has its
own exact price: components with different curl eigenvalues generate
eigenvalue-gap turnover
\[
  (\lambda_b-\lambda_a)\mathbb P(u_a\times u_b).
  \tag{BBM.14}
\]

Thus a broadband bath has only three algebraic exits:
\[
\begin{array}{ll}
\lambda_a\hbox{ all equal}
  &\Rightarrow \text{one-shell periodic/model cell, not whole-space }L^2,\\[1mm]
\sum_{a<b}(\lambda_b-\lambda_a)\mathbb P(u_a\times u_b)\ne0
  &\Rightarrow \text{projected turnover / Reynolds defect / custody row},\\[1mm]
\text{cross terms cancel}
  &\Rightarrow \text{new cancellation certificate owed}.
\end{array}
  \tag{BBM.15}
\]

So "broadband Beltrami" is not a free replacement for the exact one-shell
neutralizer. It either pays mismatch turnover, proves a nontrivial cancellation
law, or returns to the already routed one-shell/localized model-cell branches.

## 5. Four-sentence result

For a sum of Beltrami components \(\nabla\times u_a=\lambda_a u_a\),
\[
  \mathbb P((u\cdot\nabla)u)
  =
  -
  \mathbb P\sum_{a<b}(\lambda_b-\lambda_a)u_a\times u_b .
\]
Single-shell same-helicity Beltrami fields are neutral because every
\(\lambda_a\) is the same. Broadband same-helicity fields are neutral only if
all eigenvalue-gap cross terms cancel, and a two-mode torus witness shows those
terms are genuinely nonzero. Therefore finite-energy radial broadening cannot
inherit exact Beltrami neutrality for free; it routes to projected turnover,
Reynolds/custody payment, a new cancellation certificate, or the existing
construction/exclusion branch.

## 6. State

This proves the exact eigenvalue-mismatch identity and kills the free
broadband-Beltrami-neutralizer shortcut.

It proves no quantitative lower bound for all broadband mixtures, no exclusion
of a cancellation-engineered WKB bath, no same-fluid custody theorem, no
near-uniform bath construction or exclusion, no crowd theorem, no confinement
constant, and no MPP closure.
