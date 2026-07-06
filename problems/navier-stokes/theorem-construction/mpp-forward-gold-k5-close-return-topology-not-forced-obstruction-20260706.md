---
theorem_id: forward-gold-k5-close-return-topology-not-forced-obstruction-20260706
status: strict-obstruction-close-return-not-forced-by-finite-energy-or-closed-filament-topology
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5CloseReturn.ForcedByTopology.NO
  - K5ClosedLongPacketWitness
  - K5CloseReturn.RequiresDynamicRecordOrCrowdMechanism
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-remote-endpoint-biot-savart-tail-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-recirculating-endpoint-close-return-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-close-return-two-tube-tv-paid-subcell-20260706.md
completion_truth: >-
  Strict obstruction to one forced-close-return shortcut. Finite energy,
  localization, and closed-filament topology do not force endpoint/collar
  material to return within O(d) of the central K5 producer. At leading
  filament order, take the long localized K5 edge packet and close its two
  long straight strands by smooth return arcs of radius and separation
  comparable to L, outside an O(L) neighborhood of the central flat producing
  subpacket. The central production remains the same to leading order; closure
  curvature and cutoff defects are O((kL)^(-1)) or smaller, and the closure
  Biot-Savart tail at the central region is O((d/L)^2) relative to local edge
  strain. Thus close return is not a topological or finite-energy necessity.
  A forced-close-return theorem must use a stronger dynamic or geometric
  mechanism: record/effective-length cap, fast global recirculation, forced
  crowd/near-return geometry, core/off-profile instability, route-out, or a
  new unweighted high-Re payer. No such theorem, no confinement constant, and
  no MPP closure is proved.
---

# Closed long packets do not force K5 close return

## 1. Object

After the close-return alias and the paid single-pair subcell, one possible
K5 escape route is still:

\[
  \text{the finite-energy or closed-filament realization of the edge
  must force a close return.}
\]

This note checks that exact shortcut. The kill condition is a leading-order
finite-energy closed-strand geometry whose central flat producing region has
no return material within \(O(d)\), while the closure errors vanish as
\(L/d\to\infty\).

## 2. Closed long-packet witness

Start with the long K5 packet used in the finite-energy and endpoint-room
obstructions: a flat producing segment of length \(L\), local separation
\(d\), carrier scale \(k^{-1}\sim d\), and \(kL\gg1\). Keep a central
subpacket of length comparable to \(L\) straight and K5-pure.

Close each long strand by smooth return arcs outside a cylinder of radius
comparable to \(L\) around the central subpacket. The return arcs have
curvature

\[
  \kappa_{\rm ret}\lesssim {1\over L}
\]

and their minimum Euclidean distance from the central producer is

\[
  R_{\rm ret}\gtrsim L.
\]

This is the leading-filament version of the same finite-energy localization:
the vorticity lines close, but they close far away.

## 3. Error sizes at the central producer

The central K5 edge strain has size

\[
  s_{\rm loc}\sim {\Gamma\over d^2}.
\]

The distant return arcs contribute only their far Biot-Savart tail. By the
remote-tail calculation with \(R_{\rm ret}\sim L\),

\[
  {|\nabla u_{\rm ret}|\over s_{\rm loc}}
  \lesssim
  \left({d\over L}\right)^2.
\]

The transition from straight segment to return arc is an envelope/curvature
defect. In the same scaling as the long-packet obstruction, first-order
cutoff or curvature leakage is at worst

\[
  O\!\left({1\over kL}\right)
\]

relative to carrier production, and quadratic defects are

\[
  O\!\left({1\over (kL)^2}\right).
\]

Thus the closed geometry has finite length and no endpoint, but it does not
create an order-one close-return tax at the central producing segment.

## 4. High-Re residence

The endpoint-room calculation already checks the residence clock. Production
and closure/envelope defects carry the same high-Re lifetime, so the ratios
above do not become order one after time integration.

If endpoint or closure information travels along the carrier at bounded
strain-clock group speed, choosing

\[
  kL\gg \operatorname{Re}
\]

keeps the transition arcs from reaching the central flat subpacket during the
residence. Hence finite residence time does not force close return either.

## 5. Consequence for K5

Close return is not forced by:

\[
  \text{finite energy}
  \quad+\quad
  \text{localized packet}
  \quad+\quad
  \text{closed filament topology}.
\]

A valid forced-close-return theorem has to use a stronger mechanism:

\[
\begin{array}{ccl}
\text{record/effective-length cap}
  &:& \text{the retained flat segment cannot have } kL\gg\operatorname{Re},\\
\text{fast global recirculation}
  &:& \text{return material reaches } O(d) \text{ before the endpoint clock},\\
\text{forced crowd/near-return geometry}
  &:& \text{the record event itself demands a nearby strand},\\
\text{core/off-profile instability}
  &:& \text{finite-core dynamics destroys the pure edge},\\
\text{route-out/exclusion}
  &:& \text{the closed long packet is not an admissible retained producer},\\
\text{new high-Re mechanism}
  &:& \text{a payer not aliased above}.
\end{array}
\]

The paid single-close-return subcell still applies when close return is forced
and locally represented by one ordered two-tube pair. This note says only that
finite energy and topology do not force that event.

## 6. Four-sentence result

Finite energy and closed-filament topology do not force K5 close return. A
long K5 packet can be closed by smooth return arcs kept at distance
\(\sim L\) from the central producer, while the central edge remains flat and
producing. The closure tail is only \(O((d/L)^2)\), and curvature/cutoff
defects are \(O((kL)^{-1})\) or smaller relative to production. Therefore
forced close return has to come from a dynamic record-length, recirculation,
crowd, core/off-profile, route-out, or new high-Re theorem.

## 7. State

Strict obstruction only. This note proves no retained Navier-Stokes edge
construction, no forced close-return theorem, no same-packet TV allocation
theorem, no core/off-profile correction theorem, no dense-crowd theorem, no
record/effective-length cap, no route-out/exclusion theorem, no new unweighted
high-Re mechanism, no confinement constant, and no MPP closure.
