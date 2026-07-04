---
theorem_id: forward-gold-full-exchange-no-self-feeding-physical-lyapunov-pressure-test-20260704
status: failed-direct-proof-and-strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / parent active-potential capacity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - FullExchangeNoSelfFeedingStorage.A
  - BeforeClippingActiveDensityComparison.A
  - ParentActivePotentialCapacityDomination.A
  - NoTerminalSuperCapacitaryActivePotentialAtom.A
role: >-
  Tests the direct physical Lyapunov route for FullExchangeNoSelfFeedingStorage.A.
  The raw pressure-Hodge same-parent atom is already closed. After the critical
  meter weights the paired lobes, the remaining positive surplus is a same-parent
  log-meter/full-exchange variation. A proof must produce a bounded-below
  parent storage drop from the original coupled packet before clipping, with
  strict subunit feedback. Existing routes that obtain this storage from
  preallocated critical-source storage or finite capacitary excess are circular.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-active-potential-terminal-survivor-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-current-active-capacity-full-exchange-physical-story-20260704.md
completion_truth: >-
  This note does not prove FullExchangeNoSelfFeedingStorage.A, active-capacity
  domination, or Gold closure. It records a failed direct proof attempt and the
  exact smaller noncircular theorem still needed: a simultaneous same-parent
  active-critical/full-exchange/active-transit Lyapunov inequality from the
  original pressure-viscosity-incompressibility packet with strict spectral
  radius below one, or an independent proof of one storage face.
---

# Full-exchange no-self-feeding physical Lyapunov pressure test

## 1. Physical starting point

Fix one stopped parent packet of one Navier-Stokes velocity field before child
positive clipping. Transport moves the packet. Incompressibility keeps the
parent frame volume coherent. Pressure is a constraint force: after route,
collar, Hodge-frame, detector-motion, endpoint, legal, stop, return, and paid
material are removed, the raw pressure-Hodge residue has zero parent-time
marginal. Viscosity is the only direct dissipative payer and supplies the
Stokes/parabolic capacity.

The raw same-parent attachment is already closed. In the TFE notation,

\[
dJ_P
=dR_P+\int(\delta_{(t,x)}-\delta_{(t,y)})\,d\Pi_P(t,x,y),
\tag{FEL.1}
\]

with \(dR_P\) paid and with the positive and negative lobes coupled at the same
parent time. This says pressure can redistribute the same parent packet, while
the removed leakage is paid. It does not pay the critical selected surplus.

After the selected critical meter \(W_P^{crit}=e^{b_P}\) prices the two paired
lobes, the surplus is

\[
W_P^{crit}(y)\omega_P(x)
\bigl(e^{[b_P(x)-b_P(y)]_+}-1\bigr)d\Pi_P(t,x,y).
\tag{FEL.2}
\]

This is the physical object behind full exchange. It is not a new pressure atom
and not a child count. It is positive motion of the same parent log-meter along
already paired pressure-Hodge exchange.

## 2. What a direct proof would need

The desired no-self-feeding storage is a bounded-below Lyapunov drop:

\[
d\Xi_P^{FE,act}
\le
-dM_P^{FE,act}
+d\Theta_P^0
+\theta_{FE}d\Omega_P^{gen}
+dPaid_P,
\qquad C_N\theta_{FE}<1 .
\tag{FEL.3}
\]

Physically, \(d\Xi_P^{FE,act}\) is the full same-parent exchange clock: root
generator action, entropy/source motion, tower signed partner, low-high
detector, routed frame/collar/Hodge/reset/reselection/return/legal/stop
material, and paid material. The storage \(M_P^{FE,act}\) has to be a real
reserve already present in the parent history: material metric variation,
entropy reserve, retained opposite-lobe reserve, Stokes capacity, or paid
route/collar/legal/stop loss.

The strictness is the no-self-feeding condition. A selected exchange event may
spend the parent reserve, but it may not first create the reserve that is then
used to pay the same selected exchange event. In formula terms, the generator
feedback \(d\Omega_P^{gen}\) may re-enter only with a subunit coefficient. In
the coupled form, the feedback matrix must have spectral radius \(<1\).

