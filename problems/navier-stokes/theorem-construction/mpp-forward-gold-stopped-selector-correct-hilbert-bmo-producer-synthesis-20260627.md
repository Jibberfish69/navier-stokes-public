---
theorem_id: forward-gold-stopped-selector-correct-hilbert-bmo-producer-synthesis-20260627
status: better-idea-synthesis-selector-correct-hilbert-bmo-promoted-after-descent-countermodel-no-go
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive PLS strict half-barrier
attacks_hinge:
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
  - MonotoneLaminarAdjointSelectedCapacityGain.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
refined_hinge:
  - StoppedSourceCarrierAndPaidReselection.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-hilbert-bmo-better-idea-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-dual-bellman-mincut-reserve-target-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-monotone-dual-extremal-constant-test-collapse-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-positive-flux-boundary-reserve-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-capacity-inheritance-critical-strain-equivalence-test-20260626.md
---

# Stopped selector-correct Hilbert BMO producer synthesis

## 1. Answer to the better-idea question

The better idea is not another ancestry count.  The spawned descent and
countermodel attacks both confirm that pure same-history descent still admits the
critical half-tail:

```math
\nu_k={2^{-k}\over k+1},
\qquad
\sum_k\nu_k<\infty,
\qquad
\sum_k2^k\nu_k=\sum_k{1\over k+1}=\infty.
\tag{1}
```

A child can have a real parent coefficient, complete-frame orientation, laminar
ancestry, and raw Hilbert freshness while still spending only summable raw scale
mass.  Therefore the Gold route closes only by producing a strict exponent or a
bounded-below reserve that is not the descendant tail.

The strongest current mechanism for producing that strict exponent is the
stopped selector-correct Hilbert BMO route: freeze the selected carrier on legal
stopped intervals, pay reselection movement separately, build an original-history
visible/silent/exchange Hilbert carrier, and use the martingale BMO square
function to obtain reverse Holder for the selected density.

## 2. Why descent and parent Bellman alone are not enough

The parent-child Bellman form would close the half-barrier if one could prove

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B(Q')
\le
B(Q)+R_{legal}(Q),
\qquad
B(Q_{root})\le C_N(u_0)+R_{legal}.
\tag{2}
```

But the boundary-flux test and capacity equivalence test show that raw parent
reserves are finite but too weak, while descendant-tail reserves telescope only
because they already contain the theorem.  A literal outer-boundary positive
flux reserve misses interior affine child birth.  A volumetric pressure-Hodge /
selected-critical-strain capacity reserve sees the child, but its root finiteness
is the same selected critical-strain good-lambda exponent gap.

The corrected monotone dual has the same boundary.  The admissible multiplier
class includes the constant test:

```math
0\le \alpha_{Q'}\le\alpha_Q\le 1,
\qquad
\alpha_Q\equiv 1,
\tag{3}
```

so the dual estimate is equivalent to the full first-ratio action bound, not a
smaller adversarial-multiplier problem.

## 3. Selector-correct Hilbert BMO target

On a stopped retained same-material tree, let the selected density be

```math
f_Q={d\mu^{sel}\over d\mathcal R}(Q),
```

relative to the original-history reserve measure `R`.  The producer theorem
should construct a Hilbert carrier

```math
Z_Q\in
\mathcal H_{vis}\oplus\mathcal H_{sil}\oplus\mathcal H_{ex},
\tag{4}
```

where:

```text
H_vis = pressure-Hodge Schur / Rellich / Carleman visible quotient,
H_sil = boundary-flat pressure-potential bubble energy,
H_ex  = selected silent-source origin / top-strain exchange carrier.
```

For fixed stopped carrier labels, the selected-density increment must have the
stochastic-exponential form

```math
\Delta_Q\log f
=
\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\qquad
\|\ell_Q\|\le C,
\tag{5}
```

with paid error and carrier square function:

```math
\sup_P{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(
\|\Delta_QZ\|_{\mathcal H}^2+|e_Q|^2
\right)\mathcal R(Q)
\le C_N(u_0)+R_{legal}(P).
\tag{6}
```

Selector changes must not be hidden in `Z`.  They have to be paid by a stopped
reselection measure:

```math
\sum_{Q\subseteq P}|\Delta_Q^{lab}\log f_{sel}|^2\mathcal R(Q)
\le C_N(u_0)\mathcal R(P)+R_{stop}(P)+R_{legal}(P).
\tag{7}
```

Here `R_stop` is legal only if it is not the future selected descendant tail in
disguise.

## 4. Consumer implication

Once `(5)`--`(7)` are proved from original-history material ledgers, the stopped
martingale John--Nirenberg step gives a reverse-Holder gain:

```math
\int_P f^{1+\varepsilon}\,d\mathcal R
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{8}
```

That gain is the missing strict exponent.  It converts the selected density from
raw first-moment control to strict good-lambda control and breaks the half-tail:

```math
f\in RH_{1+\varepsilon}(d\mathcal R)
\Longrightarrow
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{9}
```

Thus `(8)` implies `StoppedPrimitivePLSStrictHalfBarrierBreak.A` in the same
stopped setting.

## 5. Refined theorem

The next nonconsumer theorem is:

```text
StoppedSourceCarrierAndPaidReselection.A
```

Statement: on the stopped retained same-material tree, prove both an
original-history visible/silent/exchange source-carrier square-function bound
and a paid reselection stopping measure, as in `(6)` and `(7)`, without defining
either from the future selected action tail.  The fixed-carrier stochastic
exponential lemma is then a consumer step to reverse Holder.

This is a better attack than pure descent because it targets the actual missing
feature: a strict exponent.  It is also sharper than raw Hilbert freshness,
because the countermodel can be fresh in raw Hilbert geometry while still
failing selected critical summability.  The carrier must be selector-correct and
root-bounded in the selected-density geometry.

## 6. Remaining branch meaning

Failure of the source-carrier square-function bound is the reused-core branch in
Hilbert form: one original material ancestry line carries infinite source-origin
root energy without a legal original-history charge.

Failure of the reselection stopping bound is the shrinking/reselecting-core
branch: selected mass restarts through smaller stopped windows at summable raw
cost.

Closing those two producer bounds gives the reverse-Holder exponent, hence the
strict half-barrier break, hence the current Gold producer.