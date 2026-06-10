---
ns_viewer:
  theorem_id: dgcal-pair-defect-channel-realization-direct-attempt-20260609
  status: failed-realization-discharge
  proof_role: observed_packet_realization_attempt
  logical_landing_node: ptc-shape-normalization
  edge_effect: "Tests the realization of the canonical local projective readout by the signless pair-defect packet and reduces it to the unpaid selector-shape normalization theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-dgcal-local-exact-packet-readout-formula-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md
    - problems/navier-stokes/theorem-construction/ptc-linearization-closure.md
    - problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md
  downstream_consequence: "The next theorem atom is PTCShapeNormalization.A on the selector-shape side of D.7mn -> D.7mq."
---

# MPP DG-Cal Pair-Defect Channel Realization Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `DG-Cal`,
`CN.13j`, `PD.70z`, Pack survival, or CMI finality.

## Target

The active target is:

```text
DGCalPairDefectChannelRealization.A.
```

The previous pass installed the canonical two-channel local projective readout
and proved its tangent Gram matrix is coercive. The remaining question is
whether the actual signless pair-defect packet realizes those channels with the
DG-Cal error budget.

## Installed Reduction

The `DG-Cal` schema needs a measurable synchronized projector `widehat P_J`
such that

```text
||P_ab - widehat P_J||_F^2 <= C |W_J|^2 + Err_sync,
||widehat P_J - N_J||_F^2 <= Err_DG,
```

with the familywise error budget controlled by the observation ledger.

The installed `D.7mn -> D.7mq` reduction says that the pair-to-cocycle part of
this realization follows from:

```text
PTC-Lin:    pair tensor linearizes to (W_coc)^* M_shape W_coc;
PTC-Shape:  M_shape is normalized / isotropic on N_a;
CG gap:     the Cauchy-Green top eigenspace is simple with a quantitative gap.
```

Under those hypotheses Davis-Kahan gives the synchronized projector and the
pair-to-cocycle error ledger.

## Attempt 1: Use Pair Linearization Alone

The linearization note isolates `PTC-Lin.A`. On the standard selector-scale
branch it records a source-backed route through the qualitative differentiability
supplier:

```text
TPS.4u => DiffExc => PTC-Lin.A.
```

That controls the linearization error in `D.7mn1`, but it does not control the
shape tensor. The term

```text
|W_coc|_op^2 Err_shape
```

still appears in `D.7mn3`.

So pair linearization alone does not realize the DG-Cal channels.

## Attempt 2: Use The Selector-Shape Notes

The shape normalization note explicitly names the remaining primitive:

```text
PTC-Shape.A:
M_{J,epsilon}^{shape} is normalized-isotropic on N_a.
```

It further reduces the constructive branch to selector-side source primitives,
including sectorwise relative oscillation of the diagonal density, finite shell
comparability, and regular-window segment-gradient control.

Those are reductions, not a closed proof of `PTC-Shape.A` from the current
installed inputs. In particular, exact degree-2 isotropy alone is not enough;
the finite cap/bump occupancy route needs additional lower-density and
oscillation/comparability control.

So the selector-shape side is still open.

## Attempt 3: Bypass Shape With The Local Projective Formula

The local geometric formula from the previous pass gives a perfect tangent
frame after a projector is already available. It does not construct the
projector from the observed pair packet. Without the shape/isotropy theorem,
the top eigenspace of the pair-induced tensor can point in the wrong direction
or lose the quantitative gap needed by Davis-Kahan.

So the local formula does not bypass `PTC-Shape.A`.

## Result

`DGCalPairDefectChannelRealization.A` is not proved from the installed inputs.

The next live theorem atom is:

```text
PTCShapeNormalization.A:
prove the selector-shape / selector-isotropy theorem
M_{J,epsilon}^{shape} approx I_{N_a}
in the normalized operator sense required by D.7mn2.
```

The sharp source-level descendants already visible on disk are:

```text
sectorwise relative oscillation of diagonal density around the parent-cell average,
finite shell comparability,
and regular-window sup |grad v_J| control on active segments.
```

Until `PTCShapeNormalization.A` and the accompanying Cauchy-Green gap/strain
compatibility conditions are paid, the pair-defect packet does not realize the
DG-Cal channels. Therefore the paper cannot claim the polarity/coercive-square
lower link, `CN.13j`, `PD.70z`, h/F mass vanishing, Pack survival, or CMI-final
closure.

## New Live Criticism

`NS-LIVE-20260609-135`: `DGCalPairDefectChannelRealization.A` is still open.
The installed `D.7mn -> D.7mq` reduction shows that observed-packet realization
requires pair linearization plus selector-shape normalization and a quantitative
Cauchy-Green gap. The pair-linearization side has a standard source-backed
route, but the selector-shape normalization theorem remains unpaid. The next
target is `PTCShapeNormalization.A`.
