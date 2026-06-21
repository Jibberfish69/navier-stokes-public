---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-tail-small-sparse-chain-obstruction-20260621
  status: exact-sparse-chain-obstruction-installed-forward-gold-not-proved
  proof_role: forward_gold_moving_gauge_tail_small_sparse_chain_obstruction
  logical_landing_node: moving_gauge_tail_small_sparse_chain_obstruction
  edge_effect: >-
    Corrects the tempting but false shortcut in the branch V_j -> 0,
    sum_j V_j = infinity. A scalar null sequence has a summable subsequence, but
    a sparse cylinder chain is controlled by composite displacements between
    retained scales, not by the adjacent factors V_{j_k}. For retained indices
    j_k<j_{k+1}, the relevant geometric factor is
    W_k=Lambda_k^4 min(|B_k|,Lambda_k), where Lambda_k=r_{j_{k+1}}/r_{j_k}
    and B_k=O_{j_k}^T(x_{j_{k+1}}-x_{j_k})/r_{j_k}. Summable sparse payment
    requires sum_k W_k<infinity plus same-witness recurrence preservation.
    Failure of this composite condition is visible scale-skipping/center-drift/
    no-unique-tangent obstruction, not an adjacent-volume tail-smallness issue.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-geometric-tail-smallness-dichotomy-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-spatial-ui-moving-gauge-payment-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621.md
  downstream_consequence: >-
    Do not claim that V_j -> 0 alone gives a summably paid sparse fixed-chain
    telescope. It gives only adjacent tail-smallness. A usable sparse fixed-chain
    route must prove composite sparse-gauge summability and same-witness
    preservation. If it does, the branch enters the installed fixed-chain
    annular-share/nested-core/Part-Field consumer. If it does not, the remaining
    live target is selector/scale-skipping/no-drift/unique-tangent/profile
    production.
---

# MPP Forward-Gold Moving-Gauge Tail-Small Sparse-Chain Obstruction

Date: 2026-06-21

## Status

This note corrects the tempting sparse-subsequence shortcut in the intermediate
moving-gauge branch:

\[
V_j\to0,
\qquad
\sum_jV_j=\infty,
\qquad
V_j=\lambda_j^4\min\{|b_j|,\lambda_j\}.
\tag{MSS.1}
\]

As a scalar fact, every nonnegative null sequence has a summable subsequence.
That fact is not enough for a sparse cylinder proof.  A sparse cylinder chain
does not compare \(j_k\) only to \(j_k+1\).  It compares \(j_k\) to
\(j_{k+1}\), and the relevant gauge error is the composite displacement over
all skipped scales.

## 1. Composite sparse-gauge geometry

For retained indices

\[
j_k<j_{k+1},
\tag{MSS.2}
\]

define the composite scale ratio

\[
\Lambda_k
:=
{r_{j_{k+1}}\over r_{j_k}}
=
\prod_{i=j_k}^{j_{k+1}-1}\lambda_i.
\tag{MSS.3}
\]

Define the composite normalized center displacement in the \(j_k\)-gauge by

\[
B_k
:=
O_{j_k}^{T}{x_{j_{k+1}}-x_{j_k}\over r_{j_k}}.
\tag{MSS.4}
\]

The \(j_{k+1}\)-unit cylinder appears inside the \(j_k\)-coordinates as an
off-center cylinder of spatial radius \(\Lambda_k\), centered at \(B_k\), with
time length \(\Lambda_k^2\).  Therefore the sparse-chain geometric defect is

\[
\Delta_k^{sparse}
=
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)
\times[-\Lambda_k^2,0],
\tag{MSS.5}
\]

and its exact volume currency is

\[
W_k
:=
\Lambda_k^4\min\{|B_k|,\Lambda_k\}.
\tag{MSS.6}
\]

The same shifted-ball estimate gives

\[
|\Delta_k^{sparse}|
\simeq
W_k.
\tag{MSS.7}
\]

Thus a sparse fixed-gauge telescope requires control of \(W_k\), not merely of
the adjacent terms \(V_{j_k}\).

## 2. Why adjacent summable subsequence is insufficient

From \(V_j\to0\), one can choose \(j_k\) so that

\[
\sum_k V_{j_k}<\infty.
\tag{MSS.8}
\]

