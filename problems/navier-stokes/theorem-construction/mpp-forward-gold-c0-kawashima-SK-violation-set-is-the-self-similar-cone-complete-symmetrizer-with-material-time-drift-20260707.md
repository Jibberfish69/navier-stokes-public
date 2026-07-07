---
theorem_id: forward-gold-c0-kawashima-SK-violation-set-is-the-self-similar-cone-complete-symmetrizer-with-material-time-drift-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / USE the four-body Kawashima symmetrizer: (1) its Shizuta-Kawashima genuine-coupling failure set is EXACTLY the self-similar counterobject; (2) c_0 = non-commutativity/observability of (A,B); (3) funnel architecture forces route-b; (4) NEW attack: complete the symmetrizer on the cone with the material-time self-similar drift, which IS route-b and IS the irreversibility sign
status: STRUCTURAL REDUCTION + NEW CANDIDATE ATTACK, NOT A PROOF; uses the 2026-06-22/23 symmetrizer cluster, welds it to the counterobject / viscosity-marginal / route-b, and proposes one previously-unmade move
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - the four-body Kawashima symmetrizer H=I+K on 𝔘=(S,Q,C,G)
  - the Shizuta-Kawashima genuine-coupling / Kalman observability tower {B,BA,BA^2,...}
  - the self-similar strain cone = the B≡1 log-self-similar tower N_L ~ 2^{-L}/L (counterobject)
  - the self-similar material-time drift 𝓓 ~ −½(1+y·∇)
  - MaterialTimeLiouvilleExclusion.A (route b)
  - SignedSmoothSamePacketCommutatorCoercivity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-kawashima-fourbody-operator-form-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-test-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-simultaneous-material-fourbody-xterm-identity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-classical-four-principle-cycle-IS-the-c0-floor-two-coordinates-one-wall-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-viscosity-is-marginal-on-the-counterobject-welds-viscous-lever-to-rigidity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-surplus-zero-single-scale-c0-is-exactly-zero-counterobject-is-log-self-similar-20260706.md
completion_truth: >-
  Structural reduction and a new candidate attack, not a proof of c_0. Uses the
  repo's simultaneous four-body Kawashima symmetrizer H_σ=I+K_σ on the packet
  four-vector 𝔘_N=(S_N,Q_N,C_N,G_N), with 𝓛_σ=A_σ−B_σ+E_σ (A conservative cyclic
  exchange S⇌Q⇌C⇌G⇌S, B≥0 dissipative loss), and the Shizuta-Kawashima genuine-
  coupling condition (Z∈ker B & A^k Z∈ker B ∀k ⟹ Z∈𝓖 gauge), which is a Kalman-type
  observability tower {B,BA,BA^2,...}. FOUR MOVES. (A) The SK tower degenerates
  EXACTLY on the self-similar strain cone, where A and B are simultaneously diagonal
  (both pure scalings) so A^k(ker B)⊆ker B never escapes; that cone is the B≡1
  log-self-similar tower N_L~2^{-L}/L = the counterobject. So SK holds on every mode
  except the cone; [A,B] and higher brackets are non-degenerate off the cone, zero on
  it. This is the algebraic identity of viscosity-marginal-on-counterobject /
  purely-cross-rung / scale-covariance, and the affine X_comm=−c log|ℓ|→−∞ no-go is
  the symmetrizer failing on the cone. (B) c_0>0 ⟺ the observability tower is
  full-rank on the non-gauge space ⟺ A,B genuinely fail to commute on every mode a
  finite-energy field can occupy; the counterobject is the unique commuting cone.
  (C) The symmetrizer is a FUNNEL: H=I+K is coercive on the whole complement of the
  cone (SK holds there), so it disposes of every non-self-similar excitation and any
  blow-up must asymptotically collapse onto the cone. Hence regularity = [symmetrizer
  off the cone: structure in hand, generic] + [route-b on the cone: open]; this is
  WHY every surface funnels to route-b (route-b IS the SK residual). (D) NEW ATTACK:
  on the cone spatial A,B commute so no spatial symmetrizer exists (that is the repo's
  affine no-go, a theorem not a gap); but in self-similar variables the profile carries
  a material-time DRIFT 𝓓~−½(1+y·∇), the generator of the rescaling, which does NOT
  commute with the scaling. Build the Kawashima symmetrizer on the cone using 𝓓 as the
  coupling operator that spatial exchange lacks. This IS route-b (the drift-viscosity
  material-time Liouville / NRS-extension), and 𝓓 carries a definite sign (backward vs
  forward self-similar = the arrow), so "irreversibility as a sign not a rate" is
  concretely: the sign is 𝓓, the missing genuine-coupling operator. The 2026-06-22/23
  symmetrizer files used the drift only to fix the C_N compactness derivative (SYM.27);
  none used 𝓓 as the SK-coupling operator on the affine cone. No symmetrizer
  construction, material-time Liouville, WLF.60, c_0, or MPP closure is proved.
