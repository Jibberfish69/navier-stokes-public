---
theorem_id: forward-gold-f3-ledger-first-contact-chronological-queue-suitable-solutions-20260705
status: filed-pending-codex-gate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / ledger formation on actual solutions - first contact
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the fluid keeps its books in time order - what a cell holds at the
  next bell is what it held at the last bell, plus what crossed the
  gate, minus the penny-tax it paid while residing; and the whole
  economy is financed by the initial endowment. Viscosity is penny-tax,
  never muscle: on this ledger dissipation appears ONLY as expenditure,
  never as income. Pressure is the membership law: its work term is a
  redistribution among participants, not outside financing. The cutoff
  annulus is the annulus later-debt: what the window borrows across its
  own skin is a named carry, not free money.
depends_on:
  - mpp-forward-gold-codex-hall-relation-construction-routing-20260705.md
  - mpp-forward-gold-codex-hall-incidence-queue-collapse-20260705.md
  - mpp-forward-gold-codex-tax-backing-causal-coupling-hall-reduction-20260705.md
  - mpp-forward-gold-codex-tax-backing-measure-deficit-lemma-20260705.md
  - mpp-forward-gold-codex-prefix-balance-entrance-reserve-20260705.md
  - mpp-forward-gold-codex-no-recount-prefix-matching-20260705.md
  - mpp-forward-gold-codex-srp-production-projection-localization-20260705.md
completion_truth: >-
  FIRST CONTACT between the chapter-9/Gate-A ledger machinery and the
  actual PDE objects. Everything proved here is unconditional for every
  suitable weak solution (CKN class: u in L^infty_t L^2_x cap L^2_t
  H^1_x locally, p in L^{3/2}_loc, local energy inequality). (T1 -
  CHRONOLOGICAL QUEUE FORM, PAID) On every half-open parabolic
  channel-cell chain with the declared cutoff convention, the actual
  solution supplies a queue: state Q_n = tested retained energy at the
  entrance bell (nonnegative by positivity of the integrand),
  expenditure beta_n = tested residence dissipation over the half-open
  cell, income Phi_n = tested boundary terms; and the local energy
  inequality IS the recurrence Q_{n+1} + beta_n <= Q_n + Phi_n at every
  chain of Lebesgue times. This is exactly the chronological form that
  the Hall queue-collapse note named as the remaining structural
  demand on the retained relation R_carry. (T2 - PREFIX HALL
  INEQUALITY FOR THE CARRY RELATION, PAID) Telescoping T1 and using
  Q_{N+1} >= 0: cumulative expenditure over every chain prefix is at
  most entrance reserve plus cumulative gross income - the prefix
  balance R(J) <= B + A(J) holds on actual solutions with actual
  currencies. Non-overdraft of the ENERGY reserve queue is free:
  the physical reserve is a nonnegative integral. (T3 - BUDGET MEASURE
  CONSTRUCTION AND NO-RECOUNT, PAID) beta = nu |grad u|^2 chi dx dt is
  a finite positive Radon measure on each retained cell; under the
  declared subordinate cutoff family (sum chi_a <= 1 on the retained
  region) the cell budgets are counted without recount, and the global
  energy inequality caps the TOTAL sink capacity of the Hall network by
  the initial endowment: sum_a beta_a <= (1/2)||u_0||_{L^2}^2 = E_0 -
  the same E_0 already spent upstream in the retained crossing bound
  kappa_0 E_0 / c_0. No minting: every backing unit in the GA-tax
  network is actual initial energy. (T4 - INCOME SLOT IDENTIFICATION,
  PAID AT IDENTIFICATION LEVEL) The transport third of the income,
  (1/2)|u|^2 u . grad chi, is the SRP linear tested slot at the cell
  gate (the paid projection identity), finite by u in L^3_loc
  (interpolation L^infty L^2 cap L^2 H^1 into L^{10/3} locally); so
  the flux-gate transcription clause F3(a) reads its window income
  from the same tested slot the SRP accounting already owns. WHAT IS
  NOT PAID, exactly: the TAX queue non-overdraft (theta mu_n backed by
  allowed budget - the genuine GA-tax estimate); the conversion of the
  signed gross income Phi_n into allowed backing currency, in
  particular the pressure near-field/far-field Calderon-Zygmund
  allocation that would admit locality edges R_loc^allocated; record
  charge localization F3(c); allocation closedness through the
  mollifier limit F3(d); weighted first-moment routing F3(e); F2/F4
  worksheet positivity; F5. Payment type under the frozen law: every
  displayed inequality is an unconditional statement about actual
  suitable weak solutions. Filed is not cleared. No closure claimed.
