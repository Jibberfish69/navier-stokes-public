---
theorem_id: forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629
status: countermodel-proof; fresh-bessel-square-insufficient-for-weighted-linear-service
created: 2026-06-29
problem: navier-stokes
route: forward-gold heat-lag same-parent admission / fresh linear service obstruction
attacks:
  - WPC.4_weighted_selected_bill_to_weightless_parent_current_currency
  - HLG.12a_weighted_heat_lag_parent_current_currency
  - PTG.22a_weighted_heat_lag_finite_difference_telescoping
  - FGC.20_accretive_same_parent_service_inequality
  - FGC.25_terminal_uniform_coupled_jet_service_L1
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weightless-parent-current-admission-currency-test-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-gap-finite-difference-l1-reduction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-currency-bounded-original-packet-enforcement-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-riesz-representative-source-graph-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-stress-jet-producer-admission-20260628.md
completion_truth: >-
  Proves that the fresh Bessel square term in the current WPC.4/HLG.12a local
  currency formula cannot by itself dominate the weighted linear heat-lag service
  bill.  Same-parent heat detection and parent-subtracted Bessel packing are real
  support, but they leave a fresh small-pulse half-tail: finite weighted square
  mass and infinite weighted linear service.  The corrected Gold local theorem
  must split retained reuse from fresh first entry. Retained reuse is Schur
  current work; fresh first entry requires a native/residence/Hardy-Carleson
  linear service charge, or a theorem proving that all uncharged fresh half-tail
  windows are forced into motion, return, viscosity, legal, or stop.
---

# Heat-lag fresh linear service half-tail obstruction

The same-parent detector tells us where the heat-lag response came from.  It
does not tell us that the fresh first-entry part of the response has enough
linear payment.

For the weighted heat-lag bill, the dangerous branch is a first-entry branch:
the detector is fresh relative to the paid parent current, so there is no old
Schur coordinate \(q\) yet.  Parent-subtracted Bessel pays the square of the
fresh response.  The service bill in `(WPC.4)` is linear:

\[
\omega_I|\Delta_IU_I|.
\tag{WLF.1}
\]

That is the exact place where the half-tail can survive.

## 1. Abstract parent-current countermodel

Let the parent detector Hilbert space be

\[
\mathcal C_P=\ell^2(\mathbb N),
\qquad
\{e_\ell\}_{\ell\ge0}\text{ orthonormal}.
\tag{WLF.2}
\]

Set

\[
\omega_\ell=2^\ell,
\qquad
\psi_\ell=2^{-\ell/2}e_\ell,
\qquad
\widetilde\psi_\ell=\omega_\ell^{1/2}\psi_\ell=e_\ell.
\tag{WLF.3}
\]

Thus the weighted heat detectors are perfectly normalized and mutually fresh in
the parent Hilbert geometry.  Let the parent current Riesz vector be

\[
j_P=\sum_{\ell\ge0}{2^{-\ell/2}\over \ell+1}\,e_\ell .
\tag{WLF.4}
\]

Then

\[
\|j_P\|_{\mathcal C_P}^2
=
\sum_{\ell\ge0}{2^{-\ell}\over(\ell+1)^2}
<\infty .
\tag{WLF.5}
\]

The unweighted heat-lag read is

\[
\Delta_\ell
:=
J_P(\psi_\ell)
=
\langle j_P,\psi_\ell\rangle_{\mathcal C_P}
=
{2^{-\ell}\over \ell+1}.
\tag{WLF.6}
\]

The fresh Bessel square bill is finite:

\[
\sum_{\ell\ge0}
\|P_{\mathbb Re_\ell}j_P\|_{\mathcal C_P}^2
=
\sum_{\ell\ge0}{2^{-\ell}\over(\ell+1)^2}
<\infty .
\tag{WLF.7}
\]

The weighted selected linear service diverges:

\[
\sum_{\ell\ge0}
\omega_\ell|\Delta_\ell|
=
\sum_{\ell\ge0}{1\over\ell+1}
=\infty .
\tag{WLF.8}
\]

