---
theorem_id: forward-gold-k5-selected-throughput-local-density-alias-20260706
status: strict-reduction-selected-throughput-bounded-subpacket-aliases-local-density
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5SelectedThroughput.BOUNDED-SUBPACKET-ALIAS
  - K5LocalDensity.ConcentrationEquivalent
  - K5DistributedDilutedRecord.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-length-cap-energy-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-length-density-dilution-dichotomy-20260706.md
completion_truth: >-
  Strict reduction only. A selected-throughput lower bound on a bounded
  effective subpacket is exactly a local production-density/concentration
  premise by averaging. It is not an independent K5 record-length cap source.
  Coupled to the endpoint-delay carrier, it becomes the fixed-local-density
  branch already handled by the density-dilution dichotomy; decoupled from
  endpoint-delay geometry, it does not cap the whole long packet. The surviving
  high-Re branch is still the diluted/distributed record-admission question:
  whether a low-density carrier whose effective selected length grows with the
  packet can be a retained record producer. This proves no K5 cap, no retained
  Navier-Stokes construction, no route-out theorem, no confinement constant,
  and no MPP closure.
---

# K5 selected throughput: bounded subpacket aliases to local density

## 1. Object

The record-length cap obstruction left a possible stronger premise:

\[
  \text{fixed selected throughput on a bounded effective subpacket.}
  \tag{STA.1}
\]

The density-dilution dichotomy then showed that fixed local production density
on the whole endpoint-delay carrier gives the cap, while a high-Re long packet
can survive only by diluting local density.

This note checks whether (STA.1) is a new source or only a rewording of local
density/concentration.

The kill condition for independence is a bounded effective subpacket carrying
a fixed selected-throughput lower bound while avoiding every local density
floor.

## 2. Averaging identity

Let \(p(z)\ge 0\) be the local instantaneous production density along the K5
carrier coordinate, and let \(J\) be the selected effective subpacket. Define

\[
  A_J:=\int_J p(z)\,dz.
  \tag{STA.2}
\]

Assume the selected-throughput premise

\[
  A_J\ge A_0>0,
  \qquad
  |J|\le \ell_*<\infty.
  \tag{STA.3}
\]

Then

\[
  {1\over |J|}\int_J p(z)\,dz
  \ge
  {A_0\over \ell_*},
  \tag{STA.4}
\]

and hence

\[
  \sup_J p
  \ge
  {A_0\over \ell_*}.
  \tag{STA.5}
\]

Thus a bounded-subpacket throughput floor is a local-density floor somewhere
on that subpacket. There is no separate mechanism here.

For the K5 carrier scaling

\[
  p(z)\asymp s\Pi |a(z)|^2,
  \tag{STA.6}
\]

(STA.3) also gives a local energy/concentration lower bound

\[
  \int_J |a(z)|^2\,dz
  \gtrsim
  {A_0\over s\Pi},
  \qquad
  \sup_J |a(z)|^2
  \gtrsim
  {A_0\over s\Pi\,\ell_*}.
  \tag{STA.7}
\]

So the selected subpacket is either locally concentrated, or it does not carry
the selected throughput.

## 3. Coupling to endpoint delay

The endpoint-delay branch requires

\[
  kL\gtrsim \operatorname{Re}.
  \tag{STA.8}
\]

If the selected-throughput lower bound is required on every bounded effective
cell of the endpoint-delay carrier, or if the selected subpacket is itself the
endpoint-delay carrier at bounded density, then (STA.5) supplies the fixed
local-density premise of the density-dilution note. That is the already filed
branch:

\[
  \text{fixed local density on endpoint-delay length}
  \Longrightarrow
  \operatorname{Re}\lesssim kE_*s\Pi/p_0.
  \tag{STA.9}
\]

But if \(J\) is only one bounded selected cell inside a much longer packet, the
argument does not cap the full packet length. It merely identifies a local
concentration on \(J\). The rest of the endpoint-delay carrier can still be
long and low-density unless a separate selector/admission theorem ties the
record to that whole carrier.

## 4. What the long diluted witness does

For the long packet

\[
  |a_L|^2L=A^2,
  \qquad
  kL\gg \operatorname{Re},
  \tag{STA.10}
\]

the total instantaneous packet production proxy stays fixed:

\[
  P_L\sim s\Pi |a_L|^2L=s\Pi A^2.
  \tag{STA.11}
\]

On any bounded subpacket \(J\) in the flat region,

\[
  A_J\sim s\Pi |a_L|^2 |J|
      \sim s\Pi A^2{|J|\over L}.
  \tag{STA.12}
\]

Thus for \(|J|\le \ell_*\),

\[
  A_J=O(L^{-1})\to0.
  \tag{STA.13}
\]

The diluted long packet cannot satisfy fixed selected throughput on a bounded
subpacket unless it develops local concentration. If it develops that
concentration, it has left the uniformly diluted witness and entered the local
density branch. If it does not, the selected effective length must grow with
\(L\).

## 5. Consequence for K5

The candidate cap sources reduce as follows:

\[
\begin{array}{ccl}
\text{bounded selected throughput}
  &\Longleftrightarrow&
  \text{local density/concentration on the selected cell},\\[1mm]
\text{bounded selected throughput tied to endpoint delay}
  &\Longrightarrow&
  \text{the fixed-local-density cap branch},\\[1mm]
\text{distributed low-density throughput}
  &\Longrightarrow&
  \text{still live record-admission question}.
\end{array}
\tag{STA.14}
\]

So selected throughput is not an independent K5 payer. It decides only the
following split:

1. the record selector forces a bounded effective subpacket with fixed
   throughput, in which case the problem has become local density/concentration;
2. or the record selector accepts a distributed low-density carrier whose
   effective selected length grows, in which case the K5 diluted branch remains
   live and must be admitted or excluded directly.

## 6. Four-sentence result

A selected-throughput lower bound on a bounded effective subpacket is exactly a
local-density/concentration statement. It cannot by itself cap the whole K5
packet length, because the endpoint-delay length may sit outside the selected
bounded cell. Coupled to the endpoint-delay carrier it becomes the fixed
local-density branch already priced by the density-dilution dichotomy.
Decoupled from that geometry, it leaves the distributed low-density
record-admission problem alive.
