---
theorem_id: forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626
status: reduces-to-selected-density-uniform-integrability
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - TerminalSelectedDensityAtomExclusion.A
  - RepeatedCorePositiveVariationRootBound.A
  - SelectedCompressionRootReserve.A
---

# Terminal selected-density atom exclusion: direct test

## 1. Target

The current relay target is:

```text
TerminalSelectedDensityAtomExclusion.A
```

in the form:

```math
\text{infinite retained nested selected ancestry with }A(Q_k)\simeq1
\Longrightarrow
\text{terminal selected density atom}
\Longrightarrow
\text{positive root variation/capacity cost}.
\tag{1}
```

This is meant to close the unpaid strict-reselection branch and fold it into
`RepeatedCorePositiveVariationRootBound.A`.

## 2. What the density atom gives

Let `\mu_{\rm sel}` be the selected action measure in material coordinates and
let the selected normalization have exponent `\alpha`:

```math
A(Q)=r(Q)^{-\alpha}\mu_{\rm sel}(Q).
\tag{2}
```

An infinite nested retained selected chain with `A(Q_k)\simeq1` gives

```math
\mu_{\rm sel}(Q_k)\simeq r_k^\alpha .
\tag{3}
```

So the terminal object is an `\alpha`-density concentration:

```math
\limsup_{r\downarrow0}r^{-\alpha}\mu_{\rm sel}(B_r(a_*))>0.
\tag{4}
```

This is not by itself a contradiction. It is exactly the critical-density
configuration allowed by scale invariance.

## 3. Direct exclusion is false without extra integrability

A model measure can satisfy

```math
\mu(B_{2^{-k}}(a_*))\simeq 2^{-\alpha k}
\tag{5}
```

for every `k`. Then

```math
A(B_{2^{-k}}(a_*))\simeq1
\tag{6}
```

at every retained scale. This has finite raw mass near the point and does not
force a boundary/cut tax, material compression, or Schur defect merely from
measure theory.

Thus the implication

```math
\text{terminal selected density atom}
\Longrightarrow
\text{positive root variation/capacity cost}
\tag{7}
```

is not a standalone consequence of nesting, laminarity, or finite raw mass.

## 4. Exact missing input

To exclude (4), one needs a uniform integrability or Carleson improvement for
the selected density, for example:

```math
\sup_{\mathcal T_{\rm sel}}
\sum_{Q\subseteq Q_0}A(Q)
\le
C_N\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0),
\tag{8}
```

or a density form such as

```math
\mu_{\rm sel}(B_r(a_*))=o(r^\alpha)
\quad\text{uniformly on retained terminal atoms}.
\tag{9}
```

Equivalently, in a martingale/tree language, the selected density needs an
`L^{1+\varepsilon}`, `L\log L`, or strict good-lambda gain over the raw
critical density:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<\frac12,
\qquad
\sum_L 2^L B_L<\infty .
\tag{10}
```

The critical half-tail

```math
\nu_\ell=\frac{2^{-\ell}}{\ell+1}
\tag{11}
```

has finite raw mass but divergent first ratio moment, and it is not excluded by
the atom statement alone.

## 5. Result

`TerminalSelectedDensityAtomExclusion.A` is not yet a proof theorem from the
installed inputs. It is another formulation of the same missing root reserve:

```text
OriginalHistorySelectedReserve.A
```

or

```text
SelectedCompressionRootReserve.A
```

or a strict selected-density good-lambda / reverse-Holder improvement.

The live theorem remains:

```math
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)
\le
C_N(u_0)+R_{\rm legal}.
\tag{12}
```

The terminal-density language is useful because it identifies the surviving
bad branch: a retained critical-density atom with no paid compression and no
paid reselection boundary. It does not itself supply the finite root reserve
needed to close the Gold route.
