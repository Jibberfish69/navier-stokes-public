---
theorem_id: forward-gold-c0-viscosity-is-marginal-on-the-counterobject-welds-viscous-lever-to-rigidity-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / consolidation weld: the §7 viscous lever and the delamination rigidity are the same wall, because the scaling is exact INCLUDING viscosity on the very counterobject
status: CONSOLIDATION + ONE PRUNING RESULT, NOT A PROOF; subordinate to the shrink-map, welds two 2026-07-07 leading-edge files that sat side by side unreconciled
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - MaterialTimeLiouvilleExclusion.A
  - RootFixedTerminalUniformL1FullPacketServiceStorage.A
  - epsilon_star_positive
  - the B==1 log-self-similar marginal tower N_L ~ 2^{-L}/L (the counterobject)
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-scale-covariance-filter-irreversibility-only-lever-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-live-prong-delamination-is-highfreq-log-endpoint-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-surplus-zero-single-scale-c0-is-exactly-zero-counterobject-is-log-self-similar-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cancellation-defect-is-critical-distributional-jacobian-defect-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-uniform-cascade-depth-l2-l3-epsilon-reduction-20260707.md
completion_truth: >-
  Consolidation weld and one pruning result, not a proof of c_0. Two 2026-07-07
  files disagree in tone about the strict lever and were never reconciled. The
  scale-covariance filter's §7 addendum lands the strict piece on a QUANTITATIVE
  viscous clock (epsilon_* ~ uniform local Re^{-1}) and leaves open the hope
  "prove viscosity's absolute clock overtakes the covariant turnover uniformly
  down the cascade." The delamination file lands the same c_0 on a
  NON-QUANTITATIVE rigidity at the high-frequency log endpoint (the null-Lagrangian
  defect measure), and states both residues escape the filter only as rigidity,
  not as quantitative scale-covariant estimates. This note reconciles them with
  one repo-internal fact already in the filter's own premise: the 3D NS scaling is
  EXACT INCLUDING viscosity (every term scales lambda^3, nu preserved). Therefore
  on any EXACTLY scale-invariant (self-similar) profile every term is in fixed
  rung-to-rung ratio-one balance -- the viscous term INCLUDED. So on the very
  counterobject that realizes c_0 = 0 (the B==1 log-self-similar marginal tower
  N_L ~ 2^{-L}/L, the object the surplus-zero and delamination files both isolate),
  viscosity is MARGINAL too. Consequence (PRUNE): §7's residual hope for a
  quantitative viscous per-decade lever cannot be realized against the
  counterobject -- viscosity's clock is scale-covariant there and is filtered out
  by the filter's own logic, applied one level deeper to viscosity. The honest
  residue is exactly the delamination file's rigidity: irreversibility must be
  used as a SIGN/Liouville obstruction on the limit profile (route b: the
  material-time exclusion of the N_L ~ 2^{-L}/L tower, the NRS-extension), not as
  any per-decade rate. This unifies §7 (viscous lever), the delamination file
  (rigidity), the surplus-zero file (single-scale c_0 = 0, counterobject =
  log-self-similar tower), and the Jacobian-defect file (weak continuity marginal
  exactly at L^3) into one statement: on the counterobject NO scale-covariant
  clock survives -- not strain order, not turnover lag, not viscous time -- so the
  only closure is a rigidity/Liouville, and the only admissible non-covariant
  inputs are finite-energy-ness (the profile is not a real global L^2 field) and
  one-way-ness (irreversibility as a sign). No FullTower retention, material-time
  Liouville, WLF.60, c_0, or MPP closure is proved.
---

# Viscosity is marginal on the counterobject: the viscous lever and the rigidity are one wall

Physics-first. This does not prove `c_0`. It reconciles the two sharpest
2026-07-07 characterizations of the same wall, and it prunes one route that the
viscous-lever file left open, using the scale-covariance filter's own premise
applied one level deeper.

## 0. The one object, one sentence

One same-fluid incompressible viscous irreversible Navier-Stokes history is
trying to double its critical height `H = ½‖u‖²_{Ḣ^{1/2}}` infinitely often in
finite time. `c_0 > 0` says its own coherence forces each record's production to
fall **strictly** short, uniformly down the cascade, of the marginal service an
infinite cascade needs.

