---
theorem_id: forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706
status: strict-reduction-gate8-allocation-preserves-beta-density
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.Gate8TaxDensity.NO-AMPLIFICATION
  - TaxBackingDeficit.PositiveForFixedTheta
  - CompensatorOrConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-ga-tax-row-backing-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-tax-backing-measure-deficit-lemma-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-hall-incidence-queue-collapse-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-chapter9-reserve-queue-consumer-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706.md
completion_truth: >-
  Strict reduction and allocation obstruction, not a Gate-8 theorem, not a
  dense-crowd theorem, and not a confinement-constant decision. Gate-8
  no-recount allocation can preserve a pressure-service tax row only at the
  density actually backed by the pressure-service budget. The raw allocation
  note gives pressure-service backing measure beta_ph no larger than
  C beta^(4/5) times local producer throughput mu_prod, and smaller by
  (D/R)^5 against a larger producer packet. The GA-tax backing lemma says a
  fixed tax density theta0 requires beta_ph >= theta0 mu_prod as measures.
  Therefore, for beta small enough, the fixed-density tax deficit is positive
  and has size at least (theta0-C beta^(4/5)) mu_prod on any retained part
  where the pressure-service estimate is sharp. No-recount allocation cannot
  turn the q=4/5 pressure row into an order-one confinement payer. The
  remaining branch is now a positive fixed-density compensator/residue,
  a Reynolds-edge/producer-suppression bridge, non-affine/broadband same-fluid
  transport/persistence, or a real construction/exclusion. Follow-up
  affine-transport pressure-bank obstruction checks that affine same-fluid
  custody remains beta^(4/5), so it is not the compensator.
---

# Overlap bath: Gate-8 tax-density obstruction

## 1. Kill question

The raw allocation note killed one shortcut:
\[
  \text{same Navier-Stokes field}
  \nRightarrow
  \text{order-one pressure payer}.
  \tag{GTD.1}
\]

The next tempting claim is subtler: even if the raw energy is only
\(\beta^{4/5}\), maybe Gate-8 no-recount allocation promotes the
pressure-service work to a record-ladder tax.

The kill question is whether no-recount allocation can amplify the
pressure-service row into a fixed positive tax density.

The checked answer is no.

## 2. Pressure-service backing density

Let \(\mu_{\rm prod}\) denote the local producer-throughput currency on the
same retained pressure episode:
\[
  d\mu_{\rm prod}\sim s^2D^5
  \tag{GTD.2}
\]
at the pressure-cell scale.

The pressure-service budget supplied by the shear-cell construction obeys
\[
  d\beta_{\rm ph}
  \lesssim
  \beta^{4/5}\,d\mu_{\rm prod}.
  \tag{GTD.3}
\]

Against a larger producer packet of radius \(R\ge D\), the already-filed
raw-allocation calculation gives the weaker density
\[
  d\beta_{\rm ph}
  \lesssim
  \beta^{4/5}\left({D\over R}\right)^5 d\mu_{\rm prod,R}.
  \tag{GTD.4}
\]

Thus the pressure-service budget is same-packet only with a vanishing
density.

## 3. Gate-8 cannot change the density

The GA-tax row/backing split says a retained tax row is a Radon-Nikodym
submeasure
\[
  dT=\tau\,d\mu_{\rm prod}.
  \tag{GTD.5}
\]

The tax-backing lemma says a fixed target density \(\theta_0>0\) is backed
exactly when
\[
  \beta_{\rm ph}\ge \theta_0\mu_{\rm prod}
  \tag{GTD.6}
\]
as measures on the retained row, or by the corresponding Hall inequality
after chronological backing.

But (GTD.3) implies
\[
  \beta_{\rm ph}\le C\beta^{4/5}\mu_{\rm prod}.
  \tag{GTD.7}
\]

For
\[
  C\beta^{4/5}<\theta_0,
  \tag{GTD.8}
\]
the fixed-density row is not backed. The maximal backed pressure tax has
density at most
\[
  \tau_{\rm ph}\lesssim \beta^{4/5}.
  \tag{GTD.9}
\]

No-recount allocation can preserve the pressure-service row on the correct
same-packet history. It cannot make its density order one.

## 4. Exact compensator lower bound

For a fixed target tax density \(\theta_0\), the tax-deficit lemma gives
the unbacked measure
\[
  \rho_{\theta_0}
  =
  \theta_0\mu_{\rm prod}-T_{\theta_0}.
  \tag{GTD.10}
\]

Using (GTD.7),
\[
  \rho_{\theta_0}
  \ge
  \left(\theta_0-C\beta^{4/5}\right)_+\mu_{\rm prod}.
  \tag{GTD.11}
\]

In the larger-packet reading,
\[
  \rho_{\theta_0}
  \ge
  \left(
    \theta_0
    -
    C\beta^{4/5}\left({D\over R}\right)^5
  \right)_+
  \mu_{\rm prod,R}.
  \tag{GTD.12}
\]

Thus any attempt to demand a fixed pressure-service tax creates an
order-one tax compensator on the retained producer row once \(\beta\) is
small.

That compensator is not entrance reserve and not same-packet tax. It must be
routed as \(dK^{\rm tax}\), tail/boundary/Silver mass, producer suppression,
or construction exclusion.

## 5. What this kills

This kills the shortcut
\[
  \text{Gate-8 no-recount allocation of pressure service}
  \Rightarrow
  \text{fixed confinement tax}.
  \tag{GTD.13}
\]

Gate-8 is a no-recount and same-index allocation mechanism. It does not
increase the Radon-Nikodym density of the backing budget.

For the pressure-service row, the allocated tax density stays
\[
  \tau_{\rm ph}\lesssim\beta^{4/5}
  \tag{GTD.14}
\]
at best. A fixed \(\theta_0\) belongs to the compensator branch, not the
retained pressure-service tax row.

## 6. What remains

The pressure row now has these typed open branches:

- fixed-density compensator/residue:
  demand \(\theta_0>0\) and route the positive
  \(dK^{\rm tax}\) or \(\rho_{\theta_0}\);
- Reynolds-edge bridge:
  convert \(\operatorname{Re}_R\lesssim\beta^{-4/5}\) into
  record-ladder payment, producer suppression, or construction exclusion;
- non-affine/broadband same-fluid transport/persistence:
  keep the pressure-service bank attached through the real flow beyond the
  affine-custody regime, or prove that this demands
  \(\omega/s\gtrsim\beta^{-4/5}\);
- construction/exclusion:
  build or rule out a summability-valid dynamic pressure bath whose retained
  pressure-service density stays at \(q=4/5\).

## 7. Four-sentence result

Gate-8 no-recount allocation cannot turn the pressure-service row into a fixed
tax density. The pressure-service backing measure is only
\[
  \beta_{\rm ph}\lesssim\beta^{4/5}\mu_{\rm prod}
\]
at the pressure-cell scale, and smaller by \((D/R)^5\) against a larger
producer packet. The GA-tax backing lemma says a fixed tax density
\(\theta_0\) needs \(\beta_{\rm ph}\ge\theta_0\mu_{\rm prod}\) as a measure,
so for small \(\beta\) the fixed-density deficit is positive. The pressure
branch must therefore use a real compensator/residue, Reynolds-edge bridge,
non-affine/broadband same-fluid transport/persistence, or
construction/exclusion; no-recount
allocation alone preserves the \(q=4/5\) row.
