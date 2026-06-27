---
theorem_id: forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627
status: square-packing-reduced-to-lifted-martingale-difference-split-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedAffineQuotientTransitionSquarePacking.A
  - AffineQuotientTransitionLocalization.A
  - CriticalFreshSourceTentCarleson.A
refined_hinge:
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - StoppedLiftedTransitionBesselCarleson.A
  - AffineTransitionPredictableOrthogonalSplit.A
  - InheritedAQRepToPrimitivePLSRecordReturn.A
  - ResetLocalAffineBandToCriticalJumpCarrier.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-quotient-transition-square-packing-branch-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-root-reserve-authority-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-kernel-classification-and-branch-refinement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-overlap-packing-no-upgrade-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
effect: >-
  Directly attacks the square-packing theorem below affine quotient transition
  localization. The martingale/Bessel route is the right proof species, but
  the current notes do not yet install the lifted predictable/innovation split
  that makes affine transition pieces orthogonal before selected positive
  projection. The next nonduplicate hinge is the stopped lifted martingale
  difference theorem, with inherited predictable pieces routed to record/return
  and reset innovations routed to critical jump carriers.
---

# Stopped affine quotient transition square-packing direct attack

The transition pile cannot be closed by another bounded-overlap estimate. The
better route is to split each affine transition before terminal positive
selection into a predictable inherited piece and a genuinely fresh innovation.

The target square-packing theorem from the previous synthesis is

```math
\int H_w(t)
\left\|
\sum_{e\in\mathscr E(P)}
\mathcal C_\theta[Z_e](t)
\right\|_{L_x^2}^2dt
\le
C\sum_{e\in\mathscr E(P)}
\int H_w(t)\|\mathcal C_\theta[Z_e](t)\|_{L_x^2}^2dt
+R_{legal}(P).
\tag{1}
```

Here the edges are the stopped affine transition edges under a retained root
`P`. They contain inherited parent-state repetitions and genuine reset jumps.

## 1. Direct martingale attempt

Use the lifted same-packet Hilbert space already suggested by the
multicurrency compensator notes:

```math
\mathcal H_{lift}
=
\mathcal H_{vis}
\oplus
\mathcal H_{sil}
\oplus
\mathcal H_{ex}.
\tag{2}
```

For each stopped transition edge `e=Q -> Q'`, try to write

```math
\mathcal C_\theta[Z_e]
=
B_e+D_e+R_e.
\tag{3}
```

The intended roles are:

```text
B_e = parent-predictable inherited affine component;
D_e = orthogonal innovation in the lifted visible/silent/exchange packet;
R_e = legal carry/reselection/collar/soft residual.
```

If `D_e` is adapted to the stopped transition filtration and orthogonal to the
parent affine span in `L^2(H_w dt dx; H_lift)`, then the square part is a
Bessel theorem:

```math
\int H_w
\left\|\sum_eD_e\right\|_{L_x^2}^2dt
\le
C\sum_e\int H_w\|D_e\|_{L_x^2}^2dt
+R_{legal}(P).
\tag{4}
```

The predictable part is not squared by geometry. It is routed to the inherited
record/return branch:

```math
\sum_e B_e
\leadsto
\sum_{\mathcal A}
\sum_{\kappa\in\mathcal K_N}
\left(
\operatorname{Rec}_\infty(\Psi_{\kappa,\mathcal A})
+V_-^{return}(\Psi_{\kappa,\mathcal A})
\right).
\tag{5}
```

The reset innovation part is routed to the critical reset carrier:

```math
\sum_e\int H_w\|D_e\|_{L_x^2}^2dt
\leadsto
\sum_{Q\to Q'}J_{crit}(Q\to Q')
+R_{legal}(P).
\tag{6}
```

Equations `(4)` through `(6)` would prove
`StoppedAffineQuotientTransitionSquarePacking.A` and then feed the already
identified branch theorems:

```text
InheritedAQRepToPrimitivePLSRecordReturn.A
+
ResetLocalAffineBandToCriticalJumpCarrier.A.
```

## 2. Why the proof is not installed yet

The current sources install the right habitat but not the projection theorem.

