---
theorem_id: forward-gold-c0-scale-covariance-filter-irreversibility-only-lever-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / physics-first falsifiability filter + the one live lever
status: DIAGNOSIS + FALSIFIABILITY FILTER + SIGN-MECHANISM, NOT A PROOF; a typed route-out criterion in physical grammar, sibling to the shrink-map
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-not-a-budget-strict-tilting-excess-on-thin-cascade-20260706.md
completion_truth: >-
  Physics-first diagnosis, a falsifiability filter, and identification of the one
  live lever. NOT a proof of c_0. (1) UNIFICATION: the alignment ratio a/|omega|->1,
  the l^2->l^1 service borderline, the L^2->L^3 record equi-integrability step, the
  div-curl weak-continuity endpoint, and the shrink-map "ratio-one same-packet
  payer" terminal atom are ONE object -- the ratio-one marginal knife-edge at the
  exact scaling-critical exponent (dot H^{1/2}/L^3). (2) FILTER: the 3D NS scaling
  u_l=l u(l x, l^2 t) is an EXACT symmetry of the full equation, viscosity
  INCLUDED (every term scales as l^3; nu is preserved; ||u||_{dot H^{1/2}} is
  invariant). Therefore any mechanism that is itself scale-covariant can only
  reproduce a scale-invariant (equality/marginal) bound -- it CANNOT produce the
  strict inequality c_0>0. Every scale-covariant route is dead on arrival at the
  marginal 1/2. This is why all routes collapse to one wall. (3) The only
  scale-BREAKING levers are: (i) the finite-energy subcritical budget -- but thin
  records escape it (established, not-a-budget note); (ii) a strictly-supercritical
  compensated-compactness gain -- but div-curl is marginal exactly at L^3; (iii)
  IRREVERSIBILITY / sign / monotonicity -- NOT a scaling statement, and the one
  lever left standing. (4) THE LIVE LEVER, pushed: c_0 is the STRICT, SIGNED,
  cascade-uniform deviation off the ratio-one marginal (surplus = R(B-1)^2/B = 0
  at B=1), and the physical sign-mechanism is the pursuit-lag / radiodrome of the
  SMOOTHED NON-LOCAL self-strain frame behind the SHARPENING LOCAL spin (route-b
  tower-relay, never a local eigenframe read). (5) OPEN WALL: the uniform
  quantitative strictness and correct SIGN of that pursuit-lag deficit at the
  critical exponent. Confirms the shrink-map's terminal storage lever
  (RootFixedTerminalUniformL1FullPacketServiceStorage) is on the correct lever --
  a monotone one-way storage IS a sign statement, not a scaling one. No FullTower
  retention, material-time Liouville, WLF.60, c_0, or MPP closure is proved.
---

# c_0 is one wall; scale-covariance says only irreversibility can break it

Physics-first. This does not prove `c_0`. It diagnoses why every route lands on
one wall, gives a filter that kills the dead routes on sight, and names the one
lever and sign-mechanism that could actually break the tie.

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

## 3. The filter — scale-covariance kills every scale-invariant mechanism

Here is the load-bearing fact, checkable by hand. The 3D NS scaling
```math
u_\lambda(x,t)=\lambda\,u(\lambda x,\lambda^2 t),\qquad
p_\lambda(x,t)=\lambda^2 p(\lambda x,\lambda^2 t)
```
is an **exact symmetry of the full equation, viscosity included**: every term
(`∂_t u`, `u·∇u`, `νΔu`, `∇p`) scales as `λ³`, so `ν` is **preserved** and
`‖u_λ‖_{Ḣ^{1/2}} = ‖u‖_{Ḣ^{1/2}}`. That invariance is *why* `Ḣ^{1/2}/L³` is
critical, and it is exact — the cascade the blowup rides is scale-invariant.

**Consequence (the filter).** A mechanism that is itself scale-covariant can
produce only a scale-invariant bound — an **equality / marginal** statement. It
is structurally incapable of producing a **strict** inequality `c_0>0`. So:

> **Any proposed `c_0` route that is scale-covariant is dead on arrival: at best
> it re-derives the marginal `½`.** Before pursuing a route, check its
> scale-covariance. If it is covariant, it cannot be the closer.

