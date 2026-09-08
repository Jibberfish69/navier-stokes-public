---
theorem_id: forward-gold-no-free-high-weight-tube-escape-charge-20260627
status: conditional-escape-charge-closed-under-stopped-first-exit-derivative-representation
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - NoFreeHighWeightTubeEscapeCharge.A
  - ActiveWeightEscapeCarleson.A
  - ActiveWeightDefectTightnessFromOriginalHistory.A
  - AnnounceableActiveWeightResetCarleson.A
  - StoppedRoutedCurrentSquarePacking.A
---

# No-free high-weight tube escape charge

## 1. Target

The active-weight compactness note left one escape alternative: a normalized
fresh quotient could concentrate in shrinking high-weight reset tubes.  This
note proves that this escape is not free once the reset is represented by a
parent-announced first-exit derivative interval and the witness intervals have
bounded overlap.

## 2. Inputs already isolated

For each strict reset edge \(e\), the first-exit selector construction gives an
announced scale interval \(I_e\) and a witness tube \(W_e=I_e\times T_e\).  The
fresh quotient has the derivative representation

```math
D_e^{fresh}(t)
=|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma+Err_e^{legal}(t),
\tag{1}
```

where

```math
G_e=\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma.
\tag{2}
```

The harmonic active weight is

```math
H_e(t)=H_{I_e}(t)=\frac{|I_e|^2}{\int_{I_e} w(\sigma,t)^{-1}\,d\sigma}.
\tag{3}
```

The witness family is stopped sparse/Carleson:

```math
\sum_{e\subset P}1_{W_e}(\sigma,t,x)\le C_N+R_{legal}(P).
\tag{4}
```

## 3. Single-edge active-weight charge

By weighted Cauchy--Schwarz,

```math
\left\|\int_{I_e}G_e(\sigma,t)d\sigma\right\|^2
\le
\left(\int_{I_e}w^{-1}\right)
\left(\int_{I_e}w\|G_e\|^2\right).
\tag{5}
```

Using `(1)` and `(3)`,

```math
H_e(t)\|D_e^{fresh}(t)\|^2
\le
C\int_{I_e}w(\sigma,t)\|G_e(\sigma,t)\|^2d\sigma
+CR_e^{legal}(t).
\tag{6}
```

Thus a large active weight is exactly the reciprocal Cauchy weight; it cannot
create mass unless the original derivative/current term contributes on the
witness interval.

## 4. Escape-family summation

Let \(\mathcal E_{esc}\subseteq\mathcal E(P)\) be any family of high-weight
escape edges.  Sum `(6)` over \(e\in\mathcal E_{esc}\) and integrate in time:

```math
\sum_{e\in\mathcal E_{esc}}
\int H_e(t)\|D_e^{fresh}(t)\|^2dt
\le
C\sum_{e\in\mathcal E_{esc}}
\int_{W_e} w\|G\|^2
+CR_{legal}(P).
\tag{7}
```

By bounded overlap `(4)`,

```math
\sum_{e\in\mathcal E_{esc}}
\int_{W_e}w\|G\|^2
\le
C_N\int_{\operatorname{Hist}(P)}w\|G\|^2+CR_{legal}(P).
\tag{8}
```

Combining `(7)` and `(8)`,

```math
\boxed{
\sum_{e\in\mathcal E_{esc}}
\int H_e\|D_e^{fresh}\|^2
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}(P).
}
\tag{9}
```

This is `NoFreeHighWeightTubeEscapeCharge.A`.

## 5. Compactness consequence

For a normalized bad sequence with

```math
\sum_e\int H_e\|D_e^{fresh}\|^2=1
\tag{10}
```

and original-history charge tending to zero, `(9)` implies that the defect mass
cannot concentrate in high-weight escape tubes.  Therefore the tight/escape
dichotomy from the previous note leaves only the tight same-carrier alternative.
That alternative yields a nonzero zero-cost limit, and the zero-cost rigidity
note forces it to vanish.  Contradiction.

Thus, under the stopped first-exit derivative representation and bounded-overlap
witness construction, the active-weight reset compactness gate closes.

## 6. Failure mode

The theorem fails only if one of the structural inputs is absent:

1. the reset quotient is not represented as a parent-announced derivative
   average;
2. the witness intervals are not maximal first-exit slabs and can overlap
   infinitely;
3. the child channel is selected after reading the future tail rather than by a
   fixed stopped selector;
4. legal/covector/exchange mismatch is not charged.

Those cases are not allowed inside the stopped first-exit reset branch. They are
reset/stop/legal defects, not free high-weight escape.

## 7. Result

`NoFreeHighWeightTubeEscapeCharge.A / ActiveWeightEscapeCarleson.A` is proved
conditionally from the already isolated structural reset machinery:

```math
\boxed{
\text{parent-announced derivative representation}
+
\text{maximal first-exit witness overlap}
\Rightarrow
\text{no free high-weight tube escape}.}
```

Together with active-weight tight/escape dichotomy and zero-cost rigidity, this
closes the strict-reset side of the stopped routed-current square-packing gate,
provided the stopped selector is genuinely finite, parent-known, and first-exit
based.