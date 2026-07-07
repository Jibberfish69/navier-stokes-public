---
theorem_id: forward-gold-c0-scale-covariance-filter-irreversibility-only-lever-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / physics-first falsifiability filter + signed-irreversibility candidate lever
status: CORRECTED DIAGNOSIS + FALSIFIABILITY FILTER + PURSUIT-LAG BREAKPOINT, NOT A PROOF; diagnostic overlay subordinate to the shrink-map
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-what-any-proof-must-supply-target-spec-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hs-lp-heat-flow-continuum-ontology-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-is-strict-alignment-deficit-stretch-vs-spin-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-alignment-lag-first-ratio-storage-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-pump-finite-work-circularity-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-not-a-budget-strict-tilting-excess-on-thin-cascade-20260706.md
completion_truth: >-
  Physics-first diagnosis, a falsifiability filter, and identification of the
  candidate signed lever. NOT a proof of c_0. (1) UNIFICATION: the alignment ratio a/|omega|->1,
  the l^2->l^1 service borderline, the L^2->L^3 record equi-integrability step, the
  div-curl weak-continuity endpoint, and the shrink-map "ratio-one same-packet
  payer" terminal atom are ONE object -- the ratio-one marginal knife-edge at the
  exact scaling-critical exponent (dot H^{1/2}/L^3). (2) FILTER: the 3D NS scaling
  u_l=l u(l x, l^2 t) is an EXACT symmetry of the full equation, viscosity
  INCLUDED (every term scales as l^3; nu is preserved; ||u||_{dot H^{1/2}} is
  invariant). Scale covariance therefore gives no dimensional gain by itself.
  The earlier stronger sentence was too strong: strict scale-invariant constants
  can exist. The correct filter is that a scale-covariant route is only a
  coordinate of the marginal wall unless it adds a signed irreversible
  compactness/storage/admission mechanism in bill currency. (3) The possible
  strictness levers beyond dimensional scaling are: (i) the finite-energy
  subcritical budget -- but thin records escape it (established, not-a-budget
  note); (ii) a strictly-supercritical compensated-compactness gain -- but
  div-curl is marginal exactly at L^3; (iii) irreversibility / sign /
  monotonicity -- the one lever left standing, provided it is realized as
  same-edge bill-currency, not as a slogan. (4) THE LIVE LEVER, pushed and
  checked: c_0 is the STRICT, SIGNED, cascade-uniform deviation off the
  ratio-one marginal (surplus = R(B-1)^2/B = 0 at B=1), and the candidate
  physical sign-mechanism is pursuit-lag / radiodrome. The naive smoothing
  version does not prove it: Biot-Savart smooths velocity, but strain
  S=sym grad u is an order-zero singular integral of omega, so nonlocality alone
  supplies no scale factor forcing alpha=xi.Sxi below |omega|. In the current
  shrink map this candidate is not a freestanding source; it must instantiate
  as pre-readout signed admission for the moving low-high pressure/strain pump /
  stopped free-material graph driver, a global original-history no-free-upward
  transfer law, or a direct original-data face theorem making the
  record-admitted matrix subcritical. (5) OPEN WALL: the uniform quantitative
  strictness and correct SIGN of that deficit at the critical exponent, with
  thin-record escape closed. Confirms the shrink-map's terminal storage lever
  (RootFixedTerminalUniformL1FullPacketServiceStorage) is on the correct lever --
  a monotone one-way storage IS a sign statement, not a scaling one. No FullTower
  retention, material-time Liouville, WLF.60, c_0, or MPP closure is proved.
---

# c_0 is one wall; scaling locates it, sign must pay it

Physics-first. This does not prove `c_0`. It diagnoses why every route lands on
one wall, gives a filter for demoting merely scale-covariant coordinates, and
checks the candidate sign mechanism against the current shrink-map objects.

## 1. The object (one sentence, in its own terms)