There is no retained Schur term in this model: every \(\widetilde\psi_\ell\) is a
first-entry direction.  There is no route motion, return, viscosity, legal, or
stop term.  Therefore the fresh-Bessel part of `(WPC.4)` cannot dominate the
weighted linear heat-lag bill.

Pointwise, for any fixed constant \(C\),

\[
\omega_\ell|\Delta_\ell|
={1\over\ell+1}
\not\le
C\,{2^{-\ell}\over(\ell+1)^2}
=C\,\|P_{\mathbb Re_\ell}j_P\|_{\mathcal C_P}^2
\tag{WLF.9}
\]

for all large \(\ell\).

## 2. What this rules out

This countermodel does not attack the same-parent heat detector:

\[
\Delta_IU_I=J_P(\psi_I^P)+Err_I .
\tag{WLF.10}
\]

It also does not attack parent-subtracted Bessel packing for genuinely fresh
weighted detectors:

\[
\sum_I\|P_{F_I}j_P\|_{\mathcal C_P}^2
\le
\|j_P\|_{\mathcal C_P}^2
+\text{paid motion}.
\tag{WLF.11}
\]

It rules out one specific overclaim: Bessel square packing of fresh heat-lag
directions is not the same thing as terminal-uniform \(L^1\) control of the
positive selected service.

## 3. Correct split of the local currency theorem

The local heat-lag currency theorem must split retained reuse from fresh first
entry.

For retained reuse, the service can be Schur current work:

\[
\omega_I|\Delta_IU_I^{ret}|
\le
C[q_I\,dq_I]_+
+dMotion_I+dReturn_I+\theta dVisc_I+dLegal_I+dStop_I .
\tag{WLF.12}
\]

For fresh first entry, the required statement is not Bessel square alone.  It is
a linear anti-half-tail/native-reserve statement:

\[
\sum_{I\in\mathcal F(P)}
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right|
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{WLF.13}
\]

Equivalently, there must be a native heat-lag service charge
\(d\mathcal N_I^{heat}\), built from the original coupled
pressure-viscosity-incompressibility packet, such that

\[
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right|
\le
d\mathcal N_I^{heat}
+dMotion_I+dReturn_I+\theta dVisc_I+dLegal_I+dStop_I,
\tag{WLF.14}
\]

and

\[
\sum_{I\subset P}d\mathcal N_I^{heat}
\le
C_N(u_0).
\tag{WLF.15}
\]

This \(d\mathcal N_I^{heat}\) is the heat-lag version of the scale-native
reserve / Schur-thickness / Hardy-Carleson anti-half-tail theorem.  It is not
the Bessel square term.

## 4. Physical meaning

The first pressure-compatible signal at a far packet is still the same parent
stress-response pulse.  The backward heat detector proves that part.

The open \(L^1\) problem is the fresh small-pulse tail.  A packet can receive a
sequence of tiny same-parent heat-lag responses whose squares are harmless, while
the selected first-ratio read counts their linear positive service harmonically.
To the child readout this looks like new positive pressure service at each higher
ratio.  In the original fluid, such a sequence must either be reused Schur
current, cancel as pressure-tail oscillation, drain through viscosity, move the
route, return/reset, hit legal/stop, or consume a finite native heat-lag reserve.

The current repo has proved the same-parent detector and the Bessel square
support.  It has not proved `(WLF.13)`--`(WLF.15)`.

## 5. Gold consequence

After this audit, the noncircular Gold heat-lag burden is:

\[
\boxed{
\text{No retained fresh heat-lag linear half-tail after Schur reuse, motion,
return, viscosity, legal, and stop are removed.}
}
\tag{WLF.16}
\]

If `(WLF.13)` holds, then the weighted heat-lag no-recount estimate `(HLG.12)`
follows, hence the strict pressure-tail recurrence, hence `(FGC.25)`.

Without `(WLF.13)`, `(WPC.4)` / `(HLG.12a)` / `(PTG.22a)` / `(PVD.31g)` are still
missing the actual fresh linear service producer.  Partial, not Gold closed.