---

# F3 first contact: the local energy inequality IS the chronological queue

## 0. Setting and conventions

Fix a suitable weak solution \((u,p)\) on \(\Omega\times(0,T)\) in the
CKN class:

\[
  u\in L^\infty_t L^2_x\cap L^2_t H^1_x \ (\mathrm{loc}),
  \qquad
  p\in L^{3/2}_{\mathrm{loc}},
\]

satisfying the local energy inequality: for every nonnegative
\(\varphi\in C_c^\infty\),

\[
  2\nu\iint |\nabla u|^2\varphi
  \;\le\;
  \iint\Big[\,|u|^2(\partial_t\varphi+\nu\Delta\varphi)
  +(|u|^2+2p)\,u\cdot\nabla\varphi\,\Big].
\]

Channel cells carry the declared conventions from the paid formal
layer: half-open time episodes \([t_n,t_{n+1})\) (boundary-carry
identity), a subordinate cutoff family \(\{\chi_a\}\) with
\(\sum_a\chi_a\le 1\) on the retained region, and chain times drawn
from the co-null Lebesgue set \(\mathcal T_\chi\) of
\(t\mapsto\int|u(t)|^2\chi\,dx\). The exceptional null set of times
carries no budget and no income (all currencies below are absolutely
continuous in time), so it routes to the boundary residue for free.

Integrability of every currency used, unconditional in the class:
\(u\in L^{10/3}_{t,x}(\mathrm{loc})\) by interpolation, hence
\(u\in L^3_{\mathrm{loc}}\) and \(|u|^2u\cdot\nabla\chi\in L^1\);
\(pu\cdot\nabla\chi\in L^1\) by \(L^{3/2}\cdot L^3\) duality;
\(|u|^2\Delta\chi\in L^1\); \(\nu|\nabla u|^2\chi\in L^1\).

## 1. T1: the chronological queue form (paid)

Fix one cell with spatial cutoff \(\chi\ge 0\) and entrance/exit bells
\(t_n<t_{n+1}\) in \(\mathcal T_\chi\). Take
\(\varphi=\chi(x)\,\psi_\varepsilon(t)\) with \(\psi_\varepsilon\)
smooth ramps to the indicator of \([t_n,t_{n+1}]\) and pass
\(\varepsilon\to0\) at the Lebesgue times. The ramp terms converge to
the tested energies at the bells and the local energy inequality
becomes, exactly,

\[
  \underbrace{\tfrac12\!\int\!|u(t_{n+1})|^2\chi}_{Q_{n+1}}
  \;+\;
  \underbrace{\nu\!\int_{t_n}^{t_{n+1}}\!\!\int|\nabla u|^2\chi}_{\beta_n}
  \;\le\;
  \underbrace{\tfrac12\!\int\!|u(t_n)|^2\chi}_{Q_n}
  \;+\;
  \Phi_n,
\]

with the gross income

\[
  \Phi_n
  =
  \int_{t_n}^{t_{n+1}}\!\!\int
  \Big[
    \tfrac{\nu}{2}|u|^2\Delta\chi
    +\big(\tfrac12|u|^2+p\big)\,u\cdot\nabla\chi
  \Big].
\]

This is the queue recurrence
\(Q_{n+1}=Q_n+\text{income}-\text{expenditure}\) in inequality form -
the chronological shape the Hall queue-collapse note demanded of the
retained relation. The state is read at the entrance bell of each
half-open episode; the budget and income integrate over the episode;
endpoints are Lebesgue-null for every currency. The three income
pieces are named:

1. \(\tfrac{\nu}{2}|u|^2\Delta\chi\) - the ANNULUS CARRY, supported on
   the cutoff's gradient annulus: the window's later-debt across its
   own skin.
2. \(\tfrac12|u|^2\,u\cdot\nabla\chi\) - the TRANSPORT GATE: cubic
   flux through the spatial gate.
3. \(p\,u\cdot\nabla\chi\) - the PARTICIPATION TERM: pressure work,
   the membership law redistributing among participants.