One same-fluid, incompressible, viscous, irreversible Navier-Stokes history is
trying to double its critical height `H = ½‖u‖²_{Ḣ^{1/2}}` infinitely often in
finite time. Each doubling is a **record**: reserve moved down one scale by
vortex stretching. `c_0>0` says the field cannot: its own coherence forces each
record's production to fall **strictly** short of the marginal service an
infinite cascade needs.

## 2. Unification — every route is the SAME knife-edge

The routes are not siblings. They are one object in different coordinates, all
sitting at the exact scaling-critical exponent `Ḣ^{1/2} ↔ L³`:

| coordinate | the marginal statement | strict version = `c_0` |
|---|---|---|
| alignment (stretch vs spin) | `α/|ω| → 1` (stretching ties spin) | `α` strictly `< |ω|`, uniform |
| service (`H^s↔L^p` continuum) | weighted service `~1/L` (ℓ²-in, ℓ¹-borderline) | service strictly `ℓ¹`-summable |
| record integrability (target-spec) | `[det∇u]_+` at the `L³` endpoint | one strict power `L²→L³` on the record |
| compensated compactness | `det∇u` weakly continuous **above** `L³` | the gain at **exactly** `L³` |
| shrink-map payers | **ratio-one** same-packet payer, surplus `=0` at `B=1` | `B≠1` to the depleting side, uniform |

The prior identity `surplus = R(B−1)²/B` (zero at the marginal `B=1`) and
`record/bills = B/(1+B²) ≤ ½` are the same knife-edge in payment currency. So the
"menu of c_0 producers" is a coordinate atlas of **one** wall. Effort that fans
out across the coordinates is re-deriving the same tie.

## 3. The filter — scaling alone cannot pay the bill

Here is the load-bearing fact, checkable by hand. The 3D NS scaling
```math
u_\lambda(x,t)=\lambda\,u(\lambda x,\lambda^2 t),\qquad
p_\lambda(x,t)=\lambda^2 p(\lambda x,\lambda^2 t)
```
is an **exact symmetry of the full equation, viscosity included**: every term
(`∂_t u`, `u·∇u`, `νΔu`, `∇p`) scales as `λ³`, so `ν` is **preserved** and
`‖u_λ‖_{Ḣ^{1/2}} = ‖u‖_{Ḣ^{1/2}}`. That invariance is *why* `Ḣ^{1/2}/L³` is
critical, and it is exact — the cascade the blowup rides is scale-invariant.

**Consequence (the filter).** Scaling alone supplies no dimensional surplus at
the critical exponent. The earlier version of this note said something too
strong: scale-covariance by itself does not logically forbid a strict
scale-invariant estimate. Sobolev-type strict constants are scale-invariant.
What scaling forbids is a **free power** or a hidden dimensional gain.

So the useful filter is:

> A proposed `c_0` route that is only scale-covariant is a coordinate of the
> marginal wall. It can close only after adding a signed irreversible
> compactness, storage, admission, or route-out mechanism in the same retained
> bill currency.

This is why §2's routes all stall at the tie in the current source state: the
alignment ratio, the Bernstein/Littlewood-Paley service conversion, the div-curl
gain, and the naive record integrability are scale-covariant **without** the
needed same-edge sign/storage mechanism. They locate `c_0`; they do not yet pay
it.

## 4. What can create strictness beyond scaling

The strict tie-break must come from information that scaling does not supply.
The currently visible possibilities are:

1. **Finite-energy subcritical budget** (`‖u‖_{L²}²` scales as `λ^{-1}`, not
   invariant). — *Dead as a closer:* thin records spend vanishing residence and
   pay their real cost in unbudgeted palinstrophy `~1/τ²`; the thin horn escapes
   the energy budget (established, not-a-budget note).
2. **Strictly-supercritical compensated-compactness gain.** — *Dead at the
   endpoint:* div-curl / null-Lagrangian weak continuity of `det∇u` is strict
   only **above** `L³` and is **marginal exactly at** `L³`, where the fluid
   lives.
