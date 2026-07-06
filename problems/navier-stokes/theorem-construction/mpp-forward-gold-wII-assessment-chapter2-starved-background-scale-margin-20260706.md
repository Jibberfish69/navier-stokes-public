---
theorem_id: forward-gold-wII-assessment-chapter2-starved-background-scale-margin-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / W-II / assessment against chapter-2 + the scale-margin gate on the starved-background theorem
authorship: >-
  Assessment and new sub-result: Claude (Opus 4.8), 2026-07-06, at the
  owner's request to assess W-II against the chapter-2 architecture.
  Cross-checked by an independent 2-agent adversarial PDE pass (CKN-import
  validity; pricing-completeness scale-uniformity), both high-confidence.
  Physical story / Gate-6 / F3 ledger / starved-background: Thomas Birnie,
  Claude (Fable), Codex. This note stands downstream of the campaign's own
  same-day strike
  (mpp-forward-gold-wiib-strike-accepted-carrier-split-starved-background-20260706,
  mpp-forward-gold-codex-pricing-completeness-amplitude-obstruction-20260706)
  and agrees with it; it adds the exact scale-margin decision rule.
depends_on:
  - mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - mpp-forward-gold-partii-correction-acceptance-wii-decomposition-pricing-completeness-20260706.md
  - mpp-forward-gold-wiib-strike-accepted-carrier-split-starved-background-20260706.md
  - mpp-forward-gold-codex-pricing-completeness-amplitude-obstruction-20260706.md
  - mpp-forward-gold-consolidation-product-dissolves-pincer-verified-20260706.md
  - mpp-forward-gold-finite-band-threshold-gradient-growth-20260621.md
completion_truth: >-
  Assessment: chapter-2 does NOT establish W-II. Chapter-2 proves finite-
  readout defect-cone control and ROUTES the unbounded-readout set
  {kappa-bar = infinity} — the blowup-threatening set — to the Silver CM
  test, so it hands the hard set off rather than convicting it. W-II's own
  forward route (bounded readout => no singular point) uses a CORRECT CKN
  epsilon-regularity import, but the decay=>sub-epsilon step is not the clean
  tautology first claimed: it conflates the physical RADIUS index of the CKN
  ball quantity with the FREQUENCY index of the readout, and carries a
  low-frequency remainder that shrinking the ball does not remove. The
  campaign's naive pricing-completeness D_j <= C_pc E_j is DEAD (its own K1
  strike: dissipation is quadratic in u, the admitted row cubic, so
  D_j/E_j ~ 1/epsilon -> infinity on small solutions); the corrected route is
  the carrier split D_j^adm <= C_pc(E_j + X_j) plus the STARVED-BACKGROUND
  THEOREM (K3), a genuine unproven nested-cylinder CKN-style lemma. NEW
  SUB-RESULT: the starved-background chain needs the priced column
  (E_j + X_j) to decay geometrically against its own per-scale supercritical
  pricing weight 2^{w j}; this holds iff c_0 > 1 - 2^{1-w}. The readout weight
  kappa^{1/2} (w=1/2) is free for any c_0>0; the rent weight (2/r)^{3/2}
  (w=3/2) needs c_0 > (2-sqrt2)/2 = 0.293 — exactly the seed-side angle
  ceiling Gamma_angle(pi/2). So (s1) is a precise quantitative gate coupling
  back to Part I's c_0. NET: the whole Gold route consolidates to ONE
  irreducible wall — ledger faithfulness / starved-background — a critical-
  scale a priori estimate of full-regularity (equivalent) strength, cleanly
  isolated but not made easier. No F2/F4/F5, Chapter-10, manuscript, or MPP
  closure is proved. Filed is not cleared.
---

# W-II assessed against chapter-2: routed to Silver there, and reduced to a critical-scale wall here

## 1. Chapter-2 does not establish W-II

