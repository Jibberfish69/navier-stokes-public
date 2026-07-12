---
theorem_id: forward-gold-parent-weighted-detector-terminal-service-original-data-proof-attempt-20260629
status: proof-attempt-executed; not-gold-closed
created: 2026-06-29
problem: navier-stokes
route: forward-gold parent-weighted detector / terminal-uniform coupled service
targets:
  - WLF.60_parent_weighted_detector_measure
  - GCR.5_accretive_same_parent_service_inequality
  - FGC.20_accretive_same_parent_service_inequality
  - FGC.25_terminal_uniform_coupled_jet_service_L1
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-smoothness-closure-reconciliation-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-closure-coupled-stress-jet-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-critical-transfer-dyadic-flux-affine-threading-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-weight-bad-profile-compactness-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-concentration-compactness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-carrier-readout-or-paid-reselection-after-dynamic-silence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
  - problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
completion_truth: >-
  The original material Navier-Stokes identity gives same-parent origin,
  admission before child clipping, signed service balance, and the critical
  half-derivative energy identity.  The physical object is the coupled
  pressure-viscosity-incompressibility response itself: pressure supplies the
  instant signed compatibility/pre-energy tower, viscosity acts on every rung of
  the velocity-derivative tower over heat time, and incompressibility forbids a
  compression backlog or independent pressure battery.  These facts imply the
  desired Gold relay once they are made quantitative as a strict one-sided
  positive-service absorption.  The derivation from currently installed
  original-data controls stops at that quantitative line: standard estimates
  yield only C||u||_{\dot H^{1/2}} times the viscous reserve, which is strict only
  on small critical packets.  The formal audit of the physical picture reduces
  the unexited transit branch to an affine pressure-memory survivor: a
  same-parent pressure/strain potential average with finite raw square shadow
  and infinite selected positive first moment.  Closing this attempt requires
  second-order scale exactness, potential-average control, or equivalent stopped
  accretive testing from the original coupled packet.
---

# Parent-weighted detector / terminal service original-data proof attempt

This note attempts the requested proof of the parent-weighted detector estimate
from the original data.

## 0. Physical picture before the estimate

The physical object is the coupled material response of an incompressible
viscous packet.  A push does not create a compressible backlog inside the packet.
The pressure field is the whole-field compatibility instruction that tells every
packet, immediately in the material clock, what signed acceleration-level and
higher time-rung response is needed to keep volume fixed.

That pressure-compatible tower is a pre-energy tower.  It is not kinetic energy
already transported through space.  Energy is read from velocity and velocity
differences.  The pressure tower is one rung earlier: acceleration, jerk, and
higher material derivatives, tested against the moving packet frame.

Viscosity is still part of the same participation law.  It acts on every rung of
the velocity-derivative tower through the differentiated parabolic operator.  Its
physical job in this split is not to carry the instantaneous compatibility signal
across the field; its job is to convert and damp the locally received signed
instruction over heat time, so the packet later has a readable velocity/strain
finite difference and an energy-service readout.

In the packet-rest picture, a positive velocity slowing toward rest carries an
opposing acceleration tower.  Higher rungs can oscillate around that descent, but
those oscillations are still signed material-row variation.  They have only three
honest fates in the coupled law: cancel as pressure-compatible signed variation,
descend into viscous heat/strain dissipation, or appear as frame motion,
route/return, legal stopped material, or endpoint material in the same original
packet.

So the \(L^1\) estimate is not looking for a new source.  It is looking for the
finite one-sided service of this same conversion:

\[
\text{instant pressure-compatible pre-energy tower}
\quad\leadsto\quad
\text{heat-lag velocity-derivative/energy readout}.
\]

The physical reason that service should be finite is exactly the no independent
fuel principle.  Pressure has no separate battery, incompressibility has no
compression bank, viscosity is monotone on spatial gradients, and the
first-admission update prevents the same pressure-compatible pulse from being
counted as fresh again at higher selected ratios.  What remains to prove is the
strict quantitative version of that physical statement.

The target detector estimate is

\[
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,Visc_{P,N}
+Paid_P,
\qquad 0<\theta<1 .
\tag{ODP.1}
\]

The equivalent local service form is

\[
\mathcal M_N(Y_N)_+
\le
\theta\nu\|Y_N\|_{\dot H^1(P)}^2
+C_N(u_0)
+\partial_t\mathcal B_P
+dR_P^{legal}
+dStop_P ,
\qquad \theta<1,
\tag{ODP.2}
\]

with \(\mathcal B_P\) bounded below on the same root-fixed material packet.
Integrating `(ODP.2)` gives

\[
\sup_{\tau<T_*}
\int_0^\tau\int_P
\mathcal M_N(Y_N)_+\,da\,dt
\le C_N(u_0).
\tag{ODP.3}
\]

The no-recount machinery already proves the formal implication

\[
(ODP.1)
\Longrightarrow
\text{weighted heat-lag no-recount}
\Longrightarrow
(ODP.3).
\tag{ODP.4}
\]

The issue is whether `(ODP.1)` or `(ODP.2)` follows from the original data
already installed in the repo.

## 1. What the original material row gives

On the stopped material packet,

\[
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{ODP.5}
\]

After differentiating the material tower and testing a selected row, the
signed row is

\[
\partial_t U_{\xi,k,\lambda}
=
\mathsf P_{\xi,k,\lambda}
+\mathsf V_{\xi,k,\lambda}
+\mathsf C_{\xi,k,\lambda}
+\mathsf{Paid}_{\xi,k,\lambda}.
\tag{ODP.6}
\]

Inside the same-time participation tangent, pressure is the elliptic
compatibility row, while the viscous part
is the local heat/strain descent, and \(\mathsf C_{\xi,k,\lambda}\) is the
moving-frame derivative: \(A\), \(G\), transported covectors, collar, Hodge, and
commutator motion.

Integrating over one heat-lag window \(I\) gives

\[
\Delta_IU_{\xi,k,\lambda}
=
\int_I
(\mathsf P_{\xi,k,\lambda}
+\mathsf V_{\xi,k,\lambda}
+\mathsf C_{\xi,k,\lambda}
+\mathsf{Paid}_{\xi,k,\lambda})\,dt .
\tag{ODP.7}
\]

The backward same-parent detector rewrites this as

\[
\Delta_IU_I
=
\langle dK_P,\Phi_I^P\rangle_P+Err_I,
\tag{ODP.8}
\]

where the selected weight is already inside \(\Phi_I^P\) before the child
positive readout is clipped.

Thus the original row proves origin and admission:

\[
\text{selected heat-lag child read}
=
\text{same-parent signed row current tested by a parent detector}.
\tag{ODP.9}
\]

It does not yet prove positive \(L^1\) service.  Positive service is the
one-sided variation of the signed row after selection:

\[
\omega_I|\Delta_IU_I|
=
\omega_I|\langle dK_P,\Phi_I^P\rangle_P+Err_I|.
\tag{ODP.10}
\]

The no-recount update says this quantity is counted on the same parent pulse
once.  The desired estimate says the total parent-weighted one-sided variation
of those pulses is finite.

## 2. Critical half-derivative face of the same demand

The original coupled packet also has the critical Leray-projected coordinate

\[
\partial_t u+\mathbb P(u\cdot\nabla u)=\nu\Delta u .
\tag{ODP.11}
\]

Testing against \(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
B(t),
\tag{ODP.12}
\]

where

\[
B(t)
:=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{ODP.13}
\]

This is a compressed critical scalar identity obtained after Leray projection
and testing by \(\Lambda u\).  Pressure and incompressibility are represented
inside the projection, but the identity no longer exposes the pressure-arrival,
heat-lag response, moving-frame correction, or same-parent no-recount split.

The strict service estimate would follow from

\[
\int_0^\tau B_+(t)\,dt
\le
C(u_0)
+\theta\nu\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad 0<\theta<1.
\tag{ODP.14}
\]

As a downstream scalar consequence, integrating `(ODP.12)` and using `(ODP.14)`
would absorb the positive critical transfer into the viscous term with margin
and yield the finite native reserve.  It does not identify the native
same-parent mechanism that must make the selected heat-lag child bill legal
before the scalar positive part is counted.

## 3. What the standard estimate proves

The standard critical estimate is

\[
|B(t)|
\le
C\|u(t)\|_{\dot H^{1/2}}\,
\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{ODP.15}
\]

Therefore

\[
B_+(t)
\le
C\|u(t)\|_{\dot H^{1/2}}\,
\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{ODP.16}
\]

This gives `(ODP.14)` on a packet whose critical size obeys

\[
C\|u(t)\|_{\dot H^{1/2}}\le \theta\nu .
\tag{ODP.17}
\]

For arbitrary smooth data, `(ODP.17)` is not supplied by the original energy
law.  The coefficient \(\|u(t)\|_{\dot H^{1/2}}\) is scale-critical.  Treating
it as bounded by initial energy or by raw viscous dissipation would use exactly
the reserve that `(ODP.14)` is meant to prove.

Thus the direct analytic derivation closes the small-critical-packet case and
stops for arbitrary data at the strict positive-transfer absorption line.

## 4. Why signed balance and Bessel square mass do not close the gap

The signed identity `(ODP.12)` controls

\[
\int_0^\tau B(t)\,dt
=
{1\over2}\|\Lambda^{1/2}u(\tau)\|_2^2
-{1\over2}\|\Lambda^{1/2}u_0\|_2^2
+\nu\int_0^\tau\|\Lambda^{3/2}u\|_2^2\,dt .
\tag{ODP.18}
\]

This is net signed transfer.  It does not control
\(\int B_+\) without controlling the negative return or the variation of the
same transfer.  That variation is the full same-material service storage.

The detector side has the same issue.  Parent-subtracted Bessel controls fresh
square mass:

\[
\sum_I\|P_{F_I}j_P\|_{\mathcal C_P}^2<\infty .
\tag{ODP.19}
\]

The selected bill is linear and weighted:

