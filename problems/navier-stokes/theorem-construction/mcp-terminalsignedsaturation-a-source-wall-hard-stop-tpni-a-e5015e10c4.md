# TerminalWeightCoherence.A + ActiveStrainAlignmentCost.A Signed-Saturation Attempt

## Status

Claimed status: failed direct proof; hard source-wall primitive isolated.

The target is a signed saturation theorem sufficient for the weighted lifted skew gate:

```math
TerminalWeightCoherence.A+ActiveStrainAlignmentCost.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A.
```

Equivalently, prove that each selected positive terminal source edge has a negative signed partner inside the same usable terminal ledger, or a legal charge for every partner that leaves the ledger.

## Terminal weight coherence test

For a paired signed source edge `e:P'\to P`, the weighted defect is

```math
\Delta_e^{weight}=(W_P-W_{P'})J_e.
```

Bare dyadic exchange supplies

```math
J(P'\to P)+J(P\to P')=0.
```

The terminal one-sided weights are selected by receiver badness and source-wall tail geometry. The pair endpoints can lie in different receiver/source roles, different terminal depths, or different selected windows. Hence the terminal weights can have order-size mismatch:

```math
c_W(W_P+W_{P'})\le |W_P-W_{P'}|\le C_W(W_P+W_{P'})
```

on legal lifted edges. Same-fluid coherence preserves the edge identity; it does not flatten the terminal weights. Therefore terminal weight coherence requires a new theorem:

```math
TerminalWeightRigidity.A:
\quad
|W_P-W_{P'}|J_e
\text{ is legal or signed-cancelling on every selected terminal ledger.}
```

The direct proof from bare skewness fails because skewness applies before terminal weighting and selection.

## Active strain-alignment cost test

The lifted commutator contains the positive aligned strain carrier

```math
A_{j,k}(t)
:=2^{2j}\sum_{P\in\mathcal P_j}
(\langle S_k(x_P,t)e_P,e_P\rangle)_+|c_P(t)|^2.
```

Trace-free strain still has expanding directions. If a high packet is polarized along an expanding eigenvector, then

```math
(\langle S_ke_P,e_P\rangle)_+>0.
```

Incompressibility gives trace cancellation across all directions. It does not force cancellation on the selected terminal packet directions. Pressure, projection, cutoff, and packet transport estimate errors and sizes; they do not produce sign depletion for the positive part.

Thus the active alignment term needs a rigidity or donor-depletion theorem:

```math
ActiveStrainAlignmentCost.A:
\quad
\int_I\sum_{j>N}\sum_{k<j-M}W_{j,k}^{\sigma}A_{j,k}(t)dt
\le
\theta\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

Current inputs supply only conditional reductions through `TPNI.A`, anisotropic backward uniqueness, or a terminal no-incoming theorem.

## Signed saturation theorem attempt

The desired terminal signed saturation estimate is

```math
\int_{\mathcal F_N}(\mathfrak S_{N,loc}^{active})_+
\le
\int_{\mathcal F_N}(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
```

Bare skew current proves this identity on a closed unweighted interaction graph. The selected terminal ledger is open after one-sided weights, lifted localization, and terminal selection. The negative partner of a selected positive edge can lie outside the selected receiver family, outside the time window, in a donor sink, or in an off-family/collar packet with order-size weighted residue.

Thus the direct signed saturation proof reaches three equivalent hard atoms:

```math
TerminalWeightRigidity.A,
\qquad
ActiveStrainAlignmentCost.A,
\qquad
ParabolicNoFreeSink.A.
```

Any one fully successful signed theorem must recover all three effects: flatten or charge terminal weights, deplete positive active strain alignment, and charge donor sinks feeding terminal receivers.

## Final reduction

The strongest valid implication is

```math
TerminalWeightRigidity.A
+ActiveStrainAlignmentCost.A
+ParabolicNoFreeSink.A
\Longrightarrow
TerminalSignedSaturation.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A.
```

The current route also has the equivalent direct branch

```math
TerminalSignedSaturation.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

through signed source-wall closure.

## Outcome

The signed-saturation attempt reaches the same irreducible source-wall primitive:

```math
SignedPositiveBalance.A.
```

In direct Carleson language this is `ScaleCriticalTreeCarleson.A`. In Zeno language it is `ZenoSquareCancellationClassProduction.A`. In signed-current language it is `TerminalSignedSaturation.A`. The current installed inputs provide no lower theorem that proves this primitive.

This is a hard stop for the present frontier loop unless a new independent theorem is added: terminal weight rigidity, active strain-alignment depletion, parabolic no-free-sink, or an equivalent signed positive-balance theorem.
