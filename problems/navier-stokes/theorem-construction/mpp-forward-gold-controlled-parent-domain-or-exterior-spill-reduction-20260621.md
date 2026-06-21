---
ns_viewer:
  theorem_id: forward-gold-controlled-parent-domain-or-exterior-spill-reduction-20260621
  status: exact-exterior-spill-decomposition-installed-forward-gold-not-proved
  proof_role: forward_gold_sparse_parent_domain_exterior_spill_reduction
  logical_landing_node: controlled_parent_domain_or_exterior_spill
  edge_effect: >-
    Proves the exact measure decomposition behind the parent-domain clause in
    sparse moving-gauge custody. In parent coordinates, the child cylinder is
    \tilde Q_k=B_{\Lambda_k}(B_k)x[-\Lambda_k^2,0] and the fixed-chain centered
    core is \hat Q_k=B_{\Lambda_k}(0)x[-\Lambda_k^2,0]. For any controlled
    carrier region Omega_k, the difference between child-carrier mass and
    centered-core carrier mass is bounded by the controlled symmetric-difference
    mass plus exterior spill from \tilde Q_k\setminus Omega_k and
    \hat Q_k\setminus Omega_k. Thus fixed-chain replacement is valid only when
    those exterior spill terms are summable, legal, or tail-small. If they are
    not, the branch is visible exterior/collar/center-drift spill, not a hidden
    fixed-core recurrence. Current inputs do not prove universal spill payment.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-plane-split-source-curve-consumption-20260621.md
  downstream_consequence: >-
    Replace ControlledParentDomainOrPaidExteriorSpill.A by the exact fork:
    controlled parent inclusion or summable/legal exterior spill gives the
    fixed-chain annular/nested-core consumer; persistent uncharged exterior
    spill is a visible collar/exterior/center-drift branch and must be consumed
    by a legal ledger, source-curve Part/Field admission, endpoint UI/no-waste/
    source-square control, or profile production. The remaining hidden sparse
    custody wall is therefore selected-carrier heredity, not parent-domain
    geometry.
---

# MPP Forward-Gold Controlled Parent Domain Or Exterior Spill Reduction

Date: 2026-06-21

## Status

This note proves the exact bookkeeping identity behind the sparse parent-domain
clause. It does not prove that every exterior spill is already legal.

The point is:

\[
\boxed{
\text{moving-gauge fixed-chain replacement}
=
\text{controlled defect}
+
\text{exterior spill}.
}
\tag{CPD.1}
\]

So parent-domain failure is not a hidden fixed-core recurrence. It is either
paid spill or visible exterior/collar/center drift.

## 1. Child cylinder, centered core, and controlled region

On the sparse chain, in the \(j_k\)-parent coordinates, the child unit cylinder
is

\[
\widetilde Q_k
:=
B_{\Lambda_k}(B_k)\times[-\Lambda_k^2,0],
\tag{CPD.2}
\]

and the centered fixed-chain core is

\[
\widehat Q_k
:=
B_{\Lambda_k}(0)\times[-\Lambda_k^2,0].
\tag{CPD.3}
\]

Let \(\Omega_k\) be the parent controlled region on which the selected carrier
\(\mu_k\) has the estimates being used. Define the controlled parts

\[
\widetilde Q_k^{in}:=\widetilde Q_k\cap\Omega_k,
\qquad
\widehat Q_k^{in}:=\widehat Q_k\cap\Omega_k,
\tag{CPD.4}
\]

and the exterior spill parts

\[
\widetilde Q_k^{out}:=\widetilde Q_k\setminus\Omega_k,
\qquad
\widehat Q_k^{out}:=\widehat Q_k\setminus\Omega_k.
\tag{CPD.5}
\]

The controlled symmetric-difference set is

\[
E_k^{gauge}
:=
(\widetilde Q_k\triangle\widehat Q_k)\cap\Omega_k.
\tag{CPD.6}
\]

## 2. Exact replacement inequality

For any finite positive carrier measure \(\mu_k\),

\[
\left|
\mu_k(\widetilde Q_k)-\mu_k(\widehat Q_k)
\right|
\le
\mu_k(\widetilde Q_k\triangle\widehat Q_k).
\tag{CPD.7}
\]

Split the right-hand side into the controlled and exterior pieces:

\[
\widetilde Q_k\triangle\widehat Q_k
\subset
E_k^{gauge}
\cup
\widetilde Q_k^{out}
\cup
\widehat Q_k^{out}.
\tag{CPD.8}
\]

Therefore

\[
\boxed{
\left|
\mu_k(\widetilde Q_k)-\mu_k(\widehat Q_k)
\right|
\le
\mu_k(E_k^{gauge})
+
\mu_k(\widetilde Q_k^{out})
+
\mu_k(\widehat Q_k^{out}).
}
\tag{CPD.9}
\]

This is the exact parent-domain bookkeeping formula.

## 3. Controlled-domain branch

