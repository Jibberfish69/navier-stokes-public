---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-geometric-tail-smallness-dichotomy-20260621
  status: exact-geometric-dichotomy-installed-forward-gold-not-proved
  proof_role: forward_gold_moving_gauge_geometry_dichotomy
  logical_landing_node: moving_gauge_geometric_tail_smallness
  edge_effect: >-
    Installs the exact geometric split left after the coupled tower spatial UI
    bridge. For the moving-gauge symmetric difference, the dimensional volume is
    comparable to V_j=lambda_j^4 min(|b_j|,lambda_j). Tail-small payment is
    V_j -> 0; summable payment is sum_j V_j < infinity. The exact partition is:
    on |b_j| >= lambda_j the contribution is lambda_j^5, and on |b_j| < lambda_j
    the contribution is lambda_j^4 |b_j|. Hence fast scale-ratio collapse
    lambda_j -> 0 makes the geometric defect tail-small, while any failure of
    tail-smallness forces a subsequence with lambda_j bounded below and normalized
    center shift bounded below. That failure is a visible moving-gauge/no-unique-
    tangent drift branch, not a density or source-square payment.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-spatial-ui-moving-gauge-payment-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-source-square-spatial-domination-noalias-20260621.md
  downstream_consequence: >-
    The density side of the moving-gauge defect is paid by same-carrier spatial
    UI or the coupled tower density bridge. The remaining geometric side is now
    exactly V_j. If V_j is summable, the moving-gauge defect is summably legal
    under the density bridge. If V_j -> 0 but is not summable, individual tail
    replacement is available but global telescoping still needs grouping,
    subsequence control, or an independent reserve. If V_j does not tend to zero,
    the branch must be treated as visible moving-gauge drift / no unique tangent /
    collar-readout / profile production, not as hidden source-square failure.
---

# MPP Forward-Gold Moving-Gauge Geometric Tail-Smallness Dichotomy

Date: 2026-06-21

## Status

This note isolates the geometric side of the moving-gauge payment.  The coupled
tower spatial UI note pays density:

\[
\mu_j(E_j^{gauge})
\le
C_{\mathrm{sp}}\,|E_j^{gauge}|.
\tag{GTD.1}
\]

The remaining question is exactly whether the moving-gauge volume factor is
tail-small, summable, or visibly drifting.

Define

\[
V_j
:=
\lambda_j^4\min\{|b_j|,\lambda_j\}.
\tag{GTD.2}
\]

Here

\[
\lambda_j={r_{j+1}\over r_j},
\qquad
0<\lambda_j\le1,
\qquad
b_j=O_j^T{x_{j+1}-x_j\over r_j}
\tag{GTD.3}
\]

is the normalized child-center displacement in the parent gauge.

## 1. Exact geometric currency

The moving-gauge symmetric difference is

\[
\Delta_j^{gauge}
=
\left(
B_{\lambda_j}(b_j)\triangle B_{\lambda_j}(0)
\right)
\times[-\lambda_j^2,0].
\tag{GTD.4}
\]

There are dimensional constants \(0<c<C<\infty\) such that for every
\(0<\lambda\le1\) and \(b\in\mathbb R^3\),

\[
c\lambda^4\min\{|b|,\lambda\}
\le
\left|
\left(B_\lambda(b)\triangle B_\lambda(0)\right)
\times[-\lambda^2,0]
\right|
\le
C\lambda^4\min\{|b|,\lambda\}.
\tag{GTD.5}
\]

The upper bound is the installed moving-gauge estimate.  For the lower bound,
scale to \(\lambda=1\).  The function

\[
\phi(t)=|B_1(te_1)\triangle B_1(0)|
\tag{GTD.6}
\]

is continuous, satisfies \(\phi(t)\ge c_0t\) for \(0\le t\le1\) by the slab
between the two shifted spherical boundaries, and satisfies
\(\phi(t)\ge\phi(1)>0\) for \(t\ge1\).  Scaling back gives

\[
|B_\lambda(b)\triangle B_\lambda(0)|
\simeq
\lambda^2\min\{|b|,\lambda\}.
\tag{GTD.7}
\]

Multiplying by the time length \(\lambda^2\) gives `(GTD.5)`.

Thus \(V_j\) is not only an upper-bound artifact.  Up to dimensional constants,
it is the exact geometric size of the unlocalized moving-gauge symmetric
difference.  The controlled carrier set

\[
E_j^{gauge}
=
\Delta_j^{gauge}\cap\Omega_j
\tag{GTD.8}
\]

may be smaller if the parent window omits part of \(\Delta_j^{gauge}\); that
exterior part remains collar, boundary, or legal-spill bookkeeping.  This note
does not turn geometric volume into selected source mass without the separate
density/UI hypothesis.

## 2. Exact partition

Split the indices into

\[
S_{\mathrm{sat}}
=
\{j:\ |b_j|\ge\lambda_j\},
\qquad
S_{\mathrm{drift}}
=
\{j:\ |b_j|<\lambda_j\}.
\tag{GTD.9}
\]

Then the geometric factor has the exact decomposition

