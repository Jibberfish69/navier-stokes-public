---
theorem_id: forward-gold-heat-lag-gap-finite-difference-l1-reduction-20260629
status: proof-reduction-to-heat-lag-finite-difference-telescoping-open
created: 2026-06-29
problem: navier-stokes
route: forward-gold centered NS gap / heat-time lag finite-difference
attacks:
  - PVD.29_pressure_tail_cancellation_damping
  - PTG.19_same_parent_transit_inequality
  - FGC.20_accretive_same_parent_service_inequality
  - FGC.25_terminal_uniform_coupled_jet_service_L1
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-tail-good-lambda-l1-proof-reduction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
completion_truth: >-
  Formalizes the pressure-lead / velocity-response micro-time gap as a
  heat-scale finite-difference inequality for the centered Navier-Stokes tower
  gap.  This sharpens the L1 target: a positive pressure-compatible read at a
  far packet is not yet selected action while its heat-time velocity response
  is pending.  The note proves the row-level heat-lag inequality and shows that
  a first-ratio finite-difference telescoping theorem would imply the pressure
  tail estimate, the strict transit inequality, and FGC.25.  It does not claim
  Gold closure because the weighted heat-lag telescoping theorem is the
  remaining noncircular PDE estimate.
---

# Heat-lag gap finite-difference \(L^1\) reduction

The pressure tower can be registered elliptically at \(t>0\) before the selected
far packet has a readable velocity/energy response.  That is not a hidden
storage term.  It is a small heat-time lag between the instantaneous
pressure-compatible account and the parabolic material response.

The right object is the centered gap between the two equal-opposite tower
readouts.

## 1. Centered gap

The terminal stopping-jet note gives, for a stopped material packet and selected
direction \(\xi(t)\),

\[
\mathsf N_{\xi,k}+\mathsf D_{\xi,k+1}=0 .
\tag{HLG.1}
\]

Equivalently,

\[
\mathsf G_{\xi,k}
:=
\mathsf N_{\xi,k}-\mathsf D_{\xi,k+1}
=2\mathsf N_{\xi,k}
=-2\mathsf D_{\xi,k+1}.
\tag{HLG.2}
\]

Thus the selected positive pressure-compatible account is one face of the
centered gap:

\[
[\mathsf N_{\xi,k}]_+
=
{1\over2}[\mathsf G_{\xi,k}]_+ .
\tag{HLG.3}
\]

The half-tail barrier appears when the proof reads only this one face and does
not charge the heat-time response of the opposite face.

## 2. Heat-window row identity

Fix a dyadic frequency \(\lambda\) and let

\[
h_\lambda={c_0\over \nu\lambda^2}
\tag{HLG.4}
\]

be one heat response time, with \(c_0>0\) fixed small.  Put

\[
U_{\xi,k,\lambda}(t)
:=
\xi(t)\cdot P_\lambda\partial_t^k v(t),
\tag{HLG.5}
\]

where \(v=u\circ X\) is the material velocity.  The differentiated material row
is

\[
\partial_tU_{\xi,k,\lambda}
=
\mathsf P_{\xi,k,\lambda}
+\mathsf V_{\xi,k,\lambda}
+\mathsf C_{\xi,k,\lambda}
+\mathsf{Paid}_{\xi,k,\lambda},
\tag{HLG.6}
\]

where \(\mathsf P\) is the pressure-compatible actuator, \(\mathsf V\) is the
viscous rung at the same derivative level, and \(\mathsf C\) is the moving-frame
product-rule correction.  Viscosity is not confined to the base velocity
equation; it acts on this row and every differentiated row.

Integrating `(HLG.6)` on a heat window \(I=[t,t+h_\lambda]\) gives

\[
\int_I\mathsf P_{\xi,k,\lambda}
=
\Delta_IU_{\xi,k,\lambda}
-\int_I\mathsf V_{\xi,k,\lambda}
-\int_I\mathsf C_{\xi,k,\lambda}
-\int_I\mathsf{Paid}_{\xi,k,\lambda},
\tag{HLG.7}
\]

where

\[
\Delta_IU_{\xi,k,\lambda}
:=
U_{\xi,k,\lambda}(t+h_\lambda)-U_{\xi,k,\lambda}(t).
\tag{HLG.8}
\]

Taking the positive part yields the heat-lag inequality

\[
\int_I[\mathsf P_{\xi,k,\lambda}]_+
\le
|\Delta_IU_{\xi,k,\lambda}|
+\int_I[-\mathsf V_{\xi,k,\lambda}]_+
+\int_I[-\mathsf C_{\xi,k,\lambda}]_+
+\int_I[\mathsf P_{\xi,k,\lambda}]_-
+\int_I\mathsf{Paid}_{\xi,k,\lambda}.
\tag{HLG.9}
\]

