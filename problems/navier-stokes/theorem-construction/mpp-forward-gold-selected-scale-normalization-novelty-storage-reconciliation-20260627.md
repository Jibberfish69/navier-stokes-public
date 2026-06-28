---
theorem_id: forward-gold-selected-scale-normalization-novelty-storage-reconciliation-20260627
status: novelty-reduction-installed-storage-coercivity-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
audits:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-novelty-admission-scale-normalization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-normalized-stress-novelty-bellman-leverage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-refill-parent-normalized-leverage-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projection-jump-first-exit-carleson-live-hinge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-current-authority-synthesis-critical-fresh-source-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
attacks_hinge:
  - SelectedUnitNoveltyAdmission.A
  - SelectedRefillParentNormalizedAdmission.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - SelectedGeneratorStorageCoercivity.A
  - StoppedAccretiveTestingData.A
  - CriticalPositiveTransferReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-positive-transfer-reduction-20260628.md
effect: >-
  Reconciles the physical scale-normalization statement with the checked repo
  state. The same material Cauchy stress history supplies the raw stress. The
  open proof issue is selected-unit admission: a shrinking raw stress read may
  become one selected unit only through parent-normalized leverage, selected-scale
  first-birth reserve, or paid reset/stop/legal exit. The Bellman/log refill part
  is reduced to SelectedRefillParentNormalizedAdmission.A. The fresh-birth part
  is exactly the original-history routed-current/root-generator storage
  coercivity problem. That storage problem is now identified with the critical
  positive-transfer reserve for the Leray-projected \(\dot H^{1/2}\) packet:
  small critical packets close by absorption, while arbitrary data remains open.
  Projection-jump and bounded-projection clauses are support; downstream
  full-clock finiteness is a forbidden input. Partial, not Gold closed.
---

# Selected scale normalization: novelty rule and storage edge

The physical issue is scale normalization.  The original packet gives finite
raw strain-work, but a dangerous refill at a smaller heat scale can have tiny
raw size and still count as one selected refill.

So the missing story is not where the stress comes from.  The stress comes from
the same Cauchy stress history of the same material packet.  The missing story
is why one shrinking sequence of tiny stress reads cannot be promoted into
infinitely many unit refills.

The installed parent-subtracted current gives the right ontology.  With

\[
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A,
\]

and

\[
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i,
\]

the new selected child current is

\[
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle.
\]

Exact reuse is parent current:

\[
a_i\in E_{i-1}
\quad\Longrightarrow\quad
d_i=0
\quad\Longrightarrow\quad
\Delta J_i^{new}=0.
\]

Fresh orthogonal change is Bessel-paid:

\[
\sum_i|\langle G,d_i\rangle|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\]

Changed reuse is projection-jump motion, and the first-exit estimate is
installed in routed-current currency:

\[
\mathrm{PJ}(P)
\le
C_N\mathcal E_{\rm route}(P)+R_{\rm legal}(P)+Stop(P).
\]

Here

\[
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right).
\]

Thus the bookkeeping around reuse is no longer the live stress-source problem.
The live statement is the selected-unit novelty rule:

\[
\omega_Q^{new}
\le
C_N
\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right)
+
C_N W_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
+
R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{1}
\]

The first term is the existing-channel refill ledger.  Once the admission
identity is proved, it telescopes because

\[
s_Q=s_{Q^-}+\mu_G(\widehat Q)
\]

gives

\[
\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right)
=
\log s_Q-\log s_{Q^-}.
\]

This is exactly the physical leverage principle: the same small push into an
already saturated channel cannot be counted again as a full refill.

The second term is the fresh-channel birth ledger.  It is not closed by raw
Bessel.  The half-tail

\[
\|F_m\|_{\mathcal H_{\rm raw}}^2={2^{-m}\over m+1},
\qquad
\sum_m\|F_m\|_{\mathcal H_{\rm raw}}^2<\infty,
\qquad
\sum_m2^m\|F_m\|_{\mathcal H_{\rm raw}}^2=\infty
\]

shows that raw orthogonality does not pay selected-scale unit counting.

The fresh-birth side needs the original-history weighted root estimate

\[
\sum_{Q\subset P}
W_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{2}
\]

equivalently the routed-current/root-generator storage estimate

\[
\mathcal E_{\rm route}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{3}
\]

or in generator form

\[
\int_{\operatorname{Hist}(P)}
a(\sigma,t)\|G_{\rm sel}(\sigma,t)\|^2\,d\sigma dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{4}
\]

The bounded-projection note proves only the local operator clause:

\[
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)d\sigma
\le
C\,\Theta_{\rm part}^{orig}
+dR_{\rm legal}
+dStop .
\]

It does not prove the original storage/no-free-reset clause.  Importing
downstream full-clock finiteness here is circular, because that full clock is
what the selected action is supposed to produce.

Therefore the checked live edge is:

\[
\text{SelectedUnitNoveltyAdmission.A}
\]

with two proof-bearing subclauses:

\[
\text{SelectedRefillParentNormalizedAdmission.A}
\]

for the Bellman/log refill telescope, and

\[
\text{SelectedGeneratorStorageCoercivity.A}
\quad\text{or}\quad
\text{StoppedAccretiveTestingData.A}
\]

for the fresh-birth/root-generator storage.  In physical variables this is the
same as the positive critical transfer estimate

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2\,dt,
\qquad
\theta<1 .
\tag{5}
\]

The standard bound closes `(5)` only under a small
\(\dot H^{1/2}\) packet condition.  For arbitrary data, `(5)` is the same open
scale-native native-reserve theorem, not a consequence of the raw energy law.

Once `(1)` and `(2)` are proved from the original same-material Navier-Stokes
history before selected readout, the installed relays apply:

\[
\text{finite selected action}
\Longrightarrow
\text{finite full same-material action}
\Longrightarrow
H^s\text{ continuation}.
\]

Until the selected-generator storage/accretive-testing estimate is proved, the
Gold route remains conditional.  The stress source is known; the unresolved
mathematics is the scale-normalized selected novelty rule with a noncircular
fresh-birth storage bound.
