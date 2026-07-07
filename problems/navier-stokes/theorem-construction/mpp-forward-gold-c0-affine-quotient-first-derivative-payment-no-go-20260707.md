---
theorem_id: forward-gold-c0-affine-quotient-first-derivative-payment-no-go-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / affine quotient / first-derivative payment boundary
status: checked-no-go-first-derivative-payment-for-nonderivative-affine-quotient
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - NonDerivativeAffineQuotientFirstDerivativePayment.NoGo
  - AnnounceableResetDerivativeRepresentation.A
  - PersistentAffineQuotientRouting.A
  - PredictableActiveWeightTransitionCarleson.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-active-weight-transition-producer-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-quotient-transition-localization-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-pure-local-xcomm-storage-no-go-20260707.md
completion_truth: >-
  Checked no-go and strict boundary. The five-thread physical synthesis may
  force a marginal relay into a deepening irreversible tower, but a finite-depth
  or Poincare-style first-derivative payment cannot by itself pay the surviving
  non-derivative affine quotient. The harmonic Cauchy step pays only reset
  pieces that have already been represented as announced parent-history
  derivative/turnstile/exchange/covector averages. The affine quotient contains
  affine scale modes seen by the selected moment functional and invisible to a
  first-derivative payment after the parent mode is not removed. Localizing such
  a mode creates boundary/turnstile/covector/exchange cost, which is exactly the
  missing bill-currency representation theorem rather than a free proof. Thus
  the remaining theorem is not uniform finite-depth termination alone; it is
  persistent affine-quotient routing to record/return, second-order exactness,
  announced derivative motion, non-affine pressure-viscous signed commutator
  coercivity, or a typed legal/stop/Pack/Part/Field exit. No c_0 closure is
  claimed.
---

# First-derivative payment cannot pay the non-derivative affine quotient

## 1. Same physical object

The current \(c_0\) shrink map has lowered the physical synthesis to the
surviving affine quotient

\[
c_F^{fresh}(t)=\int_I\theta_I(\sigma)Z^{fresh}(\sigma,t)\,d\sigma .
\tag{AQ1.1}
\]

The tempting proof is a finite-depth / Poincare / first-derivative payment:
once a fresh child interval is announced, try to charge `(AQ1.1)' by
scale-motion of the parent history,

\[
\partial_\sigma Z,\qquad
\operatorname{turnstile}_\sigma,\qquad
\operatorname{exchange}_\sigma,\qquad
\operatorname{covector}_\sigma .
\tag{AQ1.2}
\]

That proof is valid only for pieces already represented as derivative averages.
It does not pay the non-derivative affine quotient.

## 2. What the harmonic Cauchy step really proves

For an announced interval \(I_e\), the harmonic active weight is

\[
H_{I_e}(t)= {|I_e|^2\over \int_{I_e}w(\sigma,t)^{-1}\,d\sigma }.
\tag{AQ1.3}
\]

If the reset increment is already written as

\[
D_e(t)= {1\over |I_e|}\int_{I_e}G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{AQ1.4}
\]

then Cauchy--Schwarz gives

\[
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}w(\sigma,t)\|G_e(\sigma,t)\|^2\,d\sigma
+R_e^{legal}(t).
\tag{AQ1.5}
\]

This is the installed derivative-exact reset consumer. It is a true payment
after the representation `(AQ1.4)' is supplied.

The point is the order: `(AQ1.5)' starts after the fresh increment has already
entered the derivative/turnstile/exchange/covector form. It does not create that
form for `(AQ1.1)'.

## 3. Kernel test

Freeze one scale interval \(I\) and one spatial packet direction \(g\) with
\(\|g\|_{L_x^2}=1\). Let

\[
Z^{fresh}(\sigma,t,x)=a(t)g(x)
\qquad\text{for }\sigma\in I.
\tag{AQ1.6}
\]

This is the affine-mode test: it has no scale derivative inside the interval,

\[
\partial_\sigma Z^{fresh}=0,
\tag{AQ1.7}
\]

and in the frozen quotient model has no turnstile, exchange, or covector
motion. But the affine quotient can be nonzero:

