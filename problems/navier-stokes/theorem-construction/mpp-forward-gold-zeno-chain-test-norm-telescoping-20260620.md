# Zeno Chain Test-Norm Telescoping

Date: 2026-06-20

## Status

Direct algebra test complete.  An infinite signed donor chain is harmless in a
nonconstant test norm only when the test value has a coherent endpoint along
the chain, or when the endpoint residue is visible as a terminal profile/source
defect.

This note gives the exact telescoping identity behind
`NoFreeTerminalZenoDonorChain.A` in a finite test class.

## 1. Single-mass donor chain model

Consider a same-fluid donor chain carrying one signed source amount `a>0`:

```math
R_0 \leftarrow D_0=R_1 \leftarrow D_1=R_2
\leftarrow \cdots \leftarrow D_N.
\tag{ZTT.1}
```

The signed residual over the first `N` links is

```math
dE_N
=
a\sum_{j=0}^{N}
(\delta_{R_j}-\delta_{D_j}).
\tag{ZTT.2}
```

Because `D_j=R_{j+1}`, this telescopes as a signed measure:

```math
dE_N
=
a(\delta_{R_0}-\delta_{D_N}).
\tag{ZTT.3}
```

The scalar mass cancels except for the two endpoints.

## 2. Test-norm residue is an endpoint difference

For any packet test `phi`,

```math
\langle dE_N,\phi\rangle
=
a(\phi(R_0)-\phi(D_N)).
\tag{ZTT.4}
```

Thus finite donor telescoping in a nonconstant test norm does not require
pairwise absolute summability of every link.  It requires control of the
endpoint difference.

If `D_N` exits through a legal boundary, entrance leaf, retained partner, or
paid collar, then `(ZTT.4)` is paid by the corresponding endpoint ledger.

If the chain has no finite endpoint, the remaining object is

```math
\lim_{N\to\infty}a(\phi(R_0)-\phi(D_N)).
\tag{ZTT.5}
```

This vanishes only under a test-endpoint coherence condition:

```math
\phi(D_N)\to\phi(R_0).
\tag{ZTT.6}
```

Otherwise the infinite donor chain leaves a visible test-norm terminal residue.

## 3. Weighted or branching chains

For several chain components indexed by `alpha`, with masses `a_alpha`, the
finite telescoping identity is

```math
\langle dE_N,\phi\rangle
=
\sum_\alpha a_\alpha
\bigl(\phi(R_{\alpha,0})-\phi(D_{\alpha,N})\bigr)
+\operatorname{Legal}_{N,\phi}.
\tag{ZTT.7}
```

If

```math
\sum_\alpha a_\alpha\le A_*
\tag{ZTT.8}
```

and the endpoints are uniformly coherent in the test class,

```math
\sup_{\phi\in\Phi,\ \|\phi\|_\infty\le1}
|\phi(R_{\alpha,0})-\phi(D_{\alpha,N})|
\le
\omega_N,
\qquad
\omega_N\downarrow0,
\tag{ZTT.9}
```

then

```math
\sup_{\phi\in\Phi,\ \|\phi\|_\infty\le1}
|\langle dE_N,\phi\rangle|
\le
A_*\omega_N+\operatorname{Legal}_{N,\Phi}.
\tag{ZTT.10}
```

This proves test-norm evacuation for the infinite chain.

## 4. Exact theorem supplied by endpoint coherence

The conditional theorem is

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{UniformZenoChainMassBound.A}
+
\text{ZenoTestEndpointCoherence.A}(\Phi)
\\
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A in the }\Phi\text{ test norm}.
\end{gathered}
}
\tag{ZTT.11}
```

For finite Door 2 mode tests, `ZenoTestEndpointCoherence.A(Phi)` says that the
selected mode values have a unique coherent limit along the donor chain and
match the terminal receiver value in the normalized gauge.

## 5. Why endpoint coherence is not installed

The current Zeno compactness package gives subsequential local suitable limits
on preterminal strips.  It does not give `(ZTT.6)` for the selected terminal
donor chain.  The following failures remain possible:

```text
translation drift,
rotation drift,
scale-schedule drift,
selector switching,
profile switching,
annular defect measure,
terminal endpoint source atom.
```

Each failure can make `phi(D_N)` fail to converge to `phi(R_0)` in the selected
test gauge.

Thus

```math
\text{ZenoTestEndpointCoherence.A}(\Phi)
\tag{ZTT.12}
```

is not supplied by finite donor balance or scalar signed saturation.

## 6. If endpoint coherence fails

Failure of `(ZTT.6)` is not invisible.  There is a test `phi` and a subsequence
such that

```math
|\phi(R_0)-\phi(D_N)|
\ge c_\phi>0.
\tag{ZTT.13}
```

Then the chain carries a terminal test-norm residue:

```math
|\langle dE_N,\phi\rangle|
\ge
a c_\phi-o_N(1)
\tag{ZTT.14}
```

after legal endpoints have been removed.

That residue must be routed into one of two branches:

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}
}
\tag{ZTT.15}
```

on the nonzero-flux/native-carrier side, or

```math
\boxed{
\text{MinimalZenoProfileProduction.A}
}
\tag{ZTT.16}
```

on the zero-flux/profile side.

## 7. Relation to source-square and no-waste

Source-square or strict no-waste can bypass endpoint coherence by proving a
terminal strip modulus directly.  In this note's notation, such a theorem gives

```math
\sum_\alpha a_\alpha
\bigl|
\phi(R_{\alpha,0})-\phi(D_{\alpha,N})
\bigr|
\le
\operatorname{Legal}_{N,\Phi}+o_N(1)
\tag{ZTT.17}
```

without first identifying a unique endpoint in the mode gauge.

So the available currencies are:

```math
\boxed{
\text{ZenoTestEndpointCoherence.A}(\Phi)
\quad\text{or}\quad
\text{SourceSquareReserve.A / StrictRescaledNoWasteLyapunov.A}
\quad\text{or}\quad
\text{visible endpoint residue routed to Door 1 or Door 2}.
}
\tag{ZTT.18}
```

## Verdict

The infinite donor chain has an exact test-norm telescoping form.  It is paid
only when the terminal donor endpoint is coherent in the downstream test class,
or when source-square/no-waste controls the endpoint difference directly.

Without endpoint coherence, the chain leaves a visible terminal test residue.
That residue is not a solved contradiction; it is the same fork already exposed
by the gold route: nonzero-flux native-carrier identification or zero-flux
minimal Zeno profile production.
