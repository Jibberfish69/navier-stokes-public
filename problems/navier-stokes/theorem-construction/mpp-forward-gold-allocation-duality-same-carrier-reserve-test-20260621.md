---
ns_viewer:
  theorem_id: forward-gold-allocation-duality-same-carrier-reserve-test-20260621
  status: direct-allocation-duality-import-test-complete-reserve-not-produced
  proof_role: forward_gold_same_carrier_reserve_import_test
  logical_landing_node: allocation_duality_same_carrier_shadow_price_test
  edge_effect: "Tests the open-minded import of apportionment, voting-geometry, KKT, and no-waste allocation ideas into the remaining forward-gold supplier. The import does not directly prove the unweighted normalized same-carrier reserve. It sharpens the exact missing clause: the selected positive source must have positive shadow price in a source-square, critical-strain/CKN, strict no-waste, polar-saturation, or profile-production currency on the same selected carrier."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-factorial-radius-branch-20260617.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-extremal-duality-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-action-domination-lower-quantum-bridge-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-zeno-unweighted-reserve-normal-form-20260620.md
  downstream_consequence: "Do not treat social-choice or apportionment language as a new supplier. The useful output is SameCarrierAllocationShadowPrice.A: a cellwise dual certificate proving that the retained selected source marginal is dominated by same-carrier action currency, modulo legal residue. Without that certificate, a two-cell/two-channel allocation model separates selected source from action reserve and defeats KKT/no-waste conclusions."
---

# MPP Forward-Gold Allocation-Duality Same-Carrier Reserve Test

Date: 2026-06-21

## Status

Direct import test complete.  The social-choice/apportionment geometry does not
solve the remaining forward-gold supplier by itself.

Its useful mathematical content is this:

```math
\boxed{
\text{allocation/no-waste duality can help only after the selected carrier}
\text{ has a positive shadow price in the action currency.}
}
\tag{ADR.0}
```

At the current resolution, that positive-shadow-price statement is the same
missing same-carrier domination clause already isolated by the source-action
lower-quantum bridge.

## 1. Translation of the analogy

Treat the terminal heat-scale packets as allocation cells.  For each retained
selected packet \(i\), write

```math
a_i(s)\ge0,
\qquad
-1\le s\le0,
\tag{ADR.1}
```

for the normalized selected positive source marginal.  The retained branch has

```math
\int_{-1}^{0}a_i(s)\,ds\ge c_0>0.
\tag{ADR.2}
```

The possible "budgets" or "seat currencies" are nonnegative same-packet action
densities

```math
A_i^{(q)}(s)\ge0,
\qquad
q\in Q,
\tag{ADR.3}
```

where \(q\) may denote source-square, selected critical-strain/CKN, strict
no-waste action, polar signed-current saturation, or profile-production
residue.  The desired unweighted reserve has the tail form

```math
\lim_{N\to\infty}
\sum_{i:\ r_i\le2^{-N}}
\sum_{q\in Q}
\int_{-1}^{0}A_i^{(q)}(s)\,ds
=0.
\tag{ADR.4}
```

In allocation language, the live question is whether the selected source mass
has a positive marginal price in these currencies.

## 2. The conditional certificate that would work

A linear same-carrier shadow-price certificate is

```math
a_i(s)
\le
\sum_{q\in Q}\lambda_q A_i^{(q)}(s)+\ell_i(s),
\qquad
\lambda_q\ge0,
\tag{ADR.5}
```

with legal residue

```math
\int_{-1}^{0}\ell_i(s)\,ds=o_i(1).
\tag{ADR.6}
```

Integrating `(ADR.5)` and using `(ADR.2)` gives, for retained packets,

```math
\sum_{q\in Q}\lambda_q
\int_{-1}^{0}A_i^{(q)}(s)\,ds
\ge
{c_0\over2}
\tag{ADR.7}
```

for all sufficiently large \(i\).  This is a lower action quantum.  Combined
with the unweighted reserve `(ADR.4)`, it forbids an infinite terminal selected
chain.

The square-root version is

```math
a_i(s)
\le
\sum_{q\in Q}\lambda_q A_i^{(q)}(s)^{1/2}+\ell_i(s).
\tag{ADR.8}
```

Then

```math
{c_0\over2}
\le
\sum_{q\in Q}\lambda_q
\left(\int_{-1}^{0}A_i^{(q)}(s)\,ds\right)^{1/2},
\tag{ADR.9}
```

and Cauchy--Schwarz gives

```math
\sum_{q\in Q}
\int_{-1}^{0}A_i^{(q)}(s)\,ds
\ge
{c_0^2\over4\sum_{q\in Q}\lambda_q^2}.
\tag{ADR.10}
```

So the import has a real theorem-shaped core:

