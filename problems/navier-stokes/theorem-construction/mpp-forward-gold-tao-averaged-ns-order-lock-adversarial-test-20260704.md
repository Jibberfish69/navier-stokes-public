---
theorem_id: forward-gold-tao-averaged-ns-order-lock-adversarial-test-20260704
status: adversarial-test-complete-current-gold-survives-only-in-strong-same-carrier-reading
route: forward-gold WLF.60 / ODP.91 early-row payment
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/claim-ladder.md
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-fluid-physical-story-entrance-order-consolidation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - Terence Tao, Finite time blowup for an averaged three-dimensional Navier-Stokes equation, arXiv:1402.0290
---

# Tao Averaged-NS Order-Lock Adversarial Test

This note runs the Tao averaged-Navier-Stokes barrier against the current Gold
WLF.60 / ODP.91 early-row object.

The test question is:

Does the order-locked full-packet carrier, same-packet overlap, and no-recount
first-admission rule survive in Tao's averaged equation?

If they survive, then the current Gold face is too abstract: Tao's averaged
equation has finite-time blowup while preserving the public energy/scaling
features, so that face cannot prove Navier-Stokes regularity.

If they fail, then Gold remains alive only through the exact structure that Tao's
averaging destroys.

## 1. Tao's barrier object

Write the projected Navier-Stokes equation as

\[
\partial_t u=\Delta u+B(u,u),
\qquad
B(u,v)=-\frac12\mathbb P\bigl((u\cdot\nabla)v+(v\cdot\nabla)u\bigr).
\]

Tao replaces \(B\) by an averaged bilinear operator \(\widetilde B\) whose
trilinear form is

\[
\langle \widetilde B(u,v),w\rangle
=
\mathbb E_\omega
\left\langle
B\bigl(
m_{1,\omega}(D)\operatorname{Rot}_{R_{1,\omega}}
\operatorname{Dil}_{\lambda_{1,\omega}}u,\,
m_{2,\omega}(D)\operatorname{Rot}_{R_{2,\omega}}
\operatorname{Dil}_{\lambda_{2,\omega}}v
\bigr),
m_{3,\omega}(D)\operatorname{Rot}_{R_{3,\omega}}
\operatorname{Dil}_{\lambda_{3,\omega}}w
\right\rangle .
\]

The averaging can be chosen so that

\[
\langle \widetilde B(u,u),u\rangle=0
\]

and the averaged equation obeys the same energy identity as Navier-Stokes, yet a
smooth solution blows up in finite time. Tao's conclusion is that any positive
regularity argument must use finer structure of the actual Navier-Stokes
nonlinearity than harmonic estimates plus the energy identity.

## 2. The current Gold object being tested

The current Gold object is not a generic critical estimate. The checked repo
spine says WLF.60 / ODP.91 is the early-row reading of one original-history
charge package:

\[
\Gamma_{\rm pre}
\]

on a common pre-readout event key. In the WLF.60 coordinate, that means the
lower fresh source and upper selected positive queue are read from the same
order-locked full-packet selected carrier, with same-packet overlap and selected
overrun tail paid on that carrier.

The local identity tested in the current physical-story note is

\[
C_P(z)=\pi_{\rm act/root}\Xi(z),
\]

where \(\Xi(z)\) is the stopped address, root-payment edge, and record interval
of the same primitive signed-height event before readout.

## 3. Compatibility test

### 3.1 Features that survive Tao averaging

These features are not enough for Gold:

- divergence-free state space;
- projected bilinear form;
- energy cancellation;
- critical scaling obstruction;
- square-function or Bessel-looking control;
- abstract martingale/predictable language;
- selected dyadic transfer or scale cascade;
- a no-recount rule stated only as bookkeeping on selected indices.

Tao's construction preserves enough of this public structure to blow up. Any
Gold proof that spends only these features fails the test.

### 3.2 Features that do not survive in the strong Gold sense

The strong Gold carrier does not survive Tao averaging as an actual
same-fluid object.

Reason: a single averaged interaction samples three separately transformed
copies of the field:

\[
m_1\operatorname{Rot}_{R_1}\operatorname{Dil}_{\lambda_1}u,\quad
m_2\operatorname{Rot}_{R_2}\operatorname{Dil}_{\lambda_2}u,\quad
m_3\operatorname{Rot}_{R_3}\operatorname{Dil}_{\lambda_3}w.
\]

Those three slots do not carry one canonical stopped address, root-payment edge,
and record interval in the original Navier-Stokes material history. The averaging
also keeps only a weighted subset of interactions chosen to facilitate the
blowup mechanism and suppress disruptive interactions. That can preserve energy
cancellation, but it does not preserve the original pressure-viscosity-
incompressibility packet as one parent object before selected readout.

Thus the same-carrier identity

\[
C_P(z)=\pi_{\rm act/root}\Xi(z)
\]

is not functorial under Tao averaging. It is an extra Navier-Stokes structure,
not an abstract consequence of criticality, cancellation, or martingale
square-packing.

Tao also isolates this kind of escape route explicitly: arguments using
specific pointwise structure of the Navier-Stokes nonlinearity, such as backward
unique-continuation mechanisms, are not automatically subject to the averaged
barrier because that pointwise structure is not generally present in the
averaged equation.

## 4. Verdict

Tao's test kills the weak Gold reading:

\[
\text{energy cancellation}
+\text{critical harmonic estimates}
+\text{abstract predictable/martingale no-recount}
\Longrightarrow
\text{smoothness}.
\]

That implication is false at the Tao barrier level.

The current Gold face survives only in the strong reading:

\[
\text{WLF.60 / ODP.91}
=
\text{original-history same-carrier active/root payment before readout}.
\]

In that reading, Gold is not using incompressibility alone. It is using the
exact Navier-Stokes material packet: transport, Leray pressure projection,
viscosity, incompressibility, scale, sign, and selected readout locked to one
parent key before positive-part extraction.

## 5. Remaining proof burden after the test

The test does not prove WLF.60. It sharpens the acceptance criterion.

Any future WLF.60 proof must exhibit the Navier-Stokes-only property that Tao's
averaged equation lacks:

\[
\text{for each selected positive primitive event }z,\quad
\Xi(z)
\text{ is an original-history parent key whose active/root carrier is the same}
\text{ event before readout}.
\]

Equivalently, the proof must build \(\Gamma_{\rm pre}\) from the original
pressure-viscosity-incompressibility history, not from an abstract selected
martingale or dyadic square function.

If a proposed proof can be restated for \(\widetilde B\), it is rejected by this
Tao test. If it needs the same-packet identity above, it remains a live Gold
candidate and the next burden is to prove the finite active/root charge on that
same carrier.
