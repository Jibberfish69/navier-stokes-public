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

No retained fresh heat-lag linear half-tail after Schur reuse, motion, return,
viscosity, legal, and stop are removed.

If `(WLF.13)` holds, then the weighted heat-lag no-recount estimate `(HLG.12)`
follows, hence the strict pressure-tail recurrence, hence `(FGC.25)`.

Without `(WLF.13)`, `(WPC.4)` / `(HLG.12a)` / `(PTG.22a)` / `(PVD.31g)` are still
missing the actual fresh linear service producer.  Partial, not Gold closed.

## 6. Physical-to-formal proof loop

When the formal route stalls, the stalled quantity has to be read back as a
packet mechanism before another theorem layer is added.

For the present obstruction the stalled quantity is

\[
\mathsf{Lag}_P
:=
\sum_{I\in\mathcal F(P)}
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right| .
\tag{WLF.16}
\]

Here \(I\) is a selected heat-lag window in the original parent packet \(P\),
\(\psi_I^P\) is the backward heat detector for the later velocity finite
difference, and \(P_{F_I}\) is the parent-subtracted first-entry projection.
The physical statement is:

The far packet may receive the pressure-compatible account before its local
velocity/viscous response has become readable, but that micro-time gap is not a
new parent at every higher ratio.  Once the pulse has entered the original
packet, later reads of the same pulse must be charged as same-parent current
reuse, pressure-tail cancellation, viscous heat descent, route motion, return,
legal material, stop material, or finite native heat-lag reserve.

Formally this says that every selected heat-lag window has a same-parent
decomposition

\[
J_P(P_{F_I}\psi_I^P)
=
\Delta_I^{Schur}
+\Delta_I^{osc}
+\Delta_I^{visc}
+\Delta_I^{move}
+\Delta_I^{ret}
+\Delta_I^{legal}
+\Delta_I^{stop}
+\Delta_I^{nat}
+Err_I ,
\tag{WLF.17}
\]

with the weighted positive read admitted before child clipping:

\[
\omega_I|J_P(P_{F_I}\psi_I^P)|
\le
C[q_I\,dq_I]_+
+dOsc_I^{heat}
+\theta\,dVisc_I
+dMotion_I
+dReturn_I
+dLegal_I
+dStop_I
+d\mathcal N_I^{heat}
+dErr_I ,
\qquad \theta<1.
\tag{WLF.18}
\]

The terms in `(WLF.18)` have the following non-optional meanings.

- \(C[q_I\,dq_I]_+\) is reuse of a charged same-parent Schur coordinate.
- \(dOsc_I^{heat}\) is cancellation of an oscillatory pressure-tail thread
  before it becomes monotone positive service.
- \(\theta dVisc_I\) is local heat descent through the viscosity tower, with a
  strict margin.
- \(dMotion_I,dReturn_I,dLegal_I,dStop_I\) are original-packet route, reset,
  legal, and stopping material.
- \(d\mathcal N_I^{heat}\) is the native first-entry heat-lag reserve; it is
  the part not paid by square Bessel novelty.
- \(dErr_I\) is admissible frame, collar, Hodge, and localization error already
  dominated by the paid accounts.

The finite \(L^1\) theorem is exactly:

\[
\sum_{I\in\mathcal F(P)}
dOsc_I^{heat}
+
\sum_{I\in\mathcal F(P)}
d\mathcal N_I^{heat}
+
\sum_{I\in\mathcal F(P)}
dErr_I
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{WLF.19}
\]

Together, `(WLF.18)` and `(WLF.19)` imply `(WLF.13)`:

\[
\mathsf{Lag}_P
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{WLF.20}
\]

This is the written form of the physical rule.  A retained pulse cannot be
fresh again; it becomes Schur current.  A sign-switching pressure wave cannot
be counted as monotone positive service without leaving an oscillation
variation charge.  A heat-lag pulse that genuinely becomes velocity response
must descend through the viscous tower.  A pulse that changes the packet route,
returns, or stops is charged to those original-packet accounts.  The only
remaining branch is first-entry native heat-lag reserve, and `(WLF.19)` is the
noncircular theorem needed to prove that this reserve is finite from the
original coupled pressure-viscosity-incompressibility law.

