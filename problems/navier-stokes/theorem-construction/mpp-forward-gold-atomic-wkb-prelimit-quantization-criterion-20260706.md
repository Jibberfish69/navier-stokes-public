---
theorem_id: forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706
status: exact-criterion-bounded-prelimit-packet-count-pays-atomization-unbounded-count-does-not
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / atomic microlocal profile
target_object:
  - AtomicWKBPrelimitAtomization.A
  - AtomicWKBEffectivePacketCountCriterion
  - AtomicWKBFragmentationDefect
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-profile-reconstruction-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
completion_truth: >-
  Exact criterion and obstruction. The limiting atomic WKB profile gives a
  shrinking phase-tube cloud with total retained moment at least a_*/2 on a
  terminal subtail. If the cloud can be represented, in the actual same-solution
  packet calculus, by at most M effective packet cells on that tail, then one
  cell carries at least a_*/(2M), and finite-menu extraction applies after a
  sparse subtail. Thus bounded effective packet count pays the prelimit
  atomization branch. Conversely, if the effective packet count is unbounded,
  the measure data alone cannot force one packet with fixed positive moment:
  the cloud can be split into M_j cells of mass a_*/(2M_j). Hence unbounded
  effective count is exactly the atomic fragmentation defect unless a separate
  no-free-fragmentation, orthogonality, uncertainty-cell lower bound, or
  cloud-profile admission theorem is supplied. This proves no such separate
  theorem, no general actual WKB carrier extraction, no profile admission, and
  no MPP closure.
---

# Atomic WKB prelimit quantization criterion

## 1. Object

The atomic profile direct test left a shrinking phase-tube cloud:
\[
  \mu_{j}(U_j)\ge {a_\ast\over2},
  \qquad
  U_j\downarrow\{\ell_\ast\}.
  \tag{PQ.1}
\]

The question here is exact:
\[
  \text{When does the cloud force one actual packet with fixed positive moment?}
  \tag{PQ.2}
\]

The answer is not compactness. It is effective prelimit packet count.

## 2. Bounded count pays atomization

Assume that on an infinite terminal tail the cloud inside \(U_j\) is represented
by actual same-solution WKB packet cells
\[
  P_{j,1},\ldots,P_{j,M_j},
  \qquad
  A_j(P_{j,b})\ge0,
  \tag{PQ.3}
\]
with
\[
  \sum_{b=1}^{M_j}A_j(P_{j,b})\ge {a_\ast\over2}.
  \tag{PQ.4}
\]

If
\[
  M_j\le M<\infty
  \tag{PQ.5}
\]
along an infinite tail, then for every \(j\) on that tail there is a cell
\(P_{j,b(j)}\) with
\[
  A_j(P_{j,b(j)})\ge {a_\ast\over2M}.
  \tag{PQ.6}
\]

If those \(M\) cells are drawn from a fixed finite packet rule menu, the
finite-menu WKB extraction theorem applies directly. More generally, after
passing to the finite cell index \(b\) and the compact limiting label already
selected by \(U_j\downarrow\{\ell_\ast\}\), this is exactly the missing
prelimit atomization input: a fixed positive fraction of the atomic tube has
been captured by one effective packet branch.

Thus:
\[
  \boxed{
  \text{bounded effective packet count in the atomic tube}
  \Longrightarrow
  \text{prelimit atomization / finite packet capture}.
  }
  \tag{PQ.7}
\]

Once this is installed, the earlier finite-menu extraction supplies the actual
WKB carrier clauses, and the Sobolev Field consumer can be used after
same-solution admission.

## 3. Unbounded count does not pay atomization

The converse obstruction is equally exact. If \(M_j\to\infty\), the lower
bound (PQ.4) is compatible with the uniform fragmentation model
\[
  A_j(P_{j,b})={a_\ast\over2M_j},
  \qquad
  1\le b\le M_j.
  \tag{PQ.8}
\]

Then
\[
  \sum_{b=1}^{M_j}A_j(P_{j,b})={a_\ast\over2},
  \tag{PQ.9}
\]
but
\[
  \max_{1\le b\le M_j}A_j(P_{j,b})
  =
  {a_\ast\over2M_j}
  \to0.
  \tag{PQ.10}
\]

So the atomic profile can retain its limiting atom while every actual prelimit
packet cell carries vanishing moment.

This proves:
\[
  \boxed{
  \text{atomic profile + unbounded effective packet count}
  \not\Longrightarrow
  \text{actual packet extraction}.
  }
  \tag{PQ.11}
\]

## 4. What can still rescue the unbounded branch

Unbounded count is not automatically an evasion theorem. It is a typed defect.
The branch can still be paid by one of these additional inputs:

1. a no-free-fragmentation law forcing concentration despite \(M_j\to\infty\);
2. an uncertainty-cell lower bound showing that \(M_j\) is actually bounded
   inside the shrinking atom tube at the retained readout scale;
3. orthogonality or square-sum coercivity that turns many small packets into a
   paid reserve;
4. admission of the whole shrinking phase-tube cloud as a profile-level
   terminal witness.

Without one of these, the atomic branch is not an actual packet. It is the
atomic fragmentation defect:
\[
  \text{positive limiting atom}
  \quad+\quad
  \max_b A_j(P_{j,b})\to0.
  \tag{PQ.12}
\]

## 5. Four-sentence result

The atomic WKB profile gives positive moment in shrinking phase neighborhoods.
If those neighborhoods contain only a uniformly bounded number of effective
prelimit packet cells, pigeonhole gives one cell with fixed positive moment,
and finite-menu carrier extraction applies. If the effective packet count is
unbounded, the same atomic moment can fragment into \(M_j\) cells of mass
\(a_\ast/(2M_j)\), so no actual packet is forced. The remaining unbounded-count
branch needs no-free-fragmentation, an uncertainty-cell bound, square coercivity,
cloud-profile admission, or it is a typed atomic fragmentation defect.
