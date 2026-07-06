---
theorem_id: forward-gold-k5-recirculating-endpoint-close-return-alias-20260706
status: strict-reduction-recirculating-endpoint-is-tail-or-contamination
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5RecirculatingEndpointReturn.NotIndependent
  - K5CloseReturn.AliasesToCurveCoreCrowdContaminationOrRouteOut
  - K5HighRePureEdgePayerExhaustion.STRICT_REDUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-return-length-cap-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-remote-endpoint-biot-savart-tail-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-sideband-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
completion_truth: >-
  Strict reduction only. A recirculating endpoint return is not an independent
  K5 pure-edge payer. Let R be the Euclidean distance from the returning
  endpoint/collar material to the flat producing edge of transverse scale d.
  If R is large compared with d, the ordinary Biot-Savart/pressure return is
  bounded by the already-filed tail ratio O((d/R)^2), hence gives no fixed
  unweighted high-Re tax. If R is O(d), the endpoint material is inside the
  local interaction neighborhood of the producer; the configuration is no
  longer the isolated translation-invariant pure edge with zero sideband/crowd
  coordinate. It has become close-return/crowd contamination, curve/core
  contamination of the same filament, or a route-out/exclusion condition if
  such close return is forced. This proves no contamination floor, no route-out
  theorem, no record-length cap, no new high-Re mechanism, no confinement
  constant, and no MPP closure.
---

# Recirculating endpoint return is tail or contamination

## 1. Object

The K5 branch still allowed a phrase after the remote-tail obstruction:

\[
  \text{genuinely recirculating/global endpoint return}.
\]

This note tests whether that phrase is an independent payer for the exact
isolated high-Re pure edge. The answer is no. It is a distance dichotomy.

The pure edge has a flat producing region of transverse scale \(d\), local
strain

\[
  s_{\rm loc}\sim {\Gamma\over d^2},
\]

and, on the exact isolated model, no sideband/crowd coordinate:

\[
  B_{\rm sb}=0.
\]

Let \(R\) be the smallest Euclidean distance from the returning endpoint or
collar material to the flat producing region during the high-Re residence.

## 2. Far return is the killed tail

If the returning material remains at distance \(R\gg d\), the previous
remote-tail calculation applies at scale \(R\):

\[
  |\nabla u_{\rm ret}|
  \lesssim
  {\Gamma\over R^2}.
\]

Therefore

\[
  {|\nabla u_{\rm ret}|\over s_{\rm loc}}
  \lesssim
  \left({d\over R}\right)^2.
\]

This is not an order-one payer. It can be made arbitrarily small by keeping
the recirculating endpoint outside the edge-scale neighborhood of the producer.
For the long straight packet, \(R\sim L\), this is exactly the filed
\((d/L)^2\sim(kL)^{-2}\) obstruction.

So a recirculating endpoint theorem that still claims an order-one tax must
force

\[
  R\lesssim d
\]

at some relevant time.

## 3. Close return is no longer an isolated pure edge

When \(R\lesssim d\), the returning material is inside the local interaction
neighborhood of the flat producing edge. Then the object is no longer the
translation-invariant isolated single carrier

\[
  \eta(z)=ae^{ikz}+\overline a e^{-ikz}.
\]

There is another piece of vorticity at edge-scale distance from the producer.
If it is a distinct strand or collar, this is crowd or close-pair
contamination. If it is the same filament returning, then the same-fluid curve
has left and re-entered the producer's neighborhood; the straight pure-edge
model has been replaced by a curved/core-varying global filament, with the
close return itself acting as a second local strand.

Either way, the sideband-trigger obstruction no longer applies as an exact
zero-coordinate statement. The model has exited the isolated pure-edge cell
and entered the curve/core/crowd or route-out cell.

This does not prove that close return pays a fixed floor. It only says the
floor, if true, belongs to the close-return contamination theorem, not to an
independent endpoint-return branch.

## 4. Consequence for the K5 branch list

After the local endpoint, remote-tail, and close-return reductions, endpoint
return has no independent meaning on the isolated high-Re pure edge.

The remaining K5 pure-edge exits are:

\[
\begin{array}{ccl}
\text{record/effective-length cap}
  &:& \text{bound the retained flat segment},\\
\text{close-return/curve/core/crowd contamination}
  &:& \text{show edge-scale return or leakage is forced and taxed},\\
\text{route-out/exclusion}
  &:& \text{show the isolated edge is not an admissible retained producer},\\
\text{new unweighted high-Re mechanism}
  &:& \text{display a payer not already aliased above}.
\end{array}
\]

The old phrase "recirculating endpoint return" is now a pointer into one of
those rows. It is not a fifth row.

## 5. Four-sentence result

Recirculating endpoint return is not an independent K5 payer. If the returned
endpoint material stays far from the flat producer, its Biot-Savart/pressure
tail is only \(O((d/R)^2)\) relative to local production. If it comes back
within \(O(d)\), the configuration is no longer the isolated pure edge; it has
become close-return, curve/core, or crowd contamination, or a route-out
condition if that return is forced. Thus K5 has one fewer independent branch:
endpoint return is either length-cap/tail-smallness or contamination/exclusion.

## 6. State

Strict reduction only. This note proves no record/effective-length cap, no
close-return contamination floor, no curve/core/crowd theorem, no route-out or
exclusion theorem, no new unweighted high-Re mechanism, no confinement
constant, and no MPP closure.