The half-tail countermodel `(WLF.2)`--`(WLF.9)` is precisely the warning that
one cannot replace `(WLF.19)` by Bessel square packing.  Square novelty says the
fresh directions are orthogonal; it does not by itself bound the weighted
linear service created when one delayed signed impulse is reread positively at
too many selected heat-lag windows.

## 7. Push-instruction derivation

The linear service comes from the material row before it becomes an energy
square.  For a selected heat-lag window \(I\), set

\[
U_I(t)=\xi_I(t)\cdot P_{\lambda(I)}\partial_t^k v(t).
\tag{WLF.21}
\]

The differentiated material equation gives the signed row

\[
dK_I(t)
:=
\Big(
\mathsf P_{\xi,k,\lambda(I)}
+\mathsf V_{\xi,k,\lambda(I)}
+\mathsf C_{\xi,k,\lambda(I)}
+\mathsf{Paid}_{\xi,k,\lambda(I)}
\Big)(t)\,dt,
\tag{WLF.22}
\]

and therefore

\[
\Delta_IU_I
=
\int_I dK_I .
\tag{WLF.23}
\]

This is the exact physical source of the linear bill.  The pressure part of
\(dK_I\) is the signed push instruction; the velocity-energy square has not yet
been formed.  The selected child asks for the one-sided size

\[
S_I
:=
\omega_I\left|\int_I dK_I\right|.
\tag{WLF.24}
\]

Thus the needed theorem is a no-recount theorem for the signed parent impulse
variation.  The first audit correction is that the retained and fresh branches
must not be merged.  Before the child clips the positive readout, split the
same parent detector as

\[
\psi_I^P=\psi_I^{ret}+\psi_I^{fr},
\qquad
\psi_I^{ret}=P_{R_I}\psi_I^P,
\qquad
\psi_I^{fr}=P_{F_I}\psi_I^P,
\tag{WLF.25a}
\]

where \(R_I\) is the already charged same-parent current span and \(F_I\) is
the parent-subtracted first-entry span.  The retained branch is Schur work:

\[
\omega_I
\left|J_P(\psi_I^{ret})\right|
\le
C[q_I\,dq_I]_+
+\theta\,dVisc_I
+dMotion_I+dReturn_I+dLegal_I+dStop_I ,
\tag{WLF.25b}
\]

The fresh branch is not paid by that Schur coordinate.  It requires a coupled
push-variation measure, constructed from the full row \(dK\), not from a
pressure-only projection.  The required fresh inequality is

\[
\omega_I
\left|J_P(\psi_I^{fr})\right|
\le
\int_P\alpha_I\,d\mu_P^{push}
+\theta\,dVisc_I
+dMotion_I+dReturn_I+dLegal_I+dStop_I ,
\tag{WLF.25c}
\]

with bounded parent overlap

\[
\sum_{I\in\mathcal F(P)}\alpha_I(z)\le C_N
\qquad\text{for \(\mu_P^{push}\)-a.e. }z,
\tag{WLF.26}
\]

and finite parent impulse variation

\[
\mu_P^{push}(P)
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{WLF.27}
\]

This \(\mu_P^{push}\) is not a new payment law.  It is the heat-lag realization
of the existing scale-native active participation reserve.  Equivalently, it is
the same open native-reserve / positive-critical-transfer hinge written in the
far-packet finite-difference coordinates:

\[
\mu_P^{push}
\quad\text{is a coordinate face of}\quad
\mathcal R_N^{nat}(u_0;P),
\tag{WLF.27a}
\]

and `(WLF.26)`--`(WLF.27)` are the heat-lag form of the bounded-multiplicity
native map

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N.
\tag{WLF.27b}
\]

The detector density \(\alpha_I\) must contain the one-heat-time lag, the
far-annular smallness of the pressure read, and the selected zoom weight.  The
bounded-overlap estimate `(WLF.26)` is exactly the statement that the selected
zoom can read a tiny far response once in the same parent history, but cannot
turn that same weak response into infinitely many fresh positive heat-lag
charges.

Then the fresh linear service is finite:

