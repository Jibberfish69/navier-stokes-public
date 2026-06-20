---
theorem_id: forward-gold-terminal-depth-entropy-budget-direct-test-20260620
status: direct-test-complete-not-proved
logical_landing_node: terminal_depth_entropy_budget
edge_effect: "Tests the remaining entropy/depth supplier after finite effective parent branching failed. A terminal binary Zeno ancestry has fixed local branch entropy log 2 at every generation and terminal effective branch number 2^J, but the natural square charges visible to the current donor/source ledgers decay by generation and sum to a bounded quantity. Thus branch depth entropy is visible but unpaid. A finite terminal-depth budget would require a new monotone entropy ledger, a per-generation square lower bound on the selected carrier, or strict no-waste/source-square control; it is not supplied by bounded overlap, same-fluid ancestry, scalar donor balance, or existing quadratic charges."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-entropy-log-coercivity-exhaustion-20260620.md
  - problems/navier-stokes/theorem-construction/mcp-diffuse-parent-entropy-charge-test-20260505.md
  - problems/navier-stokes/theorem-construction/mcp-entropy-carleson-test-after-diffuse-parent-failure-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-scale-normalized-branch-entropy-direct-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-effective-parent-branching-direct-test-20260620.md
downstream_consequence: "Do not use branch entropy, terminal depth, or binary branching as a hidden finite-depth supplier. The depth budget itself is an uninstalled theorem and reduces to a new entropy monotonicity ledger, source-square/no-waste reserve, or terminal Zeno rigidity."
---

# MPP Forward-Gold Terminal Depth Entropy-Budget Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `TerminalDepthEntropyBudget.A` is not supplied by current
inputs.

The broad entropy/log branch was already exhausted.  This note tests the
specific remaining possibility created by the finite-effective-branching
failure: maybe a terminal Zeno parent tree can be locally finite, but the
number of generations is paid by branch entropy or depth.

That payment is not installed.

## 1. Target

The depth-budget theorem would say that a retained same-fluid terminal ancestry
has uniformly bounded effective depth, or else pays a legal entropy/depth
ledger.  In its simplest binary form, it would give

```math
J_m
\le
C_{\rm depth}
+Legal_m+o_m(1),
\tag{TDE.1}
```

where \(J_m\) is the number of terminal Zeno refill generations on the selected
carrier.

Equivalently, if each retained split has two comparable children, the cumulative
branch entropy

```math
\mathsf H_{\rm depth}(J)
=
J\log 2
\tag{TDE.2}
```

would have to be controlled by a finite route budget.

## 2. Binary Zeno tree model

Take a binary same-fluid ancestry tree of depth \(J\).  At generation \(k\),
there are \(2^k\) retained parent packets.  Give each packet the coherent scalar
weight

```math
a_{k,\beta}=2^{-k},
\qquad
\beta=1,\dots,2^k.
\tag{TDE.3}
```

The linear mass at each generation is exactly conserved:

```math
\sum_{\beta=1}^{2^k}a_{k,\beta}
=
2^k2^{-k}
=1.
\tag{TDE.4}
```

The generation entropy is fixed:

```math
-\sum_{\beta=1}^{2^k}
2^{-k}\log(2^{-k})
=
k\log2,
\tag{TDE.5}
```

and each local split from generation \(k\) to \(k+1\) has conditional entropy
\(\log2\).  Thus the cumulative depth entropy is `(TDE.2)`.

## 3. The visible square charges stay summable

The square charge of generation \(k\) is

```math
\sum_{\beta=1}^{2^k}a_{k,\beta}^2
=
2^k2^{-2k}
=
2^{-k}.
\tag{TDE.6}
```

Summing through depth \(J\) gives

```math
\sum_{k=0}^{J}
\sum_{\beta=1}^{2^k}a_{k,\beta}^2
=
\sum_{k=0}^{J}2^{-k}
\le2.
\tag{TDE.7}
```

So the local square ledger sees a bounded amount while the depth entropy
\(J\log2\) tends to infinity.

If the same tree is placed on a terminal heat window by multiplying each
coefficient by \(\lambda^{1/2}{\bf 1}_{I_\lambda}\), with
\(|I_\lambda|=\lambda^{-2}\), the same calculation appears in the normalized
critical square currency:

```math
\sum_{\beta=1}^{2^k}
\lambda\int_{I_\lambda}
\left(2^{-k}\lambda^{1/2}{\bf 1}_{I_\lambda}\right)^2dt
=
2^{-k}.
\tag{TDE.8}
```

Thus a terminal Zeno tree can have arbitrarily large depth while the natural
per-generation square charges remain summable.

## 4. Why this is not paid by scalar donor balance

Scalar donor balance records `(TDE.4)`.  It is linear in the branch weights.
The depth budget needs a positive cost for passing through another terminal
generation.

But the current square-sized costs at generation \(k\) are `(TDE.6)`, which
decay with \(k\).  A finite linear balance plus a summable square charge does
not imply a bound on \(J\).

This is the exact depth version of the diffuse-parent cloud:

```math
M=2^J,
\qquad
{1\over M}=2^{-J}.
\tag{TDE.9}
```

Writing the cloud as a binary tree makes the local branching finite, but it
does not create a per-generation route payment.

## 5. Why entropy visibility is not entropy payment

The entropy \(J\log2\) is visible as a descriptive statistic of the tree.  The
current route lacks a monotone ledger of the form

```math
\mathsf H_{\rm depth}(J_m)
\le
Legal_m+o_m(1),
\tag{TDE.10}
```

or a per-generation drop/payment

```math
\Delta Legal_k
\ge
c_0>0
\qquad
\text{for every retained terminal split.}
\tag{TDE.11}
```

The installed ledgers instead see quadratic or physical-energy-sized quantities
like `(TDE.6)`--`(TDE.8)`.  Those quantities are compatible with \(J\to\infty\).

## 6. Exact reduction

A true terminal-depth entropy budget would require one of the following new
inputs:

```math
\boxed{
\text{MonotoneBranchEntropyLedger.A}
}
\tag{TDE.12}
```

or

```math
\boxed{
\text{PerGenerationSelectedSquareQuantum.A}
}
\tag{TDE.13}
```

or

```math
\boxed{
\text{SameCarrierSourceSquareReserve.A / StrictRescaledNoWasteLyapunov.A}
}
\tag{TDE.14}
```

or a rigid terminal-Zeno theorem proving that an infinite retained same-fluid
binary depth produces a CM face failure or a forbidden compact profile.

No such theorem is installed by bounded overlap, same-fluid ancestry, scalar
donor balance, branch entropy visibility, or the existing quadratic donor
charges.

## Verdict

`TerminalDepthEntropyBudget.A` is not installed.

The exact obstruction is:

```math
\boxed{
\text{binary terminal depth can grow without a nonsummable square payment in
the current ledgers.}
}
\tag{TDE.15}
```

Thus entropy/depth does not close the diffuse-parent or finite-effective-
branching gap.  It returns to the same actual forward-gold currencies:

```math
\boxed{
\text{same-carrier source-square, strict no-waste, no-free terminal Zeno
donor-chain rigidity, or MinimalZenoProfileProduction.A.}
}
\tag{TDE.16}
```