## 1. The two leading-edge files disagree in tone, and were never welded

Both are dated 2026-07-07 and both name the same wall, but they aim the strict
lever in opposite registers:

- **Viscous / quantitative (scale-covariance filter, §7 addendum).** The bare
  pursuit-lag is scale-covariant in both space (`S` is order-zero Calderón–Zygmund
  in `ω`, no scale factor) and time (the lag is measured in turnovers, so the
  misalignment is `O(1)`, ratio-preserving). The one clock that is *not*
  covariant is viscosity, which sets an absolute time. So the file lands the
  strict piece on `ε_* ~ uniform local Re⁻¹(ℓ)` and leaves the open hope:
  *"prove viscosity's absolute clock overtakes the covariant turnover uniformly
  down the cascade."*

- **Rigidity / non-quantitative (delamination file).** The record is the
  null-Lagrangian mass `det∇u = ⅓ div(u·cof∇u)`; its coherent low-frequency part
  passes to the weak limit for free, and the record escapes only in the
  high-frequency tail, where `cof`/`det` weak-continuity is endpoint-marginal
  (strict above `L³`, marginal at `L³`). The file states plainly that both
  residues *"escape the scale-covariance filter only as **rigidity** (an
  exact-identity contradiction on the limit object), not as any quantitative
  scale-covariant estimate."*

One file hopes for a quantitative viscous per-decade margin; the other says no
quantitative scale-covariant estimate can exist. They were filed side by side
(the delamination file even cites the filter file) without resolving the tension.

## 2. The weld: the scaling is exact **including viscosity**, so on the counterobject viscosity is marginal too

The filter's own load-bearing premise (and the `c0-scale-covariance-filter`
memory) is:

> the 3D NS scaling `u_λ(x,t)=λ u(λx,λ²t)`, `p_λ=λ² p(λx,λ²t)` is an **exact
> symmetry of the full equation, viscosity included** — every term (`∂_t u`,
> `u·∇u`, `νΔu`, `∇p`) scales as `λ³`, `ν` is **preserved**, `‖u‖_{Ḣ^{1/2}}`
> invariant.

Read this on the object that actually realizes `c_0 = 0`. The surplus-zero file
proved single-scale/local/mean `c_0 = 0` and located the exact counterobject: the
`B≡1` **log-self-similar marginal tower** `N_L ~ 2^{-L}/L`. A self-similar profile
is by definition a **fixed point of the scaling**. So on it every rung is the
`λ`-image of the next, and — because the scaling carries the viscous term with
the same `λ³` as every other term — the viscous bill on each rung is the exact
scale-image of the viscous bill on the next. In the cascade currency this is
literally what `B≡1` on every rung *says*: all bills, **the viscous bill
included**, sit at ratio one, rung to rung.

> **Therefore viscosity is marginal on the counterobject.** The absolute clock
> `ℓ²/ν` is a genuine symmetry-breaker for a *generic* field (§7 is right that
> `ν` is the only dimensional parameter), but it is **invisible to the
> self-similar profile**, because self-similarity is precisely the statement that
> the balance is scale-independent — and the scaling that defines it preserves
> `ν`.

The K41 intuition behind §7's hope — "at small scales the viscous time `ℓ²/ν`
shrinks relative to the turnover, so viscosity wins" — holds for the
energy-cascade scaling `δu_ℓ ~ ℓ^{1/3}` (turnover `~ ℓ^{2/3}`, ratio `~ ℓ^{4/3}/ν
→ 0`). It does **not** hold for the `Ḣ^{1/2}`-critical self-similar profile the
blow-up rides (`δu_ℓ ~ 1/ℓ`, turnover `~ ℓ²`, ratio `= ℓ²/ν ÷ ℓ² = 1/ν = const`):
there the viscous-time/turnover ratio is **scale-constant**. §7 imported a
dissipation-range picture onto the inertial-critical counterobject, where it
fails.

## 3. Consequence (prune): no quantitative viscous lever reaches the counterobject; the residue is exactly the rigidity

Apply the filter one level deeper — to viscosity itself — on the object in
question:

- strain order (spatial pursuit-lag): scale-covariant → marginal (§5 of filter);
- turnover lag (temporal pursuit-lag): scale-covariant → marginal (§7 of filter);
- **viscous time (the last hoped-for lever): scale-covariant _on the self-similar
  counterobject_ → marginal (this note).**

