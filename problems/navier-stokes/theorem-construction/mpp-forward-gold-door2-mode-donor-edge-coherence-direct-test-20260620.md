# Door 2 Mode-Donor Edge Coherence Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `ModeDonorEdgeCoherence.A` is not installed by the
finite donor-graph cancellation package.

The finite donor graph cancels signed source mass.  A mode-weighted donor graph
cancels only when the mode weight is transported coherently along donor edges,
or when the mode-weight difference is charged by a legal modulation/action
ledger.

## 1. Target under test

For finite donor edges `e=(D,R)`, write `q_e` for the signed source amount
transferred from donor packet `D` to receiver packet `R`.  The mode-edge
coherence estimate needed by the mode-residue identity is

```math
\sum_{e=(D,R)\in\mathcal G_m^{fin}}
|q_e|\,|\psi_i(R)-\psi_i(D)|
\le
\operatorname{Legal}_{m,i}^{edge}+o_m(1).
\tag{MDEC.1}
```

This is stronger than scalar donor depletion.  Scalar depletion only controls
the paired signed mass.

## 2. Exact failure of scalar cancellation

Take one donor pair:

```math
q_R=A,
\qquad
q_D=-A,
\qquad
A>0.
\tag{MDEC.2}
```

The scalar ledger cancels:

```math
q_R+q_D=0.
\tag{MDEC.3}
```

Choose mode weights

```math
\psi_i(R)=1,
\qquad
\psi_i(D)=-1.
\tag{MDEC.4}
```

Then the mode-weighted ledger gives

```math
q_R\psi_i(R)+q_D\psi_i(D)
=
2A.
\tag{MDEC.5}
```

Thus retained signed partners and finite donor balance do not by themselves
pay a mode-weighted source identity.

## 3. Conditional routes that would pay the edge

There are two exact ways to pay `(MDEC.1)`.

The first is co-transported mode selection:

```math
\psi_i(R)=\psi_i(D)
\quad\text{on every retained finite donor edge,}
\tag{MDEC.6}
```

up to legal spill.  Then `(MDEC.1)` is immediate.

The second is Lipschitz mode geometry plus edge action.  Suppose

```math
|\psi_i(R)-\psi_i(D)|
\le
L_i\,d_{mod}(R,D)
\tag{MDEC.7}
```

and suppose the donor graph pays the weighted modulation travel:

```math
\sum_{e=(D,R)\in\mathcal G_m^{fin}}
|q_e|\,d_{mod}(R,D)
\le
\operatorname{Legal}_{m,i}^{travel}+o_m(1).
\tag{MDEC.8}
```

Then

```math
\sum_e |q_e|\,|\psi_i(R)-\psi_i(D)|
\le
L_i\operatorname{Legal}_{m,i}^{travel}+o_m(1).
\tag{MDEC.9}
```

So the conditional bridge is

```math
\boxed{
\text{ModeDonorEdgeCoherence.A}
\Leftarrow
\text{CoTransportedModeShadow.A}
\quad\text{or}\quad
\bigl(
\text{ModeLipschitzAtlas.A}
+
\text{DonorEdgeModulationTravelCharge.A}
\bigr).
}
\tag{MDEC.10}
```

## 4. Current input gap

`ModeTestCompatibility.A` makes the mode test admissible on the selected
shadow.  It does not prove that the mode value is constant along donor edges.

`NoNeutralModulationLoop.A` and the gauge-action branch identify a possible
currency for motion through mode space, but the current installed inputs do not
provide the unweighted edge-travel charge `(MDEC.8)` on the finite donor graph.
The known physical budgets are terminally discounted in log time, while this
edge coherence needs an unweighted source-weighted travel budget on the same
selected donor edges.

`TerminalSignedSaturation.A` pays scalar signed partners only after its own
wall is crossed.  It does not add the factor `|\psi_i(R)-\psi_i(D)|`.

## 5. Relation to the main Door 2 wall

The edge-coherence problem is finite-chain and mode-specific.  It is distinct
from the infinite terminal Zeno donor chain, but it uses the same missing
currencies:

```math
\text{unweighted modulation action},
\qquad
\text{strict no-waste},
\qquad
\text{same-shadow source-square/action reserve}.
\tag{MDEC.11}
```

These are exactly the currencies already exposed by `NoNeutralModulationLoop.A`
and the terminal heat-scale pulse branch.

## Verdict

`ModeDonorEdgeCoherence.A` does not close from scalar donor depletion.  A donor
pair can cancel in the scalar source ledger while leaving a nonzero mode-weighted
residue.

The theorem closes only after the mode shadow is co-transported along retained
donor edges, or after a source-weighted modulation-travel/action charge is
proved on those edges.  Current inputs do not install either one.
