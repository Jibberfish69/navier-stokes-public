---
theorem_id: forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706
status: strict-reduction-fixed-density-compensator-to-producer-equivalent-residue
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - FixedDensityCompensator.MeasureEquivalence
  - ProducerSuppression.OrWeightedResidueRoute
  - SRPMomentReadoutBridge.ConsumesInfiniteWeightedResidueOnlyByNamedGate
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-tax-backing-measure-deficit-lemma-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-weighted-moment-geometric-crossing-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-srp-moment-readout-bridge-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-chapter9-reserve-queue-consumer-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-residual-gram-positivity-is-anti-equidistribution-20260706.md
completion_truth: >-
  Strict reduction only. The fixed-density pressure-tax compensator is not a
  small free residue. On the beta-small overlap row, Gate-8 gives pressure
  backing beta_ph <= C beta^(4/5) mu_prod, while a fixed tax theta0 mu_prod
  requires beta_ph >= theta0 mu_prod. Hence, once C beta^(4/5) <= theta0/2, the
  canonical deficit rho_theta0 is comparable to the producer-throughput measure:
  (theta0/2) mu_prod <= rho_theta0 <= theta0 mu_prod. The compensator branch is
  therefore reduced to producer suppression / edge failure, finite weighted
  residue routing, or the already named SRP moment-readout gate for infinite
  weighted residue. The WKB uniform-mode follow-up identifies an order-one
  positive uniform-mode Gram charge on the pressure-service overlap bath as this
  same fixed-density tax demand, hence the same compensator/residue branch.
  The residual Gram follow-up leaves bounded residual positivity outside this
  branch: it collapses to legal anti-equidistribution, while an unbounded
  residual is a new payer/certificate or construction branch.
  This note proves none of those three destinations and
  claims no W1, F4, F5, manuscript, or MPP closure.
---

# Fixed-density compensator routing for the overlap bath

## 1. Object

The overlap-bath Gate-8 note proves that no-recount allocation preserves only
the pressure-service density already supplied by the bath:
\[
  \beta_{\rm ph}\le C\beta^{4/5}\mu_{\rm prod}.
  \tag{FDC.1}
\]

A fixed retained tax row with density \(\theta_0>0\) would require
\[
  \beta_{\rm ph}\ge \theta_0\mu_{\rm prod}
  \tag{FDC.2}
\]
as a same-support measure domination statement.

The tax-backing lemma therefore gives the canonical unbacked deficit
\[
  \rho_{\theta_0}
  =
  \theta_0\mu_{\rm prod}-T_{\theta_0},
  \qquad
  0\le T_{\theta_0}\le\beta_{\rm ph}.
  \tag{FDC.3}
\]

This note identifies the actual size and destinations of that residue.

## 2. The residue is producer-sized

Assume the beta-small overlap regime
\[
  C\beta^{4/5}\le {\theta_0\over2}.
  \tag{FDC.4}
\]

Since \(T_{\theta_0}\le\beta_{\rm ph}\), (FDC.1) gives
\[
  T_{\theta_0}\le C\beta^{4/5}\mu_{\rm prod}.
  \tag{FDC.5}
\]

Therefore
\[
  \rho_{\theta_0}
  =
  \theta_0\mu_{\rm prod}-T_{\theta_0}
  \ge
  \left(\theta_0-C\beta^{4/5}\right)\mu_{\rm prod}
  \ge
  {\theta_0\over2}\mu_{\rm prod}.
  \tag{FDC.6}
\]

The opposite inequality is automatic from \(T_{\theta_0}\ge0\):
\[
  \rho_{\theta_0}\le\theta_0\mu_{\rm prod}.
  \tag{FDC.7}
\]

So on the retained beta-small overlap row,
\[
  {\theta_0\over2}\mu_{\rm prod}
  \le
  \rho_{\theta_0}
  \le
  \theta_0\mu_{\rm prod}.
  \tag{FDC.8}
\]

