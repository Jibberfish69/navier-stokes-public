---
theorem_id: forward-gold-k5-record-length-density-dilution-dichotomy-20260706
status: exact-dichotomy-k5-length-cap-or-density-dilution
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5RecordLengthCap.DENSITY-DILUTION-DICHOTOMY
  - K5FixedLocalDensityLongPacket.ENERGY-CAP
  - K5DilutedLongPacket.RequiresRecordThroughputAdmission
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-length-cap-energy-density-obstruction-20260706.md
completion_truth: >-
  Exact scaling dichotomy only. For the K5 long-packet model
  \(\eta_L=a_L\chi(z/L)e^{ikz}+\overline a_L\chi(z/L)e^{-ikz}\), packet
  energy is \(E_L\sim |a_L|^2L\), local carrier-production density is
  \(p_{\rm loc}\sim s\Pi |a_L|^2\), and endpoint-delay through the high-Re
  residence requires \(kL\gtrsim \operatorname{Re}\). If a retained record
  branch demands \(p_{\rm loc}\ge p_0>0\) throughout the endpoint-delay length
  and packet energy is bounded by \(E_*\), then \(L\le E_*s\Pi/p_0\), hence
  \(\operatorname{Re}\lesssim kE_*s\Pi/p_0\). Therefore a high-Re endpoint-
  avoiding K5 packet with bounded energy must dilute its local production
  density at least like \(O(\operatorname{Re}^{-1})\) on the minimal
  endpoint-delay length, and faster on longer packets. This proves no
  record-density theorem, no selected-throughput theorem, no retained
  Navier-Stokes K5 construction, no route-out theorem, no confinement constant,
  and no MPP closure.
---

# K5 record length: cap or density dilution

## 1. Object

The previous note killed the weakest cap source:

\[
  \text{finite total energy plus total packet production proxy}
  \nRightarrow
  kL\lesssim \operatorname{Re}.
  \tag{DD.1}
\]

It did that by lowering the local amplitude as \(L\) grows. This note records
the exact split created by that witness.

The kill condition here is a long K5 packet that has all three properties:

1. finite bounded packet energy;
2. endpoint delay \(kL\gtrsim\operatorname{Re}\);
3. fixed local production density on the whole endpoint-delay length.

Those three cannot hold simultaneously in the high-Re limit.

## 2. Packet scalings

Use the same long carrier:

\[
  \eta_L(z)=a_L\chi(z/L)e^{ikz}+\overline a_L\chi(z/L)e^{-ikz}.
  \tag{DD.2}
\]

The packet energy scales as

\[
  E_L\sim |a_L|^2L.
  \tag{DD.3}
\]

The local carrier-production density on the flat part scales as

\[
  p_{\rm loc}\sim s\Pi |a_L|^2,
  \tag{DD.4}
\]

while the total instantaneous packet production proxy is

\[
  P_L\sim p_{\rm loc}L.
  \tag{DD.5}
\]

The endpoint-room obstruction showed that avoiding endpoint contact through
the high-Re residence requires

\[
  kL\gtrsim\operatorname{Re}.
  \tag{DD.6}
\]

## 3. Fixed local density gives the cap

Assume the retained record branch imposes a local production-density floor

\[
  p_{\rm loc}\ge p_0>0
  \tag{DD.7}
\]

on the flat endpoint-delay packet. Then

\[
  |a_L|^2\gtrsim {p_0\over s\Pi}.
  \tag{DD.8}
\]

If the packet energy is bounded by \(E_*\), then

\[
  E_*\ge E_L\gtrsim {p_0\over s\Pi}L.
  \tag{DD.9}
\]

Thus

\[
  L\lesssim {E_*s\Pi\over p_0}.
  \tag{DD.10}
\]

Combining with endpoint delay gives

\[
  \operatorname{Re}
  \lesssim
  k\,{E_*s\Pi\over p_0}.
  \tag{DD.11}
\]

So a fixed-density K5 edge cannot be both bounded-energy and arbitrarily
high-Re while also keeping endpoints away.

## 4. The only long-packet escape is density dilution

Conversely, to keep bounded energy with \(kL\gtrsim\operatorname{Re}\), one
must have

\[
  |a_L|^2\lesssim {E_*\over L}
  \lesssim {kE_*\over\operatorname{Re}},
  \tag{DD.12}
\]

and hence

\[
  p_{\rm loc}\lesssim {s\Pi kE_*\over\operatorname{Re}}.
  \tag{DD.13}
\]

If the packet is even longer, for instance

\[
  kL=\operatorname{Re}^{1+\delta},
  \tag{DD.14}
\]

then

\[
  p_{\rm loc}=O(\operatorname{Re}^{-1-\delta}).
  \tag{DD.15}
\]

This is exactly what the previous long-packet witness does: it keeps total
packet energy and total instantaneous production proxy fixed by spreading the
record over a longer and lower-density carrier.

## 5. Consequence for K5

The K5 length-cap branch is now a density dichotomy:

\[
\begin{array}{ccl}
\text{fixed local record density on endpoint-delay length}
  &\Longrightarrow&
  \text{energy length cap},\\[1mm]
\text{endpoint-delayed bounded-energy long packet}
  &\Longrightarrow&
  \text{local density dilution}.
\end{array}
\tag{DD.16}
\]

Therefore the remaining high-Re escape cannot be a fixed-density local record
packet. It must be a diluted/distributed record object, and that object still
owes a theorem saying that such low local density can nevertheless carry the
selected record throughput and be admitted as a retained K5 producer.

This note does not prove or disprove that theorem.

## 6. Four-sentence result

A bounded-energy K5 packet cannot keep fixed local production density over an
endpoint-delay length \(L\) with \(kL\gtrsim\operatorname{Re}\) as
\(\operatorname{Re}\to\infty\). Fixed local density makes energy grow like
\(L\), so it gives a record/effective-length cap. The long-packet escape works
only by diluting the local production density like \(O(\operatorname{Re}^{-1})\)
or smaller. Thus the surviving high-Re K5 branch is not a fixed-density local
edge; it is a diluted/distributed record-throughput or admission problem.
