---
ns_viewer:
  theorem_id: dgcal-local-exact-packet-readout-formula-direct-attempt-20260609
  status: formula-installed-realization-open
  proof_role: local_projective_readout_formula
  logical_landing_node: dgcal-pair-defect-channel-realization
  edge_effect: "Installs the canonical local projective readout formula and proves its tangent Gram condition; leaves the actual pair-defect realization as the next theorem atom."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-dgcal-exact-linear-frame-condition-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md
  downstream_consequence: "The next theorem atom is DGCalPairDefectChannelRealization.A: prove that the signless pair-defect packet realizes the canonical local projective channels with the DG-Cal error budget."
---

# MPP DG-Cal Local Exact Packet Readout Formula Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note installs the local geometric
formula and the Gram calculation. It does not close `DG-Cal`, `CN.13j`,
`PD.70z`, Pack survival, or CMI finality because the pair-defect realization is
still open.

## Target

The active target is:

```text
DGCalLocalExactPacketReadoutFormula.A.
```

The target asks for the local exact packet formula, its scalar first-order
readout channels on `T_{N_J} RP^2`, and the Gram matrix whose lower determinant
/ upper trace bounds prove the derivative-frame condition.

## Local Projector Coordinates

Work at one active point and suppress the indices. Let

```text
N = n tensor n
```

be the aligned rank-one projector with `|n|=1`. Choose an orthonormal basis
`tau_1,tau_2` of `n^\perp`. The tangent space to the rank-one projector
manifold at `N` is

```text
T_N RP^2 = { n tensor v + v tensor n : v in n^\perp }.
```

For `i=1,2`, define the tangent templates

```text
E_i := n tensor tau_i + tau_i tensor n.
```

They obey

```text
<E_i,E_j>_F = 2 delta_ij.
```

## Canonical Local Exact Readout

For a nearby rank-one projector `P`, define the local geometric readout packet

```text
mathcal W_geom(P;N)
:=
(
  2^{-1/2} <P-N,E_1>_F,
  2^{-1/2} <P-N,E_2>_F
).
```

This is the canonical two-channel local exact packet attached to the aligned
projector. It measures the two first-order projective directions transverse to
`N`.

## Tangent Linearization

Let

```text
H = n tensor v + v tensor n,
v = v_1 tau_1 + v_2 tau_2.
```

Then

```text
||H||_F^2 = 2(v_1^2+v_2^2).
```

The derivative of the readout at `N` is

```text
D mathcal W_geom(N)[H]
=
(
  2^{-1/2} <H,E_1>_F,
  2^{-1/2} <H,E_2>_F
)
=
(
  sqrt(2) v_1,
  sqrt(2) v_2
).
```

Therefore

```text
||D mathcal W_geom(N)[H]||^2
=
2(v_1^2+v_2^2)
=
||H||_F^2.
```

So the readout Gram matrix is exactly the identity on `T_N RP^2`:

```text
G = I_T.
```

In particular:

```text
det(G)=1,
trace(G)=2,
m_-=m_+=1.
```

This proves the local geometric derivative-frame condition.

## What Remains Unproved

The installed DG-Cal schema does not need a geometric readout in isolation. It
needs the signless pair-defect packet to recover a synchronized projector
`widehat P_J` and to pay the errors:

```text
||P_ab - widehat P_J||_F^2 <= C |W_J|^2 + Err_sync,
||widehat P_J - N_J||_F^2 <= Err_DG,
and Err_sync + Err_DG is controlled by E_obs.
```

The canonical formula above supplies the local target channels. It does not
prove that the actual pair-defect field `W_J` realizes those channels with the
needed observed error budget.

So the formula atom is paid, and the next exact theorem atom is:

```text
DGCalPairDefectChannelRealization.A:
prove that the signless pair-defect packet realizes the canonical local
projective channels mathcal W_geom(P;N), producing a measurable synchronized
projector widehat P_J and errors Err_sync, Err_DG satisfying the DG-Cal budget
(7.6)-(7.8).
```

## Result

`DGCalLocalExactPacketReadoutFormula.A` is installed in canonical local
projective coordinates, with the readout Gram matrix computed and coercive.

`DGCalExactLinearFrameCondition.A` is still not fully discharged because the
actual pair-defect realization theorem is not installed.

Until `DGCalPairDefectChannelRealization.A` or an alternate support/weight
route is proved and propagated, the paper cannot claim the polarity/coercive
square lower link, `CN.13j`, `PD.70z`, h/F mass vanishing, Pack survival, or
CMI-final closure.

## New Live Criticism

`NS-LIVE-20260609-134`: the local projective readout formula and its Gram
coercivity are installed, but `DGCalPairDefectChannelRealization.A` is still
open. The proof still lacks the theorem that the actual signless pair-defect
packet realizes the canonical local projective channels with the DG-Cal error
budget `(7.6)`-`(7.8)`.
