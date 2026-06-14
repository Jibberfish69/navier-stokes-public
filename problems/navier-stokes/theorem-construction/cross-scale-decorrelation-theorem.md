# Cross-Scale Decorrelation Theorem

## Purpose

This note records a new active route direction for the lifted-packet burden.
Instead of treating the remaining obstruction only through the one-sided square
queue `(SDS^\sharp)`, this branch attacks the cross-scale bilinear interaction
directly.

The governing physical idea is:

```math
\textbf{self-limiting cascade principle:}
\qquad
\text{cross-scale reinforcement exists but saturates through competing interactions.}
```

This is not a no-transfer claim and not a no-alignment claim. It is the claim
that alignment and dissonance coexist, and the dissonance prevents runaway
cross-scale growth.

## Bilinear Tail Form

Write

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2.
```

The weighted one-sided bilinear dissipation-tail form is

```math
\mathfrak B_N^\sigma(t)
:=
\sum_{\substack{j\le \ell\\ j>N+M+4}}
2^{(1+\sigma)j-\sigma\ell}\,D_j(t)\,D_\ell(t).
```

This is the cross-scale reinforcement object produced by the current upper-tail
reductions.

## New Route Hypothesis

The new theorem direction is:

```math
\textbf{Cross-scale decorrelation theorem.}
```

There exists `C>0` such that

```math
\int_0^T \mathfrak B_N^\sigma(t)\,dt
\le
C\int_0^T\sum_{\ell>N+M+4}D_\ell(t)^2\,dt.
\tag{CD}
```

This is the direct anti-alignment statement: cross-scale reinforcement is
dominated by same-scale square activity, rather than behaving like a fully
coherent worst-case bilinear interaction.

## Reading

The left-hand side is the total weighted cross-scale interaction.

The right-hand side is the self-scale square activity.

So `(CD)` says:

```math
\text{cross-scale reinforcement cannot exceed self-scale activity.}
```

That is the route-level formalization of:

```math
\text{alignment exists, but dissonance prevents coherent runaway cascade.}
```

## Why This Is A Different Direction

The current `(SDS^\sharp)` route packages the same obstruction through a
one-sided square queue:

```math
\int_0^T\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt.
```

The decorrelation route does not begin from that square queue. It starts from
the bilinear interaction itself and asks for a direct anti-alignment estimate.

So this branch changes the theorem question from

```math
\text{prove one-sided queue coercivity}
```

to

```math
\text{prove that cross-scale interactions are not worst-case aligned.}
```

## Immediate Reduction

If one also proves a same-scale square estimate of the form

```math
\int_0^T\sum_{\ell>N+M+4}D_\ell(t)^2\,dt
\le
C_*2^{-2\delta N},
\tag{DSQ}
```

then `(CD)` yields

```math
\int_0^T \mathfrak B_N^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

So the route forks into two subquestions:

1. prove the decorrelation inequality `(CD)`;
2. prove the same-scale square estimate `(DSQ)`.

Either one without the other is insufficient; together they close the bilinear
tail directly.

## Relation To The Existing SDS Route

This decorrelation route is not currently proved from the inherited Euclidean
inputs. It is a new active branch candidate.

It should be read as parallel to, not derived from, the existing chain

```math
(SDS^\sharp)\Longrightarrow(NE^\sharp)\Longrightarrow(UTKD^\sharp)\Longrightarrow(PCI^\sharp)\Longrightarrow(MSI^\sharp).
```

The current route notes still justify that square/coercive chain. The present
note opens a different theorem burden:

```math
\text{direct anti-alignment of the bilinear dissipation-tail interaction.}
```

That burden is now sharpened one step further in
`weighted-signed-shell-exchange-sum-theorem.md`: the exact new target is not
an unsigned bilinear theorem on `D_jD_\ell`, but a theorem on the weighted
signed shell-exchange sum before absolute values are introduced.

## Honest Boundary

This note does not prove `(CD)` or `(DSQ)`.

What it does is register a real directional split in the lane:

- one branch seeks one-sided tail coercivity through `(SDS^\sharp)`;
- the new branch seeks direct cross-scale decorrelation of the bilinear tail.

That is the exact new direction now under evaluation.

The concrete deterministic mechanism candidate for this branch is now recorded
separately in
`dyadic-flux-antisymmetry-gap-damped-defect.md`: the bilinear tail should be
controlled by decomposing dyadic cross-scale transport into an antisymmetric
exchange part plus a gap-damped commutator defect.

That note now records an additional negative result on the branch: for the
actual one-sided tail weight `w_\ell^{(j)}=2^{-\sigma(\ell-j)}`, the explicit
weight mismatch is

```math
1-2^{-5\sigma}
\le
1-2^{-\sigma(\ell-j)}
<1
```

throughout the lifted regime, so the weight itself contributes direction but
no extra gap decay.

The new summed-defect audit there sharpens the branch boundary further:
conditional on a gap-damped defect theorem, the weighted `j`-summation does
not close the route directly. It yields an improved one-sided carrier

```math
\sum_{k>N+M}2^k\,a_k(t)\,\mathcal D_k^{\uparrow,\beta}(t)
```

and, after Young at the `k`-level, the residual higher-order tail

```math
\sum_{k>N+M}D_k(t).
```

So this branch is useful because it upgrades the gap structure, but it still
requires a genuinely new commutator-tail theorem beyond the inherited
Euclidean inputs.

The newest branch diagnosis is sharper still: the proof has already extracted
all termwise estimates it can. The remaining question is whether the summed
signed weighted shell exchange itself collapses to the barrier scale before it
is turned into a positive carrier.