\[
\sum_I\omega_I|J_P(P_{F_I}\psi_I^P)|.
\tag{ODP.20}
\]

The half-tail model

\[
\omega_\ell=2^\ell,
\qquad
\Delta_\ell={2^{-\ell}\over \ell+1}
\tag{ODP.21}
\]

has

\[
\sum_\ell\omega_\ell|\Delta_\ell|^2<\infty,
\qquad
\sum_\ell\omega_\ell|\Delta_\ell|=\infty .
\tag{ODP.22}
\]

This is not a Navier-Stokes counterexample.  It is an insufficiency theorem for
the current controls: finite square novelty plus same-parent detection does not
imply finite weighted linear service.

## 5. Exact noncircular ways the proof could close

The attempted derivation shows that a proof of `(ODP.1)` from original data
must supply one of the following equivalent original-packet facts.

Positive critical transfer:

\[
\int_0^\tau B_+(t)\,dt
\le
C(u_0)
+\theta\nu\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad \theta<1.
\tag{ODP.23}
\]

Stopped accretive testing:

\[
\|G_{sel}\|^2
\le
C\langle G,K_PG\rangle
+C(R_{legal}+Stop),
\tag{ODP.24}
\]

with \(K_P\) parent-built and the testing defects Carleson over stopped
subtrees.

Stopped potential-average control:

\[
\int_0^{T_*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{ODP.25}
\]

Positive second-order scale exactness:

\[
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh},
\tag{ODP.26}
\]

with the affine-kernel residual bounded by original-history legal, stop, and
service terms.

These are not different physical laws.  They are four coordinate faces of the
same missing one-sided service theorem: the original pressure-viscosity-
incompressibility packet must turn signed same-parent impulse into finite
positive selected service with strict viscous margin.

## 6. Physical meaning of the \(L^1\) line

The original data proves that pressure has no independent material source, that
a selected heat-lag read belongs to the same parent event, and that viscosity is
the irreversible drain on the same differentiated row.  It also proves signed
balance.

The missing quantitative step is stronger than signed balance.  It says that
the positive one-sided readings of the same signed row cannot accumulate without
being converted into viscous descent, signed pressure cancellation, bounded
moving-frame storage, route/return material, legal stopped material, or endpoint
material in that same packet.

Physically, this is the no pressure battery / no compression bank / no infinite
fresh echo principle in one sentence: after a pressure-compatible pulse is
admitted into the original material history, later selected readings of that
pulse are work of the already charged current, not new pressure fuel.

## 7. Formal audit of that physical picture

To test whether the physical picture has actually been proved, remove retained
current, return, motion, viscosity, legal stopped material, and stop material
from the same parent packet.  A surviving positive service tail would then have
a precise formal shape.

A same-parent pressure-compatible pulse is received first as a signed
acceleration-level instruction.  The local velocity/shear readout becomes
visible after one heat time.  The selected child coordinate magnifies that
finite difference and counts a positive service bill.  No-recount prevents the
same admitted pulse from being fresh again, so a surviving infinite bill cannot
be repeated use of one charged carrier.  It would have to be an infinite train
of first-admitted tiny same-parent pulses whose raw square mass is finite while
the selected linear first moment is not.

Formally, from a failing tail one can choose disjoint stopped blocks
\(\mathcal T_m\) such that

\[
\sum_{I\in\mathcal T_m}
\omega_I
\left|
\langle dK_P,\Phi_I^P\rangle_P
\right|
=1,
\tag{ODP.29}
\]

while the raw parent square content goes to zero:

\[
\sum_{I\in\mathcal T_m}
\left\|
P_{F_I}dK_P
\right\|_{\mathcal C_P}^2
\longrightarrow 0.
\tag{ODP.30}
\]

This is the precise mathematical audit of the apparent ghost-source picture: the
original packet carries vanishing raw square content in the tail, but the
selected heat-lag readout still sees order-one positive service.  That can only
survive as a scale-critical defect measure.  The defect is not a new pressure
source; it is a pressure-memory survivor created by the mismatch between raw
\(L^2\) packet geometry and selected inverse-scale geometry.

Each pulse in this train has one of four physical fates.

1. It resides for one heat time at its frequency; then viscosity pays a fixed
   fraction of it.
2. It cancels with its Calderon-Zygmund pressure partner; then signed pressure
   variation pays it.
3. It changes route, returns, exits, becomes legal material, or stops.
4. It transits through the scale tower without residence, without cancellation,
   and without a paid exit.

The first three fates are already in the paid side of `(ODP.1)`.  A genuine
failure of `(ODP.1)` is therefore exactly the fourth fate: an unexited transit
thread whose selected pressure-memory survives the heat lag while carrying no
raw square charge large enough to pay its selected first moment.

## 8. Transit-thread reduction to the affine pressure-memory survivor

The transit branch is not arbitrary.  In the lifted scale variable
\(\sigma=\log \ell\), the signed scale-descent identity has the form

\[
Y^{fresh}
=
\partial_\sigma\Psi^{fresh}
+S^{spill}
+E .
\tag{ODP.31}
\]

Here \(Y^{fresh}\) is the fresh signed pressure/strain scale source,
\(\Psi^{fresh}\) is the cumulative signed commutator potential, and
\(S^{spill}+E\) is threshold-local collar/spill/soft material.

The selected affine kernel \(\theta_\kappa\) sees the coefficient

\[
\mathcal C_\theta[Y^{fresh}](t)
:=
\int_J\theta_\kappa(\sigma)Y^{fresh}(\sigma,t)\,d\sigma .
\tag{ODP.32}
\]

Inserting `(ODP.31)` and integrating by parts gives

\[
\mathcal C_\theta[Y^{fresh}]
=
-\theta_\kappa(s_0)\Psi^{fresh}(s_0,t)
+{1\over |J|}
\int_J\Psi^{fresh}(\sigma,t)\,d\sigma
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
\tag{ODP.33}
\]

The boundary, spill, and soft terms are paid only when their named collar/legal
estimates are available.  After those are removed, the sole transit survivor is
the scale average

\[
\mathcal P_{avg}^{fresh}(t)
:=
{1\over |J|}
\int_J\Psi^{fresh}(\sigma,t)\,d\sigma .
\tag{ODP.34}
\]

This is the pressure-memory object exposed by the audit.  A surviving transit
readout is not "pressure keeps injecting energy" in an undefined way.  It is:

\[
\text{the affine average of the signed pressure/strain potential survives}
\]

with enough harmonic weight to create selected positive service:

\[
\int_0^{T_*}
H_w(t)
\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
=\infty .
\tag{ODP.35}
\]

Thus `(ODP.1)` is reduced, on the unexited transit branch, to killing
`(ODP.35)`.

## 9. Second proof attack: kill the affine survivor by another scale derivative

The first scale derivative in `(ODP.31)` is one derivative short: the affine
kernel is blind to exact second scale derivatives, not to first derivatives.
The direct way to kill `(ODP.34)` is therefore to prove a second-order
same-parent exactness formula

\[
Y^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh},
\tag{ODP.36}
\]

with

\[
\int_0^{T_*}
H_w(t)
\|\mathcal C_\theta[R^{fresh}](t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{ODP.37}
\]

If `(ODP.36)`--`(ODP.37)` hold, then the affine survivor is paid:

\[
\int_0^{T_*}
H_w(t)
\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{ODP.38}
\]

Then `(ODP.25)` holds; the selected-critical root upper bound follows; the
parent-weighted detector estimate `(ODP.1)` follows by the already installed
no-recount pushforward theorem; and `(ODP.3)` follows.

The attempted derivation of `(ODP.36)` from the current signed scale-descent
identity fails for a definite reason.  The signed identity gives only
\(Y^{fresh}=\partial_\sigma\Psi^{fresh}+S^{spill}+E\).  To get `(ODP.36)`, one
would need a same-parent equation for the potential itself,

\[
\Psi^{fresh}
=
(\partial_\sigma-1)G^{fresh}
+\widetilde R^{fresh},
\tag{ODP.39}
\]

or a direct coercive decay estimate on the affine moments of
\(\Psi^{fresh}\).  Current source-backed notes do not supply `(ODP.39)`.  They
identify the surviving affine average exactly, but they do not prove it decays
or becomes another scale derivative.

## 10. Third proof attack: global signed LP balance

The global signed LP balance removes one possible escape: the affine survivor is
not produced by a bad choice of local scale charts.

With one fixed continuous Littlewood-Paley family,

\[
P_{\le \ell}=\varphi(\ell D),
\qquad
Q_\ell=-\ell\partial_\ell P_{\le \ell},
\tag{ODP.40}
\]

the signed lifted commutator density has a global balance

\[
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+\mathcal S_\ell^{spill}
+\mathcal E_\ell .
\tag{ODP.41}
\]

Thus the pressure-memory survivor is not a cocycle/gluing defect.  It is a
quantitative boundary/residual problem after one global signed scale derivative
has been taken.

When `(ODP.41)` is inserted into the middle-band affine readout, the live
pieces are:

\[
\mathfrak B_N^{upper}(t)
:=
\int(\partial_s\chi_{mid})(s)\Psi(s,t)\,ds,
\tag{ODP.42}
\]

the finite-offset spill/near-corona packet, and the large-gap far-corona
packet

\[
\Pi_N^{mid,far,L}(t)
\le
C_L
\int_0^{\ell_N}
\int_{r\ge c_1\ell}
{\ell\over r}\,
\mathcal A_{\ell,r}(t)
{dr\over r}{d\ell\over \ell}.
\tag{ODP.43}
\]

The same-scale boundary and near-corona pieces are finite-width multiplier
stability problems.  They are not the physical pressure-tail half-tail.  The
large-gap term `(ODP.43)` is the real transit carrier: low/mid material motion
is feeding a higher stress/strain readout through the pressure-compatible
coupled packet.

The weighted enstrophy-tail identity records the same far-corona carrier as

\[
\int_0^T
\sum_{k>N+M}
2^k\,a_k(t)\,\mathcal D_k^\uparrow(t)\,dt,
\tag{ODP.44}
\]

where \(a_k=2^{3k/2}\|\Delta_k u\|_2\) is the active lower/middle amplitude and
\(\mathcal D_k^\uparrow\) is the upper dissipation queue.  Therefore the
far-corona version of the same proof demand is a coercive tail theorem:

\[
\int_0^T
\sum_{j>N}
2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N},
\tag{ODP.45}
\]