The stopped-compensator synthesis has the lifted packet
`\mathcal H_{lift}` and a desired root square-function estimate for
`\Delta_Q Z`. The selected-root-reserve synthesis names the producer as the
original-history selected log-amplification Carleson theorem. The native-birth
countertest separates raw Hilbert nonreuse from selected-scale charge. These
are necessary inputs.

They do not yet prove that the affine transition pieces `Z_e` are martingale
differences after subtracting the parent-predictable affine component. The
missing issue is not notation. It is the order of operations:

```text
orthogonal lifted packet first,
then scalar selected positive readout.
```

If scalar positive selection is taken first, signed orthogonality can be
destroyed. The bounded-overlap note already gives the scale obstruction: a
heat-scale stack can have finite physical/raw cost and infinite selected
critical cost. The affine transition synthesis gives the algebraic obstruction:
on one laminar chain, collinear pieces satisfy

```math
f_k=M^{-1/2}g,\qquad 1\le k\le M,
\tag{7}
```

so

```math
\sum_{k=1}^M\|f_k\|_2^2=\|g\|_2^2,
\qquad
\left\|\sum_{k=1}^Mf_k\right\|_2^2=M\|g\|_2^2.
\tag{8}
```

Laminarity, bounded overlap, and raw fresh nonreuse do not prevent `(7)` after
the affine quotient has been read out as selected positive scalar mass.

## 3. The exact missing theorem

The next hinge should be:

```text
StoppedAffineTransitionLiftedMartingaleDifference.A.
```

Statement form:

For every retained stopped root `P`, there is a stopped transition filtration
`\mathcal F_e`, a parent affine span `\mathcal P_{e^-}` in
`L^2(H_w dt dx; H_lift)`, and a legal decomposition

```math
\mathcal C_\theta[Z_e]
=
B_e+D_e+R_e
\tag{9}
```

such that

```math
B_e=\Pi_{\mathcal P_{e^-}}\mathcal C_\theta[Z_e],
\qquad
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e],
\tag{10}
```

with

```math
\mathbb E[D_e\mid\mathcal F_{e^-}]=0
\quad\text{or equivalently}\quad
D_e\perp\mathcal P_{e^-}
\tag{11}
```

in the lifted weighted Hilbert space before positive readout, and

```math
\sum_e\int H_w\|R_e\|_{L_x^2}^2dt
\le R_{legal}(P).
\tag{12}
```

The theorem must also prove two routing clauses:

```text
predictable clause:
  sum_e B_e routes to PrimitivePLSSignedChannelDecomposition.A
  and StoppedNegativeReturnOrientedPayment.A;

innovation clause:
  sum_e ||D_e||^2 routes to LogScaleResetDerivativeCarrierBound.A
  and CriticalWeightedParentChildResetCarleson.A.
```

With those clauses, the immediate consumer theorem is:

```text
StoppedLiftedTransitionBesselCarleson.A.
```

It is the Bessel/Carleson embedding that turns `(11)` into `(4)`.

## 4. Bellman alternative

A Bellman decrement route is possible only if the potential is the squared
lifted unexplained affine mass:

```math
\mathcal B(Q)
\simeq
\left\|
(I-\Pi_{\mathcal P_Q})Z_Q
\right\|_{\mathcal H_{lift}}^2
+\text{record/return storage}.
\tag{13}
```

Then each transition would either decrease unexplained lifted mass or transfer
to record/return storage. This is morally equivalent to the predictable/
innovation split. Without the orthogonal projection in `(10)`, the Bellman
functional would only rename the same missing theorem.

So the direct route remains martingale/Bessel first. Bellman is useful as a
proof technology for the same split, not as a separate bypass.

## Result

The square-packing wall has been narrowed. The repo has the right ingredients:
lifted visible/silent/exchange packets, original-history root reserve language,
raw nonreuse, and record/return/reset branch currencies. It does not yet have
the transition-level theorem that makes affine pieces martingale innovations.

The next nonduplicate theorem is:

```text
StoppedAffineTransitionLiftedMartingaleDifference.A.
```

Prove that theorem, then `StoppedAffineQuotientTransitionSquarePacking.A`
follows by Bessel/Pythagoras plus the inherited and reset routing clauses.