\[
V_j
=
\begin{cases}
\lambda_j^5, & j\in S_{\mathrm{sat}},\\[2mm]
\lambda_j^4|b_j|, & j\in S_{\mathrm{drift}}.
\end{cases}
\tag{GTD.10}
\]

Consequently

\[
\sum_j V_j
=
\sum_{j\in S_{\mathrm{sat}}}\lambda_j^5
+
\sum_{j\in S_{\mathrm{drift}}}\lambda_j^4|b_j|.
\tag{GTD.11}
\]

This is the exact summability test.  No source-square, endpoint UI, or tower
language is hidden inside it.

## 3. Tail-smallness

The geometric defect is tail-small exactly when

\[
V_j\to0.
\tag{GTD.12}
\]

Equivalently:

\[
\lambda_j^5\to0
\quad\text{along saturated indices}
\tag{GTD.13}
\]

and

\[
\lambda_j^4|b_j|\to0
\quad\text{along drift indices}.
\tag{GTD.14}
\]

Two useful consequences are immediate.

First, fast scale-ratio collapse pays the geometric tail:

\[
\lambda_j\to0
\quad\Longrightarrow\quad
V_j\le\lambda_j^5\to0.
\tag{GTD.15}
\]

Second, on any subsequence with \(\lambda_j\ge\lambda_0>0\),

\[
V_j\to0
\quad\Longleftrightarrow\quad
|b_j|\to0
\tag{GTD.16}
\]

after deleting finitely many saturated large-shift events.  More directly, if
\(\lambda_j\ge\lambda_0\) and \(|b_j|\not\to0\), then \(V_j\not\to0\).

Failure of tail-smallness is therefore exact:

\[
V_j\not\to0
\tag{GTD.17}
\]

if and only if there are \(\varepsilon>0\) and a subsequence \(j_k\) such that

\[
\lambda_{j_k}^4
\min\{|b_{j_k}|,\lambda_{j_k}\}
\ge
\varepsilon .
\tag{GTD.18}
\]

Since \(0<\lambda_j\le1\), this implies

\[
\lambda_{j_k}\ge\varepsilon^{1/5},
\qquad
|b_{j_k}|\ge\varepsilon .
\tag{GTD.19}
\]

In words: non-small geometric failure means the child scale is not collapsing
fast enough to hide the mismatch, and the child center keeps moving by a
non-negligible fraction of the parent radius.

## 4. Summability is stronger than tail-smallness

Summable geometric payment is

\[
\sum_j V_j<\infty.
\tag{GTD.20}
\]

Using `(GTD.11)`, this is exactly

\[
\sum_{j\in S_{\mathrm{sat}}}\lambda_j^5<\infty
\quad\text{and}\quad
\sum_{j\in S_{\mathrm{drift}}}\lambda_j^4|b_j|<\infty.
\tag{GTD.21}
\]

Thus:

\[
\lambda_j\to0
\tag{GTD.22}
\]

is enough for tail-smallness, but not for summability.  Summability needs

\[
\sum_j\lambda_j^5<\infty
\tag{GTD.23}
\]

on the saturated or scale-collapse part, plus the drift-series condition in
`(GTD.21)`.

There is an intermediate branch:

\[
V_j\to0,
\qquad
\sum_jV_j=\infty.
\tag{GTD.24}
\]

In that branch each individual moving-gauge replacement is small on the tail,
but a global telescoping proof over all Zeno steps is not paid by this geometry
alone.  It still needs grouping, subsequence extraction, source-square/no-waste
reserve, or profile production.

## 5. Proof-program consequence

Combine this note with the coupled tower spatial UI bridge:

\[
\mu_j(E_j^{gauge})
\le
C_{\mathrm{sp}}C V_j.
\tag{GTD.25}
\]

Then:

1. If \(\sum_jV_j<\infty\), the moving-gauge defect is summably paid under the
same-carrier density bridge.
2. If \(V_j\to0\), the moving-gauge defect is tail-small under the same-carrier
density bridge, but global telescoping may still need a separate summability
or grouping argument.
3. If \(V_j\not\to0\), then the failure is not a hidden density estimate.  It is
a visible moving-gauge drift branch:

\[
\exists \varepsilon>0,\quad
\lambda_{j_k}\ge\varepsilon^{1/5},\quad
|b_{j_k}|\ge\varepsilon .
\tag{GTD.26}
\]

That branch must be routed as moving center/no-unique-tangent drift, collar or
legal-spill readout, or profile/no-drift production.  It is not paid by calling
source-square or tower radius again.

## Verdict

The exact geometric remainder after density payment is:

\[
\boxed{
V_j=\lambda_j^4\min\{|b_j|,\lambda_j\}.
}
\tag{GTD.27}
\]

The geometry gives a clean trichotomy:

\[
\boxed{
\sum_jV_j<\infty
\quad\text{or}\quad
V_j\to0\text{ but }\sum_jV_j=\infty
\quad\text{or}\quad
V_j\not\to0.
}
\tag{GTD.28}
\]

The first branch gives summable moving-gauge payment once density is paid.  The
second gives only tail replacement.  The third is visible normalized
center-drift and belongs to no-drift / unique-tangent / profile-production or
collar-readout work.