3. **Irreversibility / sign / monotonicity.** — *The one lever left standing.*
   The sign is a one-way material-time statement (the four-body ratchet, the
   entropy/dissipation the record dumps and cannot recover). Scaling can preserve
   such a statement, but it cannot manufacture it. This lever counts only when it
   is realized as same-edge bill-currency, a bounded-below storage, a
   pre-readout admission theorem, or a typed route-out.

## 5. The candidate sign lever, pushed as far as physics honestly goes

Per-record, the surplus over marginal is `R(B−1)²/B`, **zero at the ratio-one
balance `B=1`**. So `c_0>0` is precisely:

> the ratio-one marginal balance, once perturbed by the field's **own non-local
> irreversible dynamics**, moves **strictly to the depleting side** (`B` off `1`
> in the against-blowup direction), **uniformly** down the cascade.

The perturbation off marginal is the only place strictness can live: the real
fluid is finite-energy and irreversible rather than a detached scale-invariant
profile. The open content is its **sign** and **uniformity**. The candidate
physical sign-mechanism is the **pursuit-lag / radiodrome** (route-b tower-relay,
*never* a local pressure-Hessian/eigenframe read).

The tempting short proof is:

- the stretching strain frame is generated **non-locally**;
- the spin is **local** and sharpening;
- therefore the non-local pursuer must lag the local evader.

That argument breaks at the operator level. Biot-Savart smooths the velocity
relative to vorticity, but the strain is

\[
S=\operatorname{sym}\nabla(-\Delta)^{-1}\nabla\times\omega,
\tag{SCF.1}
\]

an order-zero Calderon-Zygmund transform of \(\omega\). Under the Navier-Stokes
scaling, \(S\) and \(\omega\) scale with the same power. There is no scale
factor, no smoothing exponent, and no local inequality of the form

\[
\xi\cdot S\xi\le (1-\varepsilon)|\omega|
\tag{SCF.2}
\]

from nonlocality alone. The checked stopped-driver and affine/local normal-form
tests already show the same fact in packet language: a high packet can align
with a positive low strain direction, complete-frame payment supplies only a
partner, and the half-tail keeps the first-ratio action divergent.

So pursuit-lag is still the right physical sign coordinate, but not because
Biot-Savart gives a free smoothing gap. It becomes lawful only when translated
into pre-readout signed admission for the moving low-high pressure/strain pump /
stopped free-material graph driver, a global original-history no-free-upward
transfer law, a direct original-data subcritical matrix face, or a typed
route-out.

## 6. Honest grade and the sharp target

- **PROVED (physics-first, structural):** the routes are one wall (§2);
  scaling alone supplies no critical surplus (§3); the energy budget and
  endpoint compensated-compactness shortcuts do not close the thin-record
  branch (§4); and the naive Biot-Savart smoothing version of pursuit-lag does
  not give a uniform deficit because \(S\) is order-zero in \(\omega\) (§5).
- **OPEN (the wall):** the uniform quantitative **strictness and sign** of the
  candidate pursuit-lag deficit at the critical exponent, carried by a
  same-edge bill/storage/admission theorem rather than by operator smoothing
  alone.
  This is 3D global regularity; open.
