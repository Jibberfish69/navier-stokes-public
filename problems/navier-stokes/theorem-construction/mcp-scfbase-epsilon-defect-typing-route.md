# SCFBase Epsilon-Defect Typing Route

## Status

Conditional route note.

## Input

The threshold compactness result supplies an epsilon-level terminal SCF defect from an epsilon-threshold concentration sequence:

```math
\text{epsilon-threshold SCF concentration sequence}
\Longrightarrow
\text{epsilon-level terminal SCF defect}.
```

Pressure concentration is compatible with the same SCF defect carrier:

```math
P^{loc}\text{ defect}\leadsto SCF\text{ defect}.
```

## Jump route

The endpoint grammar note gives

```math
\text{epsilon-level active SCF terminal defect}
\Longrightarrow
Jump_{avg}.
```

This uses the bad material set row

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Tower route

The tower upgrade note gives

```math
\text{epsilon-level active SCF terminal defect}
+
\text{tower/readout compatibility}
\Longrightarrow
tower\text{-}blown.
```

The proof is by contradiction: a finite tower/readout alternative makes the normalized SCF packet decay on sufficiently small same-fluid cylinders, contradicting the epsilon-level defect.

## Combined route

Thus the concentration-compactness output feeds endpoint faces as follows:

```math
\text{epsilon-threshold SCF concentration sequence}
\Longrightarrow
Jump_{avg},
```

and, with tower/readout compatibility,

```math
\text{epsilon-threshold SCF concentration sequence}
\Longrightarrow
tower\text{-}blown.
```

## Remaining target

To close `GoodScale.TTU`, one must exclude the produced endpoint face upstream:

```math
\neg Jump_{avg}
```

or

```math
\neg tower\text{-}blown.
```

Equivalently, supply

```math
JumpExclusion.Upstream
```

or

```math
TowerBound.Upstream.
```

## Boundary

This note records endpoint typing. It does not prove the upstream endpoint-face exclusions.