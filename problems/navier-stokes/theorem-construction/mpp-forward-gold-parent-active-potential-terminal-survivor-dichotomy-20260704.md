---
theorem_id: forward-gold-parent-active-potential-terminal-survivor-dichotomy-20260704
status: strict-reduction-and-consumer-veto-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / parent active-potential capacity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - ParentActivePotentialCapacityDomination.A
  - FiniteCapacitaryExcess.A
  - NoTerminalSuperCapacitaryActivePotentialAtom.A
  - BeforeClippingActiveDensityComparison.A
  - FullExchangeNoSelfFeedingStorage.A
role: >-
  Makes the current active-potential wall explicit as a terminal-survivor
  dichotomy. Parent active-potential domination is equivalent, after the
  installed raw atom and endpoint consumers, to finite super-capacitary excess,
  equivalently to absence of a terminal super-capacitary active-potential atom.
  Reverse-Holder terminal killing is a consumer unless before-clipping active
  density comparison and strict full-exchange no-self-feeding storage are proved
  from the original coupled packet.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-current-active-capacity-full-exchange-physical-story-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-capacity-signed-height-record-admission-boundary-20260704.md
completion_truth: >-
  This note does not prove ParentActivePotentialCapacityDomination.A or Gold
  closure. It proves a strict reduction and checked obstruction: the only
  noncircular source route left at this depth is to rule out the terminal
  super-capacitary active-potential survivor by proving before-clipping active
  density comparison and full-exchange no-self-feeding storage as one
  same-parent coupled storage object from the original Navier-Stokes packet.
---

# Parent active-potential terminal survivor dichotomy

## 1. Physical object

The object is one stopped parent packet of one Navier-Stokes velocity field,
before child positive clipping. The raw pressure-Hodge/material residue has
already been paired at the same parent time, with retained opposite-lobe reserve
and paid route/collar/legal/stop pieces separated. The remaining selected
critical defect is the positive motion of the same parent log-meter:

\[
a_\Phi(F_P)\,[\mathcal L_P\log W_P^{crit}]_+\,d\mathfrak m_P .
\tag{PAS.1}
\]

Physically, `(PAS.1)' asks whether the selected meter can extract positive
active potential from the same parent history faster than viscosity/Stokes
capacity and bounded-below same-parent storage can absorb it.

The target form is:

\[
a_\Phi(F_P)[\mathcal L_P\log W_P^{crit}]_+d\mathfrak m_P
\le
-dK_P^{act}
+\vartheta\,\operatorname{Cap}_{A,P}
+dE_P^0,
\qquad C_N\vartheta<1,
\tag{PAS.2}
\]

in the parent Kato-Mazya form sense. This is
`ParentActivePotentialCapacityDomination.A' / `TFE2748B.1343'.

## 2. Equivalent survivor form

After the maximal subunit-capacity residual is chosen, the active potential
splits into residual and excess:

\[
d\mathfrak v_P^{crit}
=d\mathfrak v_P^{res}
+d\mathfrak v_P^{exc},
\qquad
\mathfrak v_P^{res}(K)
\le
\vartheta\operatorname{Cap}_{A,P}(K)+E_P^0(K).
\tag{PAS.3}
\]

The bounded-below reserve exists exactly when the excess has finite
\(U_P^2\)-weighted mass:

\[
\sup_{\tau<T_*}
\int_{[0,\tau]\times X_P}U_P^2\,d\mathfrak v_P^{exc}
\le
C_N(u_0)+Paid_P+Legal_P+Stop_P .
\tag{PAS.4}
\]

Thus, at this depth,

\[
\texttt{FiniteCapacitaryExcess.A}
\Longrightarrow
\texttt{ParentActivePotentialCapacityDomination.A}.
\tag{PAS.5}
\]

