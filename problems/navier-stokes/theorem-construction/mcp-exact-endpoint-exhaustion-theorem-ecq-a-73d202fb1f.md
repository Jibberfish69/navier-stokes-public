# Exact Endpoint Exhaustion Theorem

Status: conditional endpoint taxonomy theorem.

## Statement

If a finite first pointwise class exit occurs on a retained same-fluid terminal
branch, then one of the endpoint faces occurs:

```math
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Equivalently,

```math
T_*<\infty
\Longrightarrow
\text{finite class exit}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump,
```

inside the pointwise `Pack/Part/Field` vocabulary.

## Witness vocabulary

The pointwise class witness is

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Failure of `CM` means at least one primitive law fails:

```math
\neg Pack_Q
\quad\vee\quad
\neg Part_{N,Q}
\quad\vee\quad
\neg Field_{N,r,Q},
```

or a finite tower amplitude required by the participation/field readout blows up.

## Endpoint typing

The primitive faces are:

```math
\neg Part_{N,Q}\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse,
```

The response-margin subface is absent only when the terminal Part predicates are
encoded as closed non-strict predicates or the strict response functionals retain
positive margins `\mathcal R_\ell(t)\ge\gamma_\ell>0` on the terminal tail.

```math
\neg Pack_Q\Longrightarrow packing\text{-}detached,
```

```math
\mathfrak A_{N,Q}\to\infty\Longrightarrow tower\text{-}blown,
```

```math
\neg Field_{N,r,Q}\Longrightarrow Jump.
```

Mixed failures are reduced by `END.Cross` to this same finite list.

## Conclusion

Thus endpoint exhaustion is exactly

```math
END.Exh:
\neg CM_{N,r,Q}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Combined with `ECQ.A`, any finite maximal time produces one of these faces.

## Boundary

This theorem only classifies first exit. Endpoint exclusion is the separate package `End_NS`.
