---
ns_viewer:
  theorem_id: forward-gold-controlled-coupled-radius-collapse-direct-test-20260621
  status: direct-test-complete-controlled-collapse-needs-canonical-radius-and-endpoint-ui
  proof_role: forward_gold_coupled_mixed_tower_radius_collapse_test
  logical_landing_node: controlled_coupled_tower_radius_collapse
  edge_effect: "Tests ControlledCoupledTowerRadiusCollapse.A. The raw statement is false unless the shrinking radius is a canonical radius read from the coupled tower energy: an arbitrary chosen radius can collapse even for the zero solution. With a canonical admissible-radius set, collapse has two branches. A fixed finite rung can fail, which is a Field/Part-facing readout after CM admission. Or every fixed finite rung can remain bounded while the analytic/factorial radius collapses only at high rung order; that is the terminal time-face/high-tower endpoint UI problem and still needs unweighted same-carrier action/no-waste/profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-summable-coupled-radius-spend-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-timeface-supplier-exhaustion-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-production-method-finality-20260620.md
  downstream_consequence: "Do not use divergent radius spend as a forward-gold contradiction by itself. First tie the radius to a canonical tower-energy gauge. Then finite-rung collapse is a CM-facing readout, while high-rung-only collapse returns to SelectedCarrierEndpointUI.A / UnweightedTerminalCriticalActionReserve.A / StrictRescaledNoWasteLyapunov.A / MinimalZenoProfileProduction.A."
---

# MPP Forward-Gold Controlled Coupled Radius Collapse Direct Test

Date: 2026-06-21

## Status

This note tests

\[
\boxed{\text{ControlledCoupledTowerRadiusCollapse.A}.}
\tag{CCR.1}
\]

The direct statement is not valid unless the collapsing radius is read from the
coupled tower itself. Arbitrary moving radii are gauge choices; their collapse
does not imply a physical or PDE defect.

## 1. Arbitrary radius collapse is meaningless

Let \(u\equiv0\). Then every tower rung vanishes:

\[
W_{m,\alpha}\equiv0,
\qquad
Q_{m,\alpha}\equiv0.
\tag{CCR.2}
\]

For any positive functions \(\tau(s),\rho(s)\), the weighted tower energy is
zero:

\[
\mathcal E_\eta(\tau,\rho;s)=0.
\tag{CCR.3}
\]

One may choose

\[
\tau(s)=e^{-s^2},
\qquad
\rho(s)=e^{-s^2},
\tag{CCR.4}
\]

so that

\[
\int^\infty -{\tau'(s)\over\tau(s)}\,ds=\infty,
\qquad
\int^\infty -{\rho'(s)\over\rho(s)}\,ds=\infty.
\tag{CCR.5}
\]

Thus divergent spend of an arbitrary chosen radius does not imply a terminal
atom, profile, singularity, or exit. Controlled collapse has to use a canonical
radius determined by the tower.

## 2. Canonical admissible-radius set

Fix a cutoff \(\eta\). For each rescaled terminal cylinder \(j\), define

\[
\mathcal E_{j,\eta}(\tau,\rho)
:=
{1\over2}
\sum_{m,\alpha}
{\tau^{2m}\rho^{2|\alpha|}\over(m!)^2(\alpha!)^2}
\int\eta^2|W_{j,m,\alpha}|^2.
\tag{CCR.6}
\]

For a threshold \(E_*>0\), the admissible-radius set is

\[
\mathcal R_j(E_*)
:=
\left\{
(\tau,\rho):\ \mathcal E_{j,\eta}(\tau,\rho)\le E_*
\right\}.
\tag{CCR.7}
\]

This set is downward closed: if \((\tau,\rho)\in\mathcal R_j(E_*)\) and
\(0<\tau'\le\tau,\ 0<\rho'\le\rho\), then

\[
(\tau',\rho')\in\mathcal R_j(E_*).
\tag{CCR.8}
\]

Uniform canonical radius survival means that some positive pair stays bounded
along the terminal chain:

\[
\exists \tau_*>0,\ \exists\rho_*>0,\ \exists E_*<\infty,\ \exists J
\quad\text{such that}\quad
\mathcal E_{j,\eta}(\tau_*,\rho_*)\le E_*
\quad\text{for all }j\ge J.
\tag{CCR.9}
\]

Canonical coupled radius collapse is the negation:

\[
\forall \tau_*>0,\ \forall\rho_*>0,\quad
\limsup_{j\to\infty}\mathcal E_{j,\eta}(\tau_*,\rho_*)=\infty.
\tag{CCR.10}
\]

This is a tower statement, not a free choice of gauge.

## 3. Finite-rung branch

If `(CCR.10)` happens because a fixed finite rung fails, then there are
\((m,\alpha)\) and a subsequence \(j_k\) such that

\[
\int\eta^2|W_{j_k,m,\alpha}|^2\to\infty.
\tag{CCR.11}
\]

That is a visible finite-rung failure. After the same terminal object has been
admitted to the CM witness test, this branch is not hidden; it is a
Field/Part-facing readout.

This is a useful classification branch, but it is not forward-gold smoothness
closure by itself.

## 4. High-rung-only branch

The harder branch is

\[
\sup_j\int\eta^2|W_{j,m,\alpha}|^2<\infty
\quad
\text{for every fixed }(m,\alpha),
\tag{CCR.12}
\]

while `(CCR.10)` still holds.

Then no fixed finite derivative rung detects the collapse. The failure lives in
the high-rung/factorial tail:

\[
\forall \tau_*>0,\ \forall\rho_*>0,\quad
\limsup_{j\to\infty}
\sum_{m,\alpha}
{\tau_*^{2m}\rho_*^{2|\alpha|}\over(m!)^2(\alpha!)^2}
\int\eta^2|W_{j,m,\alpha}|^2
=\infty.
\tag{CCR.13}
\]

This is exactly the endpoint high-tower / terminal time-face branch. It can be
\(C^\infty\) at every fixed rung and still have zero analytic radius. Therefore
finite-rung compactness does not kill it.

## 5. What would close controlled collapse

The high-rung-only branch closes only with one of the already isolated
same-carrier endpoint controls:

\[
\boxed{
\text{SelectedCarrierEndpointUI.A}
}
\tag{CCR.14}
\]

\[
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{CCR.15}
\]

\[
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{CCR.16}
\]

or

\[
\boxed{
\text{MinimalZenoProfileProduction.A}
}
\tag{CCR.17}
\]

with the no-waste/source-residue hypotheses needed by the known rigidity
consumers.

Without one of these, high-rung-only radius collapse is a real endpoint branch,
not a contradiction.

## Verdict

The controlled-collapse route has a valid corrected form:

\[
\boxed{
\text{canonical coupled tower-radius collapse}
\Longrightarrow
\text{finite-rung readout}
\quad\text{or}\quad
\text{high-rung endpoint branch.}
}
\tag{CCR.18}
\]

The first branch is visible after CM admission. The second branch is the same
terminal time-face/high-tower obstruction already isolated by the forward-gold
program.

So

\[
\boxed{
\text{ControlledCoupledTowerRadiusCollapse.A is not proved as a forward-gold
contradiction from current inputs.}
}
\tag{CCR.19}
\]

It reduces to the same missing object:

\[
\boxed{
\text{same-carrier unweighted action / endpoint UI / strict no-waste / profile
production.}
}
\tag{CCR.20}
\]
