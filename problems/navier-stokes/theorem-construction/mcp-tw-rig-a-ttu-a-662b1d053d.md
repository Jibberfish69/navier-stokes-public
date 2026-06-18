# Tangent-weight rigidity attack for `OriginalSmoothData => SOURCE.NO-PULSE.A`

## Target

The active route is

```math
OriginalSmoothData
\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow AWG.A
\Longrightarrow (Jump_{avg}\Rightarrow \bot)
\Longrightarrow PCTP.hard / TTU.A.
```

The current theorem-facing attack is the signed terminal source route. The goal is to eliminate the singular native positive active source component by proving that terminal heat-scale blowups flatten the lifted weights enough to recover the unweighted dyadic exchange antisymmetry in the tangent limit.

## Candidate theorem: `TW.RIG.A`

Let `\mathcal F_N` be a bounded-overlap terminal same-fluid active family with scales `r_N\to0`, and let `Q_N` be the selected heat-scale windows. Let

```math
G_N^{lift,\sigma}
=
\sum_{e\in\mathcal E_N} W_{e,N}^{\sigma} R_{e,N}^{lift}
+
Err_N
```

be the signed weighted lifted source defect on `Q_N`, where `e\mapsto e^*` is
the exchange-pair involution.  The exact unweighted exchange is recorded as

```math
R_{e,N}^{lift}+R_{e^*,N}^{lift}
=C_{e,N}^{comm}+C_{e,N}^{cut}
```

in the rescaled tangent coordinates.  The commutator and cutoff pieces are legal
only when their sum is included in `Err_N` and satisfies the residual absorption
bound in assumption 3.

Assume:

1. terminal weight flattening on exchange pairs:

```math
\omega_N
:=
\sup_{e\in\mathcal E_N}
\|W_{e,N}^{\sigma}-W_{e^*,N}^{\sigma}\|_{L^{\infty}(Q_N)}
\to0;
```

2. exchange tightness:

```math
\sup_N \sum_{e\in\mathcal E_N}\int_{Q_N}|R_{e,N}^{lift}|\,dxdt <\infty;
```

3. legal residual absorption:

```math
\int_{Q_N}|Err_N|\,dxdt
\le o_N(1)+Loss_{legal}(\mathcal F_N);
```

4. source-defect compatibility: the native positive source survivor is represented by the positive Jordan component of the same signed lifted defect after all installed route ledgers are removed.

Then the singular tangent source residue vanishes:

```math
\mu_*^{sing}=0.
```

Consequently,

```math
NativeSourceAC.A
\Longrightarrow LocalPositiveSourceCarleson.A
\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```

## Proof skeleton

Pair the exchange terms before taking positive parts:

```math
\sum_{e}W_{e,N}^{\sigma}R_{e,N}^{lift}
=
\frac12\sum_{e}
\left(W_{e,N}^{\sigma}-W_{e^*,N}^{\sigma}\right)R_{e,N}^{lift}
+
\frac12\sum_e W_{e^*,N}^{\sigma}
\left(R_{e,N}^{lift}+R_{e^*,N}^{lift}\right).
```

The second sum is part of `Err_N` and is controlled only through assumption 3.
The first sum obeys

```math
\left|\int_{Q_N}\frac12\sum_e
\left(W_{e,N}^{\sigma}-W_{e^*,N}^{\sigma}\right)R_{e,N}^{lift}\,dxdt\right|
\le
\frac12\omega_N
\sum_e\int_{Q_N}|R_{e,N}^{lift}|\,dxdt.
```

Combining this with assumption 3 gives

```math
\left|\int_{Q_N}G_N^{lift,\sigma}\,dxdt\right|
\le
\frac12\omega_N
\sum_e\int_{Q_N}|R_{e,N}^{lift}|\,dxdt
+o_N(1)+Loss_{legal}(\mathcal F_N).
```

By terminal weight flattening and exchange tightness, the first term tends to
zero. After the installed legal ledger is removed through the displayed
`Loss_{legal}` bound, the signed lifted source defect has zero tangent mass.

The source-defect compatibility hypothesis transfers this signed vanishing to the native positive source survivor. The singular component `\mu_*^{sing}` is therefore zero.

## What this proves now

This proves a conditional local bridge:

```math
TW.RIG.A
+
\text{source-defect compatibility}
\Longrightarrow
\mu_*^{sing}=0
\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```

It targets the exact survivor identified in the repo: the singular native positive active source measure on terminal same-fluid active windows.

## Remaining proof obligations

1. Prove terminal weight flattening for the actual lifted weights `W_{e,N}^{\sigma}` produced by the active-window schedule.
2. Prove exchange tightness for the paired lifted exchange densities on the normalized terminal family.
3. Route projector, cutoff, and localization commutators into `Loss_{legal}`.
4. Prove source-defect compatibility before positive-part extraction.
5. Identify the exact exchange-pair involution for the repo’s current lifted source normal form.

## Claimed status

Conditional theorem-facing reduction. This records the tangent-weight rigidity route as the first precise attack on `OriginalSmoothData => SOURCE.NO-PULSE.A`; it preserves the remaining proof obligations explicitly.## Recheck addendum: status downgrade and ASAC separation

A same-session recheck against `mpp-tangent-weight-rigidity-for-signed-lifted-exchange-note-20260504.md` and `mpp-active-strain-alignment-cost-target-note-20260504.md` sharpens the status of this note.

`TW.RIG.A` should be treated as a geometry / operator-perturbation gate. Its role is to replace the transported localized lifted defect by the frozen Euclidean lifted defect up to absorbable error:

```math
\left|\int(\mathfrak G_{\Phi}^{lift,\sigma}-\mathfrak G_{Euc}^{lift,\sigma})\right|
\le
C\varepsilon\int\sum_{q>N}D_q+o_N(1).
```

This does not by itself discharge the Euclidean signed source term. The remaining PDE gate is

```math
ASAC.A:
\quad
\int_I
\sum_{j>N}\sum_{k<j-M}W_{j,k}^{\sigma}A_{j,k}(t)\,dt
\le
\theta\int_I\sum_{q>N}D_q(t)\,dt+o_N(1),
```

where `A_{j,k}` is the positive strain-alignment tile contribution.

The corrected route is therefore:

```math
TWR.A
+ operator\ perturbation/error\ absorption
+ ASAC.A
+ source\ localization/tether
\Longrightarrow
SignedLocalSource.A
\Longrightarrow SOURCE.NO\text{-}PULSE.A.
```

The earlier phrasing that tangent weight flattening alone recovers antisymmetry and kills the source survivor is too strong. The valid conclusion from tangent-weight rigidity alone is transported-to-Euclidean reduction. The Euclidean frozen problem still contains real positive strain alignment, so the next proof-facing target is `ASAC.A`, more specifically the `TPNI.A` / no-incoming terminal pulse rigidity route or an independent drain/charge theorem for the same positive alignment mass.

Updated status: geometry-only conditional reduction. No discharge claim for `SOURCE.NO-PULSE.A`.
