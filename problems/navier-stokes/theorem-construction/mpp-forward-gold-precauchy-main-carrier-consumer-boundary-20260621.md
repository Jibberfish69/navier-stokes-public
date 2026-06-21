---
ns_viewer:
  theorem_id: forward-gold-precauchy-main-carrier-consumer-boundary-20260621
  status: exact-boundary-installed-main-carrier-consumed-full-precauchy-carrier-still-needs-remainder-identity
  proof_role: forward_gold_precauchy_carrier_consumer_boundary
  logical_landing_node: precauchy_main_carrier_consumer_boundary
  edge_effect: >-
    Separates the exact part now covered by finite-order / critical-density
    consumers from the part still open for the full localized positive
    pre-Cauchy carrier. The main interior selected strain/source product
    [<S_<j^loc w_j,w_j>]_+ is finite-order Field-facing after same-witness CM
    admission and has the exact combined Holder consumer
    |S_<j^loc|^(5/2)+|w_j|^(10/3). This does not identify the full selected
    positive pre-Cauchy carrier with that main product, because localization,
    weights, lifts, projection, cutoff, terminal selection, and positive-part
    extraction can create a one-sided remainder. The remaining bridge is exactly
    legal domination, finite-order domination, source-square/no-waste domination,
    signed saturation, or profile production for that remainder.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-order-selected-carrier-atom-to-cm-field-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-stretching-atom-to-finite-rung-field-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-combined-holder-density-budget-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-remainder-depletion-selected-window-direct-recheck-20260620.md
    - problems/navier-stokes/theorem-construction/mcp-weighted-lifted-skew-defect-legal-attempt-20260505.md
  downstream_consequence: >-
    Do not respawn the projected-source/native-carrier confusion. A terminal
    atom in the main trilinear/stretching carrier is already CM Field-facing or
    critical-density-facing. A terminal atom in the full localized positive
    pre-Cauchy carrier is only reduced to the same conclusion after the selected
    remainder is proved legal, finite-order dominated, source-square/no-waste
    dominated, signed-saturated, or rigidly profiled.
---

# MPP Forward-Gold Pre-Cauchy Main Carrier Consumer Boundary

Date: 2026-06-21

## Status

This note fixes the exact boundary left after the finite-order selected-carrier
consumer.

The consumer is real, but it applies only to a selected carrier already
controlled by a fixed finite-order readout on the same normalized terminal
window.  It does not automatically consume the full localized positive
pre-Cauchy source carrier.

## 1. Full localized pre-Cauchy carrier

The source wall is the selected positive pre-Cauchy carrier on a bounded-overlap
same-fluid terminal family:

\[
\mu^+_{src,N}(\mathcal F_N)
:=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[\mathcal N^{loc}_{preCauchy}(u;P)\right]_+\,dxdt .
\tag{PCM.1}
\]

The pre-Cauchy split recorded in the source-residence route is

\[
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+\mathcal D_P
+\operatorname{div}_\Phi\mathcal J_P
+\mathcal R_P .
\tag{PCM.2}
\]

Here the time derivative telescopes on legal refill trees, the drain is the
local dissipative bill, and the flux term is boundary/cutoff/legal loss after
the corresponding ledger is actually installed.  The selected interior
remainder is the live one-sided object.

## 2. Exact main carrier

After legal pressure, cutoff, commutator, and boundary terms are separated, the
main interior remainder is the native strain/source product

\[
\mathcal R_P^{main}
:=
\chi_P\left\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\right\rangle .
\tag{PCM.3}
\]

Equivalently, for \(w_{j_P}=|w_{j_P}|e_{j_P}\),

\[
\left[\mathcal R_P^{main}\right]_+
=
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+ .
\tag{PCM.4}
\]

This is the exact native main carrier identified in the selected-window
PositiveRemainderDepletion recheck.

## 3. What is now consumed exactly

On a fixed normalized chart, the main carrier has two exact consumers.

First, it is finite-rung Field-facing when the same witness is admitted to the
CM test.  The installed finite-order consumer says:

\[
\int_{I_m}a_m(s)\,ds\ge a_0,\qquad
a_m(s)\le C_{\mathrm{op}}X_m(s)^p,
\tag{PCM.5}
\]

with \(X_m\) controlled by a positive finite-rung Field certificate, implies

