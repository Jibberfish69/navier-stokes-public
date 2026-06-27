---
theorem_id: forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627
status: gold-reduced-to-stopped-stress-test-frame-bound-no-free-reset-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedDivergenceFreeStressTestBessel.A
  - StoppedStressTestParentSubtractedInnovationAdmission.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - OriginalParticipationStorageCoercivity.A
  - NativeBirthChargePacking.A
equivalent_operator_form:
  - StoppedStressTestBesselFrameBound.A
  - ParentSubtractedQRNoFreeReset.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
---

# Stopped stress-test Bessel frame and no-free-reset reduction

The pressure cancellation places the problem in the right Hilbert space.  The
remaining Gold content is the Bessel frame bound for the selected stopped
stress-test gradients.  Equivalently, the stopped selector must not read the
same stress direction down infinitely many descendants without producing a
fresh orthogonal increment or a paid reset/reselection event.

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

Then the stopped stress-test estimate is exactly

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

which is the Hilbert Bessel inequality

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
This is the exact theorem behind the stress-test route.

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

This is the Hilbert-space version of the half-tail obstruction: raw attachment
to the original current is not enough; the selected stopped test directions
must be square-packed in the critical original-history metric.

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
direction being read again.  Gold closes only when every such inherited
component is routed to one of the already named paid ledgers:

```text
fixed-core return/BV,
selector or order-lock drift,
stop/legal loss,
reset/reselection charge.
```

Thus the no-free-reset theorem is:

```text
ParentSubtractedQRNoFreeReset.A.
```

Every retained stopped test vector \(a_Q\) admits `(8)` before selected scalar
readout; the fresh innovations satisfy `(10)`; and any persistent inherited
same-direction reuse is parent-known return/record or a paid low-pivot,
reset/reselection, selector-frame, order-lock, stop, or legal event.

## 4. Why this is the exact Gold content

Putting \(G=2\nu S_A\) in `(4)` gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C\nu^2\int_{\operatorname{Hist}(P)}|S_A|^2+dR+dStop.
\tag{11}
```

The material energy law bounds the right side from original data.  The selected
Gold chain then follows by the already installed consumers: stopped current
square packing, fixed return/reset as derivative-BV faces, selected log
amplification, parent drop, finite full material clock, and \(H^s\)
continuation.

The real proof burden is therefore not pressure cancellation, and not raw
viscous energy.  It is `(5)` for the selected stopped test gradients in the
original participation metric, plus the admission statement that parent-
subtracted QR catches all repeated directions before selected readout.

## 5. Current status

This note is a reduction, not a closure.  It identifies the Gold-producing
theorem as

```text
StoppedStressTestBesselFrameBound.A
+ ParentSubtractedQRNoFreeReset.A
```

in the selected-critical original participation metric.  It is equivalent to
the current weighted native reserve formulation: repeated same-direction tests
must be inherited/paid, and fresh directions must be orthogonal enough to obey
the frame bound `(5)`.

Gold remains open until this Bessel-frame/no-free-reset theorem is proved from
the original Navier-Stokes material law and stopped selector construction.
