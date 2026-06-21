---
theorem_id: forward-gold-full-precauchy-remainder-fourbody-reduction-criterion-20260621
status: reduction-criterion-proved-finite-remainders-paid-terminal-zeno-production-open
logical_landing_node: full_precauchy_remainder_fourbody_reduction_criterion
edge_effect: "Assembles the full localized positive pre-Cauchy remainder branch inside the upgraded four-body loop. The full carrier reduces to the main trilinear carrier plus legal/charged terms once projected/cutoff/legal exits, positive pair-weight defects, finite donor trees, and entrance leaves are paid. The only remaining unpriced remainder is the infinite terminal Zeno donor chain carrying inherited positive native source. That branch closes forward only by endpoint UI, source-square/no-waste, critical-density/CKN, signed-polar saturation, or rigid Zeno profile production; otherwise, after same-witness admission and service certification, the terminal source atom is a CM Part/Field face failure. This proves the reduction criterion, not the forward production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-main-carrier-consumer-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-remainder-zeno-or-cm-face-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-remainder-depletion-selected-window-direct-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-source-residue-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Pre-Cauchy Remainder Four-Body Reduction Criterion

Date: 2026-06-21

## 0. Aim

The native bridge test still listed full pre-Cauchy remainder reduction as one
surviving supplement.  This note assembles the exact reduction.

It proves:

\[
\boxed{
\text{full positive pre-Cauchy carrier}
\le
\text{main trilinear carrier}
+
\text{legal/charged finite remainders}
+
\text{terminal Zeno donor-chain remainder.}
}
\tag{FPR.1}
\]

The finite remainders are not the live wall after their named ledgers are
installed.  The terminal Zeno donor-chain remainder is the live wall.

## 1. Full carrier and main carrier

The full localized positive pre-Cauchy carrier on a selected terminal family is

\[
\mu_{src,N}^+(\mathcal F_N)
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+\,dxdt .
\tag{FPR.2}
\]

The split is

\[
\mathcal N_{preCauchy}^{loc}
=
\partial_t\mathcal E_P
+
\mathcal D_P
+
\operatorname{div}_\Phi\mathcal J_P
+
\mathcal R_P .
\tag{FPR.3}
\]

After legal pressure, cutoff, commutator, and boundary terms are separated, the
main interior selected remainder is

\[
\mathcal R_P^{main}
=
\chi_P
\left\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\right\rangle .
\tag{FPR.4}
\]

Equivalently,

\[
\left[\mathcal R_P^{main}\right]_+
=
\chi_P|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+.
\tag{FPR.5}
\]

The main carrier is now covered by the existing supplement criteria:
amplitude/Field, source-square/no-waste, critical-density/CKN,
signed-polar saturation, or rigid source-residue production.

## 2. Finite remainder decomposition

The full carrier reduces to main plus remainder in the form

\[
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\le
C\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal R_P^{main}
\right]_+
+
K_{\rm fin}
+
K_{\rm zeno}
+
R_{\rm legal}
+o_N(1).
\tag{FPR.6}
\]

The finite remainder \(K_{\rm fin}\) is paid under the installed finite-graph
package

\[
\text{ProjectedCutoffLedger.A}
+
\text{LegalBoundaryLedger.A}
+
\text{PositivePairWeightDefectCharge.A}
+
\text{LocalDonorBalance.A}
+
\text{EntranceLeafDecay.A}.
\tag{FPR.7}
\]

The roles are exact:

\[
\boxed{
\text{projection/cutoff/collar/pressure/boundary exits}
\longrightarrow
R_{\rm legal};
}
\tag{FPR.8}
\]

\[
\boxed{
\text{one-sided pair-weight mismatch}
\longrightarrow
\text{PositivePairWeightDefectCharge.A};
}
\tag{FPR.9}
\]

\[
\boxed{
\text{finite internal donor paths}
\longrightarrow
\text{LocalDonorBalance.A plus telescoping depletion;}
}
\tag{FPR.10}
\]

\[
\boxed{
\text{fixed preterminal entrance leaves}
\longrightarrow
\text{EntranceLeafDecay.A.}
}
\tag{FPR.11}
\]

