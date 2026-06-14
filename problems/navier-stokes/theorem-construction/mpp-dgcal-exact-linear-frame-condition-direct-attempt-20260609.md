---
ns_viewer:
  theorem_id: dgcal-exact-linear-frame-condition-direct-attempt-20260609
  status: failed-dgcal-linear-frame-discharge
  proof_role: tangent_frame_linearization_attempt
  logical_landing_node: dgcal-local-exact-packet-readout-formula
  edge_effect: "Reduces DGCalExactLinearFrameCondition.A to an explicit readout Gram-matrix lower-bound theorem and identifies the missing local exact packet formula needed before the derivative can be computed."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cn13j-lower-link-small-moment-absorption-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md
    - problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md
  downstream_consequence: "The next theorem atom is DGCalLocalExactPacketReadoutFormula.A; after that the Gram lower bound is the exact quantitative frame condition."
---

# MPP DG-Cal Exact Linear Frame Condition Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `DG-Cal`,
`CN.13j`, `PD.70z`, Pack survival, or CMI finality.

## Target

The active target is:

```text
DGCalExactLinearFrameCondition.A.
```

The source theorem says that on the cycle-exact branch the local anchored
observable

```text
mathcal W_J(P) := W_J(P,N_J, local exact packet)
```

must satisfy the first-derivative frame condition

```text
m_- ||H||_F^2 <= ||D mathcal W_J(N_J)[H]||^2 <= m_+ ||H||_F^2
```

for every tangent vector `H in T_{N_J} RP^2`.

## Source Check

The current source surface defines the target only by placeholder notation:

```text
mathcal W_J(P) := W_J(P,N_J, local exact packet).
```

The same source states the derivative-frame condition and says that the
readout channels must span `T_{N_J} RP^2`, but it does not give the local exact
packet formula or the scalar channel formulas needed to compute
`D mathcal W_J(N_J)`.

The earlier `DG-Cal` schema also names the missing projector construction
rather than proving it. It requires a rank-one shadow projector `widehat P_J`
and errors satisfying:

```text
||P_ab - widehat P_J||_F^2 <= C |W_J|^2 + Err_sync,
||widehat P_J - N_J||_F^2 <= Err_DG,
and the familywise error budget is observed by E_obs.
```

So the installed notes specify the burden, but they do not yet construct the
local exact readout whose derivative can be checked.

## Formal Reduction: Readout Gram Criterion

Let `T:=T_{N_J} RP^2`, a two-dimensional real Hilbert space with Frobenius
inner product. Suppose the missing local exact packet has scalar first-order
readout channels

```text
ell_1, ..., ell_k in T^*
```

so that

```text
D mathcal W_J(N_J)[H] = (ell_1(H), ..., ell_k(H)).
```

Define the Gram operator `G_J:T -> T` by

```text
<G_J H,H> = sum_alpha |ell_alpha(H)|^2.
```

Then the derivative-frame condition is exactly:

```text
m_- I_T <= G_J <= m_+ I_T.
```

Equivalently, in any orthonormal basis of `T`, if

```text
G = (sum_alpha ell_alpha(e_i) ell_alpha(e_j))_{i,j=1}^2,
```

then the target is:

```text
lambda_min(G) >= m_- > 0,
lambda_max(G) <= m_+ < infinity.
```

In dimension two this can be checked by

```text
trace(G) <= m_+,
det(G) >= m_- (trace(G)-m_-),
```

or more simply by a uniform lower determinant bound together with a uniform
upper trace bound:

```text
det(G) >= c_det > 0,
trace(G) <= C_tr < infinity.
```

Then

```text
lambda_min(G) = det(G) / lambda_max(G) >= c_det / C_tr,
lambda_max(G) <= trace(G) <= C_tr.
```

Thus the exact quantitative theorem behind `DGCalExactLinearFrameCondition.A`
is a readout-channel Gram lower bound.

## Attempt To Compute The Channels

This computation cannot be completed from the installed source surface.

The source names `local exact packet`, but no checked file gives the actual
map

```text
P -> W_J(P,N_J, local exact packet)
```

or the channel functionals `ell_alpha`. Without those formulas, there is no
mathematical object to differentiate. The pair-defect PDE gives the evolution
of `W_J`; it does not define this anchored projector observable. The
Cauchy-Green/projective notes reduce synchronization and strain compatibility,
but they still leave the exact channel construction as the thing to be supplied.

So `DGCalExactLinearFrameCondition.A` is not proved yet.

## Result

This pass installs the exact algebraic reduction:

```text
DGCalExactLinearFrameCondition.A
<= DGCalReadoutGramLowerBound.A
<= explicit scalar readout channels for the local exact packet.
```

The next live theorem atom is:

```text
DGCalLocalExactPacketReadoutFormula.A:
write the local exact packet formula for mathcal W_J(P), identify its scalar
first-order readout channels ell_alpha on T_{N_J} RP^2, and express the Gram
matrix whose lower determinant / upper trace bounds will prove the frame
condition.
```

After that formula is installed, the following target is the quantitative Gram
bound:

```text
DGCalReadoutGramLowerBound.A:
prove det(G_J) >= c_det and trace(G_J) <= C_tr on the active selector-good
family.
```

Until those land or an alternate support/weight route is proved, the paper
cannot claim the polarity/coercive-square lower link, `CN.13j`, `PD.70z`, h/F
mass vanishing, Pack survival, or CMI-final closure.

## New Live Criticism

`NS-LIVE-20260609-133`: `DGCalExactLinearFrameCondition.A` is still open. The
installed notes state the derivative-frame condition, but the local exact
packet formula and scalar readout channels are not installed, so
`D mathcal W_J(N_J)` cannot yet be computed. The next target is
`DGCalLocalExactPacketReadoutFormula.A`, followed by the explicit readout Gram
lower-bound theorem.
