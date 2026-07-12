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
  mass and infinite weighted linear service.  The corrected local theorem in
  this Gold slice must split retained reuse from fresh first entry. Retained reuse is Schur
  current work; fresh first entry requires a native/residence/Hardy-Carleson
  linear service charge, or a theorem proving that all uncharged fresh half-tail
  windows are forced into motion, return, viscosity, legal, or stop.  The Cycle
  036 audit corrects the later formal pushforward claim.  Before `(WLF.60)'
  can bound a parent-weighted first-admission pulse measure, the PDE argument
  must construct a same-history joint incidence/disintegration between actual
  parent material and later selected reads and prove bounded fibre mass.
  `(WLF.53)'--`(WLF.54)' give Hilbert projection algebra only; they do not
  prove `(WLF.55)'--`(WLF.57)'.  Entropy, Hilbert/BMO, reverse-Holder, and
  terminal no-atom language remain deterministic consumers after both the
  incidence kernel and the parent mass bound exist.
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

After this audit, the noncircular heat-lag slice statement is:

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

with the weighted positive read admitted before selected positive-part readout:

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
must not be merged.  Before the child selects the positive readout, split the
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
This heat-lag/first-admission slice needs this stronger linear variation/overlap control for the
same coupled push instruction before the child positive readout is counted.

## 8. Direct selected-critical closure attempt after the coupled-row audit

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

In the physical heat-lag language, the no-reuse part is not the open issue.
The adjacent spent-source projection theorem already proves the same-chain
rule: a descendant cannot keep reading an already-spent same-parent source
direction as fresh work.  Once the pulse is admitted, later same-direction
reads are Schur reuse, return, motion, viscosity, legal, or stop.

The adjacent fresh-native selected-scale lower-edge audit closes the local
first-admission line.  A retained selected first entry with no same-packet
native coordinate has a zero-channel blow-up limit and therefore zero selected
action.  In the present heat-lag notation this is the local lower edge

\[
\omega_I|\Delta_IU_I|
\le
C_N\rho_I^{fresh}
+R_{\rm legal}(I)+Stop(I),
\tag{WLF.33a}
\]

after spent-source reuse, carry, motion, return, legal, and stop are removed.
Thus the first admitted heat-lag pulse is not locally too small to be native;
the local selected-scale charge exists.

The unresolved part is the root upper bound for all such first admissions.  A
far packet can receive a very small same-parent pressure / incompressibility
push, and one heat time later the child can magnify that finite difference by
its selected first-ratio weight.  The row identity proves that the push belongs
to the original packet.  The no-reuse theorem proves it cannot be repeatedly
recounted after admission.  The lower-edge theorem proves the first admission
has a selected-scale native atom.  The missing estimate is that all of those
selected-scale first-entry atoms form a finite original-history root measure.

Thus the direct closure attempt lands on the fresh native root upper bound, not
on a new no-reuse or local first-admission side condition:

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
using the future selected tail.  In discrete fresh-source notation this is

\[
\sum_{I\subset P}\rho_I^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{WLF.36}
\]

That is the exact wall in this heat-lag/first-admission slice after the audit.  The corrected proof state is
therefore: same-parent origin/admission is proved; same-chain no-reuse is
installed by spent-source projection; local selected-scale first admission is
closed by zero-channel rigidity; retained reuse is Schur work; fresh square
novelty is Bessel support.  The remaining unproved line is the selected-scale
fresh native root upper bound / critical fresh source tent Carleson estimate,
equivalently positive critical transfer with a strict \(\theta<1\) margin for
arbitrary data.

## 9. Weightless first-admission root measure

The legitimate first-admission atoms do form a finite original-history root
measure in the raw parent Hilbert geometry.  This is the part that no-reuse and
orthogonality already prove.

For a stopped parent packet \(P\), let \(Z_P^{orig}\in\mathcal H_P^{raw}\) be
the original-history coupled source carrier after visible/silent/exchange
routing.  For a retained strict first-admission child \(Q\subset P\), define

