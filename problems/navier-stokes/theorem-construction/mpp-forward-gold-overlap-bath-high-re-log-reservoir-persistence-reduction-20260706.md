---
theorem_id: forward-gold-overlap-bath-high-re-log-reservoir-persistence-reduction-20260706
status: strict-reduction-high-re-log-room-to-exponential-persistence-or-terminal-frequency-escape
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - HighReLogReservoir.PersistenceNumberReduction
  - FixedPopulationWKB.EndpointRoomOnly
  - TerminalFrequencyEscape.AsRemainingConstructionBranch
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
completion_truth: >-
  Strict reduction only. The high-Re logarithmic reservoir left by the
  carrier-scale room ledger is exactly half the logarithm of the WKB carrier
  persistence number at the relevant q-row upper cutoff. In the general
  many-cell branch, Delta_room <= (1/2)log(Re_D beta^(48/25)); in the dense
  fixed-density branch, Delta_room <= (1/2)log(Re_D beta^(12/5)). Therefore a
  fixed-population WKB bath supplying sign-coherent active service A with total
  weight W by endpoint room alone must have Re_D theta_+^2 >= exp(2A/W), where
  theta_+ is beta^(24/25) in the general branch and beta^(6/5) in the dense
  branch. The reservoir is not a reusable row payer: over repeated
  fixed-population episodes, the active service telescopes to weighted terminal
  carrier log-frequency travel. Infinite repeated use requires terminal
  frequency escape of the same material WKB population; any reset, reweighting,
  or moving bank is routed to the already filed variation/custody ledgers. This
  proves no high-Re exclusion, no terminal-frequency construction/exclusion, no
  Gate-8 custody theorem, and no MPP closure.
---

# High-Re log reservoir: persistence-number reduction

## 1. Object

The carrier-scale room ledger left one dangerous phrase:
\[
  \hbox{high-Re logarithmic reservoir}.
  \tag{HRL.1}
\]

This note asks what that reservoir actually is in the WKB variables already
filed. The answer is exact: it is endpoint carrier log-room, equivalently the
logarithm of carrier persistence.

## 2. Room equals half-log persistence

The general many-cell WKB branch has upper q-row cutoff
\[
  \theta_+^{\rm WKB}\sim \beta^{24/25},
  \tag{HRL.2}
\]
and lower viscous persistence cutoff
\[
  \theta_-\sim \operatorname{Re}_D^{-1/2}.
  \tag{HRL.3}
\]

Thus its log room is
\[
  \Delta_{\rm WKB}
  \le
  \log{\theta_+^{\rm WKB}\over\theta_-}
  =
  {1\over2}\log\!\left(\operatorname{Re}_D\beta^{48/25}\right).
  \tag{HRL.4}
\]

The dense fixed-density branch has
\[
  \theta_+^{\rm dense}\sim \beta^{6/5},
  \tag{HRL.5}
\]
so
\[
  \Delta_{\rm dense}
  \le
  {1\over2}\log\!\left(\operatorname{Re}_D\beta^{12/5}\right).
  \tag{HRL.6}
\]

Equivalently, with
\[
  P_+:=\operatorname{Re}_D\theta_+^2,
  \tag{HRL.7}
\]
the high-Re room is
\[
  \Delta_{\rm room}\le {1\over2}\log P_+.
  \tag{HRL.8}
\]

So the reservoir is not a new physical bank. It is the same statement that the
largest admissible WKB carrier can persist for \(P_+\) carrier-viscous units on
the producer clock.

## 3. Exponential persistence price

For a fixed material WKB population with total weight \(W\), the active-service
identity gives
\[
  \int_I S:K\,dt
  =
  \sum_iw_i[\log\lambda_i(t_1)-\log\lambda_i(t_0)].
  \tag{HRL.9}
\]

If the demanded sign-coherent service on \(I\) is
\[
  A_I:=\left|\int_I S:K\,dt\right|,
  \tag{HRL.10}
\]
and no weight variation or bank motion is used, then
\[
  A_I\le W\Delta_{\rm room}.
  \tag{HRL.11}
\]

Combining (HRL.8) and (HRL.11), endpoint-room service alone requires
\[
  P_+
  =
  \operatorname{Re}_D\theta_+^2
  \ge
  \exp(2A_I/W).
  \tag{HRL.12}
\]

Thus every unit of active service bought from the high-Re reservoir is a
multiplicative persistence demand. The logarithm is not a free additive row;
it is the log of a Reynolds excess.

## 4. Repeated use telescopes

Now let a fixed material population supply sign-coherent active service on a
sequence of episodes \(I_j=[t_j,t_{j+1}]\), without reweighting and without
moving the bank. Summing (HRL.9) gives the telescoping identity
\[
  \sum_j\int_{I_j}S:K\,dt
  =
  \sum_iw_i[\log\lambda_i(t_N)-\log\lambda_i(t_0)].
  \tag{HRL.13}
\]

Therefore the same high-Re room cannot be counted independently at every rung.
Repeated use is exactly terminal carrier log-frequency travel of the same
material population.

If
\[
  \sum_j A_{I_j}=\infty,
  \tag{HRL.14}
\]
then endpoint-room service by a fixed population forces
\[
  \sup_j \lambda_i(t_j)=\infty
  \tag{HRL.15}
\]
on a positive weighted part of the population. That is no longer a bounded WKB
bath reserve. It is a terminal frequency-escape branch.

## 5. What resets cost

There are only three ways to avoid the telescoping conclusion:

1. change the weights \(w_i\);
2. refresh or reassemble the carrier population;
3. move the bank scale \(D(t)\).

Those are already priced by the variation ledgers:
\[
  \left|\int S:K\,dt\right|
  \le
  W\Delta+{\Delta\over2}V_w+WV_D.
  \tag{HRL.16}
\]

Thus a reset of the high-Re room is not part of the endpoint reservoir. It is
weight variation, population refresh/reassembly, or bank log-variation, and it
routes to Gate-8/custody or construction/exclusion.

## 6. Consequence for the WKB survivor

The high-Re logarithmic branch is now typed as
\[
  \hbox{active service}
  \Rightarrow
  \begin{cases}
  \hbox{exponential carrier-persistence demand},\\
  \hbox{terminal same-population frequency escape},\\
  \hbox{refresh/reassembly or bank-motion custody},\\
  \hbox{or dynamic WKB construction/exclusion}.
  \end{cases}
  \tag{HRL.17}
\]

This does not exclude the branch. A finite-energy Navier-Stokes field may still
try to realize a terminal high-frequency WKB population with the required
pressure-Hessian moment. The point is narrower: the word "reservoir" cannot be
used as an independent row payer. It is endpoint log travel unless a separate
custody mechanism restarts it.

## 7. Four-sentence result

The high-Re WKB reservoir is
\[
  \Delta_{\rm room}\le {1\over2}\log(\operatorname{Re}_D\theta_+^2).
\]
So supplying \(A\) units of sign-coherent active service from fixed carrier
room alone requires \(\operatorname{Re}_D\theta_+^2\ge e^{2A/W}\). Reusing that
room over several rungs telescopes to terminal material carrier-frequency
travel, not a fresh payment at each rung. Any reset of the room is weight
variation, refresh/reassembly, or bank log-variation, already routed to
Gate-8/custody or construction/exclusion.
