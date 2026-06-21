---
ns_viewer:
  theorem_id: forward-gold-sparse-same-witness-carrier-custody-reduction-20260621
  status: exact-sparse-custody-reduction-installed-forward-gold-not-proved
  proof_role: forward_gold_sparse_same_witness_carrier_custody_reduction
  logical_landing_node: sparse_same_witness_carrier_custody
  edge_effect: >-
    Proves the exact subsequence part of SparseSameWitnessCarrierCustody.A.
    Once a retained tail already carries the same terminal witness, the same
    selected carrier chart, and a nonzero normalized carrier/action/source
    lower bound, one may choose a sparse scale-skipping subsequence with
    Lambda_k=r_{j_{k+1}}/r_{j_k}<=2^{-k}. The exact moving-gauge composition
    identity is preserved on that subsequence, and the composite geometric
    defect W_k=Lambda_k^4 min(|B_k|,Lambda_k) is summable. This does not prove
    selector heredity, fixed selected-carrier stability, or parent-domain /
    exterior-spill payment. If those clauses are not already present, the
    failure is visible as selector loss, carrier loss, exterior spill, or
    no-drift/profile-production territory.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-scale-skipping-composite-geometry-summability-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-tail-small-sparse-chain-obstruction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-pack-profile-selector-stability-direct-attempt-20260610.md
  downstream_consequence: >-
    Do not list sparse subsequence selection or composite geometry as the
    remaining obstruction. They are paid. The remaining non-geometric clauses
    are SelectedCarrierHeredity.A and ControlledParentDomainOrPaidExteriorSpill.A,
    plus the already identified same-carrier density/UI payment on the gauge
    symmetric-difference set. On a promoted Clay-admissible retained pulse,
    same-witness admission is recorded by the same-witness recheck; on
    support-only forward-gold supplier calculations it is not automatic.
---

# MPP Forward-Gold Sparse Same-Witness Carrier Custody Reduction

Date: 2026-06-21

## Status

This note attacks the custody clause left after scale skipping paid the
composite moving-gauge geometry.

The exact point is:

\[
\boxed{
\text{sparse scale selection preserves only what is already tail-hereditary.}
}
\tag{SSC.1}
\]

It preserves a same witness, a selected carrier, and a nonzero retained quantity
only when those objects are already fixed on the retained tail. It does not
create selector stability or parent-domain control.

## 1. Retained tail hypotheses

Let \(r_j\downarrow0\), let \(x_j\in\mathbb R^3\), and let
\(O_j\in SO(3)\). Define the moving microscopes

\[
v_j(s,y)
=
r_jO_j^Tu(T+r_j^2s,\ x_j+r_jO_jy),
\tag{SSC.2}
\]

\[
q_j(s,y)
=
r_j^2p(T+r_j^2s,\ x_j+r_jO_jy).
\tag{SSC.3}
\]

Let \(\mathcal I\subset\mathbb N\) be an infinite retained tail. The exact
tail-custody hypotheses are:

\[
j\in\mathcal I
\quad\Longrightarrow\quad
\text{the same terminal witness }W_*\text{ is being tested,}
\tag{SSC.4}
\]

\[
j\in\mathcal I
\quad\Longrightarrow\quad
\text{the same selected carrier chart }\mu_j\text{ is inherited,}
\tag{SSC.5}
\]

and there is \(a_0>0\) such that

\[
\mu_j(Q_1)\ge a_0
\qquad(j\in\mathcal I)
\tag{SSC.6}
\]

or the corresponding retained lower bound holds for the selected action/source
quantity used by the branch.

These are hypotheses, not consequences of scale skipping. Current selector
stability notes do not prove `(SSC.5)` for support-only forward-gold supplier
calculations.

## 2. Sparse selection inside the retained tail

Choose \(j_1\in\mathcal I\). Having chosen \(j_k\), choose
\(j_{k+1}\in\mathcal I\), \(j_{k+1}>j_k\), so far down the retained tail that

\[
\Lambda_k
:=
{r_{j_{k+1}}\over r_{j_k}}
\le 2^{-k}.
\tag{SSC.7}
\]

This is possible because \(r_j\to0\) along every infinite tail.

Since every \(j_k\) lies in \(\mathcal I\), the same tail-hereditary clauses
remain true:

\[
\text{same }W_*,
\qquad
\text{same selected carrier chart},
\qquad
\mu_{j_k}(Q_1)\ge a_0.
\tag{SSC.8}
\]

Thus sparse extraction does not lose an already retained witness or carrier.
It also does not prove those objects were retained in the first place.

## 3. Exact composite same-solution identity

Set

\[
A_k:=O_{j_k}^TO_{j_{k+1}},
\qquad
B_k:=O_{j_k}^{T}{x_{j_{k+1}}-x_{j_k}\over r_{j_k}}.
\tag{SSC.9}
\]

