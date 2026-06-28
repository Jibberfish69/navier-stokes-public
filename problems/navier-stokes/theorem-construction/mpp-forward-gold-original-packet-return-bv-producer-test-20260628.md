---
theorem_id: forward-gold-original-packet-return-bv-producer-test-20260628
status: return-bv-reduced-to-weighted-square-root-geometry-reserve-admission-lower-bound-still-needed-for-linear-bv
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedNegativeScaleReturnCharge.A
  - StoppedPredictableRootGeometryCompensator.A
  - OriginalHistorySelectedAmplificationBV.A
  - SelectedGeneratorStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-core-root-upcrossing-bv-payment-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-core-scale-potential-derivative-bv-route-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-participation-storage-direct-derivation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
completion_truth: partial-not-mpp-closed
effect: >-
  Tests the exact original-packet source for finite negative return on fixed
  repeated cores.  The fixed score P_R = Gamma_R Z^S gives a noncircular
  derivative identity, and weighted Cauchy pays the harmonic square return by
  the original routed-current/root-geometry reserve.  This proves that return
  is not an independent scalar signal.  It also corrects the raw-BV wording:
  linear negative variation follows only after the selected admission supplies
  a lower bound or bounded inverse-weight length.  The remaining producer is
  the selected root-geometry reserve / admission theorem, not a new projection
  or Bessel estimate.
---

# Original-packet return BV producer test

The fixed-core branch has a concrete original-packet source: the fixed stopped
score

\[
P_R=\Gamma_R Z^S .
\tag{1}
\]

Here \(\Gamma_R\) is chosen from parent/root history before the child selected
readout, and \(Z^S\) is the stopped routed carrier/current coordinate of the
same pressure-viscosity-incompressibility-velocity packet.

The physical point is simple.  If the same material core is read again, the
record can only reset by moving the same stopped score.  Moving that score costs
the original routed current, frame, covector, exchange, connection, or legal
motion.  The return is not a detached scalar oscillation.

## 1. Derivative identity

On a fixed stopped core,

\[
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S .
\tag{2}
\]

The first term is the routed carrier derivative.  The second term is the
parent-known selector/frame/connection motion:

\[
|\partial_\sigma P_R|
\le
C\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
+|\operatorname{conn}_\sigma|
\right)
+Err_{\rm legal}.
\tag{3}
\]

Thus the original packet supplies a signed derivative control for the return
score.  No future selected tail is used in `(1)`--`(3)`.

## 2. What the original metric actually pays

Let \(I\) be one stopped return interval on the fixed core and write

\[
\Delta_I^-P_R
=
[P_R(\sigma_-)-P_R(\sigma_+)]_+ .
\tag{4}
\]

By absolute continuity and weighted Cauchy--Schwarz,

\[
(\Delta_I^-P_R)^2
\le
\left(\int_I w^{-1}\,d\sigma\right)
\left(\int_I w|\partial_\sigma P_R|^2\,d\sigma\right).
\tag{5}
\]

Equivalently, with the harmonic active weight

\[
H_I={|I|^2\over\int_Iw^{-1}\,d\sigma},
\tag{6}
\]

one has

\[
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
\int_I w|\partial_\sigma P_R|^2\,d\sigma .
\tag{7}
\]

Using `(3)`,

\[
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C\int_Iw\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)d\sigma
+R_I^{legal}.
\tag{8}
\]

For a stopped laminar family of fixed-core return intervals, bounded overlap
gives

\[
\sum_{I\subset P}
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}(P)+Stop(P).
\tag{9}
\]

This is the noncircular original-packet return payment available from the fixed
score.

## 3. Why raw BV was the wrong final currency

The scalar statement

\[
\sum_I\Delta_I^-P_R\le C_N(u_0)+R_{\rm legal}+Stop
\tag{10}
\]

does not follow from `(9)` alone.  Weighted square control permits infinitely
many tiny oscillations.  That is physically correct: tiny unwinds of the stopped
score are tiny material events unless the selector promotes them into retained
selected action.

To recover the linear BV statement `(10)`, one needs one of the admission
clauses:

\[
\Delta_I^-P_R\ge \eta |I|
\quad\text{on retained selected returns,}
\tag{11}
\]

or

\[
\sum_I\int_Iw^{-1}\,d\sigma
\le C_N\mathcal R(P)+R_{\rm legal}+Stop,
\tag{12}
\]

or the equivalent selected normalization saying that retained returns are
counted in the harmonic square currency of `(9)`.

With `(11)`, `(7)` gives

\[
\sum_I\Delta_I^-P_R
\le
\eta^{-1}
\sum_I
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
+R_{\rm legal},
\tag{13}
\]

and then `(9)` proves finite linear return BV.  With `(12)`, Cauchy in the sum
gives the same conclusion after the usual root normalization.

## 4. Consequence

The fixed-score identity proves that negative return is not an independent
branch.  It is paid by the same original root-geometry square reserve:

\[
\int w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right).
\tag{14}
\]

The unresolved theorem is the selected admission/root-reserve producer that
turns `(14)` into a finite original-data bound for all retained returns:

\[
\int_{\operatorname{Hist}(P)}w|G_{\rm root}^{new}|^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{15}
\]

This is the same object already named as
`StoppedPredictableRootGeometryCompensator.A`,
`OriginalHistorySelectedAmplificationBV.A`, and
`SelectedGeneratorStorageCoercivity.A`.

Thus the next target is not raw scalar BV.  The next target is the
scale-weighted original root reserve plus selected admission lower bound that
makes every retained return visible in the harmonic square currency `(9)`.