\[
\sum_{I\in\mathcal F(P)}
\omega_I
\left|J_P(\psi_I^{fr})\right|
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{WLF.28}
\]

This is `(WLF.13)`.  The retained branch is handled separately by
`(WLF.25b)`, where the Schur current term telescopes before the full selected
heat-lag bill is assembled.

The physical meaning of `(WLF.25a)`--`(WLF.27)` is direct.  A selected child is
allowed to read a pressure push instruction after one heat time.  It is not
allowed to create a new parent charge by looking again at the same delayed
instruction through a sharper positive window.  Either the read is already in a
charged Schur coordinate, or it consumes a bounded amount of the parent impulse
variation \(\mu_P^{push}\), or it exits through viscosity, motion, return,
legal, or stop.

The row identity itself proves only

\[
\int_I[\mathsf P_{\xi,k,\lambda(I)}]_+
\le
|\Delta_IU_I|
+\int_I[-\mathsf V_{\xi,k,\lambda(I)}]_+
+\int_I[-\mathsf C_{\xi,k,\lambda(I)}]_+
+\int_I[\mathsf P_{\xi,k,\lambda(I)}]_-
+\int_I\mathsf{Paid}_{\xi,k,\lambda(I)}.
\tag{WLF.29}
\]

That is origin and admission, not closure.  The actual physical missing piece
is `(WLF.26)`--`(WLF.27)`, equivalently `(WLF.27a)`--`(WLF.27b)`: the signed
pressure/heat impulse must have finite selected one-sided variation in the
original parent packet.  Energy and Bessel square packing control square mass.
The Gold closure needs this stronger linear variation/overlap control for the
same coupled push instruction before the child positive readout is counted.

## 8. Direct Gold closure attempt after the coupled-row audit

The shortest possible closure would prove `(WLF.26)`--`(WLF.27)` directly from
the original coupled row.  The natural global coordinate is the critical
fractional energy identity for the Leray-projected full packet:

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{WLF.30}
\]

This is not a decoupled pressure omission.  The pressure/incompressibility
response is inside the Leray projection and the viscous descent is the
\(\Lambda^{3/2}\) drain.  Thus the heat-lag push-variation measure would be
finite if the positive part of the same coupled transfer obeyed

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1 .
\tag{WLF.31}
\]

Then `(WLF.27)` follows by taking the heat-lag coordinate face of this native
reserve:

\[
\mu_P^{push}(P)
\lesssim
C_N(u_0)
+
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+
\mathsf{Paid}_{P,N}.
\tag{WLF.32}
\]

The direct estimate available from standard critical calculus is only

\[
\left|
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right|
\le
C\|u(t)\|_{\dot H^{1/2}}\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{WLF.33}
\]

This closes the small critical packet case.  For arbitrary smooth data the
coefficient \(\|u(t)\|_{\dot H^{1/2}}\) is itself critical, so `(WLF.33)` does
not give the strict margin in `(WLF.31)`.

In the physical heat-lag language, this is exactly the unresolved linear
service point.  A far packet can receive a very small same-parent pressure /
incompressibility push, and one heat time later the child can magnify that
finite difference by its selected first-ratio weight.  The row identity proves
that the push belongs to the original packet.  The fractional identity proves
the signed coupled balance.  Neither identity alone proves that the positive
selected linear reads have bounded overlap in the original parent history.

Thus the direct closure attempt lands on the same theorem, not on a new side
condition:

\[
(WLF.26)\text{--}(WLF.27)
\quad\Longleftrightarrow\quad
(WLF.31)
\quad
\text{on the original coupled pressure-viscosity-incompressibility packet.}
\tag{WLF.34}
\]

Equivalently, construct the bounded-multiplicity native map

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P)
\tag{WLF.35}
\]

from original same-parent heat-lag push variation, with finite mass and without
using the future selected tail.  That is the exact Gold wall after the audit.
The corrected proof state is therefore: same-parent origin/admission is proved;
retained reuse is Schur work; fresh square novelty is Bessel support; the
remaining unproved line is fresh linear native variation / positive critical
transfer with a strict \(\theta<1\) margin for arbitrary data.