So \(K_{\rm fin}\) is not the live branch after `(FPR.7)` is in force.

## 3. Surviving terminal Zeno branch

The surviving unpriced branch is an infinite same-fluid terminal donor chain

\[
\cdots\to P^{-2}\to P^{-1}\to P^0,
\qquad
r_m\downarrow0,
\tag{FPR.12}
\]

carrying inherited positive native pre-Cauchy source.

Parabolic rescaling gives

\[
u^{(m)}(y,s)
=
r_m u(x_m+r_my,t_m+r_m^2s),
\qquad
p^{(m)}(y,s)
=
r_m^2p(x_m+r_my,t_m+r_m^2s),
\tag{FPR.13}
\]

and compactness can produce

\[
(u_*,p_*,\mu_*^{src})
\tag{FPR.14}
\]

with positive source residue

\[
\mu_*^{src}(Q_1^-)\ge c_0
\tag{FPR.15}
\]

or a terminal time-face atom.

This is exactly `NoFreeTerminalZenoDonorChain.A`, not a new independent
pre-Cauchy remainder theorem.

## 4. Forward closure alternatives

The terminal Zeno remainder closes forward if one of the already assembled
same-carrier production theorems is proved:

\[
\boxed{
\text{unweighted source-square/no-waste reserve;}
}
\tag{FPR.16}
\]

\[
\boxed{
\text{unweighted critical-density/CKN reserve or terminal-tail depletion;}
}
\tag{FPR.17}
\]

\[
\boxed{
\text{production of }dN_{\rm miss}=0
\text{ or a legal/charged polar defect;}
}
\tag{FPR.18}
\]

\[
\boxed{
\text{MinimalZenoProfileProduction.A.}
}
\tag{FPR.19}
\]

Each of these is a real forward-gold supplier because it removes or pays the
terminal Zeno remainder on the same selected carrier.

## 5. CM pass-or-exit fallback

If the forward endpoint modulus fails, the time marginal of the selected source
has a terminal atom after subsequence:

\[
\mu_m\rightharpoonup\mu,
\qquad
\mu(\{0\})>0.
\tag{FPR.20}
\]

Finite \(L^1_s\) mass permits this, as shown by

\[
g_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{FPR.21}
\]

After same-witness CM admission and service certification, the terminal atom
violates the required service modulus.  Therefore it lands as

\[
\boxed{
\neg Part_{N,Q}
\quad\text{or}\quad
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{FPR.22}
\]

This is not a forward-gold anti-atom estimate.  It is the CM pass-or-exit
reading of the branch when the forward endpoint modulus is not produced.

## 6. Four-body role

The full pre-Cauchy remainder supplement belongs to the Body-II carrier
identification edge and the Body-II-to-Body-III retention edge.

Body II supplies the localized source/current split.  The main carrier is
already isolated in `(FPR.4)`.  The finite remainders are paid by `(FPR.7)`.

Body III must retain the terminal Zeno source residue as the same selected
carrier if it survives.  Failure of forward depletion then becomes a retained
terminal atom or a compact source-residue package.

Body IV and Body I only become relevant again after the Zeno branch is paid by
rigidity, no-waste, critical density, source-square, or polar saturation.

So the full pre-Cauchy remainder is not a fifth supplier.  It is a reduction to
the same terminal Zeno production theorem.

## 7. Current state

The full pre-Cauchy remainder reduction is proved as a criterion:

\[
\boxed{
K_{\rm fin}\text{ paid}
\quad\Longrightarrow\quad
\text{full remainder}
\le
\text{main carrier}
+
\text{terminal Zeno source remainder}
+
\text{legal/charged terms.}
}
\tag{FPR.23}
\]

The forward production theorem is still open:

\[
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}
}
\tag{FPR.24}
\]

equivalently, one of `(FPR.16)`--`(FPR.19)` on the same selected carrier.

Thus the full pre-Cauchy remainder branch has been exhausted at this
resolution: finite pieces are paid by named ledgers, and the infinite terminal
Zeno piece is the same unweighted reserve / polar saturation / rigid profile
production wall already exposed by the other supplements.
