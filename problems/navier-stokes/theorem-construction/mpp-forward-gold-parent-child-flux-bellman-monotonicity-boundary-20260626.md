# Parent-child flux Bellman monotonicity boundary

Status: direct Bellman inequality blocked; monotone inheritance theorem isolated.

## 1. Target inequality

For a laminar material node `Q` with children `Q'`, the desired Bellman form is

```math
\sum_{Q'\in ch(Q)} A(Q')
\le
C\left(B(Q)-\sum_{Q'\in ch(Q)}B(Q')\right)+R_{legal}(Q).
```

Here `A(Q')` is full positive high-ratio PLS action inside a child and `B(Q)` is a nonnegative gauge-reduced annular pressure-Hodge-stress boundary reserve on the parent.

## 2. Direct test

The transported local energy identity gives a signed boundary transaction:

```math
{d\over dt}E_Q(t)+D_Q(t)=F_Q(t).
```

After gauge reduction, `F_Q` is same-packet boundary stress work. This gives attachment of child service to the parent material packet.

The Bellman inequality needs more than attachment. It needs a one-way inheritance law:

```math
[\text{positive service born in child}]
\le
[\text{loss of positive parent boundary reserve}]+R_{legal}.
```

The signed identity supplies

```math
A(Q')\le \operatorname{Var}(F_Q)+R_{legal},
```

rather than

```math
A(Q')\le B(Q)-B(Q')+R_{legal}.
```

Positive flux can change sign or be regenerated inside the child by the same pressure-Hodge interface. Thus a naive choice `B(Q)=[F_Q]_+` lacks monotonicity under passage to children.

## 3. Exact obstruction

The missing property is:

```math
B(Q)\ge \sum_{Q'\in ch(Q)}B(Q')+c\sum_{Q'\in ch(Q)}A(Q')-R_{legal}(Q).
```

This is a monotone positive-flux inheritance theorem. It says child high-ratio service consumes parent boundary reserve rather than creating a fresh positive reserve at the child level.

The installed ledgers prove same-packet generation and laminar attachment. They do not prove monotone inheritance of rectified positive boundary flux.

## 4. Next hinge

```math
\boxed{\text{LaminarPositiveFluxInheritance.A}}
```

Statement:

For one original smooth material history and one laminar ancestry node `Q`, construct a nonnegative gauge-reduced parent reserve `B(Q)` such that every retained high-ratio child family satisfies

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B(Q')
\le B(Q)+R_{legal}(Q).
```

This is the precise monotone Bellman step needed before root finiteness matters.

## 5. Result

The parent-child Bellman route remains the best structural target, but it lives or dies on `LaminarPositiveFluxInheritance.A`. The next proof unit should attack that one-way inheritance law directly.