- **Confirms Codex's terminal object:** `RootFixedTerminalUniformL1FullPacket
  ServiceStorage` is a **monotone one-way storage** — a *sign* statement, not a
  scaling one — so the shrink-map's terminal wall is already on the correct
  irreversibility lever. The productive work is to build that storage's strict
  lower density as the moving low-high driver/no-free-upward-transfer theorem,
  not to seek any further scale-covariant gain.

**Shrink rule (physical):** any new `c_0` route must first pass the §3 filter:
state its scale behavior and then state the extra signed bill/storage/admission
mechanism that survives the half-tail. If it supplies only scale-covariant
bookkeeping, it is a coordinate of this wall, not a closer. A
signed-irreversibility / pursuit-lag mechanism counts only when it is made
uniform and thin-record-non-escapable as the moving low-high driver, global
no-free-upward-transfer law, direct subcritical matrix face, or typed CM
route-out. No closure claimed; filed is not cleared.

## 7. Sync addendum (Opus, 2026-07-07): the lag's leading order is covariant too; even viscosity is marginal on the self-similar fixed point → lever is sign/rigidity, not a rate

Physical sentence first. §5 killed the *spatial* smoothing version (`S` is
order-zero in `ω`, no scale factor). The **temporal** version dies the same way,
and knowing that tells us where the strict piece must live. The vortex's stretch
frame is set a **turnover ago**; the spin that rotates it away is **now**. But the
only intrinsic clock the inertial range has is the turnover itself: the lag time
is `~1/|ω|` and the rotation rate is `~|ω|`, so the misalignment angle is their
product — **dimensionless, scale-free**:
```math
\theta_{\text{mis}} \sim (\text{lag time})\times(\text{rotation rate}) \sim \tfrac{1}{|\omega|}\cdot|\omega| = O(1),
\qquad
\lambda_1-\alpha = (\lambda_1-\lambda_2)\sin^2\theta_{\text{mis}} \sim \text{const}\cdot(\lambda_1-\lambda_2).
```
So the pursuit-lag deficit is a **fixed fraction of the stretching** — ratio-
preserving, i.e. it obeys the §3 filter and only re-ties the marginal balance at a
shifted constant. **The lag lags in turnovers, so a lag argument is scale-
covariant by construction.** This is the temporal twin of §5: neither the spatial
operator order nor the temporal lag supplies strictness, because both are measured
in the cascade's own scale-free currency.

**Where the strict piece is forced — CORRECTED (2026-07-07).** I first wrote that
viscosity is the one non-covariant clock, so `ε_* ~ uniform local Re⁻¹`. **That is
withdrawn.** It fails on the only state that matters: the **self-similar
counterobject**. A Leray self-similar profile is an *exact solution of the full
viscous equation* — a scaling fixed point with `ν` **included** — so on it the
local Reynolds number is **constant by construction** and viscosity is **marginal**,
not an absolute clock that "runs away." Even `ν` is covariant on the fixed point.
So there is **no rate** — covariant *or* viscous — that supplies the strict piece.

**The lever is a sign/rigidity, not a rate.** With every rate marginal on the
self-similar state, `c_0`'s strictness can only come from **excluding that state**:
the `f=0` self-similar (backward-DSS) profile cannot be a sustained finite-energy
irreversible history. That is a global sign/rigidity — NRŠ excludes exact
self-similar in `L³`; backward-DSS is open — i.e. the **route-b material-time
Liouville / critical-element exclusion**, *not* a viscous `Re⁻¹` margin.

**Net, honest:** (a) the candidate sign is oriented toward depletion, but the
sign is **not proved** until it is realized as same-edge bill/storage/admission or
typed route-out; (b) the lever's **leading order is scale-covariant** in space
*and* time, and — the correction — **so is viscosity on the self-similar fixed
point**, so by this note's own filter *nothing local or rate-like signs `c_0`*;
(c) the strict piece is compactness plus rigidity/admission for a normalized
deficit-zero bad sequence. The target is therefore not "viscosity overtakes the
turnover uniformly" (that state has constant `Re`) and not a standalone
self-similar profile theorem. It is: a real same-fluid retained
`B\to0,\ R=1` history cannot pass to a zero-deficit critical element without
same-edge payment or typed exit, consistent with
`RootFixedTerminalUniformL1FullPacketServiceStorage` read as a *sign* storage. No
closure. (See the hardened-synthesis note: covariance removes scale-depth loss;
the wall is compactness plus critical-element rigidity.)