Chapter-2 (referee-grade) is genuine PDE: Duchon-Robert defect measures,
Constantin-E-Titi commutator control, and a real theorem that the
energy-helicity defect pair `(D_E, D_H)` lies in the wavenumber flux cone
`K(kappa-bar) + E-line` on the finite-readout set `{kappa-bar < infinity}`.
But its section 4 is explicit: on `{kappa-bar = infinity}` the defect pair
"need not be a measure and is not claimed to be," and that set — defect
support with UNBOUNDED tower readout, i.e. the blowup-threatening set — is
"routed to the CM test (chapter 9, silver pass-or-exit)." So chapter-2
implements a pass-or-exit dichotomy: finite readout gets cone control,
infinite readout is HANDED TO SILVER. It does not prove "blowup => regular."
Therefore W-II is not chapter-2's output; the pincer must supply it
independently, and if it cannot, W-II falls back on the Silver route (whose
own non-circularity the lane's CM audits have repeatedly flagged).

## 2. The CKN import is a correct theorem with a real index gap

W-II's forward route is: bounded readout => `(E_j + X_j)` decays
geometrically => the local scaled dissipation decays => the CKN quantity
`A(r) = r^{-1} \iint_{Q_r}|\nabla u|^2` falls below `epsilon_*` at small
scale => CKN epsilon-regularity => the point is regular. The CKN theorem
itself is imported correctly: `A(r)` is exactly the NS-scale-invariant
quantity of Caffarelli-Kohn-Nirenberg (1982) / Lin (1998), and the suitable-
weak-solution class is the right one (chapter-2 supplies it).

The gap is in the decay=>sub-epsilon step, not the theorem. `A(2^{-J})` is a
PHYSICAL-BALL quantity indexed by radius `r = 2^{-J}`; the readout `E_j` is a
FREQUENCY-band object (chapter-2's `kappa_eps` is the active-wavenumber
readout). `A(2^{-J})` is NOT equal to the frequency tail `sum_{j>=J} D_j`:
shrinking the ball does not delete low-frequency content, so a low-frequency
remainder survives that crude energy bounds leave `O(1)` near a singular
point. Removing it needs a SECOND small CKN quantity (e.g.
`r^{-2}\iint_{Q_r}|u|^3` or `r^{-1}\sup_t \int_{B_r}|u|^2`), or a Bernstein
localization tying the frequency band to the physical ball. The campaign's
starved-background theorem (section 4) is precisely the honest attempt to
discharge this remainder: the dangerous Morrey-rate concentration
`\int_{B_r}|u|^2 ~ r` that keeps CKN borderline-alive is INFLOW, and inflow
is what the ledger prices. So the gap is correctly located and being worked,
not hidden.

## 3. Naive pricing-completeness is dead; the corrected wall is K3

The route's "sole new mathematics" was `D_j <= C_pc E_j`. It is struck, by
the campaign's own same-day analysis and confirmed here: the CKN dissipation
is QUADRATIC in `u`, the F3 admitted row `|(u . grad u) . P_c u|` is CUBIC,
so on data `epsilon v_0` one gets `D_j ~ epsilon^2`, `E_j <~ epsilon^3`,
hence `D_j / E_j >~ 1/epsilon -> infinity`. Additionally F3 prices in the
WRONG direction (throughput <= dissipation: `mu <= R_g kappa^{1/2}
beta^{1/2}`), with non-uniform weights (`kappa^{1/2}` monotone up the tower;
`(2/r)^{3/2}` in the rent). The corrected object is the carrier split
`D_j^{adm} <= C_pc (E_j + X_j)` (`X_j` the priced charge column: tax, return,
record, debt) plus the **starved-background theorem (K3)**: a nested-cylinder
flux accounting in which the scale-`r` local energy is controlled, via the
suitable solution's local energy inequality, by (i) fixed entry energy,
(ii) cumulative nonlinear inflow (= gross transfer = admitted + charged,
priced), and (iii) cumulative pressure-velocity flux (F3 near/far). K3 is
flagged by its authors as "a REAL PDE lemma... NOT claimed." That flag is
correct.

## 4. New sub-result: the scale-margin gate on the starved column

K3 needs the priced column `(E_j + X_j)` to decay geometrically DESPITE its
own supercritical per-scale pricing weight. Model the worst weight as
`2^{w j}` (i.e. `kappa^{w}` at dyadic scale `j`, `kappa ~ 2^j`). The pincer
gives `E_j + X_j ~ q^j`, `q = (1 - c_0)/2 < 1/2`. Then the priced-dissipation
column behaves as `2^{w j} q^j = (2^w q)^j`, which decays iff

\[
  2^{w} q < 1
  \quad\Longleftrightarrow\quad
  q < 2^{-w}
  \quad\Longleftrightarrow\quad
  \boxed{\; c_0 > 1 - 2^{\,1-w} \;}.
\]

Consequences (exact):

| pricing weight | `w` | needed `c_0` | status |
|---|---|---|---|
| readout `kappa^{1/2}` | 1/2 | `c_0 > -0.414` | free for any `c_0 > 0` |
| linear `kappa` | 1 | `c_0 > 0` | marginal (Part I's `c_0>0`) |
| rent `(2/r)^{3/2}` | 3/2 | `c_0 > 0.293` | **positive floor** |
| `w = 2` | 2 | `c_0 > 0.5` | strong floor |

So gap (s1) — "geometric decay of `X_j`" — is not a yes/no but a precise
quantitative gate: **the starved-background chain requires
`c_0 > 1 - 2^{1 - w_max}`, where `w_max` is the largest supercritical scale
exponent surviving in the priced charge column.** For the readout alone this
is free; the rent's `(2/r)^{3/2}` (if it survives at that exponent) demands
`c_0 > (2 - sqrt2)/2`. That number is EXACTLY the seed-side angle ceiling
`Gamma_angle(pi/2) = (2 - sqrt2)/2` — a suggestive quantitative coupling
between the product horn (which sets `c_0`) and the seed horn (which sets the
demand), worth checking for structural cause rather than coincidence.

CAVEAT (load-bearing): `w_max` is the EFFECTIVE exponent after the correct
parabolic accounting of each charge over the cylinder `Q_r` (time-extent
`r^2`). A charge that reads `(2/r)^{3/2}` instantaneously may carry a
different effective exponent once integrated on `Q_r`; the parabolic
transcription (s2) must fix each `w`. The decision RULE above is exact; the
per-charge `w_max` is owed by that transcription.

## 5. The genuine remaining hardness

After the assessment, W-II is not an independent ESS-class wall: it reduces,
through a correct CKN import, to the starved-background theorem K3, whose two
load-bearing sub-gaps are now precisely:

- **(s2) nonlocal pressure far-field.** Pressure is `(-Delta)^{-1}
  partial_i partial_j (u_i u_j)`; the flux of pressure-velocity through a
  shrinking sphere depends on the GLOBAL field. Controlling it uniformly on
  nested cylinders and pricing it by F3's near/far cube-decay is the classic
  hardest step of every CKN-type argument. This is where most of the real
  work is.
- **(s1) the scale-margin decay**, now the exact gate `c_0 > 1 - 2^{1-w_max}`
  of section 4, coupling back to the product-side `c_0`.

Both are critical-scale statements. A uniform-in-scale bound that feeds
geometric decay into CKN upgrades CKN's PARTIAL regularity to FULL regularity
of suitable weak solutions. So K3 is equivalent in strength to the
Navier-Stokes regularity problem itself — a genuine isolation of the core,
not a reduction to something softer.

## 6. Net — the Gold route consolidates to one wall

Combining every result of this campaign's 2026-07-06 arc: the product-side
bottom-root horn dissolves (Vieta top-endpoint floor), Door 2 is void, W-I
folds into model faithfulness (Manley-Rowe), the pincer's induction is
corrected, and W-II reduces — via correct CKN — to the starved-background
theorem. The route's walls have collapsed to ONE:

\[
  \textbf{W-0: ledger faithfulness / starved background}
\]

appearing in two guises — (i) the extraction laws' NS-derivation (Part I)
and (ii) the starved-background pricing of all critical-scale inflow
(Part II) — quantitatively coupled through `c_0`. The campaign's "two walls,
one wall" is vindicated. But that one wall is a critical-scale a priori
estimate of full-regularity strength: the Millennium core, cleanly isolated,
correctly shaped, and NOT made easier. This is the honest terminus of
consolidation — the route is now a coherent conditional certificate whose
single remaining input is the problem itself.

## 7. Both endings

- **If K3 (starved background, with (s1) `c_0 > 1-2^{1-w_max}` and (s2)
  pressure) is proved**, the Gold certificate closes modulo the named
  re-gates and the finite Chapter-10 pass.
- **If it is not**, the deliverable is exact: the entire Gold apparatus has
  been compressed to one standard-class critical-regularity lemma, with the
  scale-margin gate that lemma must clear made numerically explicit, and with
  every intermediate bookkeeping door paid, bypassed, or provably dead.

Filed is not cleared. No closure claimed.