## 3. Direct PDE check

The raw pressure-Hodge identity gives the same-time exchange pair and the
retained opposite lobe. It proves the unweighted parent atom. It stops before
\((FEL.2)\), because the critical meter has not yet moved the price between the
two already paired lobes.

The viscosity/Stokes clock gives a subunit capacity residual for the part of
the active potential that is absolutely admissible to parent capacity. If the
super-capacitary excess has finite \(U_P^2\)-mass, a bounded-below capacity
reserve can be opened. If that mass is not terminal-uniform finite, the
normalized excess converges to a terminal super-capacitary active-potential
survivor.

Reverse-Holder thickness kills that survivor only after the excess is admitted
to a time-thick parent clock with an \(L^{1+\varepsilon}\) density. That is a
consumer mechanism: Holder makes terminal collars vanish once the clock and
density already exist. It does not construct the clock from the original
pressure-viscosity-incompressibility packet.

Thus the direct PDE check gives no standalone proof of `(FEL.3)'. Pressure
pairs raw lobes. Viscosity pays capacity-admissible residue. Neither one, by
itself, gives a bounded-below strict full-exchange storage for the critical
weighted surplus `(FEL.2)'.

## 4. Checked circular route

The checked source chain currently proves full-exchange storage from a
preallocated critical-source storage face:

\[
\texttt{preallocated critical source storage}
\Longrightarrow
\texttt{FullExchangeNoSelfFeedingStorage.A}.
\tag{FEL.4}
\]

The same preallocated critical-source storage is then obtained from finite
capacitary excess, and finite capacitary excess is obtained from the
active-transit/full-exchange pair:

\[
\texttt{ActiveTransitLocalStorage.A}
+\texttt{FullExchangeNoSelfFeedingStorage.A}
\Longrightarrow
\texttt{FiniteCapacitaryExcess.A}
\Longrightarrow
\texttt{preallocated critical source storage}.
\tag{FEL.5}
\]

Physically, `(FEL.4)' uses the critical storage account as the payer for
full-exchange, while `(FEL.5)' uses full-exchange to create that same critical
storage account. That is reserve self-financing. It is not a parent reserve
drop from original data.

## 5. Noncircular theorem still needed

The direct survivor form and the loop audit point to the same smaller theorem.
For the same stopped parent packet, construct the three active faces

\[
dZ_P^{crit},\qquad d\Xi_P^{FE,act},\qquad dA_P^{AT}
\tag{FEL.6}
\]

from the original coupled packet before clipping, and prove

\[
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
\le
-d
\begin{pmatrix}
M_P^{crit}\\
M_P^{FE}\\
M_P^{AT}
\end{pmatrix}
+
K_P
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
+
\mathbf d\Theta_P^0+\mathbf dPaid_P,
\qquad
\rho(K_P)<1 .
\tag{FEL.7}
\]

This is the honest no-self-feeding theorem. The proof would say that critical
entry, full exchange, and active transit all spend one original parent reserve
with strict subunit recycling. Once `(FEL.7)' is proved, absorption by
\((I-K_P)^{-1}\) gives finite excess, excludes the terminal super-capacitary
survivor, and supplies ParentActivePotentialCapacityDomination.A.

## 6. Current classification

Installed proof: raw same-parent pressure-Hodge atom attachment and retained
opposite-lobe reserve before critical weighting.

Strict reduction: full-exchange no-self-feeding is reduced to the simultaneous
same-parent Lyapunov inequality `(FEL.7)' or to an independent proof of one
storage face from original data.

Checked obstruction: any route that proves full-exchange storage by spending
preallocated critical-source storage, then proves that critical source from
full-exchange/finite excess, is circular.

Support: reverse Holder, terminal thickness, endpoint killing, carrier BMO,
dyadic/stopped-tree entropy, and compactness are consumers or coordinates until
the original parent clock and strict storage margin are produced.
