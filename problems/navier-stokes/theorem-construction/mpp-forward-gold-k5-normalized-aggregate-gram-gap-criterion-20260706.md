---
theorem_id: forward-gold-k5-normalized-aggregate-gram-gap-criterion-20260706
status: exact-criterion-count-free-k5-quadratic-payer-is-gram-gap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5NormalizedAggregateQuadraticPayer.CRITERION
  - K5CrossCellGramGap.A
  - K5NearNullFragmentation
  - K5UniformModeChargeOrAntiEquidistribution.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-bounded-overlap-fragmentation-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-selector-menu-locality-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-lp-admission-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621.md
completion_truth: >-
  Exact criterion and obstruction only. The bounded-overlap K5 fragmentation
  note left a possible count-free square/Gram payer for the normalized
  aggregate read. In K5 cell coordinates, with nonnegative local selected
  masses \(a_i\) and \(\sum_i a_i=1\), any such payer has the form
  \(Q_N(a)=a^TG_Na\). A count-free lower bound \(Q_N(a)\ge c\) on the
  normalized admissible cone is exactly a uniform Gram gap. Without that gap,
  near-null fragmented clouds keep the full aggregate selected record while
  their proposed quadratic charge vanishes. Diagonal square sums, finite-range
  or bounded-row kernels, and mean-zero pressure/CZ kernels all fail on the
  uniform cloud \(a_i=1/N\), giving \(O(1/N)\) or zero up to bounded diagonal
  corrections. A rank-one all-to-all positive mode would pay the aggregate,
  but that is a genuine uniform-mode charge / fixed-density compensator, not a
  free square principle. This proves no K5 cap, no Navier-Stokes Gram gap, no
  actual-NS route-out, no confinement constant, and no MPP closure.
---

# K5 normalized aggregate: a count-free quadratic payer is a Gram gap

## 1. Object

The bounded-overlap K5 note left one algebraic-looking repair:

\[
  \text{a count-free square, Gram, or source-density payer for the normalized
  aggregate read.}
  \tag{KQ.1}
\]

This note types that repair exactly.

The physical object is still one long same-fluid K5 carrier. The selected read
is distributed over many bounded effective cells. A quadratic payer would have
to charge the same distributed carrier without first proving that one bounded
cell carries an order-one record.

## 2. Cell coordinates

Partition the K5 effective carrier into \(N\) bounded cells \(J_i\). Let
\[
  a_i\ge0
  \tag{KQ.2}
\]
be the normalized positive selected record mass in cell \(J_i\). Normalize
\[
  A(a):=\sum_{i=1}^{N}a_i=1 .
  \tag{KQ.3}
\]

Any proposed cross-cell quadratic payer has the form
\[
  Q_N(a)=a^TG_Na
  =
  \sum_{i,j=1}^{N}G_N(i,j)a_ia_j,
  \tag{KQ.4}
\]
where \(G_N\) is the actual same-carrier interaction form being invoked:
source-square transfer, pressure-kernel interaction, overlap certificate,
uncertainty Gram, or another Navier-Stokes quadratic coordinate.

Let \(\mathcal C_N\subset\mathbb R_+^N\) be the admissible K5 positive cone
after the real same-fluid, packet, selector, endpoint-delay, and legality
constraints have been imposed.

## 3. Exact criterion

A count-free aggregate payer is the statement
\[
  Q_N(a)\ge c\,A(a)^2
  \qquad
  (a\in\mathcal C_N)
  \tag{KQ.5}
\]
for a constant \(c>0\) independent of \(N\).

Under the normalization \(A(a)=1\), this is exactly
\[
  \inf_{\substack{a\in\mathcal C_N\\ \sum_i a_i=1}}
  a^TG_Na
  \ge c .
  \tag{KQ.6}
\]

So the remaining square/Gram route is not a generic square principle. It is
the following theorem:

\[
  \texttt{K5CrossCellGramGap.A}
  \tag{KQ.7}
\]

For every admissible K5 normalized aggregate read, the actual Navier-Stokes
same-carrier quadratic form has a uniform positive Gram gap on the normalized
positive cone.

## 4. Near-null fragmentation is the exact obstruction

