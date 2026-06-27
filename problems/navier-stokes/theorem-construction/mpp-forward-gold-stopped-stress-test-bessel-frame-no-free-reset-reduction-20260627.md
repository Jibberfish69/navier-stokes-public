---
theorem_id: forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627
status: raw-frame-bound-superseded-by-parent-subtracted-no-free-reset
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedDivergenceFreeStressTestBessel.A
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - SelectedActionParentSubtractedCurrentAdmission.A
  - StoppedStressTestParentSubtractedInnovationAdmission.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - OriginalParticipationStorageCoercivity.A
  - NativeBirthChargePacking.A
equivalent_operator_form:
  - ParentSubtractedStoppedStressTestBesselFrameBound.A
  - ParentSubtractedQRNoFreeReset.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
---

# Stopped stress-test Bessel frame and no-free-reset reduction

The pressure cancellation places the problem in the right Hilbert space.  The
Gold object is not the raw Bessel frame bound for the selected stopped
stress-test gradients.  The selected child action is read after subtracting the
parent-known inherited projection.  The raw repeated direction is parent
current; only the fresh residual or a changed projection enters child action.

## 1. Hilbert-space form of the load-bearing estimate

For a stopped parent \(P\), set

```math
\mathfrak H_P
=
L^2_{\rm sym,tr}
\bigl(\operatorname{Hist}(P)\bigr),
\qquad
\langle G,H\rangle_P
=
\int_{\operatorname{Hist}(P)}G:H.
\tag{1}
```

The divergence-free lift \(v_Q\) kills the pressure bulk term, so only the
trace-free symmetric gradient matters.  Define the selected stopped test vector

```math
a_Q
=
\sqrt{\mathcal R(Q)}\,
1_{\operatorname{Hist}(Q)}
P_{\rm sym,tr}\nabla_Av_Q
\in\mathfrak H_P.
\tag{2}
```

The raw stress-test estimate would be

```math
\sum_{Q\subset P}
\mathcal R(Q)
\left|
\int_{\operatorname{Hist}(Q)}
G:\nabla_Av_Q
\right|^2
\le
C\int_{\operatorname{Hist}(P)}|G|^2+dR+dStop
\tag{3}
```

which would be the Hilbert Bessel inequality

```math
\sum_{Q\subset P}
|\langle G,a_Q\rangle_P|^2
\le
C\|G\|_{\mathfrak H_P}^2
+dR+dStop.
\tag{4}
```

Equivalently,

```math
\sum_{Q\subset P}a_Q\otimes a_Q
\le
C I_{\mathfrak H_P}
\tag{5}
```

as a positive operator on \(\mathfrak H_P\), modulo legal and stopping error.
That raw operator is not the Gold theorem.  It fails exactly when descendants
reuse the same parent stress direction.

## 2. The repeated-direction failure mode

The pressure cancellation and material energy identity do not imply `(5)`.
They only say the stress input \(G=2\nu S_A\) has finite \(L^2\) norm.  The test
family itself can still fail to be Bessel.

The sharp failure is repeated selection of nearly the same stress direction. If

```math
a_Q\approx a
\qquad
\text{for }M\text{ retained descendants},
\tag{6}
```

then with \(G=a\),

```math
\sum_Q|\langle a,a_Q\rangle_P|^2
\sim
M\|a\|_{\mathfrak H_P}^4,
\tag{7}
```

while the right side of `(4)` is only \(C\|a\|_{\mathfrak H_P}^2\).  Thus a
stopped route can fail Gold even though every individual readout is a legitimate
divergence-free stress test and the original stress has finite energy.

This is the Hilbert-space version of the inherited-direction obstruction: raw
attachment to the original current is not enough because raw repeated reads can
count the same parent current many times.

## 3. Parent-subtracted QR is the no-free-reset mechanism

Let the retained children be ordered by the parent-known stopped filtration and
let \(\mathcal P_{Q^-}\) be the span of already admitted fresh directions plus
the inherited parent current/score directions known before \(Q\)'s scalar
selected readout.  Split

```math
b_Q=\Pi_{\mathcal P_{Q^-}}a_Q,
\qquad
d_Q=(I-\Pi_{\mathcal P_{Q^-}})a_Q.
\tag{8}
```

The innovation vectors \(d_Q\) are orthogonal martingale differences in the
fixed parent Hilbert space:

```math
d_Q\perp \mathcal P_{Q^-}.
\tag{9}
```

Therefore the fresh part is automatically Bessel:

```math
\sum_Q|\langle G,d_Q\rangle_P|^2
\le
C_N\|G\|_{\mathfrak H_P}^2.
\tag{10}
```

The inherited part \(b_Q\) is not new production.  It is the same parent stress
direction being read again.  It becomes child action only when the parent-known
projection changes; that changed reuse is reset/angle/selector/frame/collar/
stop/legal variation in the same full-action ledger:

```text
fixed-core return/BV,
selector or order-lock drift,
stop/legal loss,
reset/reselection charge.
```

Every retained stopped test vector \(a_Q\) admits `(8)` before selected scalar
readout; the fresh innovations satisfy `(10)`; and any persistent inherited
same-direction reuse is parent-known return/record or a paid low-pivot,
reset/reselection, selector-frame, order-lock, stop, or legal event.

## 4. Why this is the corrected Gold content

Putting \(G=2\nu S_A\) in `(10)` gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^{new}|^2
\le
C\nu^2\int_{\operatorname{Hist}(P)}|S_A|^2+dR+dStop.
\tag{11}
```

The material energy law bounds the fresh side from original data.  Projection
change contributes the reset part

```math
\rho_i
=
\langle 2\nu S_A,(\Pi_i-\Pi_{i-1})a_i\rangle ,
\qquad
\sum_i|\rho_i|^2
\le
C(u_0)\operatorname{Var}^{reset}_P .
\tag{12}
```

Thus the full action is

```math
d\Omega_N
=
d\Omega_N^{fresh}
+d\Omega_N^{reset}
+d\Omega_N^{stop/legal}.
\tag{13}
```

The corrected Gold content is the no-free-reset storage law for `(13)`:

```math
d\mathscr A_N+c\,d\Omega_N\le dR_N,
\qquad
\mathscr A_N(t)\ge -C(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
\tag{14}
```

## 5. Current status

This note supersedes the raw frame-bound reduction.  The working operator is
\(\sum d_Q\otimes d_Q\), not \(\sum a_Q\otimes a_Q\).  Same-direction inherited
reuse is parent current, fresh residuals satisfy Bessel, and changed inherited
reuse is counted as reset variation inside the same full-action law.
