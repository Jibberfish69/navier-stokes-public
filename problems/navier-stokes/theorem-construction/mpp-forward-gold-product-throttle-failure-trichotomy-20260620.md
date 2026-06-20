---
theorem_id: forward-gold-product-throttle-failure-trichotomy-20260620
status: direct-trichotomy-installed-forward-gold-not-proved
logical_landing_node: selected_participation_product_throttle_failure_trichotomy
edge_effect: "Separates failure of the product throttle into three exact cases: terminal atom, nonzero linear residence, and square-only height blowup. This prevents endpoint UI from being mistaken for square payment and isolates the pure heat-scale square obstruction after the nonzero linear branch is typed as source-pulse residue or participation parent/gain."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-product-throttle-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-square-budget-parent-drain-production-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-endpoint-ui-minimal-split-active-height-sweep-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-three-clause-pass-or-cm-exit-assembly-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-linear-participation-parent-or-charge-direct-test-20260620.md
downstream_consequence: "The forward-gold square wall is localized to the square-only branch only after terminal atoms and nonzero linear participation residence are separately paid. Source-drain pays the actual source-pulse subbranch; the non-source-residue participation subbranch still needs same-carrier linear parent/gain accounting. The remaining square production theorem must either bound the selected active height, prove same-carrier source-square/product throttle directly, or route the admitted retained height blowup through CM Pack/Part/Field."
---

# MPP Forward-Gold Product-Throttle Failure Trichotomy

Date: 2026-06-20

## Status

Direct trichotomy installed.

This note does not prove the product throttle.  It separates exactly what
failure of that throttle means after the endpoint and source-drain branches are
kept distinct.

The output is:

```math
\boxed{
\text{product-throttle failure}
\Rightarrow
\text{terminal atom}
\quad\text{or}\quad
\text{nonzero linear residence}
\quad\text{or}\quad
\text{square-only height blowup}.
}
\tag{PTT.1}
```

Only the third branch is the pure heat-scale square obstruction.

## 1. Normalized carrier

Let \(a_m\ge0\) be the normalized selected positive participation marginal on a
fixed heat-time interval \([-1,0]\).  In the selected shell notation of the
product-throttle test,

```math
a_m(s)=\lambda_m^{-1/2}
\Pi_m^{part,+}(t_m+\lambda_m^{-2}s).
\tag{PTT.2}
```

Set

```math
M_m(J):=\int_J a_m(s)\,ds,
\qquad
H_m(J):=\|a_m\|_{L^\infty(J)},
\qquad
Q_m(J):=\int_J a_m(s)^2\,ds .
\tag{PTT.3}
```

The product throttle on \(J\) is

```math
H_m(J)M_m(J)\to0.
\tag{PTT.4}
```

It pays the square reserve because

```math
Q_m(J)\le H_m(J)M_m(J).
\tag{PTT.5}
```

Thus failure of square payment on \(J\) implies product-throttle failure on the
same carrier:

```math
Q_m(J)\ge\eta
\quad\Longrightarrow\quad
H_m(J)M_m(J)\ge\eta.
\tag{PTT.6}
```

## 2. Terminal atom branch

The endpoint UI clause is

```math
\lim_{\theta\downarrow0}
\limsup_m M_m((-\theta,0])=0.
\tag{PTT.7}
```

Failure of `(PTT.7)` is the terminal atom branch.  It is not a square-only
problem.  It says the selected positive carrier has nonzero mass on arbitrarily
thin terminal strips:

```math
\exists \eta_0>0
\quad
\forall\theta>0
\quad
\limsup_m M_m((-\theta,0])\ge\eta_0.
\tag{PTT.8}
```