```math
\boxed{
\text{unweighted reserve}
+
\text{same-carrier positive shadow price}
\Longrightarrow
\text{no surviving terminal selected chain}.
}
\tag{ADR.11}
```

This is not a new proof of the shadow price.  It is a clean allocation-language
restatement of the same-carrier domination bridge.

## 3. Why KKT and no-waste do not create the missing price

KKT or complementary slackness can certify that an optimizer uses a binding
constraint.  It cannot make the selected source cell visible to a constraint
that does not charge that cell.

The formal two-cell obstruction is:

```math
a_i(s)
=
\tau_i^{-1}{\bf 1}_{(-\tau_i,0]}(s)
\quad\text{on cell }p_i,
\qquad
\tau_i\downarrow0,
\tag{ADR.12}
```

while the available action reserve lives on a disjoint cell \(q_i\):

```math
A_i^{(q)}(s)=0
\quad\text{on }p_i,
\qquad
\int_{-1}^{0}A_i^{(q)}(s)\,ds>0
\quad\text{only on }q_i.
\tag{ADR.13}
```

Global no-waste may be true on \(q_i\).  The selected source atom on \(p_i\)
is still unpaid.  The dual certificate has no positive price on the selected
carrier, so `(ADR.5)` and `(ADR.8)` fail.

This is the allocation version of the existing two-channel obstruction in the
source-action bridge and the two-sheet obstruction in the polar-saturation
attempt.

## 4. How the named social-choice terms translate back

No-waste monotonicity becomes useful only as a strict PDE Lyapunov/no-waste
inequality that charges unused selected source on the same packet.  As a global
allocation axiom, it is too weak.

Source-square domination is useful exactly when it is cellwise:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\le
C A_j+\operatorname{Legal}_j
\tag{ADR.14}
```

on the same selected packet.  That is the already-isolated same-carrier
domination problem.

CKN or strain tail depletion helps only after the selected source has positive
price in that tail currency.  Tail depletion of a different action channel does
not remove the selected source atom.

Polar saturation helps only if the signed current saturates the selected
positive carrier on the same terminal ledger.  The two-sheet cancellation model
still blocks this without a same-ledger saturation theorem.

Profile production helps only if the limiting profile has a Liouville,
stationarity, or source-residue evacuation theorem strong enough to forbid the
produced terminal atom.  Compactness alone records the atom; it does not spend
it.

## 5. Stirling and binomial scrape consequence

The Stirling page supplies useful diagnostics for the binomial/factorial side:
logarithmic asymptotics, Euler--Maclaurin remainder control, Laplace and
saddle-point derivations, CLT/Poisson normal heuristics, Robbins upper/lower
bounds, gamma-function continuation, and convergent variants of the correction
series.

These tools sharpen coefficient growth and factorial cancellation.  They do
not produce `(ADR.5)`, `(ADR.8)`, or `(ADR.14)`.  After the five-family binomial
pipeline and factorial-radius branch, the remaining live object is not a
factorial coefficient error.  It is whether a retained terminal selected source
atom must be charged by an unweighted same-carrier action currency.

Thus the Stirling/binomial scrape and the social-choice/allocation import land
on the same wall:

```math
\boxed{
\text{growth accounting is not enough;}
\quad
\text{the proof needs selected same-carrier charging.}
}
\tag{ADR.15}
```

## 6. Useful output

The import does not directly solve the remaining supplier.  It does give a
better pressure target:

```math
\boxed{
\text{SameCarrierAllocationShadowPrice.A}
}
\tag{ADR.16}
```

One honest statement of that target is:

```math
\boxed{
\text{Every retained selected positive source packet has positive shadow price}
\text{ in at least one admissible same-carrier action currency, modulo legal
residue.}
}
\tag{ADR.17}
```

At present this target is equivalent to one of the already-known forward-gold
suppliers:

```math
\boxed{
\begin{gathered}
\text{source-square domination,}\\
\text{selected critical-strain/CKN domination,}\\
\text{strict same-carrier no-waste,}\\
\text{selected polar saturation plus no-free Zeno,}\\
\text{or rigid profile production with source-residue exclusion.}
\end{gathered}
}
\tag{ADR.18}
```

The allocation language is valuable as a veto: any proposed apportionment,
KKT, majorization, voting-geometry, or no-waste route must exhibit the
cellwise positive shadow price `(ADR.5)` or `(ADR.8)`.  Without that certificate,
the two-cell model `(ADR.12)`--`(ADR.13)` separates source from reserve and the
terminal atom survives.

## Verdict

Open-minded import checked.  It does not turn the tide by itself.  It narrows
the remaining gold supplier to a single allocation-duality formulation:
prove positive shadow price for the selected source on the actual same carrier,
or the imported geometry has no grip on the NS terminal atom.
