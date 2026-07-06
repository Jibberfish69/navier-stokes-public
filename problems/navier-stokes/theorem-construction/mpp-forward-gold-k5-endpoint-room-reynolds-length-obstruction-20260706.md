---
theorem_id: forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706
status: endpoint-envelope-dynamics-alone-does-not-pay-k5-high-re-edge
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5EndpointRoomUniformTax.NO
  - K5ReynoldsLengthScaling.Obstruction
  - K5DynamicRouteOut.RequiresLengthCapOrInstability
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-sideband-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-high-re-log-reservoir-persistence-reduction-20260706.md
completion_truth: >-
  Checked obstruction to an endpoint/envelope route-out shortcut. The
  long-packet note killed static finite-energy localization as a fixed K5 payer.
  This note checks the dynamic endpoint version over the whole high-Re viscous
  residence. On the damped pure edge, production integrates like Re times the
  carrier mass. The envelope/cutoff defect has the same damping factor but an
  extra 1/(kL), so the integrated defect-to-production ratio remains O(1/(kL)),
  not O(1), over the entire residence. If an endpoint signal travels along the
  carrier at bounded strain-clock group speed, a central flat subpacket avoids
  endpoint contact through the residence whenever kL >= C Re; choosing
  kL/Re -> infinity makes endpoint contact vanish as well. Thus endpoint room
  is not an automatic unweighted high-Re payer. This proves no Navier-Stokes
  retained edge construction and no confinement constant; it forces the
  remaining K5 route-out to use a record-length cap, endpoint recirculation,
  curve/core instability, forced crowd contamination, or a new unweighted
  high-Re mechanism.
---

# K5 endpoint room: Reynolds length defeats the endpoint shortcut

## 1. Question

The long-packet obstruction showed that static finite-energy localization does
not force an order-one K5 tax. The next possible route-out is dynamic:

\[
\text{during the high-Re residence, endpoints or envelope transport must reach
the producing region and force sideband/leakage.}
\tag{ERL.1}
\]

This note checks the endpoint/envelope shortcut at scaling level. The kill
condition is:

\[
\text{a packet length }L(\operatorname{Re})\text{ can make endpoint/envelope
tax }o(\text{production})
\text{ over the whole viscous residence.}
\tag{ERL.2}
\]

## 2. Damped long packet

Use the long localized edge carrier

\[
  \eta_L(z,t)=a_L(t)\chi(z/L)e^{ikz}
  +\overline{a_L(t)}\chi(z/L)e^{-ikz}.
\tag{ERL.3}
\]

On the pure high-Re edge branch, the viscous split gives

\[
  {d\over dt}|a_L|^2
  =
  -s c_v{\kappa^2\over\operatorname{Re}}|a_L|^2
  +O(s|a_L|^4).
\tag{ERL.4}
\]

Inside the small edge window, the leading production is

\[
  \mathcal P_L(t)
  \sim
  s\Pi |a_L(t)|^2L.
\tag{ERL.5}
\]

Therefore

\[
  \int_0^\infty \mathcal P_L(t)\,dt
  \sim
  C_{\rm edge}\operatorname{Re}\,|a_L(0)|^2L.
\tag{ERL.6}
\]

This is the same Reynolds-weighted residence already filed, now for a finite
packet.

## 3. Integrated envelope defect

The first envelope/cutoff defect carries one envelope derivative:

\[
  |\partial_z\chi(z/L)|\lesssim L^{-1}.
\tag{ERL.7}
\]

Relative to the carrier derivative \(k\chi(z/L)\), this supplies the factor

\[
  {1\over kL}.
\tag{ERL.8}
\]

Thus its production-clock size is

\[
  \mathcal D_L^{(1)}(t)
  \lesssim
  {C\over kL}\mathcal P_L(t).
\tag{ERL.9}
\]

The damping factor is common to \(\mathcal D_L^{(1)}\) and \(\mathcal P_L\).
Integrating over the whole high-Re residence gives

\[
  {\int_0^\infty \mathcal D_L^{(1)}(t)\,dt
   \over
   \int_0^\infty \mathcal P_L(t)\,dt}
  \lesssim {C\over kL}.
\tag{ERL.10}
\]

Quadratic envelope defects carry the square:

\[
  {\int_0^\infty \mathcal D_L^{(2)}(t)\,dt
   \over
   \int_0^\infty \mathcal P_L(t)\,dt}
  \lesssim {C\over (kL)^2}.
\tag{ERL.11}
\]

So the Reynolds residence time does not convert the envelope derivative into an
order-one tax. It multiplies production and defect by the same lifetime.

## 4. Endpoint contact time

There is also a literal endpoint question: can the transition collars reach the
central producing region during the residence?

Let the edge packet have group/transport speed along the pair bounded on the
strain clock by

\[
  |v_g|\le C_g {s\over k}.
\tag{ERL.12}
\]

This is the natural normal-form scaling: one axial wavelength is crossed on at
most a strain-clock time, up to the dimensionless edge constant \(C_g\).

The high-Re viscous residence time is

\[
  T_{\rm Re}\sim{\operatorname{Re}\over s}.
\tag{ERL.13}
\]

Endpoint contact is avoided in a central flat subpacket through that residence
whenever

\[
  L\ge C_g {s\over k}T_{\rm Re}
  \sim C_g{\operatorname{Re}\over k}.
\tag{ERL.14}
\]

Equivalently,

\[
  kL\gtrsim \operatorname{Re}.
\tag{ERL.15}
\]

Choosing, for example,

\[
  kL=\operatorname{Re}^{1+\delta},
  \qquad \delta>0,
\tag{ERL.16}
\]

makes endpoint contact absent through the residence and makes the integrated
envelope ratio

\[
  {1\over kL}=\operatorname{Re}^{-1-\delta}.
\tag{ERL.17}
\]

Thus endpoint room can be made cheaper as the local Reynolds number grows. It
is not a fixed high-Re payer.

## 5. What a real route-out must prove

The endpoint shortcut would need a theorem of the form

\[
  kL\le C\operatorname{Re}
  \quad\text{or stronger}
\tag{ERL.18}
\]

for retained producing K5 packets, or a mechanism that makes (ERL.14) illegal
inside the record event.

Absent that theorem, endpoint/envelope dynamics leaves the same branch:

1. a record-length cap tying \(L\) to the event;
2. endpoint recirculation or nonlocal end influence that beats the \(1/(kL)\)
   scaling;
3. curve/core instability during the edge residence;
4. forced crowd contamination;
5. a new unweighted high-Re mechanism.

This note does not prove that the long K5 packet is a Navier-Stokes solution.
It only blocks the claim that endpoint/envelope dynamics automatically supplies
the missing constant.

## 6. Four-sentence result

Endpoint/envelope dynamics is not an automatic high-Re K5 payer. Over the whole
viscous residence, production and envelope defect carry the same Reynolds
lifetime, so their ratio remains \(O((kL)^{-1})\) or smaller. If endpoint
signals move at bounded strain-clock group speed, choosing \(kL\gg
\operatorname{Re}\) prevents endpoint contact through the residence. A real
route-out must therefore prove a length cap, endpoint recirculation/nonlocal
end influence, curve/core instability, forced crowd contamination, or a new
unweighted high-Re mechanism.