Composing the moving-gauge rescaling identity gives exactly

\[
\boxed{
v_{j_{k+1}}(s,y)
=
\Lambda_k A_k^T
v_{j_k}(\Lambda_k^2s,\ B_k+\Lambda_k A_ky).
}
\tag{SSC.10}
\]

For pressure,

\[
\boxed{
q_{j_{k+1}}(s,y)
=
\Lambda_k^2
q_{j_k}(\Lambda_k^2s,\ B_k+\Lambda_k A_ky).
}
\tag{SSC.11}
\]

So sparse skipping keeps the same-solution recurrence exactly. The child unit
cylinder appears in the parent coordinates as

\[
B_{\Lambda_k}(B_k)\times[-\Lambda_k^2,0].
\tag{SSC.12}
\]

## 4. Geometry is summably paid

The centered fixed-chain core is

\[
B_{\Lambda_k}(0)\times[-\Lambda_k^2,0].
\tag{SSC.13}
\]

The composite gauge defect is

\[
\Delta_k^{sparse}
=
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)\times[-\Lambda_k^2,0].
\tag{SSC.14}
\]

The scale-skipping geometry note proves

\[
W_k
:=
\Lambda_k^4\min\{|B_k|,\Lambda_k\}
\le
\Lambda_k^5.
\tag{SSC.15}
\]

By `(SSC.7)`,

\[
\sum_k W_k
\le
\sum_k2^{-5k}
<\infty.
\tag{SSC.16}
\]

Thus sparse geometry is not the remaining obstruction.

If the controlled same-carrier density/UI bridge gives

\[
\mu_{j_k}(\Delta_k^{sparse}\cap\Omega_{j_k})
\le C W_k,
\tag{SSC.17}
\]

then

\[
\sum_k
\mu_{j_k}(\Delta_k^{sparse}\cap\Omega_{j_k})
<\infty.
\tag{SSC.18}
\]

This is the exact summable payment needed to replace the moving child cylinder
by the centered fixed-chain core.

## 5. What remains outside the subsequence proof

There are two non-geometric clauses still not produced by sparse extraction.

First, selector and carrier heredity:

\[
\boxed{
\text{SelectedCarrierHeredity.A}
}
\tag{SSC.19}
\]

meaning that the selected positive native carrier on the sparse tail is the
same carrier family, rather than a moving selector chasing fresh packets. The
existing selector-stability attempts explicitly leave this unproved for
support-only forward-gold supplier work.

Second, parent-domain or exterior-spill control:

\[
\boxed{
\text{ControlledParentDomainOrPaidExteriorSpill.A}
}
\tag{SSC.20}
\]

meaning that the off-center child cylinder in `(SSC.12)` lies in the parent
controlled region, or the portion outside it is charged as collar, boundary, or
legal spill. Without this, `(SSC.17)` is not an estimate on the full selected
carrier defect.

So the exact decomposition is:

\[
\boxed{
\begin{aligned}
\text{SparseSameWitnessCarrierCustody.A}
\Leftarrow\;&
\text{RetainedTailSubsequence.A}\\
&+\text{SelectedCarrierHeredity.A}\\
&+\text{ControlledParentDomainOrPaidExteriorSpill.A}\\
&+\text{SameCarrierDensity/UI on }\Delta_k^{sparse}.
\end{aligned}
}
\tag{SSC.21}
\]

The first line is proved here. The fourth line is exactly the density/UI payment
criterion already isolated by the moving-gauge symmetric-difference note. The
second and third lines remain the live non-geometric custody clauses.

## 6. Branch consequence

On a promoted Clay-admissible retained pulse, the same-witness admission recheck
records that the retained pulse is attached to the same original finite
breakdown witness after canonical terminal capture. That discharges the
same-witness admission condition for the CM consumer.

It does not automatically discharge selected-carrier heredity or exterior-spill
payment for a support-only forward-gold supplier calculation.

Therefore the sparse branch is now:

\[
\boxed{
\text{retained same carrier + paid exterior spill}
\Longrightarrow
\text{sparse fixed-chain annular/nested-core consumer applies.}
}
\tag{SSC.22}
\]

and failure of those clauses is not hidden:

\[
\boxed{
\text{selector loss, carrier loss, exterior spill, or no-drift/profile branch.}
}
\tag{SSC.23}
\]

## Verdict

Sparse scale skipping is mathematically exact and pays the composite geometry.
It also preserves the witness and carrier on any tail where those objects are
already fixed.

The remaining sparse-custody work is not another scale-selection argument. It is
the non-geometric bridge:

\[
\boxed{
\text{selected-carrier heredity}
\quad+\quad
\text{controlled parent domain or paid exterior spill}.
}
\tag{SSC.24}
\]

Without those clauses, the sparse chain is not a hidden recurrence; it has
become visible selector/collar/drift/profile territory.