\[
F_Q
:=
(I-\Pi_{\mathcal S_{<Q}})\Delta_Q Z_P^{orig},
\qquad
\mathcal S_{<Q}:=
\overline{\operatorname{span}}\{F_{Q'}:Q'<Q,\ Q'\text{ already admitted}\}.
\tag{WLF.36a}
\]

Here \(Q'<Q\) is the stopped same-material ancestry order.  The word
`legitimate' means that lower-band carry, spent-source reuse, reselection,
silent exchange, return, motion, viscosity, legal, and stop material have
already been removed or paid.  Thus \(F_Q\) is the first unspent native
coordinate of the same parent record, not a child-created source.

Define the raw first-admission measure by

\[
\mu_{P}^{adm,raw}(E)
:=
\sum_{\substack{Q\subset E\\ Q\text{ legitimate first admission}}}
\|F_Q\|_{\mathcal H_P^{raw}}^2 .
\tag{WLF.36b}
\]

Then, for every stopped subtree \(P'\subseteq P\),

\[
\mu_{P}^{adm,raw}(P')
\le
C_N\|Z_{P'}^{orig}\|_{\mathcal H_{P'}^{raw}}^2
+
R_{legal}(P')+Stop(P').
\tag{WLF.36c}
\]

Proof.  Along one retained stopped chain, the construction
\((I-\Pi_{\mathcal S_{<Q}})\) makes the nonzero \(F_Q\)'s orthogonal to all
previously admitted native coordinates.  Therefore Bessel gives

\[
\sum_{Q\in\gamma}\|F_Q\|_{\mathcal H_P^{raw}}^2
\le
\|Z_P^{orig}\|_{\mathcal H_P^{raw}}^2 .
\tag{WLF.36d}
\]

Across stopped siblings, material disjointness and the finite retained atlas
give only the standard bounded-overlap factor \(C_N\).  Every failure of
orthogonality is exactly one of the already removed bins: reused direction,
selector/reselection motion, silent exchange, return/reset, legal, or stop.
Summing the chain estimates over the stopped tree gives `(WLF.36c)`.  For every
preterminal stopped packet generated by the original smooth history, the raw
carrier \(Z_P^{orig}\) is finite in \(\mathcal H_P^{raw}\).  Consequently the
admitted first native atoms form a finite original-history root measure:

\[
\mu_{P}^{adm,raw}(P)
<
\infty .
\tag{WLF.36e}
\]

This proves the weightless same-parent admission measure.  It also proves that
there is no retained nonendpoint invisible square bill after first-entry,
return, motion, viscosity, legal, and stop are removed: any such bill is either
one of the \(F_Q\)'s counted once in \(\mu_{P}^{adm,raw}\), or it has already
fallen into a paid/removable bin.

What this does not prove is the selected-critical weighted measure

\[
\mu_P^{adm,crit}(P)
:=
\sum_{Q\subset P} w(Q)\|F_Q\|_{\mathcal H_P^{raw}}^2
\lesssim
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{WLF.36f}
\]

or equivalently `(WLF.36)` when \(\rho_Q^{fresh}\) is the selected-scale native
charge.  The half-tail obstruction is exactly the gap between
`(WLF.36e)` and `(WLF.36f)`.

## 10. Selected-critical root upper-bound proof attempt

The desired root estimate is `(WLF.36)`.  The installed local lower edge sends
each legitimate first-admission heat-lag atom to a fresh native charge
\(\rho_I^{fresh}\).  In dyadic fresh-flux coordinates this is the same object as

\[
\int_0^{T_*}\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt .
\tag{WLF.37}
\]

The residence part is paid.  On a maximal fresh crossing interval \(I_j\), set

\[
M_j(I_j)
:=
\int_{I_j}[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt .
\tag{WLF.38}
\]

If

\[
\int_{I_j}\nu 2^{2j}E_j(t)\,dt
\ge
\varepsilon M_j(I_j),
\tag{WLF.39}
\]

then

\[
2^jM_j(I_j)
\le
C_\varepsilon
\int_{I_j}\nu 2^{3j}E_j(t)\,dt ,
\tag{WLF.40}
\]

and bounded stopped overlap pays the contribution by the same parent viscous
residence.

The complement is transit.  The shell balance forces the unspent incoming mass
to leave to the next shell:

\[
M_{j+1}(I_{j+1})
\ge
(1-\varepsilon)M_j(I_j)
-\Delta E_j^+(I_j)
-R_j^{legal/stop}(I_j).
\tag{WLF.41}
\]

Thus the unpaid branch is one same-material transit thread, not a sequence of
independent fresh births.  The stopped finite-band/reset reduction then packs a
transit thread by endpoint/start energy, residence, return/reset, legal/stop,
and first-exit reset/escape charge.

The reset/escape charge is where the direct proof becomes circular if it is
used without a new producer.  Its Cauchy estimate is

\[
\sum_e\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\|G\|^2
+CR_{legal}(P),
\tag{WLF.42}
\]

where \(G\) is the original-history log-scale derivative / turnstile /
exchange / covector generator.  The right side is not yet known from original
data; it is the root generator-energy form of `(WLF.36)`.

The lower-triangular scale-memory split isolates the exact survivor.  For the
fresh one-sided scale primitive

\[
F^{fresh}(s,t)=(\mathcal V_\kappa \widetilde Z^{fresh})(s,t),
\tag{WLF.43}
\]

the weighted split is

\[
\int_Iw\|F^{fresh}\|_{L_x^2}^2\,ds
=
\int_Iw\|(I-P_w)F^{fresh}\|_{L_x^2}^2\,ds
+
H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2 .
\tag{WLF.44}
\]

The first term is exact in scale and is routed to derivative/collar/legal
payments.  The second term is the affine quotient:

\[
c_F^{fresh}(t,x)
=
A_\kappa M_0^{fresh}(t,x)+B_\kappa M_1^{fresh}(t,x).
\tag{WLF.45}
\]

The first-order signed scale descent gives

\[
Y^{fresh}
=
\partial_\sigma\Psi^{fresh}
+S^{spill}
+E,
\tag{WLF.46}
\]

and therefore kills only the derivative part.  Against the affine kernel it
leaves the stopped potential average

\[
\mathcal P_{avg}^{fresh}(t)
:=
{1\over |J|}
\int_J\Psi^{fresh}(\sigma,t)\,d\sigma .
\tag{WLF.47}
\]

So the root upper bound would follow from either of the two noncircular
statements

\[
\int_0^{T_*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{WLF.48}
\]

or a direct positive-stress second-order exactness formula

\[
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh},
\tag{WLF.49}
\]

with the corresponding affine-kernel residual bounded by original-history
legal/stop/service terms.

The repo does not currently prove `(WLF.48)` or `(WLF.49)`.  Poincare in
\(\sigma\) would use the selected source square that `(WLF.36)` is trying to
prove, and ordinary gauge normalization changes the potential average rather
than paying it.  Thus the direct proof of `(WLF.36)` reduces exactly to stopped
potential-average control / positive second-order scale exactness, or
equivalently the fresh same-carrier identity plus selected overrun payment on
the actual positive native carrier.

Current truth state: the legitimate first-admission atoms are locally real,
cannot be recounted, and form the finite raw original-history Bessel measure
`(WLF.36b)`--`(WLF.36e)`.  The unproved part of this
first-admission/root-measure slice is the selected-critical weighted measure
`(WLF.36f)`, i.e. the selected-critical root upper bound `(WLF.36)`.

## 11. Conditional no-recount incidence schema

The parent/child language is now fixed.  The physical event is one
same-parent pressure-viscosity-incompressibility participation event.  The
parent role is the first-admitted original-history pulse record; the child role
is any later selected readout of that same record.

Let \(\mathcal A_P\) be the stopped set of legitimate first-admission native
atoms in \(P\).  For \(a\in\mathcal A_P\), let \(F_a\) be the first unspent
native coordinate `(WLF.36a)`.  The desired historical bridge must first
construct the selected heat-lag windows \(\mathcal D(a)\) that actually descend
from that same admission.  Equivalently, it must construct the map

\[
\pi:\{I:\ I\text{ selected heat-lag readout in }P\}\to\mathcal A_P,
\qquad
\pi(I)=a .
\tag{WLF.50}
\]

Equation `(WLF.50)' is therefore a required ancestry object, not a consequence
of the raw Hilbert-space admission in `(WLF.36a)'--`(WLF.36e)'.  The material
flow gives every specified pair cohort a unique precursor, but it does not
identify WLF detector atoms with those pairs or bound overlap among different
future-selected reads.

The parent-weighted detector is the detector built before selected positive-part readout:

\[
\Phi_I^P
:=
\omega_I\,\mathbf 1_I\,
\mathcal H_{I}^{*,P}\xi_I ,
\tag{WLF.51}
\]

where \(\mathcal H_I^{*,P}\) is the backward same-parent heat/pressure response
operator on the original material packet.  Its pairing with the signed parent
row current \(dK_P\) is the child finite difference:

\[
\Delta_IU_I
=
\langle dK_P,\Phi_I^P\rangle_P
+Err_I .
\tag{WLF.52}
\]

The selected-critical weight is already inside \(\Phi_I^P\).  It is not
multiplied onto the child after the positive part is selected.

First-admission update.  Order the retained readouts by stopped material time
and ancestry.  Before \(I\), let \(\mathcal E_{<I}^P\) be the paid parent-current
span.  Split

\[
\Phi_I^P
=
P_{\mathcal E_{<I}^P}\Phi_I^P
+
(I-P_{\mathcal E_{<I}^P})\Phi_I^P .
\tag{WLF.53}
\]

If the second term is nonzero and legal, it is admitted once:

\[
\mathcal E_{\le I}^P
=
\mathcal E_{<I}^P
\oplus
\operatorname{span}
\{(I-P_{\mathcal E_{<I}^P})\Phi_I^P\}.
\tag{WLF.54}
\]

The required same-carrier routing premise is

\[
J>I,\quad \pi(J)=\pi(I)
\quad\Longrightarrow\quad
(I-P_{\mathcal E_{\le I}^P})\Phi_J^P
\text{ is paid motion/return/viscosity/legal/stop or zero.}
\tag{WLF.55}
\]

This premise does not follow from `(WLF.54)'.  The orthogonal update says that
a new detector direction is fresh relative to the earlier detector span.  It
does not prove that every later read of one physical pulse remains in that
span, becomes paid motion, or vanishes.

The second required premise is domination by a parent measure.  For each
\(a\in\mathcal A_P\), it asks for \(\alpha_I(a)\) and
\(d\mu_P^{pw}\) such that

\[
\omega_I|\Delta_IU_I|
\le
\alpha_I(a)\,d\mu_P^{pw}(a)
+dPaid_I,
\qquad a=\pi(I),
\tag{WLF.56}
\]

where \(d\mu_P^{pw}\) is the parent-weighted first-admission pulse measure and
\(dPaid_I\) consists only of retained Schur current, motion, return, viscosity,
legal, and stop material.  Bounded transit overlap is the additional estimate

\[
\sum_{I:\pi(I)=a}\alpha_I(a)
\le C_N .
\tag{WLF.57}
\]

Neither `(WLF.55)' nor `(WLF.57)' is proved by the span update.  The exact
countermodel is

\[
\mathcal C_P=\ell^2,
\qquad
dK_P=\sum_{n\ge1}\frac1n e_n,
\qquad
\Phi_n=e_n,
\qquad
\mathcal E_{<n}^P=\operatorname{span}\{e_1,\ldots,e_{n-1}\}.
\]

Every update `(WLF.53)'--`(WLF.54)' is an exact orthogonal admission and
\(dK_P\in\ell^2\).  Assigning every \(n\) the same declared parent label
\(a\) still gives

\[
\sum_{\pi(n)=a}|\langle dK_P,\Phi_n\rangle|
=\sum_{n\ge1}\frac1n
=\infty.
\]

Thus raw Bessel admission controls square novelty, not same-pulse ancestry or
linear fibre variation.

Conditional summation.  Once `(WLF.56)' and `(WLF.57)' have been proved on an
actual same-history incidence object, summing gives

\[
\sum_{I\subset P}\omega_I|\Delta_IU_I|
\le
C_N\mu_P^{pw}(P)
+Paid_P .
\tag{WLF.58}
\]

The correct measure object is a kernel \(\kappa_P(a,dI)\), supported on the
proved fibre \(\pi^{-1}\{a\}\), and the joint measure

\[
\Gamma_P(da,dI)
=d\mu_P^{pw}(a)\,\kappa_P(a,dI),
\qquad
\int\kappa_P(a,dI)\le C_N.
\tag{WLF.59}
\]

A many-to-one \(\pi\) has no canonical inverse pushforward of a parent measure.
The kernel in `(WLF.59)' is the missing disintegration that makes the child
measure and its bounded multiplicity well defined.  With it, `(WLF.58)' says
there is no second child source beyond the stated paid rows.

The analytic line needed for this slice is therefore exactly

\[
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,Visc_{P,N}
+Paid_P,
\qquad 0<\theta<1 .
\tag{WLF.60}
\]

If the incidence kernel `(WLF.50)'--`(WLF.59)' and the separate mass estimate
`(WLF.60)' both hold, `(WLF.58)` gives the weighted heat-lag no-recount estimate
`(PVD.31f)`.  Feeding `(PVD.31f)` into `(PVD.31e)` gives the pressure-tail
good-lambda recurrence with strict margin, hence `(PVD.29)` and then the
terminal-uniform service estimate

\[
\sup_{\tau<T_*}
\int_0^\tau\int_P
\mathcal M_N(Y_N)_+\,da\,dt
\le C_N(u_0).
\tag{WLF.61}
\]

This is a conditional no-recount implication.

The audit identifies two non-formal points.  First, the original coupled
history must construct `(WLF.50)', `(WLF.55)'--`(WLF.57)', and the kernel in
`(WLF.59)' on actual same-event material.  Second, `(WLF.60)' must prove
terminal-uniform finiteness of the resulting parent-weighted measure.  The
half-tail `(WLF.2)'--`(WLF.9)' still blocks replacement of either requirement
by raw Bessel square mass.

## 10. Entropy/BMO consumer coordinate

The selected-density and entropy route is useful only after the same parent
packet has already produced a pre-readout active density.  If

\[
d\mu_P^{pw}=f_P\,d\mathcal R_P
\tag{WLF.62}
\]

is parent-known before selected positive-part readout and the root entropy capacity

\[
\mathcal C_P^{ent}
:=
\int_P f_P\log(e+f_P)\,d\mathcal R_P
\tag{WLF.63}
\]

is bounded from the original coupled packet, then the standard entropy
chain-rule pays high child/parent ratios.  In layer-cake form, a child with
ratio \(r_Q=f_Q/f_{par(Q)}\ge 2^L\) spends at least \(L\log 2\) units of
entropy per unit selected action, so the dyadic first-ratio sum
\(\sum_L2^LN_L\) is finite.  Reverse Holder, John-Nirenberg, and good-lambda
are consumer languages for this same deterministic implication.

This proves a strict reduction, not Gold closure:

\[
\text{parent active entropy/root BMO before positive-part readout}
\Longrightarrow
\text{terminal-uniform selected }L^1 .
\tag{WLF.64}
\]

The PDE producer is still the construction and root bound for `(WLF.62)' from
the original pressure-viscosity-incompressibility-velocity packet.  A stopped
Hilbert/BMO carrier \(Z^S\) would supply that density only after the stopped
selector/source measure satisfies cancellation, local testing, and Carleson
packing from original data.  Defining \(Z^S=T_S\nu^S\), proving local packet
payment, or proving fresh Bessel square packing does not give that testing
theorem.

Thus the current strict producer has one physical name in this slice:
parent-known fresh generator/root-reserve packing, equivalently `(WLF.60)' /
`(WLF.36)' / NativeBirthChargePacking / PositiveCriticalTransferBound, built
before selected positive readout.  Entropy/BMO/reverse-Holder and terminal
no-atom are proof-level consumers once the parent active density exists; raw
energy, raw heat/tent square capacity, and Bessel square remain obstructed by
the half-tail.

## 11. Current source-line pushdown

The later tower-feedback source audit pushes the same `(WLF.60)' burden below
the reserve name.  The conditional source line is:

\[
\begin{array}{c}
\text{same-parent Duhamel-Hodge pullback}\\
+\text{early trace/source admission}\\
+\text{retained Poincare heat thickness}
\Longrightarrow
\text{full-exchange storage}\\
\Longrightarrow
\text{terminal-uniform selected }L^1 .
\end{array}
\tag{WLF.65}
\]

The audit classifies `(WLF.65)' as a conditional reduction, not a completed
Gold proof.  At the `(TFE.2748)' source line, the original-data burden was the
noncircular proof of the three grants behind that line:

\[
\begin{array}{ll}
\text{(i)}&
\text{stopped Duhamel-Hodge propagator and bounded parent detector estimates}\\
&\text{from the original coupled packet before selected positive-part readout;}\\
\text{(ii)}&
\text{zero-baseline endpoint/source admission without using the}\\
&\text{full-exchange storage being proved;}\\
\text{(iii)}&
\text{strict no-self-feeding full-exchange storage from arbitrary original data.}
\end{array}
\tag{WLF.66}
\]

The later TFE2748A/TFE2748B audits shrink `(WLF.66)'.  TFE2748A derives the
stopped Duhamel-Hodge pullback, bounded parent detector package, and
zero-baseline endpoint admission as noncircular support from the smooth stopped
preterminal packet.  Those clauses make the child readout a lawful
parent-pulled test of one coupled packet; they do not supply the positive
selected \(L^1\) source.  The remaining nonconsumer Gold source is the strict
same-parent storage itself.

In the current active-capacity/full-exchange coordinate, that storage is the
simultaneous parent Lyapunov inequality

\[
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
\le
-d
\begin{pmatrix}
M_P^{crit}\\
M_P^{FE}\\
M_P^{AT}
\end{pmatrix}
+
K_P
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
+\mathbf d\Theta_P^0+\mathbf dPaid_P,
\qquad
\rho(K_P)<1 .
\tag{WLF.67}
\]

This is the present proof-sized form of `(WLF.60)' in the heat-lag coordinate.
Same-parent detection, Bessel square, entropy/BMO, retained heat decay, endpoint
admission, and Duhamel formulas are support.  Active capacity and full-exchange
language are support as well until `(WLF.67)' is proved from the original
pressure-viscosity-incompressibility packet before selected positive-part readout, or until one
of its storage faces is proved independently without reserve self-financing.
For Gold force after the signed-height restart, the same storage must also be
record-admitted: the selected meter controlled by `(WLF.67)' has to be the
parent-admitted meter of the same signed-height upcrossing before readout.
