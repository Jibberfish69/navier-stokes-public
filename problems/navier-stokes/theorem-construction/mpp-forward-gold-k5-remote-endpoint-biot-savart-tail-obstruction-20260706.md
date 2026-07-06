---
theorem_id: forward-gold-k5-remote-endpoint-biot-savart-tail-obstruction-20260706
status: strict-obstruction-remote-straight-endpoint-tail-not-nonlocal-return-payer
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5RemoteEndpointBiotSavartTail.NO
  - K5NonlocalEndpointReturn.RequiresRecirculationOrGlobalGeometry
  - K5HighRePureEdgePayerExhaustion.STRICT_REDUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-return-length-cap-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigorous-quartic-far-strain-lemma-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
completion_truth: >-
  Strict obstruction only. The ordinary Biot-Savart tail of remote straight
  endpoints or compact endpoint collars cannot be the genuine nonlocal K5
  return payer. A straight tail beginning at axial distance L contributes
  strain O(Gamma/L^2), while the local edge strain is O(Gamma/d^2), so the
  remote-tail ratio is O((d/L)^2), equivalently O((kL)^(-2)) when kd is order
  one. Compact endpoint/collar debris is no larger under the quartic far-strain
  lemma after curl neutrality. The same factor persists after integration over
  the high-Re residence, because both local production and remote-tail forcing
  see the same residence clock. Therefore the surviving "genuinely nonlocal
  endpoint return" branch must mean recirculating/global same-fluid geometry,
  curve/core/crowd contamination, route-out/exclusion, or a new unweighted
  high-Re mechanism. This proves no record-length cap, no recirculating return,
  no contamination theorem, no exclusion theorem, no confinement constant, and
  no MPP closure.
---

# Remote endpoint Biot-Savart tail is not the K5 nonlocal return payer

## 1. Object

The endpoint-return typing note left one nonlocal-looking phrase alive:

\[
  \text{genuinely nonlocal or recirculating endpoint influence}.
\]

This note tests the weakest possible reading of that phrase. The long K5 edge
has a flat central producing region of transverse scale \(d\), axial carrier
wavenumber \(k\sim d^{-1}\), and remote endpoints or collars at axial distance
\(L\). The question is whether the ordinary Biot-Savart tail from those remote
straight endpoints can return an order-one tax to the central edge.

This is only a tail test. It does not touch global recirculation where the same
fluid geometry brings endpoint material back to distance \(O(d)\), nor curve,
core, or crowd contamination.

## 2. Straight remote tail scaling

For a filament-scale straight tail with circulation \(\Gamma\), the gradient
kernel has the size

\[
  |\nabla K(r)|\lesssim {1\over r^3}.
\]

At a point in the central flat region, a remote straight tail beginning at
axial distance \(L\) therefore contributes at most

\[
  |\nabla u_{\rm tail}|
  \lesssim
  \int_L^\infty {\Gamma\over z^3}\,dz
  \lesssim
  {\Gamma\over L^2}.
\]

The local K5 edge strain at separation or transverse scale \(d\) has the usual
size

\[
  s_{\rm loc}\sim {\Gamma\over d^2}.
\]

Thus the remote-tail strain ratio obeys

\[
  {|\nabla u_{\rm tail}|\over s_{\rm loc}}
  \lesssim
  \left({d\over L}\right)^2.
\]

With \(kd\sim 1\), this is

\[
  {|\nabla u_{\rm tail}|\over s_{\rm loc}}
  \lesssim
  (kL)^{-2}.
\]

This is smaller than the already-killed local endpoint/envelope ratio
\((kL)^{-1}\), and it vanishes along the same long-packet route.

## 3. Compact endpoint collars are no larger

For compact endpoint debris or collars, the quartic far-strain lemma applies:
if \(\omega_e\) is a compactly supported curl packet of size \(\ell_e\), then
at distance \(L\ge 2\ell_e\)

\[
  |\nabla u_e|
  \le
  C{\ell_e\|\omega_e\|_1\over L^4}.
\]

The extra power is the curl-neutrality cancellation: compact vorticity carries
no monopole. For endpoint pieces with finite core smoothing, this is no worse
than the filament tail estimate and usually smaller. Hence compact endpoint
collars cannot supply the missing order-one return either.

## 4. Integrated residence ratio

The K5 obstruction is a high-Re residence question, so the ratio must be
checked after time integration. The remote tail is a perturbative strain
acting on the same central edge during the same residence clock. Thus

\[
  \int_0^T \mathcal D_{\rm tail}(t)\,dt
  \lesssim
  \left({d\over L}\right)^2
  \int_0^T \mathcal P_{\rm edge}(t)\,dt
\]

at the level of this straight-tail scaling. If the long packet chooses
\(kL\gg \operatorname{Re}\), the local endpoint contact is delayed past the
residence and the remote tail ratio is even smaller:

\[
  (kL)^{-2}\ll \operatorname{Re}^{-2}.
\]

So the high-Re clock does not rescue the remote tail. It multiplies both sides
by the same residence time.

## 5. Consequence

The phrase "genuinely nonlocal endpoint return" has lost its ordinary distant
tail interpretation. A surviving endpoint-return theorem must exhibit one of
the following stronger mechanisms:

- recirculating/global same-fluid geometry that brings endpoint material back
  to \(O(d)\) of the producing edge;
- curve/core/crowd contamination that destroys the exact isolated pure edge;
- route-out or exclusion of the isolated pure edge;
- a genuinely new unweighted high-Re mechanism.

Remote straight endpoints and compact collars are not enough.

## 6. Four-sentence result

The ordinary Biot-Savart tail of remote straight endpoints cannot pay the K5
high-Re pure-edge bill. Its strain at the central flat edge is
\(O(\Gamma/L^2)\), while the local edge strain is \(O(\Gamma/d^2)\), so the
relative tax is \(O((d/L)^2)=O((kL)^{-2})\). Compact endpoint collars are no
larger by the quartic far-strain lemma. Therefore the surviving nonlocal
endpoint branch must be genuinely recirculating/global, contaminating, or
exclusionary; it cannot be ordinary distant-tail leakage.

## 7. State

Strict reduction only. This note proves no record/effective-length cap, no
recirculating endpoint return theorem, no curve/core/crowd contamination
theorem, no route-out/exclusion theorem, no new unweighted high-Re mechanism,
no confinement constant, and no MPP closure.