This is the formal version of the physical picture: a far-packet pressure
account can lead the velocity readout, but only across one heat response time.
After rescaling by \(h_\lambda\), the lag becomes a finite-difference response
term \(\Delta_IU_{\xi,k,\lambda}\).

## 3. Incompressible-viscous compensation

The plank analogy fails exactly where the fluid is not rigid.  Incompressibility
does not force identical velocity along the pushed line.  It forces zero
divergence:

\[
\nabla_A\cdot v=0 .
\tag{HLG.10}
\]

If the selected axial component decreases along the pushed direction, the
missing axial motion is carried by transverse expansion, shear, pressure
readjustment, and viscous dissipation in the surrounding packets.  In frame
coordinates adapted to \(\xi\),

\[
\partial_\xi v_\xi
=
-\operatorname{tr}_{\xi^\perp}\nabla_Av_{\xi^\perp}
+\mathsf{Frame}_{\xi}.
\tag{HLG.11}
\]

Thus a positive axial pressure lead that is not yet a velocity readout is still
same-law material: it is pending heat-lag response, transverse incompressible
compensation, viscous shear, pressure cancellation, frame/collar motion, return,
legal, stop, or endpoint material.

## 4. The finite-difference theorem that closes the pressure tail

After retained Calderon-Zygmund pressure cancellation, legal/stop/return exits,
and viscous residence are removed, the unexited transit branch is governed by
the finite-difference terms in `(HLG.9)`.  The required theorem is:

\[
\boxed{
\sum_{\gamma\subset P}
\sum_{I\in\gamma}
\omega_I\,|\Delta_IU_{\xi,k,\lambda(I)}|
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}
}
\tag{HLG.12}
\]

where \(\gamma\) ranges over same-parent pressure-transit threads, \(I\) ranges
over their heat windows, and \(\omega_I\) is the selected first-ratio weight of
that pressure lobe.  This is the no-recount statement: the same heat-lag child
response cannot be counted as fresh positive pressure service at every higher
ratio level.

Equivalently, each unexited same-parent thread satisfies

\[
d\mu_{L+1}^{\gamma}
\le
\left({1\over2}-\varepsilon_0\right)d\mu_L^\gamma
+dB_L^\gamma
+dT_L^\gamma,
\qquad
\sum_L2^L\int dT_L^\gamma<\infty,
\tag{HLG.13}
\]

where \(dT_L^\gamma\) is the heat-lag finite-difference response from
`(HLG.12)`.  The strict margin comes from forbidding the child response from
being reread as an independent same-parent pressure lead at the next level.

Then the good-lambda summation in the pressure-tail note applies with
\(B_L+dT_L\) in place of \(B_L\), giving

\[
\sum_{L\ge0}2^LN_L
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{HLG.14}
\]

Layer-cake gives the pressure-tail estimate `(PVD.29)` / `(PTG.2)`.

## 5. Terminal asymmetry

At the first positive instant, pressure may lead velocity over one heat-time
window.  At a true terminal rest, that lead cannot survive one heat-time after
the velocity/shear response has vanished.  For every dyadic scale,

\[
\int_{T_*-h_\lambda}^{T_*}
[\mathsf P_{\xi,k,\lambda}]_+
\le
|\Delta_{[T_*-h_\lambda,T_*]}U_{\xi,k,\lambda}|
+\mathsf{ViscTrans}_{\lambda}
+\mathsf{Paid}_{\lambda}.
\tag{HLG.15}
\]

Thus the terminal pressure-compatible tower must flatten no later than the
heat-lag response at that scale.  A retained positive terminal pressure lobe
with no velocity response is not a new action source; it is an unpaid pending
response window, and `(HLG.12)` is exactly the theorem that prevents infinitely
many such windows from being recounted.

## 6. Consequence for Gold closure

Combining `(HLG.12)` with `(HLG.9)` gives the pressure-tail theorem

\[
\sup_{\tau<T_*}
\int_0^\tau[\mathsf P_{\xi,k}^{\ge\Lambda}(t)]_+\,dt
\le
\varepsilon(\Lambda)
+\theta\,\mathsf{Visc}_{P,N}(0,\tau)
+\mathsf{Paid}_{P,N}(0,\tau).
\tag{HLG.16}
\]

The pressure-tail good-lambda reduction then gives `(PTG.21)`, namely

\[
\sup_{\tau<T_*}
\int_0^\tau\int_P
\mathcal M_N(Y_N)_+\,da\,dt
\le
C_N(u_0).
\tag{HLG.17}
\]

This is `(FGC.25)`.

## 7. Status

This note changes the missing object from an abstract pressure-phase storage to
a concrete heat-lag finite-difference no-recount theorem.  The row inequality
`(HLG.9)` is an algebraic consequence of the differentiated Navier-Stokes row.
The Gold proof still requires the noncircular weighted telescoping estimate
`(HLG.12)`.

Partial, not Gold closed.
