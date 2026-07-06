---
theorem_id: forward-gold-k5-bounded-overlap-fragmentation-locality-obstruction-20260706
status: exact-obstruction-bounded-overlap-atlas-does-not-force-k5-locality
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5BoundedOverlapAtlas.NotRecordLocality
  - K5GrowingCountFragmentation
  - K5UniformMultiplicityOrThreshold.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-selector-menu-locality-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-lp-admission-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-selected-throughput-local-density-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-metric-entropy-collapse-fragmentation-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-wkb-cloud-square-coercivity-direct-test-20260706.md
completion_truth: >-
  Strict obstruction only. Bounded-overlap local cells do not by themselves
  force K5 record locality. Partition the long K5 carrier \([0,L]\) into
  \(N=L/\ell\) disjoint cells \(J_i\), take
  \(G_L=A L^{-1/p}\mathbf 1_{[0,L]}e\), and local normalized tests
  \(b_i=\ell^{-1/p'}\mathbf 1_{J_i}e\). Each \(b_i\) has bounded support and
  norm one, and the cells have overlap one, but every local read is
  \(A N^{-1/p}\) and every local \(L^p\)-mass is \(A^p/N\). The global
  selected test \(a_L=N^{-1/p'}\sum_i b_i\) has norm one and reads \(A\).
  Thus bounded overlap plus a local atlas still admits the same length-growing
  distributed K5 record unless the selector supplies a max/threshold crossing,
  a uniform active-count bound, a count-free square/Gram payer, or a
  paid/exit/admission-failure rule for normalized aggregate reads. This proves
  no K5 cap, no actual Navier-Stokes route-out, no confinement constant, and
  no MPP closure.
---

# K5 bounded-overlap fragmentation still does not localize the record

## 1. Object

The finite-menu note closed one shortcut:

\[
  \text{finite label count}
  \nRightarrow
  \text{K5 record locality}.
  \tag{BOF.1}
\]

The next possible repair is to say that the record is not one global test, but
is assembled from bounded local tests on a bounded-overlap atlas. This note
tests the exact implication

\[
  \text{bounded-overlap local selector atlas}
  \Longrightarrow
  \text{one bounded cell carries an order-one record}.
  \tag{BOF.2}
\]

The implication is false when the active cell count grows with the K5 effective
length. Bounded overlap controls geometric double counting; it does not stop
uniform fragmentation over more and more cells.

## 2. The local-cell decomposition of the long K5 read

Fix \(1\le p<\infty\), with dual exponent \(p'\). Partition the K5 effective
carrier

\[
  [0,L]=\bigcup_{i=1}^{N}J_i,
  \qquad |J_i|=\ell,
  \qquad L=N\ell ,
  \tag{BOF.3}
\]

with disjoint cells. The overlap multiplicity is one.

Take the same distributed witness as in the finite-\(L^p\) note:

\[
  G_L=A L^{-1/p}\mathbf 1_{[0,L]}e .
  \tag{BOF.4}
\]

For each cell define the local normalized test

\[
  b_i=\ell^{-1/p'}\mathbf 1_{J_i}e,
  \qquad
  \|b_i\|_{L^{p'}}=1 .
  \tag{BOF.5}
\]

Each \(b_i\) is bounded-diameter and locally admissible. The local read is

\[
  r_i:=\int_{J_i}\langle G_L,b_i\rangle\,dz
  =
  A L^{-1/p}\ell^{1/p}
  =
  A N^{-1/p}.
  \tag{BOF.6}
\]

The local \(L^p\)-mass is

\[
  \int_{J_i}|G_L|^p\,dz
  =
  A^p{\ell\over L}
  =
  {A^p\over N}.
  \tag{BOF.7}
\]

Thus every bounded cell vanishes as \(N\to\infty\).

## 3. The normalized aggregate still reads order one

The global dual test is exactly the normalized aggregate of these local tests:

\[
  a_L=L^{-1/p'}\mathbf 1_{[0,L]}e
  =
  N^{-1/p'}\sum_{i=1}^{N}b_i .
  \tag{BOF.8}
\]

Its norm is fixed:

\[
  \|a_L\|_{L^{p'}}=1 .
  \tag{BOF.9}
\]

Its selected read is

\[
  \int_0^L\langle G_L,a_L\rangle\,dz
  =
  N^{-1/p'}\sum_{i=1}^{N}r_i
  =
  N^{-1/p'}N A N^{-1/p}
  =
  A .
  \tag{BOF.10}
\]

So the selected record can be assembled from bounded-support, overlap-one
pieces while no piece carries an order-one local record. The payer is the
growing count \(N\), hidden inside the normalized aggregate.

For \(p=1\), this says \(p'=\infty\), \(b_i=\mathbf 1_{J_i}e\),
\(r_i=A/N\), and \(a_L=\sum_i b_i=\mathbf 1_{[0,L]}e\); the same conclusion
holds.

## 4. What bounded overlap actually gives

Bounded overlap gives the summation identity

\[
  \sum_{i=1}^{N}\int_{J_i}|G_L|^p\,dz
  =
  \int_0^L|G_L|^p\,dz
  =
  A^p .
  \tag{BOF.11}
\]

It does not give

\[
  \max_i\int_{J_i}|G_L|^p\,dz\ge c>0
  \tag{BOF.12}
\]

unless the active count \(N\) is uniformly bounded. The sharp pigeonhole
bound is only

\[
  \max_i\int_{J_i}|G_L|^p\,dz
  \ge
  {A^p\over N}.
  \tag{BOF.13}
\]

The witness (BOF.4)--(BOF.7) attains this scaling.

Similarly, a sum of local reads gives

\[
  \max_i r_i\ge {A\over N^{1/p}}
  \tag{BOF.14}
\]

in the normalized aggregate geometry, and the witness again attains it.

## 5. Relation to WKB metric entropy

This is the one-dimensional K5 version of the WKB metric-entropy obstruction.
In the WKB notes, a fixed resolution gives a finite cluster menu; collapsing
resolution with cover count \(N_j\to\infty\) permits uniform fragmentation
with cluster masses \(c_0/N_j\). Here the K5 effective length gives the count

\[
  N={L\over\ell}.
  \tag{BOF.15}
\]

Endpoint delay requires \(kL\gtrsim\operatorname{Re}\), so a high-Re K5
survivor may force \(N\to\infty\) at fixed cell size. In that regime,
bounded-overlap local atlas control is only metric-entropy control with
diverging count. It is not atomic record admission.

## 6. Consequence for K5

The false shortcut is

\[
  \text{bounded-overlap local cells}
  + \text{bounded local tests}
  + \text{order-one normalized aggregate read}
  \Longrightarrow
  \text{order-one local cell}.
  \tag{BOF.16}
\]

The exact witness above satisfies the left side and violates the right side.

The remaining K5 ways out are now typed more sharply:

1. a max/threshold selector rule forcing one bounded cell to cross a fixed
   \(A_0\);
2. a uniform active-count bound \(N\le N_*\) on the selected K5 carrier;
3. a count-free square, Gram, or source-density payer for the normalized
   aggregate;
4. an actual-Navier-Stokes route-out: global aggregate reads are illegal,
   paid, stopped, exit-classified, dynamically contaminated, or constructed as
   a genuine evader.

## 7. Four-sentence result

Bounded overlap does not turn a distributed K5 record into an atomic record.
The long witness decomposes into disjoint bounded cells with norm-one local
tests, but each cell carries only \(A^p/N\) \(L^p\)-mass and local read
\(A N^{-1/p}\). The normalized aggregate of those local tests still has norm
one and reads the full order-one record. Thus K5 needs a max/threshold rule,
uniform active-count bound, count-free square/Gram payer, or actual-NS
paid/exit/admission-failure rule for growing normalized aggregates.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
