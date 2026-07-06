---
theorem_id: forward-gold-tower-relay-lag-liouville-route-b-20260706
status: route-b-reduction; radiodromic tower-relay lag is a coordinate for c_0>0; NO CLOSURE
created: 2026-07-06
problem: navier-stokes
route: forward-gold + silver / route (b) material-time Liouville / the one object c_0>0
authorship: >-
  Derivation: Claude (Opus 4.8), 2026-07-06, at the owner's request to test a
  pursuit/"radiodrome" lag idea against the live NS object. Physical ontology and
  the one-field/participation-tower correction: Thomas Birnie. The pursuit framing
  is the owner's proposal; this note only places it at the correct altitude. This
  is a reduction/coordinate surface, not a proof; it claims no closure.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-CANONICAL-one-object-strain-service-reserve-floor-consolidation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
  - problems/navier-stokes/spine.md
target_object:
  - TowerRelayLag.Functional (one-field, non-local, pre-announced)
  - RelayLagFloor.REQUIRES strict-per-rung-tower-margin == c_0>0
  - MarginalProfileExclusion N_L ~ 2^{-L}/L == log-divergent relay turning
  - MaterialTimeLiouville.RouteB (the open object)
completion_truth: >-
  Reduction and coordinate placement, not a theorem. It recasts the owner's
  pursuit/"radiodrome no-recount" lag idea onto the correct NS object — the one
  VPI fluid-field read up its participation tower, never a sliced pressure
  Hessian — and shows the honest home is route (b), the material-time Liouville.
  The blowup relay (principle 6: no self-tightening, blowup is a relay across
  structures) hands strain self-amplification S^2 up the primitive scale-potential
  line; the payers Hess(q)+nu*Lap S re-aim at the moving amplifying carrier rung
  by rung, and the common-mode Omega^2 cancels in the co-moving frame. The
  "radiodrome lag" is the per-rung unpaid relay residue nu_L^lag in the
  pre-announced owner-and-charge split N_{L+1}=q N_L + P_L^paid + nu_L^lag; its
  cumulative value is a total-turning functional up the tower. Exact
  correspondence: c_0>0 (equivalently the strict half-barrier 2q<1 and the
  weight-beating tail sum sum 2^L nu_L^lag < infinity) is precisely a STRICT
  per-rung tower margin — finite total relay turning, "capture," forced
  shallowing. The critical marginal profile N_L ~ 2^{-L}/L is exactly the
  log-divergent-turning knife-edge: 2^L * 2^{-L}/L = 1/L, sum = harmonic
  divergent, i.e. bounded-per-rung lag with a marginally divergent tail — the
  equal-speed radiodrome that trails at fixed distance and never captures.
  Therefore the pursuit idea does NOT beat route (b): at the marginal profile it
  reproduces the knife-edge rather than excluding it. Its only genuine content is
  that the strict per-rung tower margin IS c_0, which is provably NON-LOCAL (the
  affine packet u=B(t)x, tr B=0, has O(1) strain-service with vanishing critical
  heat-mass), so no local jet/pointwise-angle/rigidity reading — including the
  earlier eigenframe-gap version — can supply it; that class is pruned. Net: the
  radiodromic tower-relay lag is another coordinate on the one non-local floor,
  and the open object it lands on is MaterialTimeLiouville.RouteB — exclude the
  marginal relay profile N_L ~ 2^{-L}/L as an ancient material-time history of the
  coupled VPI packet. No closure claimed.
---

# Tower relay-lag Liouville (route b): the honest home of the pursuit idea

## 0. Object (one field, no slicing)

The object is the single original smooth VPI fluid-field read up its
participation tower — `Part` attaches the tower to the retained material carrier,
`Field` is one-field / finite-depth tower coherence. There is no separate
"pressure Hessian" to chase: the pressure Hessian is `Hess(q)`, one local reading
of the same field inside the strain Riccati

```math
D_t S + S^2 + \Omega^2 + \mathrm{Hess}(q) = \nu\,\Delta S .
\tag{TRL.1}
```

This note lives on **route (b)** of the one-object consolidation: a material-time
Liouville/rigidity excluding the critical marginal profile. It does not attempt
route (a). It explicitly rejects the local class — the exact affine packet
`u=B(t)x`, `tr B=0`, realizes O(1) strain-service action with vanishing critical
heat-mass, so no local jet, pointwise angle, clipping, or rigidity (including any
eigenframe-gap reading) can supply the below-`1/2` margin. That class is pruned.

## 1. The relay is inside the Riccati

Principle 6 forbids self-tightening: an isolated triad is periodic and conserves
energy and helicity, so blowup must be a **relay across structures**, handed up
the tower. Read (TRL.1) as a pursuit internal to the one field:

- **runner** `S^2` — strain self-amplification, the moving amplifying carrier;
- **payers** `Hess(q) + \nu\,\Delta S` — pressure and viscosity, which re-aim at
  the runner;
- **common-mode** `\Omega^2` — rotation; it co-rotates carrier and payer in the
  material frame and cancels in the relative (tracking-relevant) rate.

