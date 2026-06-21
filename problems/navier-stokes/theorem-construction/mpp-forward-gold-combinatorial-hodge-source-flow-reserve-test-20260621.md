---
theorem_id: forward-gold-combinatorial-hodge-source-flow-reserve-test-20260621
status: direct-test-complete-hodge-flow-useful-decomposition-not-reserve-supplier
logical_landing_node: hodge_source_flow_reserve_boundary
edge_effect: "Tests the social-choice/HodgeRank analogy as a possible unweighted same-carrier reserve supplier. The combinatorial Hodge decomposition of an antisymmetric channel current is exact and useful: it splits selected source transfer into exact sink-source paths, local cycle circulation, and harmonic global circulation. But the selected positive terminal carrier depends on positive divergence, and a pure two-node sink-source edge has positive divergence with zero curl and zero harmonic component. Therefore curl/harmonic residue cannot dominate the bad pulse without an additional theorem charging the exact component by Lyapunov drop, terminal signed saturation, no-free-sink, source-square/no-waste, profile production, or CM Part/Field consumption after same-witness admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-june21-heat-scale-branch-integration-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-parabolic-cycle-coercivity-direct-attempt-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-cycleheataction-direct-attempt-no-free-sink-obstruction-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
---

# MPP Forward-Gold Combinatorial Hodge Source-Flow Reserve Test

Date: 2026-06-21

## Status

Direct test complete.  The Hodge-flow language is useful as an exact
decomposition of selected source transfer, but it does not by itself produce
the unweighted same-carrier reserve.

The reason is simple: the selected positive terminal carrier is a positive
divergence object.  A positive divergence can come from a pure sink-to-source
path.  Such a path has no curl and no harmonic circulation.

So the candidate theorem

```math
\text{persistent bad pulse}
\Longrightarrow
\text{nonzero curl/harmonic Hodge residue}
\tag{HFR.1}
```

is false without an added no-free-sink or exact-drop theorem.

## 1. Finite channel graph at scale

Fix a normalized heat-scale cylinder and a selected same-carrier active family.
Let

```math
\mathcal G_\sigma=(\mathcal V_\sigma,\mathcal E_\sigma)
\tag{HFR.2}
```

be a finite channel graph.  Vertices may represent dyadic shells, angular
sectors, strain eigendirections, packet labels, or source types, provided the
graph is the actual selected same-carrier graph and not an off-carrier
diagnostic graph.

Let

```math
Y_\sigma\in C^1(\mathcal G_\sigma)
\tag{HFR.3}
```

be an antisymmetric edge current:

```math
Y_\sigma(a,b)=-Y_\sigma(b,a).
\tag{HFR.4}
```

The selected signed source at a vertex is the graph divergence

```math
b_\sigma=d_0^\ast Y_\sigma\in C^0(\mathcal G_\sigma),
\tag{HFR.5}
```

and the selected positive source size is modeled by

```math
S_\sigma^+
=
\sum_{v\in\mathcal V_\sigma}[b_\sigma(v)]_+.
\tag{HFR.6}
```

The forward-gold reserve would need a scale-critical square or action version
of `(HFR.6)` on the actual selected carrier.

## 2. Combinatorial Hodge decomposition

On a finite graph with a chosen two-cell complex for cycles, the edge space has
the orthogonal decomposition

```math
C^1
=
\operatorname{im}d_0
\oplus
\operatorname{im}d_1^\ast
\oplus
\mathcal H^1,
\tag{HFR.7}
```

so

```math
Y_\sigma
=
d_0 f_\sigma
+
d_1^\ast \phi_\sigma
+
h_\sigma.
\tag{HFR.8}
```

Here:

```math
d_0 f_\sigma
```

is exact sink-source flow,

```math
d_1^\ast \phi_\sigma
```

is local cycle circulation, and

```math
h_\sigma
```

is harmonic global circulation.

The orthogonal identity is

```math
\|Y_\sigma\|_2^2
=
\|d_0 f_\sigma\|_2^2
+
\|d_1^\ast\phi_\sigma\|_2^2
+
\|h_\sigma\|_2^2.
\tag{HFR.9}
```