\[
\int_{I_m}a_m(s)\,ds
\le
C_{\mathrm{op}}C_X^p |I_m|
\to0,
\tag{PCM.6}
\]

contradicting the atom.  Thus any terminal atom of a fixed finite-order selected
main carrier lands in the CM witness split:

\[
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
\tag{PCM.7}
\]

Second, the trilinear form has the exact combined Holder domination

\[
\left[\left\langle \Sigma W,W\right\rangle\right]_+
\le
|\Sigma|\,|W|^2
\le
{2\over5}|\Sigma|^{5/2}
+
{3\over5}|W|^{10/3}.
\tag{PCM.8}
\]

After spatial integration, a retained atom in the main carrier forces a positive
quantum of

\[
\int |\Sigma|^{5/2}
+
\int |W|^{10/3}.
\tag{PCM.9}
\]

This is a correct consumer currency.  The installed energy/local-energy package
does not supply the unweighted terminal-family budget for `(PCM.9)`.

## 4. Why this does not consume the full pre-Cauchy carrier

The implication

\[
\left[\mathcal N_{preCauchy}^{loc}\right]_+
\lesssim
\left[\mathcal R_P^{main}\right]_+
+\text{legal}
\tag{PCM.10}
\]

is not installed.

The reason is exact.  The signed dyadic current is skew before terminal
weights, lifts, localization, projection, cutoff, same-fluid selection, and
positive-part extraction.  After those operations, a positive selected edge can
remain while its signed partner has moved into a lifted remainder, a weight
defect, a projection/cutoff term, or a terminal Zeno donor chain.

The prior WeightedLiftedSkewDefectLegal attempt isolates the missing comparison:

\[
Source_P^{loc}-Source_P^{bare}
=
Def_P^{weight}
+Def_P^{lift}
+Def_P^{proj}
+Def_P^{cut}
+Def_P^{term}.
\tag{PCM.11}
\]

Projection and ordinary cutoff terms are legal only after the projected/cutoff
ledger is applied.  The live obstruction is the weighted/lifted pair defect:

\[
\sum_{P,P'}
\int
|W_P-W_{P'}|\,|J^{bare}(P'\to P)|\,dt,
\tag{PCM.12}
\]

which is another presentation of the positive source / active-square reserve,
not a consequence of the finite-order consumer.

Thus the finite-order theorem consumes the main finite-order carrier, but it
does not by itself prove that the full carrier `(PCM.1)` is main-plus-legal.

## 5. Exact conditional closure

The full pre-Cauchy carrier is consumed by the finite-order / critical-density
machinery once one of the following same-carrier remainder statements is proved:

\[
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\le
C
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal R_P^{main}
\right]_+
+o_N(1)+Loss_{legal},
\tag{PCM.13}
\]

or a direct finite-order domination

\[
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\le
C_{\mathrm{op}}X_P^p+\ell_P,
\qquad
\sum_P\int_{Q(P)}\ell_P\le o_N(1)+Loss_{legal},
\tag{PCM.14}
\]

or a direct unweighted reserve

\[
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\le
\mathcal R_{unweighted}(\mathcal F_N)
+o_N(1)+Loss_{legal},
\tag{PCM.15}
\]

where \(\mathcal R_{unweighted}\) is a proved source-square, strict no-waste,
selected critical-strain/CKN, signed-saturation, or rigid-profile reserve.

Without one of `(PCM.13)` through `(PCM.15)`, a terminal atom in the full
localized positive pre-Cauchy carrier is not yet reduced to the consumed main
carrier.

## Verdict

The current exact state is:

\[
\boxed{
\text{main trilinear/stretching carrier atom}
\Rightarrow
\text{finite-rung CM Field face or critical-density quantum.}
}
\tag{PCM.16}
\]

and

\[
\boxed{
\text{full localized positive pre-Cauchy carrier atom}
\Rightarrow
\text{same conclusion only after legal remainder / saturation / reserve
identification.}
}
\tag{PCM.17}
\]

The open bridge is therefore not another projected-source estimate.  It is the
same-carrier remainder bridge:

\[
\boxed{
\text{legal domination, finite-order domination, source-square/no-waste
domination, TerminalSignedSaturation.A, or profile production for the selected
pre-Cauchy remainder.}
}
\tag{PCM.18}
\]