Only the payer's *relative* re-aim at the moving runner costs service. This is
the BD1 statement ("the holder must track the e-folding member on the production
clock") read one-field, not as a separate scaffold gadget.

## 2. The relay-lag functional (pre-announced, no-recount)

Index the participation tower by rungs `L` on the primitive scale-potential line
(PLS), with record scale-potential `N_L \ge 0`. Honor owner-and-charge: the payer
at each rung is pre-announced in the original history before the rung is read, so
the per-rung split is fixed in advance,

```math
N_{L+1} = q\,N_L + P_L^{\mathrm{paid}} + \nu_L^{\mathrm{lag}},
\qquad q=\tfrac{1-c_0}{2},
\tag{TRL.2}
```

with `P_L^{paid}` the on-aim delivered service and `\nu_L^{lag}\ge 0` the **fresh
relay-lag residue** — the unpaid overrun left because the payer aims at where the
runner *was*, not where it now is. In pursuit terms `\nu_L^{lag}` is the per-rung
turning increment; its cumulative value

```math
\Theta_L := \sum_{j\le L} 2^{\,j}\,\nu_j^{\mathrm{lag}}
\tag{TRL.3}
```

is the weight-beating total relay turning up the tower (the `2^j` is the PLS
weight the tail must beat). No rung's `\nu_L^{lag}` may be re-read at a later rung:
successive "fresh" residues are lagged reads of the same parent relay unless the
carrier genuinely pays motion, return, viscosity, legal/stop, or a finite native
charge — the half-tail escape list, now at the tower level.

## 3. The radiodrome dichotomy, at the tower level

The pursuit speed ratio is per-rung: does the payer close on the runner faster
than the runner advances?

- **Strict per-rung margin (k>1).** `\Theta_\infty < \infty` — finite total
  turning, the payer *captures*. Then (TRL.2) shallows geometrically, `2q<1`,
  and

```math
c_0 > 0
\quad\Longleftrightarrow\quad
\Theta_\infty=\sum_L 2^{L}\nu_L^{\mathrm{lag}} < \infty
\quad\text{and}\quad q<\tfrac12 .
\tag{TRL.4}
```

  This is regularity: the tower-summed relay debt is finite.

- **Marginal (k=1).** Bounded per-rung lag, `\Theta_L` diverges. The payer trails
  the runner at a fixed relay distance and never captures. The boundary case is
  exactly

```math
N_L \sim \frac{2^{-L}}{L}
\quad\Longrightarrow\quad
2^{L}\nu_L^{\mathrm{lag}} \sim \frac1L,
\qquad
\Theta_L \sim \sum \frac1L = \infty .
\tag{TRL.5}
```

The marginal profile the consolidation must exclude **is** the log-divergent-
turning radiodrome. So the pursuit idea does not defeat the obstruction — at the
knife-edge it reproduces it. Its content is only that the strict per-rung tower
margin in (TRL.4) is c_0 itself.

## 4. The route (b) object

What remains is a genuine, well-posed open statement:

> **MaterialTimeLiouville.RouteB.** No ancient material-time history of the
> coupled VPI packet realizes the marginal tower-relay profile (TRL.5) with
> log-divergent relay turning `\Theta_L\to\infty`; equivalently, the pre-announced
> relay-lag residue satisfies the strict weight-beating floor
> `\sum_L 2^{L}\nu_L^{\mathrm{lag}}<\infty`, hence `c_0>0`.

The pursuit geometry supplies the *shape* of the object (finite vs divergent
total turning) and the exact identification of the knife-edge, but not the
exclusion: closing it requires a non-local mechanism — the VPI coupling
(`tr S=0` + viscosity + the nonlocal `Hess(q)`) delivering a strict per-rung
margin across the relay — which is the unproven c_0.

## 5. Do not collapse

- radiodromic relay-lag coordinate is **not** the floor `c_0` itself
- finite total turning `\Theta_\infty<\infty` is **not** proved; it is c_0 renamed
- tower-level marginal profile (TRL.5) is **not** excluded by any local reading
- per-rung `\nu_L^{lag}` is pre-announced; any post-hoc re-read is a no-recount
  violation, not a new payer

## 6. Next

Attack `MaterialTimeLiouville.RouteB` directly: seek a material-time rigidity of
the coupled VPI packet that forbids sustained log-divergent relay turning (TRL.5).
Candidate levers, all non-local: (i) `tr S=0` incompressibility acting across
rungs to force a strict per-rung gain deficit; (ii) viscous strain diffusion
`\nu\,\Delta S` as a per-rung decorrelation floor beating the `2^L` weight;
(iii) the nonlocal `Hess(q)` relay-transport identity from
`pressure-hessian-to-strain-eigenvalue-clock` read at tower scale rather than
pointwise. If any yields `\sum 2^L \nu_L^{lag}<\infty` strictly, it is c_0>0 in
the relay coordinate; if a construction sustains (TRL.5) same-fluid, it is the
shape of the counterexample.
