---
theorem_id: forward-gold-k5-high-re-sideband-trigger-obstruction-20260706
status: installed-sideband-crowd-payer-has-zero-trigger-on-isolated-pure-edge
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge payer
target_object:
  - K5HighReSidebandAutomatic.NO
  - K5IsolatedPureEdgeSidebandTrigger.ZERO
  - K5HighRePureEdgePayerExhaustion.STRICT_REDUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-k5-mean-detuning-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-lambda-edge-duffing-viscous-regate-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-return-race-handoff-premise-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-custody-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-gate-a-allocation-alias-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
completion_truth: >-
  Strict obstruction to the last installed high-Re pure-edge shortcut. The
  sideband/crowd payer is not automatic on the exact isolated K5 edge mode.
  In the translation-invariant Crow normal form, a pure single edge carrier
  supported at +/-k has zero sideband coordinate. Quadratic self-coupling
  produces only 0 and +/-2k; cubic feedback produces the already-filed Duffing
  / mean-detuning edge terms and lattice harmonics, not nearby carriers
  k+delta. Thus sideband/crowd can pay only after a separate theorem supplies
  nonzero sideband mass, envelope bandwidth, finite-packet leakage, crowd
  interaction, or route-out/exclusion of the isolated pure edge. No such lower
  bound is installed here. Same-day finite-energy follow-up supplies the long
  localized-packet witness: static finite energy/localization alone does not
  force that lower bound, because envelope defects can be made \(o(1)\) relative
  to carrier production. Combined with the same-day return-race, custody, and
  Gate-A obstructions, the exact isolated high-Re pure edge has no installed
  unweighted payer. This is not a counterexample and not a confinement-constant
  decision; it leaves dynamic/geometric route-out or a genuinely new unweighted
  high-Re mechanism as the pure-edge burden.
---

# K5 high-Re edge: sideband needs a trigger

## 1. Question

The remaining K5 high-Re line had been written as

\[
\text{sideband/crowd, route-out/exclusion, or a new unweighted high-Re mechanism.}
\tag{SBT.1}
\]

This note checks the first phrase on the exact isolated pure edge. The kill
condition is:

\[
\text{the pure single edge mode carries no sideband/crowd coordinate,}
\tag{SBT.2}
\]

so the installed sideband/crowd payer has no charge unless another theorem
first creates that coordinate or excludes the isolated mode.

## 2. What sideband/crowd would need

A sideband packet is not the same object as the pure K5 edge. It needs at least
two nearby carrier wavenumbers, or a spatial crowd of distinct cells, so that
there is an actual difference-frequency or multi-carrier interaction to price.
In symbolic packet currency, one can measure the missing coordinate by

\[
  B_{\rm sb}
  =
  \sum_{\substack{0<|\ell-k|<\delta_\ast}}
  |\widehat\eta(\ell)|^2
  +
  \sum_{\substack{0<|\ell+k|<\delta_\ast}}
  |\widehat\eta(\ell)|^2 ,
\tag{SBT.3}
\]

with the carrier slots \(\ell=\pm k\) omitted.

For the isolated edge mode

\[
  \eta(z)=a e^{ikz}+\overline a e^{-ikz},
\tag{SBT.4}
\]

that coordinate is exactly

\[
  B_{\rm sb}(\eta)=0.
\tag{SBT.5}
\]

This is a trigger statement, not a smallness estimate.

## 3. Translation invariance does not create nearby sidebands

The filed direct-feed obstruction used the translation-invariant normal form

\[
  \partial_t\eta=L\eta+B(\eta,\eta)+C(\eta,\eta,\eta)+\cdots .
\tag{SBT.6}
\]

Fourier momentum conservation gives the convolution rule. From support
\(\{\pm k\}\), the quadratic output lies only at

\[
  \{0,\pm 2k\}.
\tag{SBT.7}
\]

At cubic order, feedback returns to the carrier and produces the third
harmonic:

\[
  \{\pm k,\pm 3k\}.
\tag{SBT.8}
\]

Iterating the same selection rule keeps the generated support on the lattice
\(k\mathbb Z\). It does not create a nearby carrier \(k+\delta\) with
\(0<|\delta|\ll k\). The carrier return, zero mode, and second harmonic are
the already-filed mean-detuning / Duffing K5 objects. They are not a
sideband/crowd payer.

Thus the automatic sideband trigger on the isolated pure edge is

\[
  \mathcal C_{\rm sb/crowd}(\text{isolated pure edge})=0.
\tag{SBT.9}
\]

## 4. What finite energy still has to prove

A real finite-energy tube packet is not literally an infinite periodic pure
mode. It has an envelope, cutoff, curvature, core variation, or surrounding
field. Those features can create sideband mass or crowd interaction.

But finite energy alone does not give the fixed lower bound needed here. The
long-packet route-out obstruction filed the explicit witness
\[
  \eta_L(z)=a_L\chi(z/L)e^{ikz}+\overline{a_L}\chi(z/L)e^{-ikz},
  \qquad |a_L|^2L=\hbox{constant}.
\tag{SBT.10a}
\]

For that family, carrier production stays fixed while envelope bandwidth and
cutoff/Hodge defects scale like \(L^{-1}\) or \(L^{-2}\). Thus the forced
sideband/leakage coordinate can be sent to zero in the model limit:

\[
  \mathcal C_{\rm sb/leak}\to0
  \qquad (L\to\infty).
\tag{SBT.10}
\]

So the required theorem is not "there may be sidebands." The required theorem
is one of:

1. a dynamic finite-packet bandwidth floor, not static finite energy;
2. a curve/core/envelope leakage floor during the edge residence;
3. a crowd-contamination floor;
4. route-out/exclusion of the isolated high-Re pure edge as an admissible
   retained producing configuration.

None is installed by the checked K5 notes.

## 5. Consequence

The installed high-Re pure-edge payer list has now been tested at trigger
level:

\[
\begin{array}{ccl}
\text{return-race} &:& f=0\ \text{on pure residence},\\
\text{custody} &:& \text{no reassembly/refresh/destruction trigger},\\
\text{Gate-A/Theorem 2} &:& \text{marginal or Reynolds-weighted alias},\\
\text{sideband/crowd} &:& B_{\rm sb}=0\ \text{on isolated pure edge}.
\end{array}
\tag{SBT.11}
\]

Therefore the exact isolated high-Re pure edge has no installed unweighted
payer. The confinement program has not lost or won from this note; the branch
is now typed more sharply:

\[
\text{prove dynamic/geometric sideband/leakage/crowd contamination, prove route-out,}
\quad
\text{or find a new unweighted high-Re mechanism.}
\tag{SBT.12}
\]

## 6. Four-sentence result

Sideband/crowd payment is not automatic on the exact isolated K5 edge. The pure
single carrier has zero sideband coordinate, and translation-invariant
self-coupling generates only the mean mode, harmonics, and the already-filed
Duffing feedback. A real finite-energy packet may create sidebands through
envelope, curvature, core variation, or crowd contamination, but static finite
energy alone does not force a fixed fraction. Thus the isolated high-Re pure
edge has no installed unweighted payer; the remaining burden is dynamic or
geometric forced contamination, route-out/exclusion, or a new high-Re mechanism.
