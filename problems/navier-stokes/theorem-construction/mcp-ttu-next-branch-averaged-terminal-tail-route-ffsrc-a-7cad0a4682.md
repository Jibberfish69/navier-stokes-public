# TTU Next Branch: Averaged Terminal-Tail Route

Status: conditional route redirection.

## Result of direct TTU test

The pointwise production target

```math
TTU:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained Pack/Part/Field/tower data}
```

has a prior failed-discharge note on disk:

```text
mcp-ttu-terminal-tail-production-attempt-cfi-a-79186a90de.md
```

That note establishes compact classical interval admission and isolates the terminal problem. The direct terminal pointwise route asks for continuation-grade ledgers:

```math
RSCB.NKF,
\qquad
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)),
\qquad
\mathfrak A_{N,Q}+\mathfrak P_{N,Q}+\mathfrak C_{N,r,Q}\in L^\infty([t_0,T_*)).
```

The pack gauge alone follows from an estimate of the form

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty,
```

or a pack-native estimate of the same continuation strength. Thus direct pointwise `TTU` is equivalent to the hard terminal regularity production step.

## Viable replacement branch

The averaged surface supplies the finite-energy-native replacement route:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The bad material set is typed as an averaged jump face:

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Hence global coverage is expressed by

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{every same-fluid approach tail is covered by the averaged route or enters }Jump_{avg}.
```

The averaged endpoint route is

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The old pointwise endpoint is recovered only through the readout layer:

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

`READ.COVER` is downstream of `End_NS_avg`, so it avoids the prior endpoint-input loop.

## New solve order

The TTU list should be rewritten as:

1. Prove or audit `AVG.COVER.A` on terminal approach tails.
2. Prove `AVG.MAIN.A` from `SCF_base + ATD_m^epsilon + SCFBaseLocalModulus_N + CAVG.J + AVG.RCV.A + AVG.END.A + FFSRC.A`.
3. Invoke `READ.COVER.noncirc` downstream of `End_NS_avg`.
4. Invoke `Field.Read` and `DTC.Read` on the fixed finite same-fluid cover.
5. Apply `READ.END` to recover old `End_NS`.
6. Feed `End_NS` into the already-written terminal class-membership chain.
7. Apply `PCTP.cond` for continuation.

## Current first live item

The next exact theorem target is

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{same-fluid terminal approach tails are either averaged-good covered or }Jump_{avg}.
```

This is the first non-pointwise terminal production step that avoids asking `OriginalSmoothData` to produce pointwise `RSCB.NKF` directly.

## Boundary

The branch remains typed to averaged objects until `READ.COVER`, `Field.Read`, `DTC.Read`, and `READ.END` are explicitly invoked.

The same-tail `SCFBaseLocalModulus_N` input is upstream of that readout layer.  `READ.COVER` cannot be used to supply it, because `READ.COVER` appears only after `End_NS_avg`.

The proof matrix currently records PCTP.hard as open. This averaged substitution requires a matrix/review update after `AVG.COVER.A`, `AVG.END.A`, and `READ.END` are audited in dependency order.