This is an exact algebraic split.  It is not yet a Navier-Stokes estimate.

## 3. Why curl/harmonic residue cannot dominate positive source

The natural hoped-for estimate is

```math
A(\sigma)
\lesssim
\|d_1Y_\sigma\|_2^2
+
\|\Pi_{\mathcal H}Y_\sigma\|_2^2
+
\text{paid exact drop}.
\tag{HFR.10}
```

The first two terms alone cannot control the selected positive source.

Take a graph with two vertices \(A,B\) and one edge.  Let

```math
Y(A,B)=F>0.
\tag{HFR.11}
```

Then

```math
d_0^\ast Y(B)=F,
\qquad
d_0^\ast Y(A)=-F,
\tag{HFR.12}
```

so

```math
\sum_v[d_0^\ast Y(v)]_+=F.
\tag{HFR.13}
```

But this graph has no two-cell curl and no harmonic circulation:

```math
d_1Y=0,
\qquad
\Pi_{\mathcal H}Y=0.
\tag{HFR.14}
```

The positive selected source is entirely exact sink-source transfer.

Therefore:

```math
\boxed{
\text{curl/harmonic Hodge residue does not dominate selected positive
divergence.}
}
\tag{HFR.15}
```

This is the same obstruction already seen in the parabolic cycle attempts:
positive terminal source can be fed by an internal donor sink before any
closed heat-paying cycle appears.

## 4. Correct theorem interface

The Hodge route becomes useful only after it is stated as a three-branch
decomposition:

```math
\text{selected positive source}
\subset
\text{exact sink-source paths}
\cup
\text{local cycles}
\cup
\text{harmonic cycles}
\cup
\text{boundary/legal spill}.
\tag{HFR.16}
```

The cycle branches may be useful if a cycle-action theorem is available:

```math
\int
\left(
\|d_1^\ast\phi_\sigma\|_2^2+\|h_\sigma\|_2^2
\right)
d\sigma
\lesssim
\text{heat action}+\text{legal loss}.
\tag{HFR.17}
```

But the exact branch needs a separate theorem:

```math
\boxed{
\text{Exact sink-source paths feeding the terminal positive carrier are paid
by terminal signed saturation, Lyapunov drop, source-square/no-waste, profile
production, or CM Part/Field consumption.}
}
\tag{HFR.18}
```

Without `(HFR.18)`, Hodge decomposition only identifies where the missing mass
can hide.

## 5. Relation to the continuous scale-flow language

In the continuous log-scale formulation, the possible reserve would be

```math
\int_{\sigma_0}^{\infty}A(\sigma)\,d\sigma<\infty.
\tag{HFR.19}
```

The Hodge-flow version would try to prove

```math
A(\sigma)
\lesssim
\|d_1Y_\sigma\|_2^2
+
\|\Pi_{\mathcal H}Y_\sigma\|_2^2
+
\mathcal D_{\rm exact}(\sigma)
+
\mathcal L_{\rm legal}(\sigma).
\tag{HFR.20}
```

The exact test above shows that the term

```math
\mathcal D_{\rm exact}(\sigma)
\tag{HFR.21}
```

is not optional.  It is precisely the no-free-sink / terminal signed-saturation
wall.  If it is not controlled, a bad pulse can live in the exact component and
leave no curl/harmonic Hodge residue to charge.

## Verdict

The HodgeRank/social-choice analogy should not be churned as a standalone
coercive supplier.

Its useful role is narrower and exact:

```math
\boxed{
\text{Hodge decomposition splits hidden terminal feed into exact paths,
local cycles, and harmonic cycles.}
}
\tag{HFR.22}
```

The local/harmonic cycle parts may be payable by a true cycle-action theorem.
The exact path part is the old live wall:

```math
\boxed{
\text{TerminalSignedSaturation.A / ParabolicNoFreeSink.A / exact Lyapunov drop.}
}
\tag{HFR.23}
```

Thus this branch contributes a cleaner decomposition, not the missing
unweighted same-carrier reserve.