Failure of `(PAS.4)' has a compactness form. Normalizing the excess as
\(L_n^{-1}U_P^2d\mathfrak v_{P,\tau_n}^{exc}\) along
\(\tau_n\uparrow T_*\) yields a nonzero terminal measure if the finite-excess
bound fails:

\[
d\widehat\mu_n\rightharpoonup d\widehat\mu_\infty,
\qquad
\operatorname{spt}d\widehat\mu_\infty\subseteq\{t=T_*\}.
\tag{PAS.6}
\]

The survivor is super-capacitary: no positive submeasure is admissible as a
subunit parabolic-capacity residual. Therefore, inside the stopped
active-potential failure class,

\[
\texttt{NoTerminalSuperCapacitaryActivePotentialAtom.A}
\Longleftrightarrow
\texttt{FiniteCapacitaryExcess.A}.
\tag{PAS.7}
\]

This is the useful reduction. The remaining obstruction is not a dyadic count,
not a pressure atom, and not endpoint ownership. It is a terminal survivor of
the same parent active potential.

## 3. Reverse Holder is only a consumer unless its clock is produced

The reverse-Holder terminal-killing argument is valid in this form:

\[
\texttt{ParentReverseHolderThickness.A}
\Longrightarrow
\texttt{NoTerminalSuperCapacitaryActivePotentialAtom.A}.
\tag{PAS.8}
\]

But `ParentReverseHolderThickness.A' is not an independent source. In the
checked TFE chain it is produced only after the endpoint-admitted local package,
and that package is produced only after active-transit and full-exchange storage
faces are already supplied. Reading reverse Holder as the source theorem would
therefore hide the same storage wall under a density estimate.

The noncircular source split recorded by the current TFE sections is:

\[
\begin{aligned}
&\texttt{BeforeClippingActiveDensityComparison.A}\\
&+\texttt{FullExchangeNoSelfFeedingStorage.A}
\end{aligned}
\Longrightarrow
\texttt{NoTerminalSuperCapacitaryActivePotentialAtom.A}.
\tag{PAS.9}
\]

The first input says the active-potential excess of the same parent packet is
dominated before clipping by the parent active/full-exchange clock, not by a
later selected child or record readout. The second input says that this
full-exchange clock is bounded by a same-parent storage drop plus a strict
subunit generator feedback term:

\[
d\Xi_P^{FE,*}
\le
-dM_P^{FE,*}
+\theta_{FE}d\Omega_P^{gen,*}
+dE_P^{0,*},
\qquad C_N\theta_{FE}<1.
\tag{PAS.10}
\]

After normalizing a failed finite-excess sequence, `(PAS.9)' makes every
terminal survivor absolutely dominated by the limiting generator/paid clock.
In the zero-source terminal class, after route, endpoint, legal, stop, return,
reset, and collar faces are removed, that limiting clock has no nonzero
terminal residue. Hence the terminal super-capacitary atom is impossible.

## 4. Loop obstruction

The coupled-storage audit remains active here. Current sources identify:

\[
\texttt{ActiveTransitLocalStorage.A}
+\texttt{FullExchangeNoSelfFeedingStorage.A}
\Longrightarrow
\texttt{ParentActivePotentialCapacityDomination.A}
\tag{PAS.11}
\]

as a coordinate reduction, not a proof chain. A sequential route that proves
full-exchange storage from preallocated critical-source storage and then proves
that critical-source storage from full-exchange storage is circular.

The noncircular alternatives are exactly:

1. prove `BeforeClippingActiveDensityComparison.A' independently from the
   original coupled packet and prove strict full-exchange no-self-feeding
   storage independently;
2. prove `FullExchangeNoSelfFeedingStorage.A' independently strongly enough to
   absorb the active-density comparison;
3. prove one simultaneous active-transit/full-exchange/critical-source storage
   inequality with feedback matrix spectral radius below one.

Without one of those, `(PAS.9)' is a target, not a closure proof.

## 5. Current proof truth

Installed here:

\[
\begin{aligned}
&\texttt{BeforeClippingActiveDensityComparison.A}\\
&+\texttt{FullExchangeNoSelfFeedingStorage.A}
\end{aligned}
\Longrightarrow
\texttt{NoTerminalSuperCapacitaryActivePotentialAtom.A}
\Longleftrightarrow
\texttt{FiniteCapacitaryExcess.A}
\Longrightarrow
\texttt{ParentActivePotentialCapacityDomination.A}.
\tag{PAS.12}
\]

Still open from arbitrary original Navier-Stokes data:

\[
\texttt{BeforeClippingActiveDensityComparison.A}
\quad+\quad
\texttt{FullExchangeNoSelfFeedingStorage.A}
\tag{PAS.13}
\]

as one same-parent, before-clipping, non-self-feeding storage construction.

The physical reading is simple: if the selected critical meter can still beat
parent capacity after all paid exits are removed, the survivor is a terminal
active-potential atom. The proof must either kill that survivor by a
before-clipping active/full-exchange clock with strict storage, or admit that
the current parent active-potential domination theorem remains open.
