---
theorem_id: forward-gold-reuse-thin-core-log-edge-alias-20260706
status: strict-reduction-thin-core-log-edge-is-high-re-weighted-payer-not-independent-reuse-branch
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / reuse tracking floor
target_object:
  - ReuseThinCoreLogEdge.NOT-INDEPENDENT-BRANCH
  - ReuseFloor.FixedOnlyAtBoundedCoreLog
  - HighReWeightedPayerAlias
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reuse-tracking-floor-kelvin-supply-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-reynolds-budget-shortcut-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-gate-a-allocation-alias-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-return-race-handoff-premise-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
completion_truth: >-
  Strict reduction only. The reuse Kelvin ledger leaves a thin-core logarithmic
  edge because the localized holder power floor is proportional to
  sigma Gamma_p^2, while the producer record currency per unit length carries
  Gamma_p^2 log(d/a). This note identifies that edge exactly. If
  Lambda=log(d/a) is bounded, the reuse tracking floor gives a fixed positive
  fraction of the local record currency. If Lambda is unbounded, the backed
  density is only c/Lambda, which is the same weighted high-Re obstruction as
  the K5/Gate-A high-Re row with weight M~Lambda. Therefore the thin-core edge
  is not a new reuse-specific supply channel and not a local cancellation
  theorem. It aliases to the already named high-Re problem: prove a
  record-length cap, endpoint return, curve/core/crowd trigger, route-out /
  exclusion, financed handoff, or a genuinely unweighted high-Re payer. No such
  theorem, no ladder-composition cancellation, no confinement constant, and no
  MPP closure is claimed.
---

# Reuse thin-core log edge aliases to high-Re weighted payer

## 1. Kill question

The reuse tracking ledger proved that a localized reused holder cannot grow its
supplied strain for free. Kelvin fixes its circulation, so sustained holding
past the approach budget must be geometry-work, transport-in, own
amplification, viscosity, or another already named priced channel.

The note left one edge against the program:
\[
  {1\over \log(d/a)}
  \tag{RTL.1}
\]
for a thin producer core.

The kill question here is whether that logarithm is a new reuse-specific branch
or the same high-Re weighted-payer obstruction already isolated elsewhere.

The checked answer is: it is the same weighted-payer obstruction.

## 2. The reuse floor in local currency

From the Kelvin supply ledger, sustained geometry holding on the production
clock has power floor
\[
  P_{\rm hold}
  \ge
  {\sigma c_{\rm dem}^2\Gamma_p^2\over 2\pi}
  \tag{RTL.2}
\]
per unit length, after the bounded-range demand gives
\[
  \Gamma_h\ge c_{\rm dem}\Gamma_p .
  \tag{RTL.3}
\]

The producer record currency per unit length carries the core logarithm
\[
  E_{\rm rec}
  \sim
  {\Gamma_p^2\over4\pi}\Lambda,
  \qquad
  \Lambda:=\log {d\over a}.
  \tag{RTL.4}
\]

On the production clock, the corresponding record-rate currency is
\[
  P_{\rm rec}\sim \sigma E_{\rm rec}
  \sim
  {\sigma\Gamma_p^2\over4\pi}\Lambda .
  \tag{RTL.5}
\]

Therefore the reuse floor backs the fraction
\[
  {P_{\rm hold}\over P_{\rm rec}}
  \gtrsim
  {2c_{\rm dem}^2\over\Lambda}.
  \tag{RTL.6}
\]

The exact demand constant belongs to the two-tube/far-holder certification
stratum. The scaling and the log placement are the point of this note.

## 3. Bounded-log branch

If
\[
  \Lambda\le \Lambda_0<\infty,
  \tag{RTL.7}
\]
then (RTL.6) gives a fixed reuse toll
\[
  {P_{\rm hold}\over P_{\rm rec}}
  \gtrsim
  {2c_{\rm dem}^2\over\Lambda_0}.
  \tag{RTL.8}
\]

Thus bounded core-log localized reuse is not an evasion branch. The Kelvin
ledger gives a fixed fraction after the approach budget is spent.

## 4. Thin-core branch

If
\[
  \Lambda\to\infty,
  \tag{RTL.9}
\]
then the backed tax density is
\[
  \theta_{\rm reuse}(\Lambda)
  \sim
  {1\over\Lambda}.
  \tag{RTL.10}
\]

This is exactly the super-marginal shape already isolated in the K5 high-Re
obstruction notes. There the weighted readout has production
\[
  \int \mathcal P\sim M A_0
  \tag{RTL.11}
\]
and an installed payer of size only \(A_0\), so the backed fraction is
\[
  \theta\sim {1\over M}.
  \tag{RTL.12}
\]

Here the role of \(M\) is played by the core-log weight:
\[
  M_{\rm log}\sim\Lambda .
  \tag{RTL.13}
\]

So the thin-core reuse edge is not a sixth Kelvin supply channel and not an
independent crowd-cell mechanism. It is a high-Re weighted row.

## 5. What would decide it

The local reuse calculation itself gives no cancellation of \(\Lambda\). It
gives (RTL.6). To turn the thin-core branch into a fixed confinement toll, the
proof must supply an additional high-Re theorem:
\[
\begin{array}{ll}
\text{record-length cap} & \text{bounded effective }\Lambda,\\[1mm]
\text{endpoint return / nonlocal end influence} & \text{finite residence or handoff},\\[1mm]
\text{curve/core/crowd contamination} & \text{forced exit from the isolated thin-core row},\\[1mm]
\text{financed handoff} & \text{return-race payer with }f>0,\\[1mm]
\text{new unweighted mechanism} & \text{upgrade }1/\Lambda\text{ to }c>0.
\end{array}
\tag{RTL.14}
\]

Those are the same options named by the K5 high-Re row after the raw Reynolds
budget, Gate-A allocation, and automatic return-race shortcuts were blocked.

The phrase "the log cancels in ladder currency" is therefore not a local reuse
fact. It is a composition/high-Re theorem still owed.

## 6. Consequence

The reuse branch now has this exact split:
\[
\begin{array}{ll}
\Lambda\le\Lambda_0
  &\Rightarrow \text{fixed reuse tracking toll after approach budget},\\[1mm]
\Lambda\to\infty
  &\Rightarrow \text{high-Re weighted-payer row with density }1/\Lambda.
\end{array}
\tag{RTL.15}
\]

Thus the thin-core log edge is not a new localized-reuse evasion branch. It is
the already named high-Re edge in filament currency.

If a no-eviction construction survives here, it is not because Kelvin missed a
sixth supply channel. It is because the high-Re weighted row was never upgraded
to an unweighted toll, or because the isolated branch was never routed out.

## 7. Four-sentence result

The localized reuse ledger gives a holder power floor
\[
  P_{\rm hold}\gtrsim \sigma c_{\rm dem}^2\Gamma_p^2 .
\]
The producer record currency per unit length carries
\(\Gamma_p^2\log(d/a)\), so the backed fraction is
\[
  \theta_{\rm reuse}\sim {1\over\log(d/a)} .
\]
With bounded core-log this is a fixed toll; with unbounded core-log it is the
same weighted high-Re row as K5/Gate-A, with \(M\sim\log(d/a)\). Therefore the
thin-core edge is not an independent reuse channel; deciding it requires the
same record-length, endpoint-return, contamination, handoff, route-out, or
unweighted high-Re mechanism already named.
