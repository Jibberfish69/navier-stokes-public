---
theorem_id: forward-gold-k5-high-re-gate-a-allocation-alias-obstruction-20260706
status: strict-obstruction-installed-gate-a-theorem2-not-independent-k5-high-re-payer
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge payer
authorship: Codex, 2026-07-06.
target_object:
  - K5HighReGateAAllocationAutomatic.NO
  - InstalledGateATheorem2IndependentPayer.NO
  - K5HighReForcedContaminationOrNewUniformMechanism.Required
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-reynolds-budget-shortcut-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-return-race-handoff-premise-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-custody-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gate-a-three-residues-payment-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-theorem2-two-payer-impedance-attack-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-f3-ga-tax-backing-to-weighted-gate-a-hall-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-sideband-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706.md
completion_truth: >-
  Strict obstruction to the last installed non-sideband K5 high-Re payer
  shortcut. Gate A is proved-shaped with a fixed tax density only on marginal
  cells. In the general super-marginal case it is explicitly Reynolds-weighted:
  the backed tax density is theta_i comparable to 1/M_i. On the pure K5 high-Re
  edge, M_i is the local Reynolds excess, total production is comparable to
  M_i A_0, and total viscous budget is comparable to A_0. Thus the installed
  Gate-A/Hall row backs only theta_i times production, comparable to A_0; it
  does not give a fixed positive fraction of production. Theorem 2 does not add
  an independent third payer: its high-Re uniform floor is the return-race
  branch, which the same-day handoff-premise note shows requires a financed
  handoff. Therefore installed Gate-A/Theorem-2 allocation does not pay the pure
  K5 high-Re edge without an added high-Re mechanism. Same-day follow-up says
  sideband/crowd has zero trigger on the exact isolated pure edge. Remaining
  live K5 high-Re branch: dynamic/geometric forced sideband/leakage/crowd
  contamination, route-out/exclusion of the pure edge, or a new theorem producing an
  unweighted payer/trigger. No confinement constant, sideband lower-bound
  theorem, crowd theorem, or MPP closure is claimed.
---

# K5 high-Re edge: Gate-A allocation is not an independent payer

## 1. The last installed shortcut

After the prior K5 high-Re checks:

- raw Reynolds budget is only a weighted readout;
- return-race requires a financed handoff fraction \(f>0\);
- custody requires a reassembly, refresh, destruction, or delivery trigger.

The remaining installed phrase is:
\[
  \text{Gate-A/Theorem-2 allocation turns the weighted readout into a uniform payer.}
\]

This note checks whether that phrase is already a theorem for the pure edge.

## 2. What Gate A actually gives

The Gate-A residue note pays a fixed tax density only on marginal cells. On
super-marginal cells, the note explicitly retracts free marginal confinement and
keeps only the weighted form
\[
  {\rm TV}(\text{flux})
  \le
  C\,M(\ell)\,\beta,
\]
where \(M(\ell)\) is the local Reynolds-excess/tower readout and \(\beta\) is
the positive dissipation budget.

The finite-cell Hall reduction states the same thing in allocation language:
on retained cells the backed density satisfies
\[
  \theta_i \simeq {1\over M_i},
\]
with fixed positive \(\theta_i\) only on marginal cells \(M_i\sim1\).

So installed Gate A is:
\[
  {1\over M_i}\,\mu_i
  \lesssim
  \beta_i
\]
on the super-marginal row. It is not:
\[
  c\,\mu_i
  \lesssim
  \beta_i
  \qquad(c>0\text{ independent of }M_i).
\]

## 3. Apply it to the pure K5 edge

For the pure K5 high-Re edge, the previous obstruction notes give
\[
  \int \mathcal P_{\rm edge}\,dt
  \simeq
  C_{\rm edge} M A_0,
\]
while the viscous budget along the same residence is
\[
  \int \mathcal D_\nu\,dt
  \simeq
  A_0.
\]

Gate A can back
\[
  {1\over M}
  \int \mathcal P_{\rm edge}\,dt
  \simeq
  A_0,
\]
which is exactly the viscous budget. But the confinement constant asks for
\[
  c
  \int \mathcal P_{\rm edge}\,dt
  \lesssim
  \text{payer},
\]
with \(c>0\) independent of \(M\). The installed Gate-A density gives only
\[
  c(M)\simeq {1\over M}\to0.
\]

That is the same Reynolds-weighted obstruction, now in allocation currency.

## 4. What Theorem 2 adds

Theorem 2's shaped high-Re payer is return-race: periodic triad payback plus
handoff-before-return. The return-race premise obstruction shows that this is
not automatic on the pure edge; it requires a next-triad extraction fraction
\(f>0\).

Thus Theorem 2 does not supply a separate unweighted allocation theorem for the
pure edge. Its high-Re branch is the same missing trigger:
\[
  \text{financed handoff}
  \to
  \text{return-race floor}.
\]

With \(f=0\), no custody trigger, and no sideband/crowd trigger on the exact
isolated pure edge, the installed Gate-A/Theorem-2 package leaves the pure edge
at the weighted \(1/M\) floor.

## 5. Consequence

The live K5 high-Re branch is now:
\[
  \text{dynamic/geometric forced sideband/leakage/crowd contamination}
  \quad\text{or}\quad
  \text{route-out/exclusion of the pure isolated edge}
  \quad\text{or}\quad
  \text{a new unweighted high-Re mechanism}.
\]

Installed Gate A and installed Theorem 2 are not that mechanism. They either pay
the marginal branch or reduce the high-Re branch to return-race, which already
needs a financed handoff trigger.

## 6. Four-sentence result

Gate A is fixed-density only on marginal cells; on high-Re cells it backs a
tax density of order \(1/M\). The pure K5 edge has production of order
\(MA_0\) and viscous budget of order \(A_0\), so Gate A pays exactly the weighted
fraction and no uniform fraction. Theorem 2's high-Re payer is return-race, and
return-race requires a financed handoff that the pure edge does not supply.
Therefore installed Gate-A/Theorem-2 allocation is not an independent K5
high-Re payer.
