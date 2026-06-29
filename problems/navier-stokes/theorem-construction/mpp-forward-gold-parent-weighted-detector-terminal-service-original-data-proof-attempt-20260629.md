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
  half-derivative energy identity.  These imply the desired Gold relay once a
  strict one-sided positive-service absorption is supplied.  The derivation from
  currently installed original-data controls stops at the positive critical
  transfer / stopped accretive testing line: standard estimates yield only
  C||u||_{\dot H^{1/2}} times the viscous reserve, which is strict only on small
  critical packets.  For arbitrary smooth data the parent-weighted detector
  estimate remains equivalent to the nonlocal same-parent service storage law,
  not a consequence of raw energy, raw Bessel square mass, or signed balance
  alone.
---

# Parent-weighted detector / terminal service original-data proof attempt

This note attempts the requested proof of the parent-weighted detector estimate
from the original data.

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

## 6. Physical reading of the failed line

The original data proves that pressure has no independent material source and
that a selected far-packet heat-lag read belongs to the same parent event.  It
also proves that viscosity is the irreversible drain.

The unproved statement is stronger.  It says that after all reuse, return,
motion, legal, stop, and viscous residence have been removed, the pressure-tail
cannot keep presenting fresh one-sided positive service at selected scales
while its signed net and square mass remain finite.

Physically, this is the "no pressure battery / no compression bank / no infinite
fresh echo" principle.  The current equations express that principle as a
signed balance.  The Gold estimate needs it as a strict one-sided \(L^1\)
absorption.

## 7. Outcome

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
\tag{ODP.27}
\]

What is not proved:

\[
\text{original row and raw energy}
\Longrightarrow
(ODP.1).
\tag{ODP.28}
\]

The exact mathematical line still needed is the strict one-sided positive
service absorption `(ODP.23)`, or its equivalent stopped accretive testing /
potential-average / second-order scale-exactness form `(ODP.24)`--`(ODP.26)`.
Without that line, claiming `(ODP.1)` from original data would hide the whole
Gold \(L^1\) theorem inside the word "coupled."
