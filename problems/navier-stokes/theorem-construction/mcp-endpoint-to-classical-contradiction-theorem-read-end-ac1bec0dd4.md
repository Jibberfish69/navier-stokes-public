# Endpoint-To-Classical Contradiction Theorem

Status: conditional contradiction theorem.

## Statement

Assume `ECQ.A`, endpoint exhaustion, and the pointwise endpoint package
`End_NS`. Then

```math
T_*<\infty
\Longrightarrow
\text{finite class exit}
\Longrightarrow
\text{endpoint face}
\Longrightarrow
\bot.
```

Therefore

```math
T_* = \infty.
```

## Proof

Assume for contradiction that

```math
T_*<\infty.
```

By `ECQ.A`, finite maximal time gives a finite-time class exit on a retained same-fluid approach window.

At the first finite class exit, the endpoint exhaustion row gives one of the old pointwise endpoint faces:

```math
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

The pointwise endpoint package `End_NS` removes every face:

```math
\neg Dead,
\qquad
\neg packing\text{-}detached,
\qquad
\neg tower\text{-}blown,
\qquad
\neg Jump.
```

This contradicts the endpoint exhaustion row. Hence finite class exit is impossible.

Again by `ECQ.A`, absence of finite class exit implies

```math
T_* = \infty.
```

## Boundary

The endpoint package used here is old pointwise `End_NS`, recovered through `READ.END` from the averaged route.