So on the counterobject **no** scale-covariant clock survives. There is no
per-decade quantitative estimate to be had against it — which is exactly the
delamination file's claim, now *derived* rather than asserted, and now seen to
subsume §7's own residual hope. The two files are one wall:

```math
\underbrace{\varepsilon_*\sim\text{uniform local }Re^{-1}}_{\text{§7 viscous lever}}
\;\;\text{is a hope that }
\underbrace{\text{cannot be scale-covariant on }N_L\sim2^{-L}/L}_{\text{filter, applied to viscosity}}
\;\;\Longrightarrow\;\;
\underbrace{\text{closure must be a rigidity on the profile}}_{\text{delamination file}} .
```

This is the same terminus the surplus-zero file reached from the payment side
(`closing c_0 = extending Nečas–Růžička–Šverák self-similar exclusion to the
log-marginal profile`) and the Jacobian-defect file reached from the analytic
side (`c_0>0 ⇔ the distributional-Jacobian defect vanishes at the critical
exponent p=n=3`). All four now agree for **one** reason: the counterobject is a
scaling fixed point under a scaling that preserves `ν`, so it is invisible to
every rate, viscosity included.

## 4. What is left standing — and it is not a rate

Two kinds of information are **not** scale-covariant and **are** visible on the
self-similar profile:

1. **Finite-energy-ness.** The exact `(-½)`-homogeneous / log-self-similar profile
   is not a global `L²` field; a real Navier-Stokes history is. This is a
   *membership* fact about the limit object, not a per-decade rate. (The
   `not-a-budget` caveat stands: thin records escape the *quantitative* energy
   budget — consistent with this note, since the budget as a rate is covariant;
   what survives is the *qualitative* non-membership of the profile.)

2. **One-way-ness (irreversibility as a sign).** The arrow of time is carried
   only by the viscous heat and the four-body ratchet (delamination file, R1).
   Used as a **rate** it is covariant (§2 above). Used as a **sign** — a monotone
   one-way storage that the profile's exact time-reversal symmetry cannot support
   — it is a rigidity. This is why the shrink-map's terminal lever
   `RootFixedTerminalUniformL1FullPacketServiceStorage.A` is correctly typed: a
   *monotone one-way storage IS a sign statement, not a scaling one*.

So the sharpened target is unambiguous and it **prunes the §7 open hope**:

> Do **not** seek a quantitative viscous per-decade margin (`local Re⁻¹`
> uniformity as an estimate) — it is scale-covariant on the counterobject and
> filtered out. Seek the **rigidity**: the `B≡1` log-self-similar tower
> `N_L ~ 2^{-L}/L` is not a real transported finite-energy irreversible
> Navier-Stokes field (route b, the material-time Liouville / NRS-extension). The
> only admissible inputs are the profile's non-membership in `L²` and the
> one-way sign of its storage — never a rate.

## 5. Honest grade

- **PROVED (repo-internal, physics-first):** the scaling is exact including `ν`
  (filter premise); a self-similar profile is a scaling fixed point; hence the
  viscous bill is ratio-one rung-to-rung on it, i.e. viscosity is marginal on the
  counterobject. From this: §7's viscous lever cannot be a scale-covariant
  estimate against the counterobject, and the three covariant clocks (strain
  order, turnover lag, viscous time) are all marginal there.
- **RECONCILED:** §7 (viscous lever), delamination (rigidity), surplus-zero
  (counterobject = log-self-similar tower), and Jacobian-defect (marginal at
  `L³`) are one wall — the counterobject is invisible to every rate.
- **PRUNED:** the search for a quantitative uniform `local Re⁻¹` margin as the
  closer. It is a coordinate of the wall, not a closer; §7 correctly identified
  `ν` as the only dimensional parameter but over-hoped it as a rate on the one
  object where it is marginal.
- **OPEN (unchanged, now the sole target):** the material-time rigidity/Liouville
  excluding the `N_L ~ 2^{-L}/L` profile, using only non-membership in `L²` and
  the one-way sign — equivalently `MaterialTimeLiouvilleExclusion.A` / the
  NRS-extension. This is 3D global regularity; open. No closure claimed. Filed is
  not cleared.
