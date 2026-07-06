---
theorem_id: forward-gold-overlap-bath-fixed-density-compensator-branch-collapse-20260706
status: strict-reduction-fixed-density-compensator-not-evasion-class
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - FixedDensityCompensator.NotEvasionClass
  - PositiveCompensator.PackOrPartOrRoutedResidue
  - DenseCrowdEvasionSurface.PersistentWKBOrConstructionExclusion
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-compensator-cm-witness-bridge-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-pass-branch-nonoverdraft-branch-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-srp-moment-readout-bridge-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict branch collapse only. The fixed-density compensator is a
  producer-sized missing-tax residue, not a producing geometry that evades
  eviction. In the beta-small overlap row, rho_theta0 is comparable to
  mu_prod. If there is no local tested same-packet record or row-formation
  bridge, the residue is Pack-side carrier/readout failure or routed residue,
  not a retained counterexample class. If there is a local tested same-packet
  record and row formation identifies the queue with the original
  Navier-Stokes participation ledger, positive compensator is Part-side
  failure. On the retained CM pass branch, Pack, Part, and row formation force
  K=0 and K_ch9=0 unless the compensator is explicitly routed outside the
  retained row. Therefore fixed-density compensator routing is an exit/routing
  surface, not an independent dense-crowd evasion source. This proves no
  row-formation theorem, no weighted routing theorem, no SRP bridge beyond the
  filed regate, no persistent high-Re WKB construction or exclusion, no fixed
  positive confinement constant, and no MPP closure.
---

# Fixed-density compensator is not an evasion class

## 1. Kill question

The overlap-bath front still listed fixed-density compensator routing as one
of the dense-crowd evasion sources.

The kill question is whether that compensator can itself be a producing class
that evades every floor.

It cannot. The compensator is not a fluid pose. It is the exact missing-tax
residue left when a \(q=4/5\) pressure-service row is asked to back a fixed
retained tax.

## 2. Producer-sized residue

The fixed-density compensator note gives, in the beta-small overlap regime,
\[
  C\beta^{4/5}\le{\theta_0\over2},
  \tag{FDBC.1}
\]
the measure equivalence
\[
  {\theta_0\over2}\mu_{\rm prod}
  \le
  \rho_{\theta_0}
  \le
  \theta_0\mu_{\rm prod}.
  \tag{FDBC.2}
\]

Thus the compensator is producer-sized on the same retained channel-cell
support. It is not a lower-order smooth pressure bath.

## 3. No local tested row

If the residue has no local tested same-packet carrier/readout, or if row
formation has not identified the queue with the original Navier-Stokes
participation ledger, then the compensator witness bridge gives only these
lawful readings:
\[
\begin{array}{ll}
\text{no admissible local carrier/window}
  &\Rightarrow \text{Pack-side carrier/readout failure},\\[1mm]
\text{mass not admitted to the retained witness tree}
  &\Rightarrow \text{routed tail/boundary/Silver residue}.
\end{array}
\tag{FDBC.3}
\]

Neither item is a retained producing configuration that evades eviction.

## 4. Local tested same-packet row

If a local same-packet record is admitted and row formation identifies the
queue as the original participation ledger, the compensator bridge says
\[
  Pack_Q
  \wedge
  \operatorname{RowFormation}_{\rm same\ packet}
  \wedge
  dK>0
  \Longrightarrow
  \neg Part_{N,Q}.
  \tag{FDBC.4}
\]

The same implication holds for \(dK^{\rm ch9}>0\).

So in the admitted same-fluid case, positive compensator is a Part-side
failure: the same velocity, pressure, viscosity, nonlinearity, and transported
carrier cannot historically service the retained record without minted
reserve, future admission, or side-entry mass.

That is class exit / proof failure material, not an evading pose.

## 5. Retained pass branch

The pass-branch non-overdraft split gives the complementary statement. On a
retained pass branch,
\[
  Pack_Q,\qquad
  Part_{N,Q},\qquad
  \operatorname{RowFormation}_{\rm same\ packet}
  \tag{FDBC.5}
\]
and with no explicitly routed compensator outside the retained row,
\[
  K\equiv0,
  \qquad
  K^{\rm ch9}\equiv0.
  \tag{FDBC.6}
\]

Therefore a retained pass branch cannot keep a positive fixed-density
compensator as hidden supply. It either routes the compensator outside the row
or loses the pass branch.

## 6. Weighted routing and SRP

The fixed-density note already splits routed residue:
\[
\begin{array}{ll}
\int w\,d\rho_{\theta_0}<\infty
  &\Rightarrow \text{finite weighted external residue routing},\\[1mm]
\int w\,d\rho_{\theta_0}=\infty
  &\Rightarrow \text{SRP moment-readout gate}.
\end{array}
\tag{FDBC.7}
\]

The SRP regate says the second line is not automatic Silver. It must become one
of the named failures: row formation, positive compensator/non-overdraft,
weighted residue first-moment failure, floor failure, or unbounded active
readout.

Again, those are routing and witness gates. They are not a producing
configuration class that evades the geometric tax.

## 7. Branch collapse

The fixed-density compensator branch has no evasion state:
\[
\begin{array}{ll}
\rho_{\theta_0}=0
  &\Rightarrow \text{producer suppression or beta edge},\\[1mm]
\rho_{\theta_0}>0\text{ without row formation}
  &\Rightarrow \text{Pack/routed residue},\\[1mm]
\rho_{\theta_0}>0\text{ with row formation}
  &\Rightarrow \text{Part-side failure unless routed},\\[1mm]
\rho_{\theta_0}\text{ routed}
  &\Rightarrow \text{external residue/SRP gate}.
\end{array}
\tag{FDBC.8}
\]

Thus the dense-crowd evasion hunt loses this branch as a counterexample class.
The remaining no-eviction candidate is the actual same-fluid bath itself:
persistent high-Re WKB / broadband construction, or construction/exclusion of
the near-uniform same-fluid WKB bath.

## 8. Four-sentence result

The fixed-density compensator is the missing fixed-tax measure
\(\rho_{\theta_0}\), and in the beta-small overlap row it is comparable to
\(\mu_{\rm prod}\). Without row formation it is Pack/routed residue; with
same-packet row formation, positive compensator is Part-side failure; on a
retained pass branch it vanishes unless explicitly routed outside the row.
Finite weighted routing and the SRP moment-readout gate are residue/witness
surfaces, not producing geometry. Therefore fixed-density compensator routing
is not an independent dense-crowd evasion class.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