The fixed-density compensator is not a lower-order leftover. It is
measure-equivalent to the producer throughput on the same channel-cell support.

## 3. Weighted form

Let \(w\) be the predictable chapter-9/SRP channel weight on the same retained
row. Multiplying (FDC.8) by \(w\) and integrating gives
\[
  {\theta_0\over2}\int w\,d\mu_{\rm prod}
  \le
  \int w\,d\rho_{\theta_0}
  \le
  \theta_0\int w\,d\mu_{\rm prod}.
  \tag{FDC.9}
\]

Thus weighted first-moment tightness of the fixed-density compensator is
equivalent to weighted first-moment tightness of the retained producer
throughput, up to fixed constants, in the beta-small overlap regime.

This matters because the weighted-moment reduction already says that routed
residues may leave the retained Gold row only when they carry their own weighted
first-moment route, or else enter the SRP moment-readout gate.

## 4. Forced routing split

The fixed-density compensator branch now has three destinations.

First, producer suppression or edge failure:
\[
  \rho_{\theta_0}=0
  \quad\Longrightarrow\quad
  \mu_{\rm prod}=0
  \quad\text{or}\quad
  C\beta^{4/5}>{\theta_0\over2}.
  \tag{FDC.10}
\]
In words: below the beta threshold, a positive producer row cannot demand a
fixed pressure tax without producing the compensator. A pass through this door
must suppress the producer throughput or leave the beta-small overlap regime.

Second, finite weighted-residue routing:
\[
  \int w\,d\rho_{\theta_0}<\infty.
  \tag{FDC.11}
\]
Then \(\rho_{\theta_0}\) may be treated as an explicit routed
tax/boundary/locality residue in the chapter-9 consumer architecture. It still
does not become entrance reserve and does not become a retained pressure-service
tax row.

Third, infinite weighted residue:
\[
  \int w\,d\rho_{\theta_0}=\infty
  \quad\Longleftrightarrow\quad
  \int w\,d\mu_{\rm prod}=\infty
  \tag{FDC.12}
\]
under (FDC.4). This is exactly the SRP moment-readout branch already regated by
the moment-readout note. It is not automatic Silver. It must become one of the
named failures there: row formation failure, positive compensator/non-overdraft
failure, non-vanishing weighted residue, floor failure, or the old
\(\{\bar\kappa=\infty\}\) active-readout complement.

## 5. Consequence for the overlap-bath front

The phrase "fixed-density compensator/residue routing" is now too broad unless
it is read through (FDC.10)--(FDC.12).

The branch is:

1. producer suppression or beta-edge failure;
2. finite weighted routing of \(\rho_{\theta_0}\) as an external residue;
3. SRP moment-readout gate for infinite weighted \(\rho_{\theta_0}\).

No version of this branch supplies the missing W1 row by itself. It either
removes the producer row, routes an external residue, or opens an already named
moment/CM-interface gate.

The same pricing applies when the WKB Gram branch asks for a positive
uniform-mode charge in the pressure-service overlap bath. An order-one
all-to-all uniform mode is a fixed-density tax row on \(\mu_{\rm prod}\), so it
creates exactly the residue \(\rho_{\theta_0}\) above unless a different
backing source is proved.

The bounded residual Gram branch is separate from this compensator branch. Once
the backed rank-one uniform mode is subtracted, a bounded zero-mode residual
can only give a count-free floor by proving legal anti-equidistribution. An
unbounded residual strong enough to charge near-uniform clouds would need its
own same-fluid backing or construction/exclusion proof.

## 6. State

This is a strict reduction of the fixed-density compensator branch.

It proves no producer-suppression theorem, no finite weighted-residue routing
theorem, no SRP moment-readout bridge beyond the already filed regate, and no
construction/exclusion theorem.

No W1 repair, F4 pass, F5 pass, manuscript completion, or MPP closure is
claimed.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
