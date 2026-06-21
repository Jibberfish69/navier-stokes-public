---
theorem_id: forward-gold-per-generation-selected-square-quantum-direct-test-20260620
status: direct-test-complete-not-proved
logical_landing_node: per_generation_selected_square_quantum
edge_effect: "Tests the per-generation square quantum left by the terminal-depth entropy note. The theorem is not supplied by current inputs. In a binary same-fluid Zeno ancestry with generation-k weights 2^(-k), each generation preserves linear mass one, but its total square charge is 2^(-k), so no uniform lower square quantum is forced. The already proved SourceActionDominationLowerQuantum bridge is conditional on same-carrier domination and therefore cannot be used to prove this quantum. PerGenerationSelectedSquareQuantum.A reduces to source-weighted concentration, same-carrier source/action domination, source-square/no-waste, or terminal Zeno rigidity."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-depth-entropy-budget-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-action-domination-lower-quantum-bridge-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-effective-parent-branching-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-diffuse-parent-cloud-square-charge-direct-test-20260620.md
downstream_consequence: "Do not spend a lower action quantum as though it proved a per-generation square quantum. The lower action quantum follows after same-carrier domination; the per-generation quantum would be a new source-weighted concentration theorem and remains uninstalled."
---

# MPP Forward-Gold Per-Generation Selected Square Quantum Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `PerGenerationSelectedSquareQuantum.A` is not installed.

This note tests the second possible supplier left by the terminal-depth entropy
budget note.  It asks whether every retained generation of a terminal Zeno
source-refill tree must pay a fixed selected square quantum.

It does not follow from current inputs.

## 1. Target

The desired theorem would say that every retained terminal generation \(k\)
with positive same-fluid source participation pays a uniform square amount:

```math
\sum_{\beta\in{\mathcal G}_k}
\lambda\int_{I_\lambda}
A_{k,\beta}(t)^2\,dt
\ge
c_0>0
\tag{PGQ.1}
```

on the actual selected native carrier, unless the generation has already paid a
legal exit, retained signed partner, finite donor endpoint, or CM Part/Field readout.

If `(PGQ.1)` held for \(J\) retained generations, then

```math
\sum_{k=0}^{J}
\sum_{\beta\in{\mathcal G}_k}
\lambda\int_{I_\lambda}
A_{k,\beta}(t)^2\,dt
\ge
(J+1)c_0,
\tag{PGQ.2}
```

and a finite square/action budget would bound the terminal depth.

## 2. Binary diffuse generation model

Use the same binary Zeno tree as the terminal-depth note.  At generation \(k\),
there are \(2^k\) same-fluid pieces.  Put the generation on a heat window
\(|I_\lambda|=\lambda^{-2}\) and set

```math
A_{k,\beta}(t)
=
2^{-k}\lambda^{1/2}{\bf 1}_{I_\lambda}(t),
\qquad
\beta=1,\dots,2^k.
\tag{PGQ.3}
```

The linear source mass of the generation is fixed:

```math
\sum_{\beta=1}^{2^k}
\int_{I_\lambda}A_{k,\beta}(t)\,dt
=
2^k2^{-k}\lambda^{1/2}\lambda^{-2}
=
\lambda^{-3/2}.
\tag{PGQ.4}
```

Thus every generation can carry the same linear same-fluid participation.

But the selected square charge of generation \(k\) is

```math
\sum_{\beta=1}^{2^k}
\lambda\int_{I_\lambda}A_{k,\beta}(t)^2dt
=
2^k\lambda\int_{I_\lambda}
\left(2^{-k}\lambda^{1/2}{\bf 1}_{I_\lambda}\right)^2dt
=
2^{-k}.
\tag{PGQ.5}
```

So the square charge of generation \(k\) tends to zero.  There is no uniform
constant \(c_0>0\) in `(PGQ.1)`.

## 3. Summed depth still has finite square cost

Summing `(PGQ.5)` through depth \(J\) gives

```math
\sum_{k=0}^{J}
\sum_{\beta=1}^{2^k}
\lambda\int_{I_\lambda}A_{k,\beta}(t)^2dt
=
\sum_{k=0}^{J}2^{-k}
\le2.
\tag{PGQ.6}
```

So even infinitely many retained generations can have bounded visible square
cost in the installed generation-wise square ledger.

This is exactly why terminal depth entropy is unpaid: the entropy/depth grows
with \(J\), while the available square-sized cost is a geometric sum.

## 4. Boundary with the lower action quantum bridge

The note `mpp-forward-gold-source-action-domination-lower-quantum-bridge-20260620.md`
proves the conditional implication

```math
\text{retained selected source mass}
+
\text{same-carrier source/action domination}
\Longrightarrow
\text{lower action quantum}.
\tag{PGQ.7}
```

That result is correct and remains usable.

It does not prove `(PGQ.1)`, because `(PGQ.7)` already assumes the missing
same-carrier domination:

```math
a_m(s)\le C A_m(s)+\ell_m(s)
\quad\text{or}\quad
a_m(s)\le C A_m(s)^{1/2}+\ell_m(s).
\tag{PGQ.8}
```

The per-generation theorem would have to create a square quantum before
`(PGQ.8)` is known.  The binary model `(PGQ.3)`--`(PGQ.6)` shows that scalar
same-fluid participation and generation-wise square ledgers do not do that.

## 5. Exact reduction

`PerGenerationSelectedSquareQuantum.A` would follow from a theorem forcing
source-weighted concentration at every generation:

```math
\max_{\beta\in{\mathcal G}_k}
{A_{k,\beta}\over\sum_{\gamma\in{\mathcal G}_k}A_{k,\gamma}}
\ge
\eta>0
\tag{PGQ.9}
```

on the selected carrier, or from an equivalent finite-effective-branching
bound.

It would also follow from same-carrier source/action domination plus an
unweighted action budget, source-square/Carleson control, strict no-waste, or a
terminal Zeno rigidity theorem that removes the diffuse generation model.

Current inputs supply none of these.

## Verdict

`PerGenerationSelectedSquareQuantum.A` is not installed.

The exact obstruction is:

```math
\boxed{
\text{a retained generation can keep fixed linear participation while its
selected square charge is }2^{-k}.
}
\tag{PGQ.10}
```

Thus the lower-quantum route does not close terminal depth.  The lower action
quantum is a consumer after same-carrier domination; it is not a supplier of
same-carrier domination, source-square, or terminal Zeno depth control.
