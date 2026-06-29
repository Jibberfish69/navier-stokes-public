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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
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

The pressure part is the instantaneous compatibility actuator, the viscous part
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

This is the same pressure-viscosity-incompressibility law in critical-transfer
coordinates.  Pressure and incompressibility are inside the Leray projection;
the viscous drain is \(\nu\|\Lambda^{3/2}u\|_2^2\).

The strict service estimate would follow from

\[
\int_0^\tau B_+(t)\,dt
\le
C(u_0)
+\theta\nu\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad 0<\theta<1.
\tag{ODP.14}
\]

Indeed, integrating `(ODP.12)` and using `(ODP.14)` absorbs the positive
critical transfer into the viscous term with margin and yields the finite
native reserve.  Through the already installed native-map/no-recount relay,
that reserve gives `(ODP.1)` and then `(ODP.3)`.

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