But `(MSS.8)` controls only the adjacent defect from \(j_k\) to \(j_k+1\).  It
does not control the composite defect from \(j_k\) to \(j_{k+1}\).

The missing condition is

\[
\sum_k W_k<\infty.
\tag{MSS.9}
\]

The two conditions are not equivalent.  The skipped center increments may add
coherently in the \(j_k\)-gauge, and rotations may change how the increments
compose.  Without a no-drift or summable-displacement theorem, a scalar
subsequence of small adjacent volumes does not produce a summably paid sparse
fixed chain.

This is the exact point where a fake subsequence proof would smuggle in
unique-tangent control.

## 3. Conditional sparse-chain pass

Assume the same-carrier density bridge gives, on the sparse composite defect,

\[
\mu_{j_k}(E_k^{sparse})
\le
C_{\mathrm{sp}}C W_k,
\qquad
E_k^{sparse}:=\Delta_k^{sparse}\cap\Omega_{j_k}.
\tag{MSS.10}
\]

Assume also the composite sparse geometry is summable:

\[
\sum_k W_k<\infty.
\tag{MSS.11}
\]

Then

\[
\sum_k\mu_{j_k}(E_k^{sparse})
<\infty.
\tag{MSS.12}
\]

If the sparse chain also preserves:

\[
\text{the same terminal witness,}
\tag{MSS.13}
\]

\[
\text{the same selected carrier,}
\tag{MSS.14}
\]

\[
\text{nonzero retained normalized mass/action/source,}
\tag{MSS.15}
\]

and the exact same-solution recurrence between \(j_k\) and \(j_{k+1}\), with
scale ratio \(\Lambda_k\) and the composite center/frame transform retained on
the same selected carrier, then the moving-gauge errors are summably legal on
that sparse fixed chain.  The branch enters the installed fixed-chain fork:

\[
\text{annular share gives strict descent,}
\tag{MSS.16}
\]

or

\[
\text{no-share recurrence gives terminal point/time-face atom}
\Longrightarrow
\neg Part_{N,Q}
\text{ or }
\forall r>0\,\neg Field_{N,r,Q}
\tag{MSS.17}
\]

after same-witness CM admission.

## 4. Failure of the sparse pass

If no retained sparse chain satisfies `(MSS.10)` through `(MSS.15)`, the branch
has not exposed a new all-step volume theorem.  It has exposed one of these
specific failures:

\[
\text{composite center displacement is not summably small,}
\tag{MSS.18}
\]

\[
\text{rotations/frames do not settle enough to form a fixed gauge,}
\tag{MSS.19}
\]

\[
\text{selector or carrier identity changes along every summable sparse chain,}
\tag{MSS.20}
\]

\[
\text{the retained nonzero terminal witness is lost under sparse extraction,}
\tag{MSS.21}
\]

or

\[
\text{the branch scale-skips in a way that prevents same-carrier recurrence
custody on the selected sparse chain.}
\tag{MSS.22}
\]

These are exactly no-drift / unique-tangent / selector-stability / profile
production issues.

## 5. Proof-program consequence

The intermediate geometry branch is now exact:

\[
\boxed{
V_j\to0,\quad \sum_jV_j=\infty
}
\tag{MSS.23}
\]

means only that adjacent gauge errors are individually small but not globally
summable.  It does not by itself prove a usable sparse fixed-chain telescope.

The usable sparse route is:

\[
\boxed{
\sum_k W_k<\infty
+
\text{same-witness sparse recurrence preservation}
\Longrightarrow
\text{fixed-chain annular-share/nested-core consumer applies.}
}
\tag{MSS.24}
\]

The failure route is:

\[
\boxed{
\text{no such sparse chain}
\Longrightarrow
\text{visible scale-skipping / center-frame drift / selector instability.}
}
\tag{MSS.25}
\]

## Verdict

The scalar fact that a null sequence has a summable subsequence is useful only
after it is upgraded to composite cylinder geometry:

\[
\boxed{
V_j\to0
\text{ is adjacent tail-smallness;}
\qquad
\sum_kW_k<\infty
\text{ is sparse fixed-chain summability.}
}
\tag{MSS.26}
\]

This note does not prove forward-gold smoothness.  It prevents an invalid
subsequence shortcut and sharpens the remaining branch to composite
sparse-gauge summability plus same-witness preservation, or to no-drift/profile
production.
