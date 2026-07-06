---
theorem_id: forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706
status: exact-obstruction-common-packet-identity-alone-does-not-supply-gram-gap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - WKBCommonPacketIdentityCompactness.A
  - SamePacketIdentity.NO-GRAM-GAP-BY-ITSELF
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-certificate-diagonal-compatibility-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-packet-identity-factorization-reduction-20260706.md
completion_truth: >-
  Exact obstruction to one possible Gram-gap source, not a WKB construction, not
  an exclusion theorem, not a crowd-cell theorem, and not a confinement-constant
  decision. Common packet identity is a compatibility/closedness coordinate:
  the law, ancestry, cover, and tower certificates must refer to the same
  prelimit packet/cloud. That condition by itself does not give the
  count-free lower bound required by CrossCellWKBGramGap.A. In finite cloud
  coordinates, if the identity coordinate only labels cells and adds no
  positive uniform-mode charge, the equal-weight cloud a_b=1/M still has total
  selected moment one and diagonal/local charge O(1/M). If the identity map has
  many distinct fibers, uniform filling across them is near-uniform; if one
  fiber contains many cells, uniform filling inside that same packet identity
  is still near-uniform. Thus common identity supplies a Gram gap only together
  with an extra quantitative theorem: bounded effective cell count per identity
  fiber, positive all-to-all identity charge, anti-equidistribution of legal
  clouds, or construction/exclusion. This proves no such extra theorem and no
  MPP closure.
---

# WKB common identity is not a Gram gap

## 1. Kill question

The cross-cell Gram branch now says a square rescue needs
\[
  \inf_{\substack{a\ge0,\ \sum_ba_b=1\\ a\in\mathcal C_M}}a^TG_Ma\ge c>0.
  \tag{CID.1}
\]

The local-cloud countermodel says local WKB legality and moment matching do not
force anti-equidistribution.

The next tempting source is same-packet identity: perhaps the common law /
ancestry / cover / tower identity coordinate forbids uniform fragmentation.

The checked answer is no. Common identity is necessary for legal profile
admission, but it is not a square coercivity theorem by itself.

## 2. Identity coordinate model

Let \(M\) positive WKB cells carry weights
\[
  a_b\ge0,\qquad \sum_{b=1}^Ma_b=1.
  \tag{CID.2}
\]

Let
\[
  \iota_b\in I
  \tag{CID.3}
\]
be the common packet identity coordinate attached to cell \(b\). In the
certificate notes, \(I\) is the product of row identity subcoordinates:
law, ancestry, cover, and tower identity.

The identity condition says that the row certificates attached to cell \(b\)
agree on \(\iota_b\), and that the limiting certified profile stays on the
closed same-packet diagonal. This is a compatibility condition. It does not yet
state any lower bound on the distribution of the weights \(a_b\).

## 3. Fragmentation with many identity values

Suppose the \(M\) cells have distinct or many identity values, and the Gram
form is still mean-zero/local after identity compatibility is imposed. Take
\[
  a_b={1\over M}.
  \tag{CID.4}
\]

Then
\[
  \sum_ba_b=1,
  \qquad
  \sum_ba_b^2={1\over M}\to0.
  \tag{CID.5}
\]

For any bounded local correction \(D\),
\[
  a^TDa\lesssim {1\over M}.
  \tag{CID.6}
\]

For any mean-zero translation-invariant cross form with the uniform cloud in
its zero mode,
\[
  a^TGa\to0.
  \tag{CID.7}
\]

The fact that each row has a compatible identity label has not changed the
fragmentation calculation. It records provenance; it does not create a
positive all-to-all interaction.

## 4. Fragmentation inside one identity fiber

The other possibility is that many cells share one identity value
\[
  \iota_b=\iota_\ast,\qquad 1\le b\le M.
  \tag{CID.8}
\]

This is closer to the phrase "same packet": the cloud is spread across many
effective cells inside one common packet identity.

But the equal-weight cloud still satisfies (CID.5). Any diagonal or bounded
local charge still gives \(O(1/M)\). A mean-zero cross-cell form still has the
same zero-mode obstruction unless the common identity relation adds a new
positive interaction between all cells in that fiber.

So a large identity fiber is not anti-equidistribution. It is exactly the
unbounded-count cloud in same-packet clothing.

## 5. What would make identity decisive

Common identity can become decisive only after adding one of the following
quantitative structures.

First, bounded effective count:
\[
  \#\{b:\iota_b=\iota\}\le M_0
  \tag{CID.9}
\]
on every legal retained identity fiber. Then one cell carries mass
\(\gtrsim1/M_0\), and the bounded-count / finite-menu extraction branch
returns.

Second, a positive identity-fiber uniform-mode charge:
\[
  u_F^TG_Fu_F\ge c>0
  \tag{CID.10}
\]
for every legal fiber \(F\), where \(u_F\) is the uniform cloud on that fiber.
This is an actual Gram theorem, not identity bookkeeping.

Third, legal anti-equidistribution:
\[
  \|a-u_F\|_2^2\ge c
  \tag{CID.11}
\]
on every normalized legal cloud in the fiber. This is exactly the
anti-equidistribution theorem named by the previous note.

Fourth, construction/exclusion: prove the same-solution Navier-Stokes WKB
dynamics cannot realize the large near-uniform identity fiber, or construct it
and take the honest evasion route.

## 6. What this kills

This kills the shortcut
\[
  \text{same-packet identity}
  \Longrightarrow
  \text{CrossCellWKBGramGap.A}.
  \tag{CID.12}
\]

Same-packet identity keeps certificates from describing four unrelated
objects. It is an admission/closedness requirement. It does not by itself
convert \(L^1\) selected moment into a count-free square charge.

## 7. Four-sentence result

Common packet identity says the law, ancestry, cover, and tower certificates
refer to the same WKB packet/cloud. It does not control how the selected
positive moment is distributed among many effective cells inside that identity.
Uniform filling across many identity values, or inside one large identity
fiber, still has total selected moment one and diagonal/local square charge
\(1/M\), while mean-zero cross kernels still see the uniform zero mode. Thus
identity can help the Gram gap only with an extra quantitative theorem: bounded
cell count, positive uniform-mode charge, legal anti-equidistribution, or
construction/exclusion.