This is the physical reason §2's routes all stall at the tie: the alignment
ratio, the Bernstein/Littlewood-Paley service conversion, the div-curl gain, and
the naive record integrability are **all scale-covariant**, hence all marginal.
They *locate* `c_0`; none can *sign* it.

## 4. What can break scaling — only three things, two already dead

The strict tie-break must come from a **scale-breaking** feature. There are only
three in the whole problem:

1. **Finite-energy subcritical budget** (`‖u‖_{L²}²` scales as `λ^{-1}`, not
   invariant). — *Dead as a closer:* thin records spend vanishing residence and
   pay their real cost in unbudgeted palinstrophy `~1/τ²`; the thin horn escapes
   the energy budget (established, not-a-budget note).
2. **Strictly-supercritical compensated-compactness gain.** — *Dead at the
   endpoint:* div-curl / null-Lagrangian weak continuity of `det∇u` is strict
   only **above** `L³` and is **marginal exactly at** `L³`, where the fluid
   lives.
3. **Irreversibility / sign / monotonicity.** — *The one lever left standing.*
   Irreversibility is **not** a scaling statement: it is a one-way sign on the
   material time-arrow (the four-body ratchet, the entropy/dissipation the record
   dumps and cannot recover). A sign is exactly the kind of statement scaling
   cannot fix, so it is the only place a strict inequality can be born.

## 5. The live lever, pushed as far as physics honestly goes

Per-record, the surplus over marginal is `R(B−1)²/B`, **zero at the ratio-one
balance `B=1`**. So `c_0>0` is precisely:

> the ratio-one marginal balance, once perturbed by the field's **own non-local
> irreversible dynamics**, moves **strictly to the depleting side** (`B` off `1`
> in the against-blowup direction), **uniformly** down the cascade.

The perturbation off marginal certainly exists — the real fluid is not a
scale-invariant profile; it is finite-energy and irreversible. The open content
is its **sign** and **uniformity**. The physical sign-mechanism is the
**pursuit-lag / radiodrome** (route-b tower-relay, *never* a local
pressure-Hessian/eigenframe read):

- the stretching strain frame the vortex must align to is generated **non-locally**
  and is therefore **smoothed** (a Biot-Savart integral over vorticity elsewhere);
- the spin that rotates that frame away is **local** and **sharpening** (`|ω|` at
  the point);
- a smoothed pursuer chasing a sharpening evader **always lags** — so the
  alignment is never completed, `α` stays strictly below `|ω|`, and the deviation
  off marginal is biased to the **depleting** side.

That lag is the one physical reason the deviation should be *signed*, not merely
nonzero — and it is a statement about the non-local tower-relay, matching the
irreversibility lever of §4.

## 6. Honest grade and the sharp target

- **PROVED (physics-first, structural):** the routes are one wall (§2); every
  scale-covariant mechanism is marginal and cannot close `c_0` (§3, the filter);
  two of the three scale-breaking levers are dead (§4); therefore `c_0` lives or
  dies on a **uniform, correctly-signed, thin-record-non-escapable irreversibility
  floor** (§4.3, §5).
- **OPEN (the wall):** the uniform quantitative **strictness and sign** of the
  pursuit-lag deficit at the critical exponent — that the smoothed non-local
  strain lags the sharpening local spin by a definite, cascade-uniform amount.
  This is 3D global regularity; open.
- **Confirms Codex's terminal object:** `RootFixedTerminalUniformL1FullPacket
  ServiceStorage` is a **monotone one-way storage** — a *sign* statement, not a
  scaling one — so the shrink-map's terminal wall is already on the correct
  (irreversibility) lever. The productive work is to build that storage's strict
  lower density from the pursuit-lag, not to seek any further scale-covariant gain.

**Shrink rule (physical):** any new `c_0` route must first pass the §3 filter —
state its scale-covariance. If covariant, it is a coordinate of this wall, not a
closer. Only a signed-irreversibility / pursuit-lag mechanism that is uniform and
thin-record-non-escapable can be the closer. No closure claimed; filed is not
cleared.
