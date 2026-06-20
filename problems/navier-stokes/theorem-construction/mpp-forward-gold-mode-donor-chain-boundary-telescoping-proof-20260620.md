# Mode Donor-Chain Boundary Telescoping Proof

Date: 2026-06-20

## Status

Reduction proof complete.  The earlier edgewise `ModeDonorEdgeCoherence.A`
condition is sufficient but stronger than the finite-chain identity actually
needs.

For a finite signed donor path, nonconstant mode tests telescope to the path
endpoints.  Internal edge-by-edge mode variation does not need to be paid.  The
finite-chain obstruction is boundary endpoint mismatch: a retained signed
partner, legal exit, or entrance leaf must be invisible or paid in the chosen
test class.

This weakens the finite-chain part of the mode-residue identity.  It does not
pay infinite terminal Zeno donor chains, and it does not pay retained endpoint
pairs that a mode test separates.

## 1. Edgewise sufficient condition

The earlier mode-donor coherence target was

```math
\sum_{e=(D,R)\in G_m^{fin}}
|q_e|\,|\psi_i(R)-\psi_i(D)|
\le
\operatorname{Legal}_{m,i}^{edge}+o_m(1).
\tag{MDB.1}
```

This pays every edge separately.  It is sufficient for mode-residue evacuation,
but it is not necessary for a finite chain.

## 2. Single finite path

Consider one finite donor path with signed amount `a>0`:

```math
R_0\leftarrow D_0=R_1\leftarrow D_1=R_2
\leftarrow\cdots\leftarrow D_{L-1}=R_L\leftarrow D_L.
\tag{MDB.2}
```

The signed residual along the path is

```math
dE_L
=
a\sum_{j=0}^{L}(\delta_{R_j}-\delta_{D_j}).
\tag{MDB.3}
```

Since `D_j=R_{j+1}` for `j=0,...,L-1`, the internal packets cancel as signed
measures:

```math
dE_L
=
a(\delta_{R_0}-\delta_{D_L}).
\tag{MDB.4}
```

For any packet test `phi`,

```math
\langle dE_L,\phi\rangle
=
a(\phi(R_0)-\phi(D_L)).
\tag{MDB.5}
```

Thus no term of the form

```math
\sum_{j=0}^{L-1}
a|\phi(R_j)-\phi(D_j)|
\tag{MDB.6}
```

is required for a finite path identity.  Only the endpoint difference appears.

## 3. Finite donor forest

A finite donor forest decomposes into finitely many path components `alpha`
after internal vertices with equal incoming and outgoing signed amount are
cancelled.  The residual has the form

```math
dE_m^{fin}
=
\sum_\alpha a_\alpha
(\delta_{R_{\alpha,0}}-\delta_{D_{\alpha,L_\alpha}})
+dE_m^{branch}
+dE_m^{legal}.
\tag{MDB.7}
```

The branch term is present only where a donor vertex has unmatched split or
merge amounts after cancellation.  Its exact contribution to a test `phi` is

```math
\langle dE_m^{branch},\phi\rangle
=
\sum_v
\left(
\sum_{e:R(e)=v}a_e
-
\sum_{e:D(e)=v}a_e
\right)\phi(v).
\tag{MDB.8}
```

`LocalDonorBalance.A` is precisely the input that makes the internal branch
term legal or moves it to a boundary endpoint.  After that input,

```math
\langle dE_m^{fin},\phi\rangle
=
\sum_\alpha a_\alpha
(\phi(R_{\alpha,0})-\phi(D_{\alpha,L_\alpha}))
+\operatorname{Legal}_{m,\phi}
+o_m(1).
\tag{MDB.9}
```

## 4. Boundary theorem

The finite donor contribution is paid in a test class `Phi` by the endpoint
condition

```math
\sup_{\phi\in\Phi,\ \|\phi\|_\infty\le1}
\left|
\sum_\alpha a_\alpha
(\phi(R_{\alpha,0})-\phi(D_{\alpha,L_\alpha}))
\right|
\le
\operatorname{Legal}_{m,\Phi}^{bdry}
+o_m(1).
\tag{MDB.10}
```

Call this

```math
\boxed{
\text{FiniteDonorBoundaryCoherence.A}(\Phi).
}
\tag{MDB.11}
```

Then

```math
\boxed{
\text{LocalDonorBalance.A}
+
\text{FiniteDonorBoundaryCoherence.A}(\Phi)
\Longrightarrow
\text{finite donor chains are paid in the }\Phi\text{ test norm.}
}
\tag{MDB.12}
```

## 5. Relation to edgewise coherence

The edgewise condition `(MDB.1)` implies boundary coherence.  For one path,
the triangle inequality gives

```math
a|\phi(R_0)-\phi(D_L)|
\le
a\sum_{j=0}^{L}|\phi(R_j)-\phi(D_j)|.
\tag{MDB.13}
```

Summing over path components gives `(MDB.10)`.  Therefore

```math
\boxed{
\text{ModeDonorEdgeCoherence.A}
\Longrightarrow
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode}).
}
\tag{MDB.14}
```

The converse is false.  Along a path, the mode value may oscillate many times
and return to its endpoint value:

```math
\psi(R_0)=\psi(D_L),
\qquad
\sum_{j=0}^{L}|\psi(R_j)-\psi(D_j)|>0.
\tag{MDB.15}
```

Then boundary coherence holds for that path while edgewise coherence fails.

## 6. What remains at the boundary

The boundary endpoints have four meanings.

First, a legal exit endpoint is paid by the legal ledger because
`||phi||_infty<=1`.

Second, an entrance leaf is paid by `EntranceLeafDecay.A`, again because the
test is bounded.

Third, a retained signed partner endpoint is not automatically paid in a
nonconstant test norm.  It requires

```math
\phi(R_{\alpha,0})-\phi(D_{\alpha,L_\alpha})=o_m(1)
\tag{MDB.16}
```

or an endpoint legal charge.  For mode tests this is a finite retained-partner
version of endpoint coherence or selected polar saturation.

Fourth, an endpoint that keeps moving to smaller terminal scales is not finite.
It is the infinite terminal Zeno donor chain and is governed by
`NoFreeTerminalZenoDonorChain.A`.

## 7. Updated finite-mode reduction

The mode-projected same-shadow residue identity can use the weaker finite-chain
input:

```math
\boxed{
\begin{gathered}
\text{ModeTestCompatibility.A}
+
\text{TestEnrichedMinimalChainResidueIdentity.A}
\\
+
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
+
\text{NoFreeTerminalZenoDonorChain.A in }\Phi_{mode}
\\
\Longrightarrow
\text{ModeProjectedMinimalChainResidueIdentity.A.}
\end{gathered}
}
\tag{MDB.17}
```

This replaces edgewise source-weighted travel by a boundary endpoint coherence
condition for the finite donor forest.

## Verdict

The finite donor portion of the mode-residue problem is weaker than the
edgewise product charge.  Internal finite donor paths telescope in every
packet-test norm.  The true finite obstruction is endpoint mismatch at the
boundary of the donor forest.

So the remaining finite-chain wall is not unweighted travel along every donor
edge.  It is:

```math
\boxed{
\text{retained-partner endpoint coherence or selected polar saturation in the
chosen test class.}
}
\tag{MDB.18}
```

The infinite-chain wall remains unchanged:

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{MDB.19}
```
