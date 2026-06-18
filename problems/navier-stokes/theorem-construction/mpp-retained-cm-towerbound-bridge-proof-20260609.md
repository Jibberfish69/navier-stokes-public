---
ns_viewer:
  theorem_id: retained-cm-towerbound-bridge-proof-20260609
  status: proved-retained-cm-tower-consumption
  proof_role: tower_blown_endpoint_consumption
  logical_landing_node: clay-counterexample-exclusion-bridge
  edge_effect: "Proves the licensed tower-blown consumption needed after the Pack.TTU branch split. On the same retained terminal family, Pack_Q plus Part_{N+2,Q} plus Field_{N+2,r,Q}, with the energy bound and fixed positive Field scale, gives bounded endpoint tower amplitude through depth N. Hence a genuine tower-blown endpoint at depth N cannot coexist with the retained CM rows at depth N+2; it must land as failure of Pack, Part, or Field rather than as a fourth primitive row."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-pack-ttu-supremal-strain-tower-dichotomy-proof-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md
    - problems/navier-stokes/theorem-construction/mpp-towerface-cm-row-projection-closure-note-20260503.md
    - problems/navier-stokes/theorem-construction/mcp-dtc-read-full-endpoint-depth-to-towerbound.md
    - problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md
  downstream_consequence: "TowerBound.Upstream / END.TowerAmp is consumed for the retained CM branch. The next theorem atom is ClayCounterexampleExclusionBridge.A / NoGenuineExitFromSmoothData.A propagation: apply the Pack/tower branch split and retained tower consumption to the same finite Clay terminal witness without support-only aliases, then run final PDF rereads."
---

# MPP Retained CM TowerBound Bridge Proof

Date: 2026-06-09

Status: tower endpoint consumption proved for the retained CM branch. This note
does not prove PDF finality or the whole Clay bridge by itself.

## Target

The live blocker was:

```text
TowerBound.Upstream / END.TowerAmp.
```

The previous Pack pass reduced the continuum active-label Pack problem to:

```text
no tower-blown => Pack.TTU => Pack_Q,
```

with the complementary case:

```text
tower-blown.
```

The remaining burden was to consume `tower-blown` without falsely projecting it
to a pure `Pack`, `Part`, or `Field` row by definition.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target object: tower-blown endpoint face after Pack survival branch split.

Object role: endpoint face consumption under retained CM witness rows.

Logical skeleton: contradiction under retained `Pack+Part+Field` at one higher
endpoint depth.

Mechanism: energy anchors the base velocity rung under fixed positive Field
scale; Field finite differences bound higher velocity rungs; Part plus Field
bound force rungs.

## Claim

For a same retained terminal family, assume the deeper retained CM rows:

```text
Pack_Q,
Part_{N+2,Q},
Field_{N+2,r,Q}
```

with fixed `r>0` and finite Field coherence bound along the terminal family.
Then:

```text
A_{N,Q} in L^infty(I),
```

so `tower-blown` at depth `N` is impossible on that retained family.

## Base Rung

The Field row at depth `0` gives a fixed-scale Lipschitz bound for `u`:

```text
|u(x,t)-u(y,t)| <= C |x-y|       (|x-y| <= r).
```

Let `|u(x0,t)|=M`. On a ball of radius

```text
rho = min(r, M/(2C)),
```

the velocity has size at least `M/2`. The energy inequality gives:

```text
E0 >= c M^2 rho^3.
```

If `M <= 2Cr`, use `rho=M/(2C)`. If `M > 2Cr`, then `rho=r`, and

```text
M^2 <= C_r E0.
```

Thus:

```text
sup_{x in Q_t} |U_0(x,t)| < infinity.
```

The fixed positive Field scale is essential here. A shrinking local scale would
not anchor the base amplitude.

## Higher Velocity Rungs

For `1 <= k <= N+2`,

```text
U_k = nabla U_{k-1}.
```

The `U_{k-1}` finite-difference part of `Field_{N+2,r,Q}` gives:

```text
sup_{0<|h|<=r} |delta_h U_{k-1}| / |h| < infinity.
```

Passing to derivatives on the smooth preterminal windows gives:

```text
sup_{x in Q_t} |U_k(x,t)| < infinity.
```

In particular this bounds all velocity rungs through depth `N+2`.

## Force Rungs

The participation row gives the base force envelope. For `k=0`,

```text
K_0
```

is bounded by `Part_{N+2,Q}`. For `1 <= k <= N`,

```text
K_k = nabla K_{k-1}.
```

The `K_{k-1}` finite-difference part of `Field_{N+2,r,Q}` gives the derivative
bound:

```text
sup_{x in Q_t} |K_k(x,t)| < infinity.
```

Thus all forcing rungs needed by `A_{N,Q}` are bounded.

## Tower Amplitude

The endpoint tower amplitude is:

```text
A_{N,Q}(t)
= sup_{x in Q_t} sum_{k=0}^N (|U_k(x,t)| + |K_k(x,t)|).
```

The preceding bounds give:

```text
A_{N,Q} in L^infty(I).
```

This is the endpoint tower-amplitude input:

```text
END.TowerAmp.
```

The definition-level endpoint cell gives:

```text
END.TowerAmp => not tower-blown.
```

## CM Landing

This theorem does not say:

```text
tower-blown => not Pack_Q
```

or:

```text
tower-blown => not Part_{N,Q}
```

or:

```text
tower-blown => not Field_{N,r,Q}
```

by definition. That projection is forbidden by the tower-face audit.

The licensed statement is the retained-branch contradiction:

```text
Pack_Q + Part_{N+2,Q} + Field_{N+2,r,Q}
=> not tower-blown.
```

Hence a genuine terminal tower-blown endpoint at depth `N`, on the same retained
family, cannot coexist with retained CM rows at depth `N+2`. It forces failure
of the retained CM witness package:

```text
not Pack_Q or not Part_{N+2,Q} or not Field_{N+2,r,Q}.
```

This is a valid `Exit(Q):=not Member(Q)` landing through the Pack/Part/Field
central gate, with the depth shift recorded.

## Result

`TowerBound.Upstream / END.TowerAmp` is consumed for the retained CM branch:

```text
tower-blown + retained same-family CM_{N+2,r,Q}
=> contradiction.
```

The next theorem atom is no longer tower-amplitude control. It is propagation:

```text
ClayCounterexampleExclusionBridge.A / NoGenuineExitFromSmoothData.A:
apply the Pack/tower branch split and retained tower consumption to the same
finite Clay terminal witness without support-only aliases.
```

After that propagation lands, the two PDFs still need fresh referee and normal
reader rereads before `pdfs_final` may be true.

## New Live Criticism

`NS-LIVE-20260609-162`: `TowerBound.Upstream / END.TowerAmp` is consumed for
the retained CM branch by the fixed-scale Field energy anchor and depth
`N+2` tower-bound bridge. CMI finality remains blocked because the result still
has to be propagated into `ClayCounterexampleExclusionBridge.A /
NoGenuineExitFromSmoothData.A` for the same finite Clay terminal witness, with
support-only aliases excluded, and then both PDFs require fresh final rereads.