If the gap is absent, then there are admissible clouds \(a^{(N)}\in\mathcal C_N\)
with
\[
  \sum_i a^{(N)}_i=1,
  \qquad
  (a^{(N)})^TG_Na^{(N)}\to0 .
  \tag{KQ.8}
\]

These clouds retain the full normalized selected record, but the proposed
quadratic payer vanishes. That is the K5 cell-coordinate version of near-null
fragmentation.

Thus:
\[
  \boxed{
  \text{count-free K5 quadratic payer}
  \Longleftrightarrow
  \text{uniform Gram gap on the admissible K5 positive cone}.
  }
  \tag{KQ.9}
\]

## 5. Cheap square forms fail

The diagonal square sum gives
\[
  G_N=I,
  \qquad
  Q_N(a)=\sum_ia_i^2 .
  \tag{KQ.10}
\]

For the uniform fragmented cloud
\[
  a_i={1\over N},
  \tag{KQ.11}
\]
one has
\[
  A(a)=1,
  \qquad
  Q_N(a)={1\over N}\to0 .
  \tag{KQ.12}
\]

Finite-range and uniformly bounded-row kernels fail the same way. If
\[
  \sup_i\sum_j|G_N(i,j)|\le C_G,
  \tag{KQ.13}
\]
then for the uniform cloud
\[
  |Q_N(a)|
  \le
  {1\over N^2}\sum_{i,j}|G_N(i,j)|
  \le
  {C_G\over N}\to0 .
  \tag{KQ.14}
\]

Thus bounded local interaction, orthogonality, or same-cell square accounting
cannot pay the normalized aggregate.

## 6. Mean-zero pressure kernels also fail on the uniform mode

A translation-invariant pressure/CZ interaction with zero row sum has
\[
  \sum_jG_N(i,j)=0 .
  \tag{KQ.15}
\]

Then the uniform cloud is a zero mode:
\[
  Q_N\!\left({1\over N}\mathbf 1\right)
  =
  {1\over N^2}\mathbf 1^TG_N\mathbf 1
  =
  0 .
  \tag{KQ.16}
\]

If bounded diagonal self-cell corrections are added, they contribute at most
\[
  O\!\left({1\over N}\right)
  \tag{KQ.17}
\]
on the same uniform cloud. So the raw mean-zero pressure kernel is not the
missing all-to-all positive charge.

## 7. What would pay

The algebraic payer that does survive uniform fragmentation is a rank-one
positive uniform mode:
\[
  G_N=\gamma\,\mathbf 1\mathbf 1^T,
  \qquad
  Q_N(a)=\gamma\left(\sum_ia_i\right)^2=\gamma .
  \tag{KQ.18}
\]

But this is not a free square principle. It is a genuine all-to-all positive
uniform-mode charge. In the K5/overlap-bath ledger this is exactly the
fixed-density compensator or producer-sized residue branch unless an actual
Navier-Stokes theorem identifies a different same-carrier all-to-all payer.

The other possible payer is anti-equidistribution:
\[
  \text{legal K5 aggregate reads cannot approach the uniform zero mode.}
  \tag{KQ.19}
\]

That is an actual-NS admissibility theorem, not a consequence of bounded
overlap, finite \(L^p\), finite menu count, or the raw pressure kernel.

## 8. Consequence for K5

The square/Gram shortcut is now typed:

1. prove \(\texttt{K5CrossCellGramGap.A}\);
2. prove a genuine positive uniform-mode charge and route its cost;
3. prove an anti-equidistribution/admission-failure theorem for legal K5
   aggregates;
4. or accept near-null fragmented aggregate reads as the remaining evasion
   construction/exclusion surface.

The existing source-square bridge remains a consumer. It says that same-carrier
source-square domination gives spacetime uniform absolute continuity. It does
not produce the same-carrier square density for this K5 aggregate, and uniform
absolute continuity is not the same as bounded-cell record locality.

## 9. Four-sentence result

A count-free K5 quadratic payer is exactly a uniform Gram gap on the normalized
positive K5 cell cone. Without that gap, near-null fragmented clouds keep the
full selected aggregate record while their quadratic charge vanishes. Diagonal,
finite-range, bounded-row, and mean-zero pressure-kernel forms all fail on the
uniform cloud. The only algebraic payer that survives uniform fragmentation is
a genuine all-to-all positive uniform mode, which is a real compensator/payer
branch rather than free locality.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