If

\[
\widetilde Q_k\cup\widehat Q_k\subset\Omega_k,
\tag{CPD.10}
\]

then the exterior terms vanish:

\[
\mu_k(\widetilde Q_k^{out})
=
\mu_k(\widehat Q_k^{out})
=0.
\tag{CPD.11}
\]

In that case `(CPD.9)` reduces to

\[
\left|
\mu_k(\widetilde Q_k)-\mu_k(\widehat Q_k)
\right|
\le
\mu_k(E_k^{gauge}).
\tag{CPD.12}
\]

The moving-gauge symmetric-difference payment criterion applies directly. On
the sparse chain, if the same-carrier density/UI estimate gives

\[
\sum_k\mu_k(E_k^{gauge})<\infty,
\tag{CPD.13}
\]

then the moving child and centered core differ by a summable legal error, and
the fixed-chain annular/nested-core consumer may be used.

## 4. Paid exterior-spill branch

If `(CPD.10)` fails but the exterior spill is summable or legal,

\[
\sum_k
\left[
\mu_k(\widetilde Q_k^{out})
+
\mu_k(\widehat Q_k^{out})
\right]
<\infty,
\tag{CPD.14}
\]

or the same sum is charged to an already declared collar/boundary/legal ledger,
then `(CPD.9)` and `(CPD.13)` again give

\[
\sum_k
\left|
\mu_k(\widetilde Q_k)-\mu_k(\widehat Q_k)
\right|
<\infty
\quad
\text{modulo legal spill}.
\tag{CPD.15}
\]

Thus controlled inclusion is not required as a separate geometric axiom. What
is required is exact accounting of the exterior part.

## 5. Unpaid exterior spill is visible

Suppose the sparse child branch has retained positive mass:

\[
\mu_k(\widetilde Q_k)\ge a_0>0
\tag{CPD.16}
\]

on a tail, because \(\widetilde Q_k\) is the parent-coordinate image of the
child unit selected carrier.

If the centered-core replacement is not valid and the exterior spill does not
satisfy `(CPD.14)`, then the obstruction is not hidden inside the fixed-chain
telescope. It is exactly the positive exterior amount

\[
\mu_k(\widetilde Q_k^{out})
+
\mu_k(\widehat Q_k^{out}).
\tag{CPD.17}
\]

A persistent lower bound in `(CPD.17)` means one of three things.

First, the selected child carrier is leaving the parent controlled region:

\[
\limsup_k\mu_k(\widetilde Q_k^{out})>0.
\tag{CPD.18}
\]

Second, the centered core required by the fixed-chain consumer is itself outside
the controlled chart:

\[
\limsup_k\mu_k(\widehat Q_k^{out})>0.
\tag{CPD.19}
\]

Third, the selected carrier measure is concentrating on the boundary between
controlled and uncontrolled regions, which is a collar/cutoff readout.

All three are visible failures of the parent-domain clause. None is a
fixed-center nested-core recurrence.

## 6. Relation to the source-curve consumer

When the exterior spill occurs in terminal heat windows, its time marginal is
part of the same selected source curve. Failure of endpoint uniform
integrability in that marginal gives the already installed terminal source
atom alternative. After same-witness admission, that branch is consumed as

\[
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{CPD.20}
\]

If instead the exterior spill is spread away from the terminal face, it is a
collar/boundary/legal ledger term and must be paid there. In neither case is
the exterior piece allowed to be silently folded into the centered nested-core
telescope.

## 7. Exact replacement for the prior clause

The phrase

\[
\text{ControlledParentDomainOrPaidExteriorSpill.A}
\tag{CPD.21}
\]

should be read as the following proved fork plus an unproved payment clause:

\[
\boxed{
\begin{aligned}
&\text{controlled parent inclusion}\\
&\quad\text{or summable/legal exterior spill}\\
&\Longrightarrow
\text{fixed-chain replacement is legal;}
\end{aligned}
}
\tag{CPD.22}
\]

and

\[
\boxed{
\text{unpaid exterior spill}
\Longrightarrow
\text{visible exterior/collar/center-drift branch.}
}
\tag{CPD.23}
\]

The first box is the exact consumer input. The second box is the exact failure
readout. Current inputs do not prove that every exterior spill satisfies the
first box.

## Verdict

The parent-domain clause is no longer a vague missing bridge. It is the exact
inequality `(CPD.9)`.

So the sparse fixed-chain route now needs:

\[
\boxed{
\sum_k\mu_k(E_k^{gauge})<\infty
\quad\text{and}\quad
\sum_k\mu_k(\widetilde Q_k^{out}\cup\widehat Q_k^{out})<\infty
}
\tag{CPD.24}
\]

up to declared legal ledgers.

If the second sum fails, the branch is visible exterior/collar/center-drift
spill, not a hidden recurrence. The remaining genuinely hidden sparse-custody
wall is selected-carrier heredity.