\[
c_F^{fresh}(t)=a(t)g\int_I\theta_I(\sigma)\,d\sigma
\tag{AQ1.8}
\]

or, for the first affine moment, the same test uses
\(Z^{fresh}=a(t)(\sigma-\sigma_I)g\) and the appropriate affine moment of
\(\theta_I\).

Therefore any estimate of the form

\[
H_I(t)\|c_F^{fresh}(t)\|_{L_x^2}^2
\le
C\int_I w(\sigma,t)
\bigl(
\|\partial_\sigma Z^{fresh}\|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\bigr)\,d\sigma
+R^{legal}
\tag{AQ1.9}
\]

is false unless the affine mode has first been removed into a parent-predictable
record/return component, charged at the interval boundary, converted into a
higher-order exactness term, or routed out.

This is the first-derivative analogue of the pure-local \(X_{comm}\) no-go:
the local differential payment sees motion away from the affine mode; the
selected affine quotient is exactly the mode that remains.

## 4. Boundary localization is the missing bill, not a free fix

One might try to make `(AQ1.6)' fresh by cutting it off sharply at the ends of
\(I\). That does not prove `(AQ1.9)' for free. If \(|I|=L\), amplitude
\(|a|^2\), and the transition layer is comparable to \(L\), the boundary
derivative cost has size

\[
\int_I|\partial_\sigma Z^{fresh}|^2\,d\sigma
\sim {|a|^2\over L}.
\tag{AQ1.10}
\]

The selected active weight is \(H_I\sim L^{-1}\) in the dyadic case, so

\[
H_I\|c_F^{fresh}\|^2
\sim {|a|^2\over L}.
\tag{AQ1.11}
\]

The boundary derivative can pay the affine quotient only when that boundary /
turnstile / covector / exchange motion is admitted as a same-parent bill before
readout. This is not uniform finite-depth termination by itself. It is exactly
the `AnnounceableResetDerivativeRepresentation.A' / bill-currency bridge.

## 5. Half-tail form of the obstruction

The critical counterprofile from the active-weight notes survives this test.
For dyadic intervals \(L_\ell=2^{-\ell}\), choose

\[
\|D_\ell\|^2={2^{-\ell}\over \ell+1},
\qquad
H_{I_\ell}\simeq 2^\ell .
\tag{AQ1.12}
\]

Then the raw innovation mass is finite,

\[
\sum_{\ell\ge1}\|D_\ell\|^2
=
\sum_{\ell\ge1}{2^{-\ell}\over \ell+1}<\infty,
\tag{AQ1.13}
\]

while the selected active-weighted service diverges,

\[
\sum_{\ell\ge1}H_{I_\ell}\|D_\ell\|^2
\simeq
\sum_{\ell\ge1}{1\over \ell+1}
=\infty.
\tag{AQ1.14}
\]

A first-derivative proof removes this profile only after the \(D_\ell\) have
been represented by admitted derivative/current averages with bounded overlap.
The non-derivative affine quotient is precisely the part for which that
representation is missing.

## 6. Consequence for the c0 goal

The following theorem is refuted as a proof mechanism:

\[
\texttt{FirstDerivativeAffineQuotientPayment.A}.
\tag{AQ1.15}
\]

The correct remaining statement is the dichotomy

\[
\begin{gathered}
\texttt{PersistentAffineQuotientRouting.A}:\\
\text{every non-derivative affine quotient survivor is parent-predictable}
\\
\text{record/return, or is converted before readout into derivative,}
\\
\text{turnstile, exchange, covector, second-order exactness,}
\\
\text{non-affine pressure-viscous bill, or typed exit.}
\end{gathered}
\tag{AQ1.16}
\]

Together with the already installed derivative Cauchy consumer, this is the
sharp lower form of the affine-transition branch:

\[
\texttt{AnnounceableResetDerivativeRepresentation.A}
+
\texttt{PersistentAffineQuotientRouting.A}
\Longrightarrow
\texttt{PredictableActiveWeightTransitionCarleson.A}.
\tag{AQ1.17}
\]

The five-thread physical synthesis is therefore correctly read as a route to
this bill-currency/routing theorem. It does not close \(c_0\) through uniform
finite-depth termination alone.
