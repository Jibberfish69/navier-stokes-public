---
theorem_id: forward-gold-k5-record-length-cap-energy-density-obstruction-20260706
status: strict-obstruction-record-length-cap-not-from-total-energy-plus-total-production-proxy
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5RecordLengthCap.TotalEnergyTotalProductionProxy.NO
  - K5LongPacket.FixedProductionProxyUnboundedLength
  - K5LengthCap.RequiresLocalRecordDensityOrDynamicAdmissibility
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-return-length-cap-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-close-return-topology-not-forced-obstruction-20260706.md
completion_truth: >-
  Strict obstruction to the weakest record-length-cap source. The existing
  long-packet witness already has fixed finite packet energy and fixed
  instantaneous packet carrier-production proxy when \(|a_L|^2L=A^2\). Taking
  \(kL/\operatorname{Re}\to\infty\) leaves those total quantities fixed while
  envelope, endpoint, and remote-return defects vanish relative to production;
  the high-Re residence multiplies production and the local envelope defects
  by the same damping clock. Therefore a cap
  \(kL\lesssim\operatorname{Re}\) cannot be derived from total finite energy
  plus total carrier-production proxy alone. Any genuine
  record/effective-length cap must use a stronger record-normalization premise:
  fixed local production density or its selected-throughput-on-bounded-
  subpacket alias, dynamic recurrence/nonlocal return, forced crowd/core
  geometry, or route-out of the long packet as an admissible retained producer.
  This proves no cap, no retained Navier-Stokes K5 construction, no
  route-out theorem, no confinement constant, and no MPP closure.
---

# K5 record-length cap is not forced by total energy plus production proxy

## 1. Object

The K5 endpoint-room and close-return notes leave a record/effective-length
cap as a live route-out:

\[
  kL\lesssim \operatorname{Re}.
  \tag{RLC.1}
\]

This note checks the weakest possible source of that cap:

\[
  \text{finite total packet energy plus nonzero packet carrier-production proxy.}
  \tag{RLC.2}
\]

The kill condition is a long-packet family with fixed energy, fixed packet
carrier-production proxy, and \(kL/\operatorname{Re}\to\infty\).

## 2. Reuse the long packet

Use the localized carrier from the finite-energy obstruction:

\[
  \eta_L(z)=a_L\chi(z/L)e^{ikz}+\overline{a_L}\chi(z/L)e^{-ikz},
  \tag{RLC.3}
\]

with \(k\) at the K5 edge and

\[
  |a_L|^2L=A^2.
  \tag{RLC.4}
\]

Then the packet energy is fixed:

\[
  E_L\sim |a_L|^2L=A^2.
  \tag{RLC.5}
\]

The instantaneous packet carrier-production proxy is also fixed:

\[
  P_L\sim s\Pi |a_L|^2L=s\Pi A^2.
  \tag{RLC.6}
\]

Thus increasing \(L\) does not remove the instantaneous total producing
package. It spreads the package over a longer packet and lowers its local
density. Over the high-Re residence, production gains the common residence
factor already recorded in the endpoint-room note; the local envelope defect
gains the same factor and keeps the \(1/(kL)\) ratio.

## 3. Length can still outrun the Reynolds residence

Choose

\[
  kL=\operatorname{Re}^{1+\delta},
  \qquad \delta>0.
  \tag{RLC.7}
\]

Then

\[
  {kL\over\operatorname{Re}}\to\infty.
  \tag{RLC.8}
\]

The endpoint-room note gives the integrated envelope ratio

\[
  {D_L\over P_L}\lesssim {1\over kL}
  =
  \operatorname{Re}^{-1-\delta},
  \tag{RLC.9}
\]

and endpoint contact is avoided through the viscous residence under the same
choice. The closed-long-packet note gives remote return tail

\[
  O((d/L)^2)=O((kL)^{-2})
  \tag{RLC.10}
\]

when \(kd\sim1\). Therefore total energy and the packet production proxy stay
fixed while the local endpoint/envelope/return mechanisms still vanish
relative to production.

## 4. What this does and does not kill

This kills only the total-energy / total-production route to (RLC.1):

\[
  \text{finite energy}+\text{nonzero packet production proxy}
  \nRightarrow
  kL\lesssim \operatorname{Re}.
  \tag{RLC.11}
\]

It does not kill a stronger record cap. The witness has local amplitude

\[
  |a_L|^2={A^2\over L},
  \tag{RLC.12}
\]

so any theorem demanding fixed local production density, fixed selected
throughput per bounded effective subpacket, or a nonvanishing record density on
a bounded packet is not contradicted by this construction. The selected-
throughput premise has since been typed as the local-density/concentration
alias; such a theorem would be a genuinely stronger record-normalization or
admissibility statement.

## 5. Consequence for K5

The K5 high-Re edge now has one less cheap cap source. The record/effective
length theorem cannot be an energy-counting theorem on the whole packet. It
must say why the record cannot be spread over an arbitrarily long, increasingly
low-density carrier while keeping the same total producing package.

Equivalently, the remaining length-cap branch must use one of:

1. fixed local record density, including the bounded selected-throughput alias;
2. dynamic recurrence or nonlocal endpoint return;
3. forced curve/core/crowd contamination;
4. route-out of the long packet as an admissible retained producer.

## 6. Four-sentence result

Total finite energy and the packet carrier-production proxy do not force the
K5 record-length cap. The long packet with \(|a_L|^2L=A^2\) keeps both
quantities fixed while \(kL/\operatorname{Re}\to\infty\). Envelope,
endpoint-contact, and remote-return errors still vanish relative to production
in that regime. A real record/effective length cap must therefore come from
local record density, its bounded selected-throughput alias, dynamic
recurrence, forced crowd/core geometry, or route-out of the long packet as an
admissible retained producer.