or an equivalent entropy inequality

\[
\partial_t\mathcal H_j^\sigma
+c\,2^j\big(\mathcal T_j^\sigma\big)^2
\le
\mathrm{Err}_j^\sigma .
\tag{ODP.46}
\]

Physically, `(ODP.44)` is the last form of the pressure-memory survivor after
the coupled law has done all available routing.  A lower/middle packet keeps
pulling an upper tail along.  Viscosity sees the upper queue, but the selected
bill sees the product of that queue with the active lower/middle carrier.  The
Gold proof needs the coupled pressure-viscosity-incompressibility law to make
that product coercive against the square of the upper queue, up to a bounded
entropy/storage drop.

This is a real continuation of the proof attempt:

\[
(ODP.1)
\Longleftarrow
(ODP.38)
\Longleftarrow
(ODP.36)\text{ or }(ODP.46).
\tag{ODP.47}
\]

The current repo has the global signed identity and the far-corona carrier
identity.  It does not yet have the coercive entropy inequality `(ODP.46)` from
the original data.

## 11. What the continuation proves

The physical story has been put into the same-parent row instead of a vague
inventory word.  The concrete formal survivor is an unexited same-parent
pressure-memory transit thread whose affine potential average has finite raw
square shadow and infinite selected positive first moment.

The current original-data proof proves that every other branch is paid or
reduced:

\[
\begin{aligned}
\text{same pulse reread} &\longrightarrow \text{admitted Schur current},\\
\text{residence} &\longrightarrow \text{viscous heat descent},\\
\text{oscillatory partner retained} &\longrightarrow \text{signed cancellation},\\
\text{route/return/legal/stop} &\longrightarrow \text{paid material},\\
\text{fresh raw square novelty} &\longrightarrow \text{Bessel support}.
\end{aligned}
\tag{ODP.48}
\]

The branch not killed by those mechanisms is the affine pressure-memory transit
survivor, equivalently the far-corona lower-to-upper carrier `(ODP.44)`.  The
next noncircular mathematical act is not another detector, another child
account, or another raw square packing theorem.  It is either `(ODP.36)`
second-order scale exactness, `(ODP.38)` potential-average control, `(ODP.46)`
coercive tail entropy, or an equivalent stopped accretive testing theorem that
forces the affine pressure-memory survivor into viscosity, cancellation, or
paid packet motion.

## 12. Outcome

The proof from currently installed original-data controls does not close.

What is proved:

\[
\text{original row}
\Longrightarrow
\text{same-parent detector origin}
\Longrightarrow
\text{first admission and no-recount}
\Longrightarrow
\text{finite service after `(ODP.1)'}.
\tag{ODP.49}
\]

What is not proved:

\[
\text{original row and raw energy}
\Longrightarrow
(ODP.1).
\tag{ODP.50}
\]

The exact mathematical line still needed is the strict one-sided positive
service absorption `(ODP.23)`, or its equivalent stopped accretive testing /
potential-average / second-order scale-exactness form `(ODP.24)`--`(ODP.26)`.
Without that line, claiming `(ODP.1)` from original data would hide the whole
Gold \(L^1\) theorem inside the word "coupled."

## 13. How the \(L^1\) quantity would be proved

The \(L^1\) quantity is

\[
\sup_{\tau<T_*}
\int_0^\tau\int_P
\mathcal M_N(Y_N)_+\,da\,dt,
\tag{ODP.51}
\]

or, in the heat-lag detector coordinates already installed,

\[
\sum_{I\subset P}\omega_I|\Delta_IU_I|.
\tag{ODP.52}
\]

The proof has to run through the parent packet before positive clipping.  The
installed pushforward already gives

\[
\sum_{I\subset P}\omega_I|\Delta_IU_I|
\le
C_N\mu_P^{pw}(P)+Paid_P .
\tag{ODP.53}
\]

Thus the whole \(L^1\) theorem follows from the parent-weighted estimate

\[
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)+\theta Visc_{P,N}+Paid_P,
\qquad 0<\theta<1.
\tag{ODP.54}
\]

The residence, cancellation, route, return, legal, and stop pieces are already
on the right side of `(ODP.54)`.  After those are removed, `(ODP.54)` is exactly
the affine pressure-memory transit estimate

\[
\int_0^{T_*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+\theta Visc_{P,N}+Paid_P .
\tag{ODP.55}
\]

Here \(\mathcal P_{avg}^{fresh}\) is not a new physical source.  It is the
affine average of the same signed pressure/strain potential that remains after
one global scale derivative, boundary terms, spill, route, return, legal, and
stop have been removed.

So the direct proof is a stopped entropy-storage proof.  Define the same-parent
pressure memory entropy

\[
\mathcal H_P(t)
:=
\sum_{J\in\mathfrak T_P(t)}
H_w(J,t)\,
\|\mathcal P_{avg,J}^{fresh}(t)\|_{L_x^2}^2 ,
\tag{ODP.56}
\]

where \(\mathfrak T_P(t)\) is the stopped transit atlas and the selected weight
is the same one used in the parent detector, before child clipping.  The
moving-frame correction is carried by a bounded storage \(\mathcal B_P\), so the
quantity differentiated is

\[
\mathcal E_P(t):=\mathcal H_P(t)-\mathcal B_P(t).
\tag{ODP.56a}
\]

The needed differential inequality is

\[
{d\over dt}\mathcal E_P(t)
+c\,d\mu_{P,trans}^{pw}(t)
+\bigl(1-\theta\bigr)dVisc_{P,N}(t)
\le
dPaid_P(t)+C_N(u_0)\,d\mathcal R_P(t),
\tag{ODP.57}
\]

with \(c>0\), \(0<\theta<1\), and \(\mathcal E_P(t)\ge -C_N(u_0)\).
Integrating `(ODP.57)` gives

\[
\mu_{P,trans}^{pw}(P)
\le
C_N(u_0)\mathcal R(P)+\theta Visc_{P,N}+Paid_P .
\tag{ODP.58}
\]

Adding back the already classified residence, cancellation, motion, return,
legal, and stop branches gives `(ODP.54)`.  Then `(ODP.53)` gives `(ODP.52)`,
and summing the selected row service gives `(ODP.51)`.

The whole proof therefore reduces to deriving `(ODP.57)` from the original
material row.  The derivation must have this form:

\[
\partial_t\mathcal P_{avg,J}^{fresh}
=
-\nu\,\mathcal L_J\mathcal P_{avg,J}^{fresh}
+\mathcal C_J^{skew}
+\mathcal C_J^{frame}
+\mathcal C_J^{route/return}
+\mathcal C_J^{legal/stop},
\tag{ODP.59}
\]

where the parabolic part is coercive in the stopped transit metric,

\[
2H_w
\langle
-\nu\,\mathcal L_J\mathcal P_{avg,J}^{fresh},
\mathcal P_{avg,J}^{fresh}
\rangle
\le
-c\,d\mu_{P,trans,J}^{pw}
-\bigl(1-\theta\bigr)dVisc_{P,N,J},
\tag{ODP.60}
\]

the pressure/incompressibility part is skew or sign-cancelling,

\[
2H_w
\langle
\mathcal C_J^{skew},
\mathcal P_{avg,J}^{fresh}
\rangle
\le dPaid_J^{cancel},
\tag{ODP.61}
\]

and the moving-frame derivative is the storage derivative,

\[
2H_w
\langle
\mathcal C_J^{frame},
\mathcal P_{avg,J}^{fresh}
\rangle
=
{d\over dt}\mathcal B_J+dPaid_J^{frame}.
\tag{ODP.62}
\]

The physical content of `(ODP.59)`--`(ODP.62)` is the exact packet story: the
instant pressure-compatible pre-energy tower has no source term after the same
parent current is admitted; its only unexited evolution is parabolic conversion
into velocity-gradient dissipation, skew pressure cancellation, moving-frame
storage, or paid exits.

This is the proof route for the \(L^1\) quantity.  It is also the audit line:
the current installed notes contain the signed scale identity and the
parent-detector/no-recount pushforward, but they do not yet contain the
coercive stopped entropy derivation `(ODP.57)`--`(ODP.62)` from the original
coupled material row.

## 14. Derivation of the stopped entropy inequality

Write

\[
Z_J(t):=\mathcal P_{avg,J}^{fresh}(t),
\qquad
h_J(t):=H_w(J,t),
\tag{ODP.63}
\]

for one stopped transit chart \(J\).  The stopped entropy is

\[
\mathcal H_P(t)
=
\sum_{J\in\mathfrak T_P(t)}h_J(t)\|Z_J(t)\|_2^2.
\tag{ODP.64}
\]

The entropy-storage variable is

\[
\mathcal E_P(t)
:=
\mathcal H_P(t)
-\sum_{J\in\mathfrak T_P(t)}\mathcal B_J(t).
\tag{ODP.64a}
\]

Differentiate one chart along the stopped material clock.  The atlas switch,
collar motion, and cutoff-motion terms are denoted by \(dA_J\):

\[
d\bigl(h_J\|Z_J\|_2^2\bigr)
=
\dot h_J\|Z_J\|_2^2\,dt
+2h_J\langle Z_J,D_tZ_J\rangle\,dt
+dA_J .
\tag{ODP.65}
\]

The pressure-memory variable is a stopped scale-average/CZ image of the same
material row.  In the flat model, with \(R_{ij}=(-\Delta)^{-1}\partial_i\partial_j\)
and \(p=R_{ij}(u_i u_j)\), the original Navier-Stokes equation gives

\[
(\partial_t-\nu\Delta)p
=
R_{ij}
\left[
-u\cdot\nabla(u_i u_j)
-u_i\partial_jp
-u_j\partial_ip
-2\nu\,\partial_k u_i\,\partial_k u_j
\right].
\tag{ODP.66}
\]

This identity is the exact physical split in constant-coefficient coordinates:
heat acts on the pressure-compatible object; transport and pressure-force pieces
are signed/CZ cancellation terms; the gradient product is native viscous
strain material.  In the stopped material packet, the same calculation becomes

\[
D_tZ_J
=
-\nu\mathcal L_JZ_J
+S_J^{skew}
+S_J^{visc-src}
+S_J^{frame}
+S_J^{exit}
+Err_J,
\tag{ODP.67}
\]

where \(\mathcal L_J=-\operatorname{div}_{a,J}(G_J\nabla_{a,J})\).  The terms are
typed as follows:

\[
\begin{aligned}
S_J^{skew} &: \text{transport, pressure-force, and CZ signed cancellation},\\
S_J^{visc-src} &: \text{the native heat-lag strain product from }
                 -2\nu\nabla u\nabla u,\\
S_J^{frame} &: \text{derivatives of }A,G,\xi,h_J,\text{ and the moving atlas},\\
S_J^{exit}+Err_J &: \text{route, return, collar, legal, stop, and endpoint terms.}
\end{aligned}
\tag{ODP.68}
\]

Now insert `(ODP.67)` into `(ODP.65)`.

The parabolic term gives the positive measure.  By ellipticity of \(G_J\), the
stopped annular Poincare inequality on the transit chart, and the definition

\[
d\mu_{P,trans,J}^{pw}
:=
\nu h_J\lambda_J^2\|Z_J\|_2^2\,dt,
\tag{ODP.69}
\]

we get

\[
2h_J\langle Z_J,-\nu\mathcal L_JZ_J\rangle\,dt
\le
-c_0\,d\mu_{P,trans,J}^{pw}
-dVisc_{P,N,J}
+dPaid_J^{comm}.
\tag{ODP.70}
\]

Here \(dPaid_J^{comm}\) is only the finite-width commutator/collar error from
localizing the elliptic graph and the heat operator to the stopped chart.

The skew/CZ part has no independent sign.  Its contribution is a signed
pressure-current variation already admitted to the parent current:

\[
2h_J\langle Z_J,S_J^{skew}\rangle\,dt
\le
dPaid_J^{cancel}.
\tag{ODP.71}
\]

The frame terms are exactly the storage derivative plus paid atlas motion:

\[
\dot h_J\|Z_J\|_2^2\,dt
+2h_J\langle Z_J,S_J^{frame}\rangle\,dt
+dA_J
=
d\mathcal B_J+dPaid_J^{frame}+C_N(u_0)\,d\mathcal R_J .
\tag{ODP.72}
\]

The only non-formal estimate is the native heat-lag source budget:

\[
2h_J\langle Z_J,S_J^{visc-src}+Err_J\rangle\,dt
\le
\theta\,dVisc_{P,N,J}
+d\mathcal N_J^{heat}
+dPaid_J^{exit}
+C_N(u_0)\,d\mathcal R_J,
\qquad 0<\theta<1 .
\tag{ODP.73}
\]

This is where the physical statement becomes a theorem.  It says the strain
source created while the pressure-compatible pulse waits one heat time is not a
new pressure battery; it is native heat-lag service, viscous drain, or paid
same-packet exit material.  A Cauchy-Schwarz proof of `(ODP.73)` has to be
Carleson/Hardy in the stopped heat-lag geometry; plain Bessel square mass gives
the half-tail failure already recorded in `(ODP.21)`--`(ODP.22)`.

Summing `(ODP.70)`--`(ODP.73)` over \(J\in\mathfrak T_P(t)\), subtracting the
storage derivative from `(ODP.72)`, using stopped finite overlap, and absorbing
the \(\theta dVisc\) part leaves

\[
d\mathcal E_P(t)
+c\,d\mu_{P,trans}^{pw}(t)
+(1-\theta)dVisc_{P,N}(t)
\le
dPaid_P(t)+C_N(u_0)\,d\mathcal R_P(t).
\tag{ODP.74}
\]

This is `(ODP.57)`.  Integrating `(ODP.74)` over \([0,\tau]\) and using the
lower bound on \(\mathcal E_P\) gives `(ODP.58)`, then `(ODP.54)`, then the
terminal-uniform \(L^1\) service bound by the no-recount pushforward.

Thus the entropy inequality is not another name for the desired \(L^1\) theorem.
It is derived by differentiating the parent pressure-memory entropy-storage,
using the heat part of the original coupled row for coercivity, routing skew
pressure variation to parent current, writing frame motion as storage, and
proving the native heat-lag source budget `(ODP.73)`.

## 15. Hardy-Carleson proof of the native heat-lag source budget

The half-tail survives when the selected readout is treated as a naked scalar
sequence.  It is killed only after the same-parent heat-lag readout is factored
into the two square quantities that the coupled packet actually supplies: pressure
memory residence and native source residence.

For one stopped heat-lag chart \(J\), put

\[
S_J:=S_J^{visc-src}+Err_J,\qquad
\lambda_J:=\text{frequency of }J,\qquad
\Delta t_J\simeq (\nu\lambda_J^2)^{-1}.
\tag{ODP.75}
\]

The entropy source term is

\[
2h_J|\langle Z_J,S_J\rangle|\,dt .
\tag{ODP.76}
\]

Insert the heat scale:

\[
A_J:=(\nu h_J)^{1/2}\lambda_J Z_J,
\qquad
B_J:=\left({h_J\over \nu\lambda_J^2}\right)^{1/2}S_J .
\tag{ODP.77}
\]

Then

\[
2h_J|\langle Z_J,S_J\rangle|\,dt
\le
\varepsilon\|A_J\|_2^2\,dt
+\varepsilon^{-1}\|B_J\|_2^2\,dt .
\tag{ODP.78}
\]

The first term is the pressure-memory residence term and is absorbed into
viscosity/transit measure:

\[
\|A_J\|_2^2\,dt
=
\nu h_J\lambda_J^2\|Z_J\|_2^2\,dt
=
d\mu_{P,trans,J}^{pw}.
\tag{ODP.79}
\]

The second term defines the native heat-lag source charge:

\[
d\mathcal N_J^{heat}
:=
C_\varepsilon
{h_J\over \nu\lambda_J^2}
\|S_J\|_2^2\,dt .
\tag{ODP.80}
\]

Thus `(ODP.73)` follows from the Carleson estimate

\[
\boxed{
\sup_{Q\subset P}
{1\over \mathcal R(Q)}
\sum_{J\subset Q}
\int_{I_J}
{h_J(t)\over \nu\lambda_J^2}
\|S_J(t)\|_2^2\,dt
\le
C_N(u_0)+Paid(Q).
}
\tag{ODP.81}
\]

This is the Hardy-Carleson upgrade.  It is stronger than Bessel square packing
because it tests every descendant subtree \(Q\) in the original material history
and it measures the source at the heat residence scale before selected positive
clipping.

To see exactly why it beats the half-tail, write the selected scalar readout as

\[
\omega_J|\Delta_J|
\le
\|A_J\|_2\,\|B_J\|_2 .
\tag{ODP.82}
\]

If both square measures

\[
\sum_{J\subset Q}\|A_J\|_2^2
\quad\text{and}\quad
\sum_{J\subset Q}\|B_J\|_2^2
\tag{ODP.83}
\]

are Carleson on stopped subtrees, then Cauchy on every subtree gives a finite
linear selected mass.  The model
\(\Delta_\ell=2^{-\ell}/(\ell+1)\), \(\omega_\ell=2^\ell\) can have finite
raw selected square mass, but it cannot also admit a same-parent heat-lag
factorization `(ODP.82)` with both square factors satisfying `(ODP.83)`.  One of
the two factors must carry a divergent square tail.  Physically, either the
pressure memory resides and is viscously seen, or the source resides and is
native heat-lag charge; the naked scalar half-tail hides that residence.

It remains to prove `(ODP.81)` from the original coupled row.  The source has
the material pressure form

\[
S_J
=
P_J\,CZ_J\bigl(\nu\nabla_A v\,\nabla_A v\bigr)
+S_J^{frame/collar}.
\tag{ODP.84}
\]

The frame/collar part is paid by \(dPaid\).  For the principal part, decompose
the strain product by input/output frequency:

\[
\nabla_Av\,\nabla_Av
=
(\nabla_Av)_{<J}(\nabla_Av)_J
+(\nabla_Av)_J(\nabla_Av)_{<J}
+\sum_{K\ge J-O(1)}
(\nabla_Av)_K(\nabla_Av)_{K+O(1)}.
\tag{ODP.85}
\]

The finite-width and high-high pieces are native square terms after parent
subtraction and stopped overlap.  They contribute to \(d\mathcal N^{heat}\) or
paid Bessel novelty.  The only dangerous part is the low/middle carrier times
the upper heat queue.  In shell notation it has the form

\[
\sum_{k>N}
2^k\,a_k(t)\,\mathcal D_k^\uparrow(t),
\tag{ODP.86}
\]

where \(a_k=2^{3k/2}\|\Delta_k u\|_2\) is the active lower/middle amplitude and
\(\mathcal D_k^\uparrow\) is the upper dissipation queue.

The required Hardy step is the stopped tail inequality

\[
\sum_{J\subset Q}
\int_{I_J}
{h_J\over \nu\lambda_J^2}
\|P_JCZ_J(\nu\nabla_Av\,\nabla_Av)\|_2^2\,dt
\le
\eta\,Visc(Q)
+C_\eta\,\mathcal A_{route}(Q)
+Paid(Q),
\tag{ODP.87}
\]

with

\[
\mathcal A_{route}(Q)
:=
\sum_{k>N}
\int_{T(Q)}
2^k\,a_k(t)\,\mathcal D_k^\uparrow(t)\,dt .
\tag{ODP.88}
\]

A discrete Hardy/Schur estimate controls the summation once the route measure
is Carleson:

\[
\sup_{Q\subset P}{\mathcal A_{route}(Q)\over\mathcal R(Q)}
\le
C_N(u_0)+Paid(Q).
\tag{ODP.89}
\]

Equations `(ODP.87)`--`(ODP.89)` imply `(ODP.81)`, hence `(ODP.73)`, hence the
entropy inequality `(ODP.74)`, hence WLF.60 and terminal-uniform \(L^1\).

The proof boundary is now exact.  The Hardy-Carleson embedding itself is
standard once `(ODP.89)` is available: Cauchy at heat scale, parabolic
square-function localization, stopped finite overlap, and discrete Hardy/Schur
summation.  The non-formal theorem still needed is `(ODP.89)`: the active
same-parent route measure must be an original-history Carleson measure.  That is
the heat-lag version of the selected root reserve / active route metric
Carleson theorem, not a new child source and not raw Bessel square packing.

## 16. Active same-parent route measure Carleson from the coupled packet

The physical content of `(ODP.89)` is that a pressure-compatible heat-lag route
cannot be read as fresh positive service at arbitrarily many selected scales
unless the same original coupled packet actually carries the route.  The packet
may carry it as viscous heat-scale service, legal/reselection service, stop, or
native root reserve.  It may not carry it as a child-created positive readout
after the selected weight has already magnified it.

For a stopped parent \(P\), write the active route measure on a descendant tent
\(\widehat Q\subset\widehat P\) as

\[
\mu_A(\widehat Q)
:=
\sum_{k>N}
\int_{T(Q)}
2^k a_k(t)\,\mathcal D_k^\uparrow(t)\,dt .
\tag{ODP.90}
\]

The desired Carleson estimate is

\[
\sup_{Q\subset P}
{\mu_A(\widehat Q)\over \mathcal R(Q)}
\le
C_N(u_0)+Paid(Q).
\tag{ODP.91}
\]

The noncircular proof has to use an original-packet service measure

\[
d\Sigma_P
:=
dVisc_P+dPaid_P+dStop_P+d\mathcal R^{native}_P-d\mathcal B_P ,
\tag{ODP.92}
\]

where \(\mathcal B_P\) is a bounded-below same-parent storage and
\(\mathcal R^{native}_P\) is a root reserve defined before selected positive
clipping.  If one proves the retained density domination

\[
\mu_A(\widehat Q)
\le
C_N\,\Sigma_P(\widehat Q)
\qquad(Q\subset P\text{ retained}),
\tag{ODP.93}
\]

and the original-packet Carleson bound

\[
\Sigma_P(\widehat Q)
\le
C_N(u_0)\mathcal R(Q)+Paid(Q),
\tag{ODP.94}
\]

then `(ODP.91)` follows immediately.  This is the right proof shape: define the
measure on the parent packet first, prove bounded stopped overlap for its
pushforward, and only then allow the selected child to read it.

The useful split is by the heat-lag absorption ratio

\[
\rho_k(t)
:=
{2^k a_k(t)\mathcal D_k^\uparrow(t)
\over
{dVisc_{k}^{heat}\over dt}+{dPaid_k\over dt}+0^+}.
\tag{ODP.95}
\]

On the small-ratio set,

\[
\rho_k(t)\le \theta<1,
\tag{ODP.96}
\]

one has the direct absorption

\[
d\mu_A^{small}
\le
\theta\,dVisc^{heat}+dPaid .
\tag{ODP.97}
\]

The large-ratio set is the only real test.  The required same-parent admission
statement is

\[
d\mu_A^{large}
\le
C_N\bigl(
dStop+dPaid+d\mathcal R^{native}-d\mathcal B
\bigr).
\tag{ODP.98}
\]

In words: once the active coefficient is too large to be absorbed by the local
heat-scale viscous service, the event is no longer an ordinary retained child
readout.  It must be a parent-announced first exit, legal/reselection/reset, a
bounded storage drop, or a native root-reserve atom of the original coupled
packet.  Summing `(ODP.97)` and `(ODP.98)` gives

\[
\mu_A(\widehat Q)
\le
\theta\,Visc^{heat}(Q)
+C_N\bigl(
Stop(Q)+Paid(Q)+\mathcal R^{native}(Q)
+\mathcal B(Q_0)-\mathcal B(Q)
\bigr).
\tag{ODP.99}
\]

If the same-packet reserve satisfies

\[
Visc^{heat}(Q)+Stop(Q)+\mathcal R^{native}(Q)
+\mathcal B(Q_0)-\mathcal B(Q)
\le
C_N(u_0)\mathcal R(Q)+Paid(Q),
\tag{ODP.100}
\]

then `(ODP.91)` follows, and the chain

\[
(ODP.91)\Rightarrow(ODP.81)\Rightarrow(ODP.73)\Rightarrow(ODP.74)
\Rightarrow WLF.60\Rightarrow FGC.25
\tag{ODP.101}
\]

is formal.

The direct Bessel/energy attempt does not prove `(ODP.98)`.  Let

\[
\mu_G(E)
:=
\int_E
|\langle 2\nu S_A,k_\theta\rangle_{\mathfrak H_P}|^2\,
d\mu_{raw}(\theta).
\tag{ODP.102}
\]

The raw stopped frame gives

\[
\mu_G(\widehat P)
\le
C_N\|2\nu S_A\|_{\mathfrak H_P}^2
\le
C_N(u_0).
\tag{ODP.103}
\]

This proves raw same-parent square packing.  It proves that first exits of the
raw density

\[
{\mu_G(\widehat Q)\over \mathcal R(Q)}
\tag{ODP.104}
\]

are finitely packable.  It does not prove that the active selected measure
\(\mu_A\) is dominated by \(\mu_G\).  If \(\mu_G\) is redefined to include the
active weight in \(\mu_A\), `(ODP.103)` becomes exactly `(ODP.91)`, the theorem
being proved.  If \(\mu_G\) remains the raw parent square measure, the critical
half-tail survives: finite raw square mass can still carry infinite selected
linear route mass.

Thus the proof of `(ODP.91)` from the original coupled packet is equivalent, in
this notation, to proving the native large-ratio admission line `(ODP.98)` with
a reserve satisfying `(ODP.100)`.  The known parent-current admission/no-recount
machinery supplies origin, first-entry update, and no repeated fresh charging.
It does not by itself supply the selected critical root reserve
\(\mathcal R^{native}\).  That reserve is the same object called
`SelectedCompressionRootReserve.A` / `OriginalHistorySelectedLogAmplificationCarleson.A`
in the June 27 active-route surfaces.

## 17. Replace the placeholder reserve by projected original-history charge

The previous section still left \(\mathcal R^{native}\) as a name.  The next
noncircular move is to define it from the original coupled packet before any
selected child readout.

For a retained stopped transition edge \(e\subset P\), let \(H_{e^-}\) be the
parent-known heat/active weight and let \(\mathcal P_{e^-}\) be the
parent-predictable visible/silent/exchange span.  The only fresh part is the
parent-subtracted projection

\[
D_e^{new}
:=
(I-\Pi_{\mathcal P_{e^-}})
\int_{I_e}
\Pi_{new}(e)
\Big(
[D_t,\mathcal L_A]w_e
+\operatorname{covector}_e
+\operatorname{frame}_e
+\operatorname{turnstile}_e
+\partial_\sigma Z_e
\Big)\,d\tau
+R_e^{legal}.
\tag{ODP.105}
\]

Define the explicit original-history projected-charge measure

\[
d\mathcal R_P^{proj}
:=
\sum_{e\subset P}
H_{e^-}\|D_e^{new}\|_{\mathcal H_{vis}\oplus\mathcal H_{sil}\oplus\mathcal H_{ex}}^2
+dReturn_P+dReset_P+dStop_P+dLegal_P .
\tag{ODP.106}
\]

This is the concrete candidate for the native reserve in `(ODP.98)`.  It is
legal currency only because every factor in `(ODP.105)` is parent-known or
projected from the original material derivative before the selected positive
child clips the output.

The active route measure is dominated by `(ODP.106)` if the following two
representation/testing statements hold.

First, the parent-subtracted endpoint/source current representation:

\[
M_{parent\text{-}sub}^{fresh}
=
D_AJ_{EP}^{new}
+M_{stop}^{fresh}+M_{legal}^{fresh}+M_{return}^{fresh},
\tag{ODP.107}
\]

with

\[
\int_{\widehat Q}|J_{EP}^{new}|^2\,d\mathcal R
\le
C_N\,\mathcal R_P^{proj}(\widehat Q).
\tag{ODP.108}
\]

Second, stopped endpoint accretive testing:

\[
\int H_w\,|M_{parent\text{-}sub}^{fresh}|^2
\le
C_N
\int_{\widehat Q}|J_{EP}^{new}|^2\,d\mathcal R
+C_N\bigl(Return+Reset+Stop+Legal\bigr)(Q).
\tag{ODP.109}
\]

Equations `(ODP.107)`--`(ODP.109)` give the missing domination

\[
\mu_A(\widehat Q)
\le
C_N\,\mathcal R_P^{proj}(\widehat Q),
\tag{ODP.110}
\]

which is `(ODP.93)` with the placeholder removed.

So the real root-Carleson line is now

\[
\sup_{Q\subset P}
{\mathcal R_P^{proj}(\widehat Q)\over\mathcal R(Q)}
\le
C_N(u_0)+Paid(Q).
\tag{ODP.111}
\]

If `(ODP.111)` holds, then `(ODP.110)` gives `(ODP.91)`, and the rest of the
terminal \(L^1\) chain is formal.

The proof attempt for `(ODP.111)` should be by contradiction.  If it fails, pick
a bad sequence \(P_n\) and normalize

\[
\mathcal R_{P_n}^{proj}(\widehat {P_n})=1,
\qquad
C_N(u_0)\mathcal R(P_n)+Paid(P_n)\to0.
\tag{ODP.112}
\]

After stopped rescaling, bounded-overlap extraction, and parent-frame
compactness, the limit has a nonzero fresh projected route

\[
D_*^{new}\ne0,
\tag{ODP.113}
\]

but every original projected charge vanishes:

\[
\Pi_{new}[D_t,\mathcal L_A]w_*=0,\quad
\Pi_{new}\operatorname{covector}_*=0,\quad
\Pi_{new}\operatorname{frame}_*=0,
\tag{ODP.114}
\]

\[
\Pi_{new}\operatorname{turnstile}_*=0,\quad
\Pi_{new}\partial_\sigma Z_*=0,\quad
Return_*=Reset_*=Stop_*=Legal_*=0.
\tag{ODP.115}
\]

The installed zero-cost dynamic silent freshness rigidity kills the silent part
of this profile after parent-predictable transport is removed:

\[
D_{*,sil}^{new}=0.
\tag{ODP.116}
\]

The visible part is killed by the parent Schur/current projection, and the
exchange part is killed by the vanished projected strain/frame/covector
charges.  Thus the contradiction target is

\[
D_*^{new}=0,
\tag{ODP.117}
\]

contradicting `(ODP.113)`.

This is the correct compactness-rigidity proof shape.  The current repo already
supplies `(ODP.116)` for the dynamic silent branch.  The two clauses still not
installed at this level are:

\[
\text{stopped parent-frame compactness/tightness for the normalized bad sequence,}
\tag{ODP.118}
\]

and

\[
\text{selector-carrier nondegeneracy or paid reselection for the limit readout.}
\tag{ODP.119}
\]

Without `(ODP.118)` a bad sequence can lose the fresh route through a moving
frame or escaping stopped window before the zero-cost rigidity applies.  Without
`(ODP.119)` the selected scalar can keep changing while the fixed Hilbert
carrier increment tends to zero, recreating the half-tail as reselection rather
than as pressure/viscosity service.

Thus the noncircular continuation is:

\[
(ODP.118)+(ODP.119)
\Longrightarrow
(ODP.117)
\Longrightarrow
(ODP.111)
\Longrightarrow
(ODP.91).
\tag{ODP.120}
\]

This is sharper than the previous placeholder.  The missing size theorem is not
"same-parent ownership"; it is a compactness-rigidity theorem for parent-framed
projected charges plus selector nondegeneracy.  Physically, the only way the
selected heat-lag pulse could remain large while every projected coupled charge
vanishes would be for a packet to keep producing fresh pressure-compatible
motion with no frame change, no covector motion, no strain/exchange, no return,
no reset, no stop, and no legal exit.  The parent-subtracted rigidity says that
is inherited transport, not fresh action.  The remaining work is making that
rigidity survive the selected stopping/limit process.

## 18. Compactness/tightness and selector nondegeneracy audit

This section tests `(ODP.118)` and `(ODP.119)` against the installed June 27
surfaces.  They are not equal gaps.

The normalized bad sequence required for `(ODP.111)` is

\[
\mathcal R_{P_n}^{proj}(\widehat {P_n})=1,
\qquad
\int_{\operatorname{Hist}(P_n)}d\Lambda_{P_n}^{orig}
+R_{\rm legal}(P_n)+Stop(P_n)\to0,
\tag{ODP.121}
\]

where \(d\Lambda^{orig}\) may contain only parent-known original-history
derivative, exchange, covector, frame, selector, legal, and stop ledgers.  It
may not contain the root clocks being produced.

The compactness/tightness line would be the nonzero parent-frame extraction

\[
H_{e_n^-}^{1/2}D_{e_n}^{new}
\rightharpoonup D_\infty\ne0
\quad\text{in one stopped same-carrier Hilbert space.}
\tag{ODP.122}
\]

The repo does not prove `(ODP.122)` as a free compactness fact.  The active-weight
bad-profile note reduces it to

\[
\text{SameCarrierBadProfileExtraction.A}
+
\text{ActiveWeightBlowupProjectionCompactness.A}.
\tag{ODP.123}
\]

The concentration-compactness note sharpens the surviving loss further.  After
vanishing, dichotomy, derivative-exact high-weight escape, carrier mismatch,
selector drift, legal loss, and stop loss are removed, the only unclosed term is
the persistent non-derivative affine/root quotient

\[
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}].
\tag{ODP.124}
\]

The exact noncircular payment needed for that quotient is

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\operatorname{Return}_{-}(P)
+C\operatorname{PotAvg}(P)
+C\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)
+Stop(P).
\tag{ODP.125}
\]

The fixed stopped-score return branch is installed relative to the root-geometry
currency.  The fresh potential-average transfer and the strict reset/overrun
Carleson payment are still original-history producer statements.  Thus the
compactness/tightness step does not close by weak compactness alone; it closes
only after `(ODP.125)`, equivalently after the selected-generator storage /
positive critical transfer theorem that gives the original-history root reserve.

The selector-carrier side is different.  On a retained finite stopped selector
chart, the selected log readout is a Lipschitz function of the same parent
carrier:

\[
|\Delta_e^{fixed}\log\rho_{\rm sel}|
\le
C_S\|D_e\|_{\mathcal H_{\rm lift}}
+C_S\|R_e\|_{\mathcal H_{\rm lift}}
+e_e^S .
\tag{ODP.126}
\]

So if the fixed carrier increment tends to zero and the chart remains stopped,
the selected scalar tends to zero with it.  The scalar cannot keep moving inside
that chart.

If the scalar keeps moving by changing label, aperture, pressure-Hodge
coordinate, order-lock gap, collar, frame, or finite rung, the finite-score
selector theorem and the selector-stratum BV closure charge it as paid drift,
reselection, legal loss, or stopped full-exchange action:

\[
\sum_{e\subset P}
|\Delta_e^{lab}\log\rho_{\rm sel}|^2\mathcal R(e)
\le
C_N
\sum_{S\subseteq P}
\bigl(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\bigr)
+R_{\rm legal}(P).
\tag{ODP.127}
\]

Equivalently, every retained selected transaction satisfies

\[
\text{finite parent-known stopped-score first exit}
\quad\text{or}\quad
\text{paid selector/collar/geometric/order-lock/legal/donor/reselection defect}.
\tag{ODP.128}
\]

Therefore `(ODP.119)` is installed in its correct relative form:

\[
\text{SelectorCarrierNondegeneracyOrPaidReselection.A}
\quad\text{relative to}\quad
\text{StoppedFullExchangeActionCarleson.A}
\tag{ODP.129}
\]

and it is not a separate Gold producer.  It prevents the selected scalar from
escaping a vanishing fixed carrier; the remaining size problem is the root
original-history Carleson bound for the same full-exchange/native reserve.

Combining this audit with `(ODP.120)`, the active route measure line is
conditional on the original-history payment of the persistent quotient:

\[
(ODP.125)
+\text{StoppedFullExchangeActionCarleson.A}
\Longrightarrow
(ODP.111)
\Longrightarrow
(ODP.91)
\Longrightarrow
FGC.25.
\tag{ODP.130}
\]

The physical picture is exact here.  The stopped selector is a meter attached to
the parent packet.  While it stays attached, a zero carrier gives zero selected
motion.  If the meter moves, that motion is real packet geometry and is paid.
The unresolved Gold transit is not a meter trick; it is the persistent
pressure-memory quotient `(ODP.124)`, where a same-parent affine average still
has to be forced into return, potential-average cancellation, reset/overrun
payment, viscosity, or the selected-generator storage.

## 19. Backtrack: persistent affine quotient versus pressure-memory transit

The previous continuation tried to identify the persistent quotient `(ODP.124)`
with the pressure-memory survivor isolated in `(ODP.34)`.  That identification
is not installed by the current sources.  It would require a stopped comparison
lemma proving that the affine root quotient is a bounded readout of the
same-parent pressure-memory average on the same carrier:

\[
\|D_e^{pers}\|^2
\lesssim
\|\mathcal P_{avg,J}^{fresh}\|_2^2
+R_e^{return}+R_e^{reset}+R_e^{legal}+Stop_e,
\tag{ODP.131}
\]

This was the first overreach.  `(ODP.131)` is not a consequence of the existing
compactness, selector, or zero-cost rigidity notes.  Those notes say that after
the derivative-exact, selector, carrier-mismatch, legal, and stop branches are
removed, the survivor has the persistent quotient form `(ODP.124)`.  They do not
prove that this quotient is already controlled by the pressure-memory entropy
coordinate `(ODP.34)`.

In the notation of Section 14, a valid producer would be

\[
d\mathcal E_P(t)
+c
\sum_{e\subset P}
H_{e^-}\|D_e^{pers}(t)\|^2
+(1-\theta)dVisc_{P,N}(t)
\le
dPaid_P(t)+C_N(u_0)d\mathcal R_P(t),
\tag{ODP.132}
\]

with \(\mathcal E_P\ge-C_N(u_0)\).  Integrating `(ODP.132)` would give
`(ODP.125)`.  Then `(ODP.130)` would give the active route Carleson estimate and
the terminal \(L^1\) service bound.

The derivation of `(ODP.132)` is not already contained in the native heat-lag
source budget `(ODP.73)`--`(ODP.81)`.  Those lines describe the entropy route
once the stopped pressure-memory variable is the correct carrier.  The missing
bridge is the admission/comparison from persistent affine root quotient to that
carrier, without using the selected-critical root norm as an input.  After that
bridge, the non-formal estimate would be the original-history Carleson bound for
the native heat-lag source:

\[
\sup_{Q\subset P}
{1\over \mathcal R(Q)}
\sum_{J\subset Q}
\int_{I_J}
{h_J(t)\over \nu\lambda_J^2}
\|S_J(t)\|_2^2\,dt
\le
C_N(u_0)+Paid(Q).
\tag{ODP.133}
\]

This is adjacent to the theorem previously named
`SelectedGeneratorStorageCoercivity.A`, `PositiveCriticalTransferBound.A`, and
the selected weighted root reserve.  The compactness/tightness audit above
removes selector escape and localizes the bad sequence to the persistent affine
quotient; it does not by itself prove the quotient-to-pressure-memory admission,
`(ODP.132)`, or `(ODP.133)` from arbitrary original data.

## 20. Backtrack: positive critical transfer is not a completed equivalence

The source in `(ODP.133)` is not an extra forcing term.  In flat coordinates it
is the Calderon-Zygmund image of the native viscous strain product:

\[
S_J
=
P_JCZ_J\bigl(\nu\nabla u\nabla u\bigr)
+S_J^{frame/collar}.
\tag{ODP.134}
\]

The frame/collar term is already in paid material.  The principal term is the
compressed positive critical scalar face obtained after the coupled packet has
been projected and tested.  Testing the Leray-projected equation against
\(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
B(t),
\tag{ODP.135}
\]

where

\[
B(t)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{ODP.136}
\]

The intended comparison is to the positive-transfer absorption

\[
\int_0^\tau B_+(t)\,dt
\le
C_N(u_0)
+\theta\nu
\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1.
\tag{ODP.137}
\]

The second overreach was treating `(ODP.133)` and `(ODP.137)` as an installed
equivalence.  The source surfaces say the stopped heat-lag source Carleson
estimate, selected-generator storage coercivity, and positive critical transfer
are different compressed/readout faces of the same hard block.  They do not
prove that the stopped heat-lag parent/child admission estimate can be replaced
by the global scalar positive-transfer estimate.

The dyadic flux identity makes the same object visible without hiding pressure
inside a scalar.  Let \(u_j=P_ju\), \(E_j={1\over2}\|u_j\|_2^2\), and

\[
{d\over dt}E_j(t)+\nu\|\nabla u_j(t)\|_2^2=\mathcal B_j(t).
\tag{ODP.138}
\]

For the cumulative upward flux

\[
\Pi_j(t):=\sum_{k>j}\mathcal B_k(t),
\tag{ODP.139}
\]

one has \(\mathcal B_j=\Pi_{j-1}-\Pi_j\), hence the critical transfer is the
weighted one-sided upcascade:

\[
B_+(t)
\lesssim
\sum_j 2^j[\Pi_j(t)]_+
+R_{LP}(t).
\tag{ODP.140}
\]

The dyadic reduction shows the target form of the same hard block:

\[
\int_0^\tau
\sum_j2^j[\Pi_j(t)]_+\,dt
\le
C_N(u_0)
+\theta\nu
\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid,
\qquad
\theta<1.
\tag{ODP.141}
\]

The standard analytic estimate gives only

\[
|B(t)|
\le
C\|u(t)\|_{\dot H^{1/2}}
\|\Lambda^{3/2}u(t)\|_2^2.
\tag{ODP.142}
\]

This proves `(ODP.137)` on small critical packets.  For arbitrary data it is
not strict because the coefficient is the same scale-critical quantity that the
native reserve is trying to control.

So the direct continuation does not close the compactness step.  It exposes the
same unsupplied producer in another coordinate:

\[
\text{weighted no-free-upcascade/native-birth packing on stopped subtrees}
\quad\text{would imply}\quad
(ODP.141),(ODP.137),\text{ and }(ODP.133)
\quad\text{after the stopped testing/admission bridges.}
\tag{ODP.143}
\]

In the physical packet language, every positive upward refill must be assigned
with bounded multiplicity to lower-band carry, same-history native birth,
viscous residence, return/reset, legal material, or stop before selected
readout.  The installed compactness and selector work proves that the meter
cannot fake this assignment.  What is still not proved from arbitrary original
data is the stopped accretive testing/native-birth packing theorem that would
make this assignment quantitative with a strict \(\theta<1\) margin.

## 21. Audit: the Leray scalar is the compression that hides the object

The source audit does not install a new theorem named
`CoupledParentRowPositiveService.A`.  That was an unaudited relabeling.

The checked repo object is the heat-lag parent/child relation already written in
`(HLG.12a)`, `(WPC.4)`, and `(WLF.25c)`: a selected child sees the weighted
finite-difference bill

\[
\omega_I|\Delta_IU_I|,
\tag{ODP.144}
\]

while the parent side is the original pressure-compatible material push
instruction before it becomes a velocity-energy square:

\[
\Delta_IU_I
=
\int_I
\Big(
\mathsf P_{\xi,k,\lambda}
+\mathsf V_{\xi,k,\lambda}
+\mathsf C_{\xi,k,\lambda}
+\mathsf{Paid}_{\xi,k,\lambda}
\Big)(t)\,dt .
\tag{ODP.145}
\]

This is the physical object that the scalar

\[
B(t)
:=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\tag{ODP.146}
\]

compresses away.  The scalar is a legitimate global critical identity after
Leray projection and testing by \(\Lambda u\), but it has already collapsed the
pressure-compatible arrival, one-heat-time velocity response, moving-frame
storage, route/return/legal/stop material, and fresh-vs-retained parent-current
split into one number.

So the audited correction is sharper than "prove \(B_+\)."  The local Gold line
is the already-written currency inequality

\[
\omega_I|\Delta_IU_I|
\le
C[q_I\,dq_I]_+
+d\mathcal N_I^{heat}
+dMotion_I
+dReturn_I
+\theta dVisc_I
+dLegal_I
+dStop_I,
\qquad \theta<1,
\tag{ODP.147}
\]

with the fresh branch controlled by the parent push-variation form

\[
\omega_I
\left|J_P(\psi_I^{fr})\right|
\le
\int_P\alpha_I\,d\mu_P^{push}
+\theta\,dVisc_I
+dMotion_I+dReturn_I+dLegal_I+dStop_I,
\qquad
\sum_I\alpha_I\le C_N.
\tag{ODP.148}
\]

Here pressure is the leading compatible push instruction, and viscosity is the
one-heat-time material response/descent in the same differentiated row.  The
child is the selected weighted finite-difference readout.  The proof must show
that this child readout cannot recount the same pressure-compatible parent push
as fresh positive service at every higher ratio level.

`PositiveCriticalTransferBound.A` remains a compressed scalar face of this same
hard block only after the heat-lag/no-recount admission has been accounted for.
Using \(B_+\) as the primary object is exactly the compression error: it hides
the actual same-parent pressure-arrival to viscous/velocity-response transport
that the MPP route is trying to prove finite in \(L^1\).

## 22. Ownership audit: the repo already contains the native idea

The source audit of the native-reserve surfaces shows that the live idea is
already present in the repo and should not be rediscovered conversationally.

The installed part is source attachment plus same-chain nonreuse.  A retained
selected high-ratio birth is not detached from the original packet, and a strict
descendant cannot keep rereading the same spent source direction for free.  In
the heat-lag language, the first pressure-compatible push is a same-parent
event, and later child finite-difference reads are not allowed to become new
parents merely by changing zoom level.

The non-installed line is the selected-scale native atom theorem.  Raw source
attachment gives heat-scale mass; Gold needs selected-scale mass.  The repo
states this as

\[
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{ODP.149}
\]

with

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}
\rho
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P)+Stop(P).
\tag{ODP.150}
\]

In the minimal-first-birth surface, the same theorem becomes the parent-known
critical frame:

\[
\omega_\gamma
\lesssim
|\langle M_\gamma,\varphi_\gamma\rangle|^2
+Paid(\gamma),
\qquad
\|\varphi_\gamma\|_{\operatorname{Cap}_{crit,P}}\le C_N,
\tag{ODP.151}
\]

and

\[
\sum_{\gamma\subset P}
|\langle D_AJ,\varphi_\gamma\rangle|^2
\le
C_N\int_{\operatorname{Hist}(P)}|J|^2\,d\mathcal R_{crit}
+Paid(P).
\tag{ODP.152}
\]

This is the exact bridge from the heat-lag \(L^1\) problem to the native-reserve
Gold hinge.  `(WLF.25c)` asks for the fresh heat-lag child bill to consume
parent push-variation with bounded selected overlap.  `(ODP.149)`--`(ODP.152)`
are the root-native form of that same request: the fresh selected birth must
have a parent-known critical atom of selected-scale size, and those atoms must
pack with bounded multiplicity from original data.

Thus the next proof attempt should not start from \(B(t)\), and it should not
re-prove same-parent detection or spent-source nonreuse.  It should attack the
two-frame statement `(ODP.151)`--`(ODP.152)` directly in the original
pressure-viscosity-incompressibility material packet.

## 23. Proceeding: same-parent Volterra quotient proof unit

The checked far-corona and Volterra notes put `(ODP.151)`--`(ODP.152)` in the
right physical order.  The same-parent pressure-compatible pulse has already
entered the original packet before the child clips a positive readout.  The
only remaining way to lose \(L^1\) control is for one admitted heat-lag
response to keep presenting a new selected-scale positive face as the ratio
changes.

In continuum scale language that survivor is the fresh far-corona two-scale
density

\[
\mathcal A_{\ell,r}^{fr}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r^{fr}(x,t)\,
\tau_\ell^{H^1,fr}[u](x,t)\,dx,
\qquad r\ge c_1\ell ,
\tag{ODP.153}
\]

with the explicit gap-kernel packet

\[
\Pi_{N,P}^{fr,far,L}
\le
C_L
\int_0^{T_*}
\int_0^{\ell_N}
\int_{r\ge c_1\ell}
{\ell\over r}\,
\mathcal A_{\ell,r}^{fr}(t)
{dr\over r}{d\ell\over \ell}\,dt
+Paid(P).
\tag{ODP.154}
\]

Writing \(s=\log r\), \(I=[s_0,s_1]\), and
\(\kappa=\log c_1\), this is the weighted lower-triangular response

\[
F(s,t)
:=
\int_{s_0}^{s-\kappa}
\widetilde Z^{fr}(\sigma,t)\,d\sigma,
\qquad
w(s,t):=a(e^s,t),
\tag{ODP.155}
\]

and the relevant square packet-work readout is

\[
\mathrm{FCTS}^{fr}_P
:=
\int_0^{T_*}
\int_I
w(s,t)\|F(s,t)\|_{L_x^2}^2\,ds\,dt .
\tag{ODP.156}
\]

The exact lower-triangular split gives

\[
\int_I w\|F\|_{L_x^2}^2\,ds
=
\int_I w\|(I-P_w)F\|_{L_x^2}^2\,ds
+
H_w(t)\|c_F(t)\|_{L_x^2}^2,
\tag{ODP.157}
\]

where

\[
H_w(t):={|I|^2\over\int_Iw(s,t)^{-1}\,ds},
\qquad
c_F(t):={1\over |I|}\int_I F(s,t)\,ds .
\tag{ODP.158}
\]

So the exact proof unit has two parts, both inside the same original packet:

\[
\mathrm{DER}^{fr}_P:\quad
\int_0^{T_*}\int_I
w\|(I-P_w)F\|_{L_x^2}^2\,ds\,dt
\le
\eta\nu\int_0^{T_*}D_{P,N}(t)\,dt
+C_N(u_0)\mathcal R(P)+Paid(P),
\tag{ODP.159}
\]

and

\[
\mathrm{AQK}^{fr}_P:\quad
\int_0^{T_*}
H_w(t)\|c_F(t)\|_{L_x^2}^2\,dt
\le
\eta\nu\int_0^{T_*}D_{P,N}(t)\,dt
+C_N(u_0)\mathcal R(P)+Paid(P).
\tag{ODP.160}
\]

Together they imply

\[
\mathrm{DER}^{fr}_P+\mathrm{AQK}^{fr}_P
\Longrightarrow
\mathrm{FCTS}^{fr}_P
\Longrightarrow
\mathrm{Car}^{fr}_P
\Longrightarrow
(ODP.151)\text{--}(ODP.152)
\Longrightarrow
(ODP.147)
\Longrightarrow
FGC.25 .
\tag{ODP.161}
\]

The derivative half `(ODP.159)` is the statement that the non-persistent scale
response is real packet variation, hence exact-in-scale material motion with
viscous, route, return, legal, and stop payment.  The persistent half
`(ODP.160)` is the root pressure-memory question.

Fubini identifies the persistent coefficient exactly:

\[
c_F(t)
=
\int_J
\theta_\kappa(\sigma)\,
\widetilde Z^{fr}(\sigma,t)\,d\sigma,
\qquad
J=[s_0,s_1-\kappa],
\tag{ODP.162}
\]

where

\[
\theta_\kappa(\sigma)
:=
{(s_1-\kappa)-\sigma\over |I|}
\mathbf 1_J(\sigma),
\qquad
\theta_\kappa''=0\quad\text{on }J .
\tag{ODP.163}
\]

Thus the persistent root mode only sees the affine quotient of the fresh scale
source.  The signed scale-descent identity gives only one scale derivative:

\[
\widetilde Z^{fr}
=
\partial_\sigma\Psi^{fr}
+S^{spill}+E .
\tag{ODP.164}
\]

Substituting `(ODP.164)` into `(ODP.162)` gives

\[
c_F(t)
=
-\theta_\kappa(s_0)\Psi^{fr}(s_0,t)
+{1\over |I|}\int_J\Psi^{fr}(\sigma,t)\,d\sigma
+\mathcal C_\theta[S^{spill}](t)
+\mathcal C_\theta[E](t).
\tag{ODP.165}
\]

This is the precise reason the first-order signed descent does not close the
Gold \(L^1\) line: the affine quotient still sees the potential average.  The
needed noncircular supplier is therefore one of the following original-packet
statements.

Second-order positive scale exactness:

\[
\widetilde Z^{fr}
=
(\partial_\sigma-1)\partial_\sigma G^{fr}
+R^{fr},
\tag{ODP.166}
\]

with

\[
\int_0^{T_*}
H_w(t)
\|\mathcal C_\theta[R^{fr}](t)\|_{L_x^2}^2\,dt
\le
\eta\nu\int_0^{T_*}D_{P,N}(t)\,dt
+C_N(u_0)\mathcal R(P)+Paid(P),
\tag{ODP.167}
\]

or potential-average control:

\[
\int_0^{T_*}
H_w(t)
\left\|
{1\over |I|}\int_J\Psi^{fr}(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2\,dt
\le
\eta\nu\int_0^{T_*}D_{P,N}(t)\,dt
+C_N(u_0)\mathcal R(P)+Paid(P).
\tag{ODP.168}
\]

Either `(ODP.166)`--`(ODP.167)` or `(ODP.168)`, together with paid spill/error
control, proves `(ODP.160)`.  Then `(ODP.159)` and `(ODP.160)` feed through
`(ODP.161)` to the terminal-uniform \(L^1\) positive-coupled-work line.

This is the current exact mathematical form of Thomas's physical picture.  The
instant pressure-compatible pre-energy tower may arrive everywhere in the
material clock, and viscosity may take heat time to convert that instruction
into velocity-derived energy readout, but the same pulse cannot be counted as
fresh positive coupled work/readout at every higher ratio unless its affine
pressure-memory quotient survives the weighted root test `(ODP.160)`.  Killing
that quotient by second-order scale exactness or by potential-average control is
exactly the \(L^1\) relationship between the pressure-arrival tower and the
viscous/velocity readout tower.

## 24. Adjacent Schur/no-reuse audit: what it contributes to the quotient kill

The adjacent paid-parent-current and affine Schur notes do not need to be
reproved.  Their installed contribution is categorical: after first admission,
a same-carrier positive direction cannot remain "perpendicular" to the paid
parent current forever.  First entry is fresh Bessel novelty; retained
production is Schur current work; route, return, metric motion, legal, and stop
are paid packet geometry.

Applied to `(ODP.160)`, that says the affine quotient must be represented as a
paid parent-current state before the selected child reads it.  On a stopped
scale interval \(J\), set

\[
b(s)=(1,s)^T,
\qquad
\mathsf G_J(t)=\int_J w_J(s,t)^{-1}b(s)b(s)^T\,ds,
\tag{ODP.169}
\]

and

\[
m_J(t,x)=\int_J b(s)\widetilde Z^{S,new}(s,t,x)\,ds .
\tag{ODP.170}
\]

Then every affine quotient readout satisfies

\[
H_w(t)\|c_\theta(t)\|_{L_x^2}^2
\le
C_\kappa
\int
\langle m_J(t,x),\mathsf G_J(t)^{-1}m_J(t,x)\rangle\,dx .
\tag{ODP.171}
\]

The right side is the Schur storage

\[
\mathfrak S_J(t)
:=
\int
\langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{ODP.172}
\]

Differentiating along the stopped material history gives

\[
D_t\mathfrak S_J
=
2\int\langle \mathsf G_J^{-1}m_J,D_tm_J\rangle\,dx
-
\int\langle
\mathsf G_J^{-1}m_J,
(D_t\mathsf G_J)\mathsf G_J^{-1}m_J
\rangle\,dx .
\tag{ODP.173}
\]

So the Schur storage would prove the affine quotient kill if the stopped
transitions satisfy the accretive storage inequality

\[
c\,H_w\|c_\theta^+(t)\|_{L_x^2}^2\,dt
+
d\mathfrak S_J(t)
\le
C\,H_w\|c_\theta^-(t)\|_{L_x^2}^2\,dt
+
C\,\mathfrak S_J\,d\mathcal K_J^{geom}
+
dFresh_J+dReturn_J+dLegal_J+dStop_J ,
\tag{ODP.174}
\]

with

\[
d\mathcal K_J^{geom}
:=
\|\mathsf G_J^{-1/2}d\mathsf G_J\mathsf G_J^{-1/2}\|_{\rm op,+}.
\tag{ODP.175}
\]

This is the exact place where the adjacent no-reuse proof attaches to the
Gold \(L^1\) line.  It turns repeated admitted affine production into Schur
storage work.  It does not by itself prove that every selected affine
transition has been admitted into the paid parent-current state with a
predictable weight.

That admission is the remaining theorem shape:

\[
\mathcal C_\theta[Z_e]
=
B_e+D_e+R_e,
\tag{ODP.176}
\]

where \(B_e\) is the parent-predictable inherited affine component, \(D_e\) is
the lifted innovation orthogonal to the parent affine span in the parent-known
weighted Hilbert space, and \(R_e\) is paid collar/selector/legal error.  The
required Bessel square-packing is

\[
\int
\left\|\sum_e D_e\right\|_{H_{e^-}}^2
\lesssim
\sum_e\int H_{e^-}(t)\|D_e(t)\|_{L_x^2}^2\,dt
+Paid(P),
\tag{ODP.177}
\]

with every \(H_{e^-}\) parent-announced before child positive clipping.  After
`(ODP.176)`--`(ODP.177)`, the predictable inherited part routes to the
stopped primitive return/potential-average record, and the innovation part
routes to the critical reset/log-scale-derivative carrier:

\[
\sum_{e\in\mathscr E_{\rm rep}}H_{e^-}\|B_e\|^2
\le Return(P)+\text{potential-average storage}+Paid(P),
\tag{ODP.178}
\]

\[
\sum_{e\in\mathscr E_{\rm reset}}H_{e^-}\|D_e\|^2
\le ResetBV(P)+LogScaleCarrier(P)+Paid(P).
\tag{ODP.179}
\]

Thus the adjacent no-reuse proof solves the false "repeated perpendicular
channel" and supplies the Schur algebra for retained admitted production.  The
still-open Gold proof, in this quotient coordinate, is the admission/update and
packing package

\[
(ODP.176)\text{--}(ODP.179)
\Longrightarrow
(ODP.174)
\Longrightarrow
(ODP.160)
\Longrightarrow
FGC.25 .
\tag{ODP.180}
\]

Physically, this is the point: once the pressure-compatible pulse has a
parent-current coordinate, repeated motion in that coordinate is no longer a
new source.  It is either stored Schur current, negative return, reset/metric
motion, viscosity, legal/stop material, or fresh Bessel novelty.  The only
remaining mathematical proof is to show that the affine pressure-memory
transitions enter that parent-current state with the weight fixed from the
parent history before the selected child reads them.
