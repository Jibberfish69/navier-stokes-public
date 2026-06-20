---
theorem_id: forward-gold-volterra-memory-nowaste-direct-test-20260620
status: direct-volterra-memory-test-complete-not-proved
logical_landing_node: strict_rescaled_nowaste_lyapunov
edge_effect: "Tests whether a nonlocal-in-time Volterra or history functional can supply the strict no-waste drop after quadratic, cubic, and energy-bounded local functionals failed. Causal memory stores first-created terminal action as an increase, not a drop. Future-tail memory gives no drop on recurrent action unless it already encodes the unweighted action tail. Thus Volterra memory is not an independent supplier for UnweightedTerminalCriticalActionReserve.A."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-post-critical-currency-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compact-recurrent-lasalle-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-participation-discount-barrier-direct-test-20260619.md
downstream_consequence: "StrictRescaledNoWasteLyapunov.A still requires a genuinely new lower-bounded unweighted action object, source-square/critical-strain/CKN reserve, projected flux coercivity with terminal tightness, or compact recurrent-profile rigidity. Volterra memory does not remove the heat-scale discount."
---

# MPP Forward-Gold Volterra Memory No-Waste Direct Test

Date: 2026-06-20

## Status

Direct Volterra-memory test complete.  A nonlocal-in-time memory functional does
not produce the strict no-waste drop from the current Navier--Stokes inputs.

The reason is exact.  A causal history functional stores a first-created pulse
as positive memory, so its derivative has the wrong sign.  A future-tail
functional can be made to see the current action, but then either it gives no
drop on a recurrent heat-scale orbit or its finiteness already assumes the
unweighted action tail.

## 1. Target

The strict no-waste target is a lower-bounded functional \(L\) with

```math
-{d\over ds}L(s)
\ge
cA(s)-R(s),
\qquad
\inf_s L(s)>-\infty,
\qquad
\int_{s_0}^{\infty}R(s)\,ds<\infty.
\tag{VMN.1}
```

Here \(A(s)\ge0\) is the unweighted same-carrier critical action on the selected
terminal heat-scale packet, such as normalized CKN charge, selected
critical-strain action, or source-square density.

The question is whether \(L\) can be built as a Volterra memory of \(A\), rather
than as a new coercive Navier--Stokes object.

## 2. Causal memory has the wrong sign at first birth

Let \(K\in W^{1,1}(0,\infty)\) with \(K\ge0\), and define the causal memory

```math
L_K(s)
=
\int_0^\infty K(\tau)A(s-\tau)\,d\tau.
\tag{VMN.2}
```

Take a first-created heat-scale pulse

```math
A_h(s)=A_0{\bf 1}_{[0,h]}(s),
\qquad
A_h(s)=0\quad\text{for }s<0.
\tag{VMN.3}
```

For \(0<s<h\),

```math
L_K(s)
=
A_0\int_0^s K(\tau)\,d\tau,
\qquad
{d\over ds}L_K(s)
=
A_0K(s)\ge0.
\tag{VMN.4}
```

Therefore

```math
-{d\over ds}L_K(s)
=
-A_0K(s)\le0
\tag{VMN.5}
```

on the pulse birth interval.  This cannot imply `(VMN.1)` with \(c>0\).

This is exactly the first-created reserve obstruction: history memory sees the
new action only after it has been created, and the act of creation increases the
stored memory.

## 3. Negative causal kernels lose the lower bound

One can reverse the sign by allowing a negative kernel.  That creates the same
lower-bound failure as the cubic corrector.

Assume \(K\in L^1(0,\infty)\) and that \(K<0\) on a set of positive measure.
Choose a nonnegative smooth pulse \(\phi\) supported in an interval where
the negative part is detected.  Place \(N\) copies far enough apart that the
cross-contributions are bounded by \(1/N\) in total \(L^1\)-kernel error.
Then for

```math
A_N(s)=\sum_{n=1}^{N}\phi(s-s_n)
\tag{VMN.6}
```

there are times \(\sigma_n\) for which each selected pulse contributes a fixed
negative amount to \(L_K(\sigma_n)\), while the other pulse contributions are
bounded by the chosen \(1/N\) spacing error.  Hence

```math
\inf_s L_K(s)\le -c_1N+c_2
\tag{VMN.7}
```

for constants \(c_1>0\), \(c_2<\infty\).  Letting \(N\to\infty\) destroys the
uniform lower bound required in `(VMN.1)`.

Thus a causal memory kernel can have the sign needed for a drop only by giving
up lower boundedness, unless another theorem already bounds the number or total
size of the pulses.  That other theorem is the unweighted reserve.

## 4. Future-tail memory does not give a new theorem

A future-tail memory has the form

```math
F_K(s)
=
\int_0^\infty K(\tau)A(s+\tau)\,d\tau.
\tag{VMN.8}
```

For the recurrent normalized profile

```math
A(s)\equiv A_0>0,
\tag{VMN.9}
```

and any \(K\in L^1(0,\infty)\),

```math
F_K(s)=A_0\int_0^\infty K(\tau)\,d\tau
\tag{VMN.10}
```

is constant.  Hence

```math
-{d\over ds}F_K(s)=0,
\tag{VMN.11}
```

while \(A(s)=A_0\).  Finite future memory therefore does not force a strict
drop on a compact recurrent heat-scale orbit.

If one instead asks for a future-tail functional with

```math
-{d\over ds}F(s)\ge cA(s)-R(s),
\qquad
\inf_sF(s)>-\infty,
\qquad
\int R<\infty,
\tag{VMN.12}
```

then integrating from \(s_0\) to \(S\) gives

```math
c\int_{s_0}^{S}A(s)\,ds
\le
F(s_0)-F(S)+\int_{s_0}^{S}R(s)\,ds.
\tag{VMN.13}
```

Passing \(S\to\infty\) proves

```math
\int_{s_0}^{\infty}A(s)\,ds<\infty
\tag{VMN.14}
```

provided \(F\) is bounded below and \(R\) is integrable.  But `(VMN.14)` is
precisely the unweighted terminal action reserve.

So future-tail memory is either too weak on recurrence, or it assumes the same
finite unweighted action conclusion the proof needs.

## 5. Navier--Stokes consequence

The physical local energy identity gives a discounted log-time budget.  The
Volterra test shows that adding a history layer does not remove the discount.

Causal memory cannot pay first-created heat-scale action.  Sign-changing causal
memory loses the lower bound.  Future-tail memory is a restatement of the
unweighted reserve when it is strong enough to give `(VMN.1)`.

## Verdict

`VolterraMemoryNoWaste.A` is not an independent supplier from current inputs.

The branch returns to the same non-alias theorem:

```math
\boxed{
\textbf{UnweightedTerminalCriticalActionReserve.A}
}
\tag{VMN.15}
```

or to a genuinely new lower-bounded Navier--Stokes functional whose drop is not
merely a causal or future Volterra transform of the missing action itself.
