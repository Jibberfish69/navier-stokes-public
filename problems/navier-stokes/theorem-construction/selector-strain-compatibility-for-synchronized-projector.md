# Selector-Strain Compatibility For Synchronized Projector

## Status

Candidate theorem-facing wall note.

Role: isolate the true projector-identification burden on the spectral-gap /
projector branch.
This note is the second hard-debt surface on the exact discharge route.
On the exact-potential selector-strain side, the first concrete theorem attack
now runs through the branch-local notes
[restricted-cg-reference-gap-persistence.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/restricted-cg-reference-gap-persistence.md)
and
[reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md).

## Purpose

Discharge the actual wall:

```math
\boxed{
(\Pi_J^{ref},\ W_J,\ g_J^{str})
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le
C_{ssc}
|W_J|^2+\mathrm{Err}_{J,\mathrm{ssc}}.
}
\tag{SSC.0}
```

This note carries only the second comparison term in the full identification
split

```math
\|\widehat P_J-P_{J,\top}^{seg}\|_F
\le
\|\widehat P_J-\Pi_J^{ref}\|_F
+
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F.
\tag{SSC.0a}
```

The spectral gap / Davis--Kahan note discharges the first term. This note
discharges the second.

## Exact Inputs

1. the synchronized reference projector `\Pi_J^{ref}`;
2. the signless pair packet `W_J`;
3. the live strain-gap packet `g_J^{str}`;
4. the selector-good strip and any measurable-derivative / normal-covector
   compatibility packet already present on the branch.

## Exact Claim

### Candidate Theorem SSC.A

```math
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le
C_{ssc}
|W_J|^2+\mathrm{Err}_{J,\mathrm{ssc}}.
\tag{SSC.1}
```

Object roles:

```math
\Pi_J^{ref}
\quad\text{= synchronized reference projector,}
\tag{SSC.2a}
```

```math
P_{J,\top}^{seg}
\quad\text{= true instantaneous top-strain projector,}
\tag{SSC.2b}
```

```math
\mathrm{Err}_{J,\mathrm{ssc}}
\quad\text{= selector-strain compatibility ledger.}
\tag{SSC.2c}
```

## Proof Skeleton

1. Use the synchronization packet to keep `\Pi_J^{ref}` coherent on the
   transported good family.
2. Use the selector-good strain packet to define the true top-strain projector
   with gap protection.
3. Compare the synchronized reference object to the true strain object by the
   measurable-derivative / normal-covector route.
4. Record all residual mismatch in `\mathrm{Err}_{J,\mathrm{ssc}}`.

## Current Exact-Potential Sufficient Route On Disk

On the exact-potential Cauchy--Green branch, the selector-strain wall is
already reduced to explicit packets on disk.

The cleanest branch-local simplification is

```math
\Pi_J^{ref}:=P_J^{CG}(t,a),
\tag{SSC.2d}
```

so the exact selector-strain theorem on that branch becomes the current-time CG
comparison

```math
E_{J,t_0}^{CG}\le g_0/4
\quad\text{and}\quad
\eta_J^{mb}\ \text{controlled}
\Longrightarrow
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
C_{mb}
\eta_J^{mb}(t,a,b)^2/g_0^2.
\tag{SSC.2e}
```

This is exactly the branch-local theorem `SSC-EP.A` in
[reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md).

Corollary `D.7me` and Corollary `D.7mf` in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:2240)
reduce selector-strain compatibility to:

1. pair-to-cocycle synchronization, so `|m_J|` is small;
2. a nondegenerate Cauchy--Green gap;
3. commutator smallness
   `\|[\mathcal C_J^N,B_J^N]\|_{\mathrm{op}}`;
4. control of the forcing coefficient `a_J^{comm}`.

The sharp persistence packet is then Corollary `D.7mk` at
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:2665),
which shows that the right imported persistence statement is:

```math
(\mathcal C_J^N,B_J^N)
\text{ stays near a nearly commuting reference pair,}
\tag{SSC.3}
```

with the true transported-strain persistence measured through

```math
\partial_t S_J^N+[S_J^N,K_J^N].
\tag{SSC.4}
```

So on the exact-potential branch the live selector-strain discharge is not
“slow strain variation.” It is the combination:

```math
\text{reference direction}
+
\text{reference gap persistence}
+
\text{commutator / bootstrap control}
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2\le C_{ssc}\mathrm{Err}_{J,\mathrm{ssc}}.
\tag{SSC.5}
```

In particular, the on-disk sufficiency chain runs through `D.7mp`, `D.7mo`,
and the bootstrap/commutator packets `D.7mm`, `D.7mf`, `D.7mk`.

So the exact writing read is:

```math
D.7mp + D.7mo + D.7mm
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le
C_{ssc}
\mathrm{Err}_{J,\mathrm{ssc}},
\tag{SSC.6}
```

or on the alternate packet,

```math
D.7mf + D.7mk
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le
C_{ssc}'
\mathrm{Err}_{J,\mathrm{ssc}}.
\tag{SSC.7}
```

The branch-local discharge order is therefore:

```math
\text{CG-RefGap}
\Longrightarrow
\text{current-time CG / top-strain comparison}
\Longrightarrow
\text{selector-strain compatibility}.
\tag{SSC.7a}
```

### Corollary SSC.B (reference-direction / reference-gap / bootstrap suffices)

Keep one selector-good atom-free window `I_0` and assume the hypotheses of
Corollary `D.7mp`, Corollary `D.7mo`, and Corollary `D.7mm` on that window.
Set

```math
\Pi_J^{ref}:=P_J^{CG},
\qquad
\mathrm{Err}_{J,\mathrm{ssc}}
:=
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}.
\tag{SSC.8}
```

Then

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
C_{CG,\mathrm{DK}}\,
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t).
\tag{SSC.9}
```

**Proof.**
Corollary `D.7mm` supplies the selector-strain slot `(D.7ma5)` with strain
ledger `\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}`, while Corollary
`D.7mo` provides the Cauchy--Green gap floor used in that bootstrap packet.
Proposition `D.7ma` then gives the projector comparison `(D.7ma6)`, which is
exactly `(SSC.9)` after the identification `\Pi_J^{ref}=P_J^{CG}`. ∎

### Corollary SSC.C (commutator / persistence suffices)

Keep the same branch and assume the hypotheses of Corollary `D.7mf` and
Corollary `D.7mk`. Set

```math
\Pi_J^{ref}:=P_J^{CG},
\qquad
\mathrm{Err}_{J,\mathrm{ssc}}
:=
\operatorname{Err}_{J,CG}^{strain}.
\tag{SSC.10}
```

Then

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
C_{CG,\mathrm{DK}}\,
\operatorname{Err}_{J,CG}^{strain}(a,b,t).
\tag{SSC.11}
```

**Proof.**
Corollary `D.7mk` supplies the persistence packet needed by Corollary `D.7mf`,
and Corollary `D.7mf` supplies `(D.7ma5)` with strain ledger
`\operatorname{Err}_{J,CG}^{strain}`. Proposition `D.7ma` then yields
`(D.7ma6)`, which is `(SSC.11)` under `\Pi_J^{ref}=P_J^{CG}`. ∎

## Boundary

This note does **not** yet prove:

1. stable recovery of `\widehat P_J` from `\Sigma_J`;
2. directional observability from projector comparison;
3. residual pairwise closure;
4. SG.4 or continuation.