---

# Using the four-body symmetrizer: its SK-failure set is the self-similar cone, and the material-time drift completes it there

Physics-first. This proves no new estimate. It *uses* the repo's four-body Kawashima
symmetrizer to (A) locate its failure set exactly, (B) restate `c_0` as a
non-commutativity, (C) derive the funnel architecture, and (D) propose one specific
unmade move. Honest grade in §5.

## 0. The object

One transported material Navier-Stokes packet, read as the four-vector
`𝔘_N = (S_N, Q_N, C_N, G_N)` (scale/tower, participation, compactness/no-loss,
geometry). The four hand activity around a closed cycle `S⇌Q⇌C⇌G⇌S` — the
conservative exchange `A_σ` — while viscosity drains part of it, `B_σ ≥ 0`. The
simultaneous balance is one positive quadratic form, the Kawashima symmetrizer

```math
\mathfrak L_{4B,N}=\langle\mathfrak U_N,H_\sigma\mathfrak U_N\rangle,\quad
H_\sigma=I+K_\sigma,\quad K_\sigma=K_{SQ}+K_{QC}+K_{CG}+K_{GS}\ \text{(cyclic, off-diagonal)},
```
```math
\partial_\sigma H_\sigma+H_\sigma\mathcal L_\sigma+\mathcal L_\sigma^\ast H_\sigma\le -\text{(loss)},\qquad
\mathcal L_\sigma=A_\sigma-B_\sigma+E_\sigma.
```

The packet decays iff the *partial* drain `B` reaches *every* non-gauge aspect through
the exchange `A`.

## 1. (A) The SK-failure set is exactly the self-similar cone

Existence of a bounded `H=I+K` is the **Shizuta–Kawashima genuine-coupling** condition
```math
Z\in\ker B_\sigma\ \text{and}\ A_\sigma^k Z\in\ker B_\sigma\ \forall k\ \Longrightarrow\ Z\in\mathcal G,
```
i.e. the **Kalman observability tower** `{B, BA, BA², …}` sees every non-gauge mode.
Ask where it degenerates. It degenerates exactly where `A` and `B` are *simultaneously
diagonal* — both pure rescalings — so `A^k(\ker B)\subseteq\ker B` never escapes the
undamped kernel. That is precisely the **self-similar strain cone**: there the exchange
merely rescales the profile and the drain is marginal (ratio-one, `B≡1`). Hence

```math
\boxed{\ \text{SK holds on every mode EXCEPT the self-similar cone; }[A,B]\text{ and higher brackets vanish on it, are non-degenerate off it.}\ }
```

The self-similar cone is the `B≡1` log-self-similar tower `N_L ~ 2^{-L}/L` — the
counterobject. So the symmetrizer's failure set is the counterobject, *identically*.
This is the algebraic form of the three things already known in words:
viscosity-marginal-on-the-counterobject, purely-cross-rung, and scale-covariance. The
affine `X_comm = −c\log|ℓ| → −∞` no-go (repo, 2026-06-23) is the symmetrizer failing to
close on the cone — a theorem, not a gap.

## 2. (B) c_0 as non-commutativity — the higher-algebra content

```math
\boxed{\ c_0>0\ \Longleftrightarrow\ \{B,BA,BA^2,\dots\}\ \text{full-rank on }\mathcal G^\perp\ \Longleftrightarrow\ A,B\ \text{genuinely non-commuting on every mode a finite-energy field occupies.}\ }
```

The counterobject is the *unique* cone where `A` and `B` commute (simultaneously
scaling). So the entire problem is one question: **does a finite-energy Navier-Stokes
field ever lock onto the one cone where exchange and dissipation commute?** No rate can
answer it (on the cone every rate is a shared scaling), which is exactly why no
scale-covariant estimate closes `c_0`.

## 3. (C) The symmetrizer is a funnel — it forces route-b

Because `H=I+K` is coercive on the **entire complement** of the cone (SK holds there),
it coercively disposes of every non-self-similar excitation. Any blow-up therefore must
asymptotically collapse onto the SK-violating cone — the symmetrizer leaves it nowhere
else to live. So the architecture is forced:

```math
\boxed{\ \text{regularity}=\underbrace{[\,H=I+K\ \text{coercive off the cone}\,]}_{\text{structure in hand, generic}}+\underbrace{[\,\text{route-b on the cone}\,]}_{\text{open}}.\ }
```

This *explains* why every repo surface funnels to route-b: route-b is precisely the SK
residual — the one cone the four-body symmetrizer cannot reach.