Viscosity appears on the ledger only as \(\beta_n\ge0\) on the
expenditure side. Penny-tax, never muscle - the sign structure of the
inequality enforces the physical story.

## 2. T2: prefix Hall inequality for the carry relation (paid)

Chain T1 over \(n=0,\dots,N\) and telescope:

\[
  Q_{N+1}+\sum_{n=0}^{N}\beta_n
  \;\le\;
  Q_0+\sum_{n=0}^{N}\Phi_n .
\]

Since \(Q_{N+1}\ge0\) (a nonnegative integrand - the physical reserve
cannot be negative),

\[
  \sum_{n=0}^{N}\beta_n
  \;\le\;
  Q_0+\sum_{n=0}^{N}\Phi_n
  \qquad\text{for every chain prefix.}
\]

This is the prefix balance \(R(J)\le B+A(J)\) of the no-recount note,
realized on actual solutions with actual currencies: expenditure =
residence dissipation, entrance reserve = tested energy at the first
bell, gross income = the three named boundary terms. The ENERGY
reserve queue is non-overdrafted unconditionally - its state is a
nonnegative physical quantity, so no compensator is needed on this
queue. (The open overdraft question lives on the TAX queue, whose
state is not automatically a positive physical quantity; see the
register.)

## 3. T3: the budget measure - construction, no-recount, global financing (paid)

For each retained cell \(a\), define

\[
  d\beta_a:=\nu\,|\nabla u|^2\chi_a\,dx\,dt
  \quad\text{on the half-open cell.}
\]

Each \(\beta_a\) is a finite positive Radon measure (finiteness from
\(|\nabla u|^2\in L^1_{\mathrm{loc}}\), definitional in the class).
Under the subordinate family \(\sum_a\chi_a\le1\) and the half-open
disjoint episodes, budgets never recount:

\[
  \sum_a\beta_a(\text{cell}_a)
  \;\le\;
  \nu\iint_{\mathrm{ret}}|\nabla u|^2
  \;\le\;
  \nu\int_0^T\!\!\int|\nabla u|^2
  \;\le\;
  \tfrac12\|u_0\|_{L^2}^2
  \;=\;
  E_0,
\]

the last step the global (Leray-Hopf) energy inequality. So: the Hall
network's TOTAL sink capacity is the initial endowment \(E_0\) - the
same \(E_0\) already spent upstream in the retained crossing bound
\(\kappa_0E_0/c_0\). Every backing unit in the GA-tax network is
actual initial energy; there is no minting anywhere in the economy.
This pays the "build the budget measure \(\beta\) on these retained
pieces" clause of the Hall relation-routing note at the
interior-residence and carry strata.

## 4. T4: the income slot is the SRP tested slot (identification, paid)

The transport gate \(\tfrac12|u|^2u\cdot\nabla\chi\) is the linear
tested slot \(\Lambda u\) of the paid SRP projection identity, read at
the cell gate; it is finite by \(u\in L^3_{\mathrm{loc}}\). So the
flux-gate/window transcription clause F3(a) reads its window income
from the SAME tested slot the SRP tail accounting already owns - the
transcription does not introduce a new readout object, and the SRP
routed tails attach verbatim.

## 5. Register - paid / open, exactly

PAID, unconditional on every suitable weak solution: the chronological
queue form on every half-open cell chain (T1); the prefix Hall
inequality for the carry relation with nonnegative state (T2); the
budget measure construction with no-recount and global financing by
\(E_0\) (T3); the identification of the transcription income slot with
the SRP tested slot (T4).

OPEN, named, not paid here: the TAX queue non-overdraft - backing
\(\theta\mu_n\) by allowed budget is the genuine GA-tax estimate; the
conversion of the SIGNED gross income \(\Phi_n\) into allowed backing
currency, in particular the pressure near-field/far-field
Calderon-Zygmund allocation that would admit locality edges
\(R_{\rm loc}^{\rm allocated}\); record-charge localization (F3c);
allocation closedness through the mollifier limit (F3d); weighted
first-moment routing (F3e); F2/F4 worksheet positivity; F5.

Payment type under the frozen law: unconditional statements about
actual NS objects - the suitable weak solution's own inequality, cell
by cell, chain by chain. Filed is not cleared. No closure claimed.