The model is

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{PTT.9}
```

This branch is the Clause A / endpoint UI branch.  It is killed only by a
same-carrier endpoint no-atom theorem, or consumed after same-witness CM
admission by the terminal source-curve Part/Field readout.

## 3. Nonzero linear residence branch

Assume endpoint UI holds, so terminal strips do not carry the obstruction.

If the total selected mass still has a positive lower bound,

```math
\limsup_m M_m([-1,0])>0,
\tag{PTT.10}
```

then after choosing a small terminal strip and passing to a subsequence there
is an interior interval \(J\Subset[-1,0)\) with

```math
\limsup_m M_m(J)>0.
\tag{PTT.11}
```

This is a nonzero linear residence branch.  It is not the square-only branch.
It is the branch that the normalized-adjoint parent-drain/source-drain package
can harvest only after the selected positive participation carrier is
identified with the linear source-pulse selector on the same tiles.

The installed parent-drain package proves a real statement for that linear
object.  It does not prove the square budget.  The carrier bridge remains:

```math
\text{selected positive participation mass on }J
\Longrightarrow
\text{same source-pulse residue seen by the source-drain selector}.
\tag{PTT.12}
```

The follow-up direct test
`mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md`
checks exactly `(PTT.12)`.  It is not installed.  Source-drain removes the
subbranch with actual nonzero source-pulse residue.  The subbranch with
nonzero selected participation residence but vanishing source-pulse residue
returns to normalized endpoint-energy trace accounting rather than to
product-throttle analysis.

## 4. Square-only height blowup branch

The pure square branch is the remaining case:

```math
M_m([-1,0])\to0,
\qquad
Q_m([-1,0])\ge\eta.
\tag{PTT.13}
```

Then `(PTT.6)` gives

```math
H_m([-1,0])
\ge
{\eta\over M_m([-1,0])}
\longrightarrow\infty.
\tag{PTT.14}
```

This is the exact active-height readout of product-throttle failure after the
linear mass has vanished.

The model is

```math
a_m(s)=m\,{\bf 1}_{(-m^{-2},0]}(s).
\tag{PTT.15}
```

It has

```math
M_m([-1,0])=m^{-1}\to0,
\qquad
Q_m([-1,0])=1,
\qquad
H_m([-1,0])=m\to\infty.
\tag{PTT.16}
```

This model satisfies endpoint UI but violates product throttle.  It is the
precise reason endpoint UI cannot be used as a square-reserve payment.

## 5. Consequence for the proof route

The forward-gold route cannot close the square branch by proving only endpoint
UI.  It needs one more same-carrier input after the trichotomy:

```math
\boxed{
\text{linear residence harvest}
}
\tag{PTT.17}
```

for branch 2, and

```math
\boxed{
\text{selected height cap, product throttle, source-square, or strict no-waste}
}
\tag{PTT.18}
```

for branch 3.

Equivalently, a complete same-carrier square proof has the structure:

```math
\begin{gathered}
\text{EndpointUI.A removes branch 1,}\\
\text{SourceDrain/parent-drain removes the source-pulse subbranch of branch 2,}\\
\text{linear positive energy-trace saturation plus no-free terminal normalized trace removes the rest of branch 2,}\\
\text{ActiveWindowHeight.A or SourceSquareReserve.A or StrictNoWaste.A removes branch 3.}
\end{gathered}
\tag{PTT.19}
```

Current inputs do not prove the last line of `(PTT.19)`.  They also do not
prove the same-carrier source-pulse identity `(PTT.12)` in linear
participation currency, or the normalized endpoint-energy trace theorem needed
for the non-source-residue linear subbranch.

## Verdict

The product-throttle wall is now smaller and more exact.

Terminal atoms belong to endpoint UI.  Nonzero linear source-pulse residue
belongs to the linear source-drain/parent-drain branch.  Nonzero linear
participation residence that is not source-pulse residue belongs to the
normalized endpoint-energy trace branch.  That branch is paid only after
positive energy-trace saturation and a no-free terminal normalized-energy trace
theorem.  After both linear subbranches are paid, what remains is the
square-only heat-scale branch:

```math
\boxed{
M_m\to0,
\qquad
Q_m\ge\eta,
\qquad
H_m\to\infty.
}
\tag{PTT.20}
```

That branch is not hidden.  It is active-height blowup on the selected carrier.
It is not paid by current forward-gold inputs unless a height cap, source-square
reserve, strict no-waste theorem, or admitted CM Pack/Part/Field consumption is
supplied.