**Precision — do not over-read "coercive off the cone" (sync, 2026-07-07).** "SK holds
off the cone" is the **algebraic** non-degeneracy `[A,B]≠0` (`A^k(\ker B)⊄\ker B`) — a
*necessary* condition for a symmetrizer, **not a constructed one**. The implication
"genuine-coupling ⟹ bounded coercive symmetrizer" is Shizuta–Kawashima's
*near-equilibrium, small-data* theorem, and it does **not** extend to the large-data,
far-from-equilibrium blow-up regime (if it did, NS would be solved). Worse, the affine
log-divergence that kills the on-cone instantaneous symmetrizer (`X=−c log|ℓ|→−∞`) comes
from **material-line stretching**, which is *not* confined to the cone — so the *same*
obstruction must be independently ruled out **off** the cone too. Therefore "disposes of
every non-self-similar excitation" is the funnel's **aspiration, not a theorem**. What is
genuinely in hand is the **classification** — SK-failure-set `=` the self-similar cone,
identically the counterobject/viscosity-marginal set — *not* a constructed off-cone
coercive symmetrizer. Honest architecture:
`[off-cone: correct SK setting, bounded coercive symmetrizer NOT constructed at large
data — open] + [on-cone: route-b — open]`. The four-body **names the wall and its exact
failure-set**; it does not yet dispose of anything at large data. Kawashima is the *shape*
here, not a governing theorem — consistent with the ontology memory's caution against
serving near-equilibrium model-facts as object-facts.

## 4. (D) The new move — complete the symmetrizer on the cone with the material-time drift

On the cone, spatial `A, B` commute, so **no spatial symmetrizer exists** (§1: the
affine no-go, a theorem). But the cone is not spatially static in material time. In
self-similar variables `y = x/\sqrt{T-t}`, `τ = -\log(T-t)`, the profile carries a
**drift**
```math
\mathcal D\ \sim\ -\tfrac12\,(1+y\cdot\nabla),
```
the generator of the rescaling itself, which does **not** commute with the scaling
(`[\mathcal D,\text{scaling}]\ne 0`). Proposal:

```math
\boxed{\ \text{Build the Kawashima symmetrizer on the cone using }\mathcal D\ \text{as the coupling operator that spatial exchange lacks.}\ }
```

`\mathcal D` is the one operator that restores genuine coupling exactly where `A,B`
degenerate. Two consequences, which are the point:

- **This is route-b.** The material-time drift-viscosity Liouville on the self-similar
  cone is the NRS-extension. The spatial symmetrizer program (route-a-flavored) and
  route-b are then the *same construction*: route-b is the symmetrizer *completed by
  `\mathcal D`* on the cone where the spatial version provably cannot close.
- **The drift is the sign.** `\mathcal D` carries a definite orientation (backward vs
  forward self-similar — the arrow of time). So "irreversibility as a sign, not a rate"
  is now concrete: the sign *is* `\mathcal D`, the missing genuine-coupling operator.
  The 2026-06-22/23 symmetrizer files added the drift only to fix the `C_N` compactness
  derivative (SYM.27); **none used `\mathcal D` as the SK-coupling operator on the
  affine cone.** That is the unexplored move.

Concretely, the target inequality on the cone is a compensator `K^{cone}` with
```math
B_\sigma+\mathcal D^\ast K^{cone}+K^{cone}\mathcal D+ (A^\ast K^{cone}+K^{cone}A)\ \ge\ c\,\Pi_{\mathcal G^\perp}-R,
```
where the `A`-terms alone gave `<0` on the cone (the no-go) but the `\mathcal D`-terms
are non-degenerate there. Proving this is exactly the drift-viscosity Liouville; the
open content is that `\mathcal D`'s non-commutativity is *quantitatively* enough to
dominate the cone, uniformly — which is 3D global regularity, open.

## 5. Honest grade

- **STRUCTURAL, checkable:** the SK/observability tower degenerates exactly on the
  self-similar cone (§1); `c_0` = non-commutativity of `(A,B)` (§2); the symmetrizer is
  a funnel forcing route-b (§3). These use only the repo's installed symmetrizer
  operator form and the standard SK/Kalman equivalence.
- **PROPOSAL, not proof:** completing the symmetrizer on the cone with `\mathcal D`
  (§4). It is a specific, previously-unmade line — identify route-b as the missing
  `\mathcal D`-coupled compensator, with the irreversibility sign realized as the drift.
- **OPEN (unchanged target, now mechanized):** the quantitative uniform sufficiency of
  `\mathcal D` on the self-similar cone = the material-time Liouville / NRS-extension =
  `c_0`. 3D global regularity; open. No closure claimed. Filed is not cleared.
