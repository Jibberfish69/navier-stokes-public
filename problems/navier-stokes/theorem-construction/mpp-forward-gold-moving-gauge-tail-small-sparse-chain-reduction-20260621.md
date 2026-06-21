---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-tail-small-sparse-chain-reduction-20260621
  status: exact-sparse-chain-reduction-installed-forward-gold-not-proved
  proof_role: forward_gold_moving_gauge_tail_small_sparse_chain_reduction
  logical_landing_node: moving_gauge_tail_small_sparse_chain
  edge_effect: >-
    Converts the intermediate moving-gauge geometry branch V_j -> 0 but
    sum_j V_j = infinity into an exact sparse-chain reduction. Since every null
    nonnegative sequence has a summable subsequence, one may choose j_k with
    sum_k V_{j_k}<infinity. Under the same-carrier density bridge, the moving-gauge
    defects are summably paid along that sparse chain. This is not a free proof:
    it is usable only when the selected sparse chain preserves the same terminal
    witness, same-carrier recurrence, and nonzero retained mass. If preservation
    holds, the branch enters the fixed-gauge annular-share / nested-core consumer.
    If preservation fails, the failure is selector loss, scale-skipping, or
    no-unique-tangent drift, not an all-step geometric summability problem.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-geometric-tail-smallness-dichotomy-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-spatial-ui-moving-gauge-payment-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-nested-core-tightness-endpoint-ui-bridge-20260621.md
  downstream_consequence: >-
    Do not leave V_j -> 0 but sum_j V_j = infinity as a vague obstruction. It
    has an exact sparse-chain pass: choose a subsequence with summable V_j and
    pay the moving-gauge defects there under the density bridge. The remaining
    issue is preservation of the same terminal witness and same-carrier recurrence
    on that sparse chain. Preservation sends the branch to the existing fixed-chain
    annular-share/nested-core/Part-Field consumer. Non-preservation is a visible
    selector/scale-skipping/no-unique-tangent defect and must be routed to drift
    or profile production.
---

# MPP Forward-Gold Moving-Gauge Tail-Small Sparse-Chain Reduction

Date: 2026-06-21

## Status

This note handles the intermediate branch left by the moving-gauge geometric
dichotomy:

\[
V_j\to0,
\qquad
\sum_jV_j=\infty,
\tag{MSC.1}
\]

where

\[
V_j=\lambda_j^4\min\{|b_j|,\lambda_j\}.
\tag{MSC.2}
\]

The all-step telescope is not paid by `(MSC.1)`.  However, the branch is not
geometrically opaque: every null nonnegative sequence has a summable subsequence.
The exact question is whether that sparse subsequence still carries the same
terminal witness and recurrence.

## 1. Sparse summability from tail-smallness

Assume

\[
V_j\to0.
\tag{MSC.3}
\]

Choose \(j_k\) inductively so that

\[
V_{j_k}\le 2^{-k}.
\tag{MSC.4}
\]

Then

\[
\sum_{k=1}^{\infty}V_{j_k}
\le
\sum_{k=1}^{\infty}2^{-k}
<\infty.
\tag{MSC.5}
\]

This is the exact sparse-chain replacement for the divergent all-step series.
It uses only the geometric tail-smallness already isolated in the previous
note.

## 2. Payment along the sparse chain

Under the coupled tower spatial UI bridge, or any same-carrier spatial UI
bridge giving

\[
\mu_j(E_j^{gauge})
\le
C_{\mathrm{sp}}C\,V_j,
\tag{MSC.6}
\]

the sparse chain satisfies

\[
\sum_{k=1}^{\infty}
\mu_{j_k}(E_{j_k}^{gauge})
\le
C_{\mathrm{sp}}C
\sum_{k=1}^{\infty}V_{j_k}
<\infty.
\tag{MSC.7}
\]

Thus the moving-gauge defects are summably paid along the chosen subsequence.
This is a genuine summable payment, but only on that retained sparse chain.

## 3. What must be preserved

The sparse-chain payment is useful only if the subsequence still carries the
same proof object.  The required preservation clauses are:

\[
\text{same terminal witness,}
\tag{MSC.8}
\]

\[
\text{same selected carrier after restriction to the sparse chain,}
\tag{MSC.9}
\]

\[
\text{nonzero retained normalized mass/action/source on the sparse chain,}
\tag{MSC.10}
\]

and

\[
\text{same recurrence identity between the selected parent and child scales.}
\tag{MSC.11}
\]

If these hold, the summably paid sparse chain has entered the fixed
center/gauge/same-carrier setting of the annular-share and nested-core notes.
The existing fixed-chain fork then applies:

\[
\text{same-carrier annular share}
\Longrightarrow
\text{strict descent,}
\tag{MSC.12}
\]

or

\[
\text{fixed-chain no-share recurrence}
\Longrightarrow
\text{terminal point/time-face atom}
\Longrightarrow
\neg Part_{N,Q}
\text{ or }
\forall r>0\,\neg Field_{N,r,Q}
\tag{MSC.13}
\]

after same-witness CM admission.

## 4. Failure of preservation is a visible drift branch

If no sparse summable chain satisfies `(MSC.8)` through `(MSC.11)`, then the
problem is no longer the divergent all-step geometry series.  The failure is
one of the following visible defects:

\[
\text{the terminal witness is not retained by any summable sparse chain,}
\tag{MSC.14}
\]

\[
\text{the selector changes so the same carrier is not preserved,}
\tag{MSC.15}
\]

\[
\text{the branch scale-skips so recurrence is not a same parent-child chain,}
\tag{MSC.16}
\]

or

\[
\text{the center/frame/gauge does not settle into a fixed-chain tangent.}
\tag{MSC.17}
\]

These are exactly no-drift / unique-tangent / selector-stability / profile
production issues.  They are not hidden source-square failures and they are not
paid by reusing the all-step volume series.

## 5. Proof-program consequence

The intermediate geometry branch is now sharpened:

\[
\boxed{
V_j\to0
\quad\Longrightarrow\quad
\text{there exists a sparse subsequence with summable moving-gauge geometry.}
}
\tag{MSC.18}
\]

With same-carrier density/UI and same-witness preservation, this gives a
summably paid fixed-gauge sparse chain and sends the branch to the already
installed fixed-chain annular-share / nested-core / Part-Field consumer.

Without same-witness preservation, the branch is not a geometric summability
obstruction.  It is visible loss of selector stability, scale-chain custody, or
unique tangent.

## Verdict

The exact reduction is:

\[
\boxed{
V_j\to0
\Longrightarrow
\left[
\begin{array}{l}
\text{summably paid sparse fixed-chain branch, if same-witness recurrence is retained,}\\
\text{or visible selector/scale/gauge drift, if it is not.}
\end{array}
\right]
}
\tag{MSC.19}
\]

This does not prove forward-gold smoothness.  It removes the intermediate
moving-gauge geometry ambiguity: divergence of \(\sum_jV_j\) is only an
all-step telescope obstruction.  It is not an obstruction to a summable retained
subsequence.  The remaining live burden is same-witness sparse-chain
preservation or drift/profile production.
