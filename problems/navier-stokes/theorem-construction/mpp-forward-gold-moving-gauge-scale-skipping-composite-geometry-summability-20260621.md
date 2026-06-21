---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-scale-skipping-composite-geometry-summability-20260621
  status: exact-composite-geometry-summability-installed-forward-gold-not-proved
  proof_role: forward_gold_moving_gauge_sparse_composite_geometry_payment
  logical_landing_node: moving_gauge_sparse_composite_geometry_summability
  edge_effect: >-
    Proves that composite sparse-gauge geometry is not the remaining obstruction.
    For any scale sequence r_j downarrow 0, choose a sparse retained sequence
    j_k with Lambda_k=r_{j_{k+1}}/r_{j_k} <= 2^{-k}. The composite moving-gauge
    volume factor W_k=Lambda_k^4 min(|B_k|,Lambda_k) satisfies W_k <= Lambda_k^5,
    hence sum_k W_k < infinity regardless of the composite center displacement
    B_k. Therefore sparse scale-skipping can always make the geometric
    symmetric-difference volume summable. The remaining obstruction is not
    composite geometry; it is whether this sparse chain preserves the same
    terminal witness, selected carrier, recurrence custody, and controlled-domain
    or exterior-spill bookkeeping.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-tail-small-sparse-chain-obstruction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-geometric-tail-smallness-dichotomy-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
  downstream_consequence: >-
    The moving-gauge middle branch should no longer list composite sparse
    geometry as an independent supplier problem. Scale skipping pays W_k. The
    live theorem is SparseSameWitnessCarrierCustody.A: find a sparse scale chain
    that still carries the same terminal witness, same selected carrier, nonzero
    retained mass/action/source, exact same-solution recurrence, and either a
    controlled parent domain or paid exterior spill. With that custody, the
    branch enters the fixed-chain annular-share/nested-core Part-Field consumer.
    Without it, the failure is visible selector loss, exterior spill, scale
    skipping custody loss, or no-unique-tangent/profile production.
---

# MPP Forward-Gold Moving-Gauge Scale-Skipping Composite Geometry Summability

Date: 2026-06-21

## Status

This note sharpens the sparse moving-gauge branch.  The previous sparse-chain
obstruction correctly identified the composite geometric factor:

\[
W_k
=
\Lambda_k^4\min\{|B_k|,\Lambda_k\},
\tag{SGS.1}
\]

where

\[
\Lambda_k={r_{j_{k+1}}\over r_{j_k}},
\qquad
B_k=O_{j_k}^{T}{x_{j_{k+1}}-x_{j_k}\over r_{j_k}}.
\tag{SGS.2}
\]

The point here is that \(W_k\) itself is not a hard obstruction.  Sparse scale
skipping can always make the composite geometric volumes summable.  What remains
is custody of the same terminal object on that sparse chain.

## 1. Exact composite bound

For every \(k\),

\[
\min\{|B_k|,\Lambda_k\}\le\Lambda_k.
\tag{SGS.3}
\]

Therefore

\[
\boxed{
W_k
\le
\Lambda_k^5.
}
\tag{SGS.4}
\]

This estimate is independent of the size of the composite center displacement
\(B_k\).  If the child center is far from the parent center, the two tiny balls
are essentially disjoint, but the symmetric-difference volume is still bounded
by the total volume of two balls of radius \(\Lambda_k\), multiplied by the
time length \(\Lambda_k^2\).

Thus the unlocalized composite geometry is small whenever the composite scale
ratio is small.

## 2. Sparse scale selection

Assume

\[
r_j\downarrow0.
\tag{SGS.5}
\]

Choose \(j_1\).  Having chosen \(j_k\), choose \(j_{k+1}>j_k\) so far down the
scale sequence that

\[
\Lambda_k={r_{j_{k+1}}\over r_{j_k}}\le 2^{-k}.
\tag{SGS.6}
\]

This is possible because \(r_j\to0\).  Then `(SGS.4)` gives

\[
W_k\le 2^{-5k}.
\tag{SGS.7}
\]

Hence

\[
\boxed{
\sum_{k=1}^{\infty}W_k<\infty.
}
\tag{SGS.8}
\]

So composite sparse-gauge summability is always available at the level of
unlocalized geometry.

## 3. Payment under the density bridge

Let

\[
\Delta_k^{sparse}
=
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)
\times[-\Lambda_k^2,0],
\tag{SGS.9}
\]

and

\[
E_k^{sparse}:=\Delta_k^{sparse}\cap\Omega_{j_k}.
\tag{SGS.10}
\]

If the same-carrier density bridge gives

\[
\mu_{j_k}(E_k^{sparse})
\le
C_{\mathrm{sp}}C\,W_k,
\tag{SGS.11}
\]

then the sparse scale choice above yields

\[
\boxed{
\sum_k\mu_{j_k}(E_k^{sparse})<\infty.
}
\tag{SGS.12}
\]

This pays the moving-gauge symmetric-difference errors on the sparse chain.

## 4. What the geometry does not preserve

The summability in `(SGS.8)` is only a geometric fact.  It does not say that
the sparse chain is a valid proof chain for the terminal obstruction.

The following clauses are still separate:

\[
\text{the same terminal witness is retained on }j_k,
\tag{SGS.13}
\]

\[
\text{the same selected carrier is retained on }j_k,
\tag{SGS.14}
\]

\[
\text{nonzero normalized mass/action/source survives on }j_k,
\tag{SGS.15}
\]

\[
\text{the composite same-solution recurrence is kept on that selected carrier,}
\tag{SGS.16}
\]

and

\[
\text{the off-center child cylinder is inside the controlled parent domain, or
the exterior spill is paid.}
\tag{SGS.17}
\]

Without `(SGS.13)` through `(SGS.17)`, the sparse geometric payment is not a
fixed-chain proof.  It is only a small-volume fact about two tiny cylinders.

## 5. Exact branch consequence

The middle moving-gauge branch is now:

\[
\boxed{
\text{composite sparse geometry is summably payable by scale skipping.}
}
\tag{SGS.18}
\]

The live theorem is the custody theorem:

\[
\boxed{
\text{SparseSameWitnessCarrierCustody.A}
}
\tag{SGS.19}
\]

meaning: choose the sparse scale chain so that it still carries the same
terminal witness, same selected carrier, retained nonzero critical mass, and
controlled-domain or paid-spill recurrence.

If `(SGS.19)` is proved, then the moving-gauge defects are summably legal and
the branch enters the already installed fixed-chain fork:

\[
\text{annular share gives strict descent,}
\tag{SGS.20}
\]

or

\[
\text{nested-core no-share gives terminal atom}
\Longrightarrow
\neg Part_{N,Q}
\text{ or }
\forall r>0\,\neg Field_{N,r,Q}
\tag{SGS.21}
\]

after same-witness CM admission.

If `(SGS.19)` fails, the failure is visible:

\[
\text{selector loss, witness loss, exterior spill, scale-chain custody loss,
or no-unique-tangent/profile drift.}
\tag{SGS.22}
\]

## Verdict

The composite sparse geometric factor is no longer a standalone obstruction:

\[
\boxed{
r_j\downarrow0
\Longrightarrow
\exists\,j_k\nearrow\infty
\quad
\sum_k
\Lambda_k^4\min\{|B_k|,\Lambda_k\}<\infty.
}
\tag{SGS.23}
\]

What remains is not geometric summability.  It is same-witness sparse carrier
custody plus controlled-domain or paid exterior-spill bookkeeping.  That is the
next exact moving-gauge theorem target.
