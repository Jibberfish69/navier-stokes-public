---
theorem_id: forward-gold-same-material-heat-scale-sampling-invariant-20260625
status: proof-installed-by-same-material-log-scale-overlap-selection
logical_landing_node: same_material_dyadic_packet_overlap_selection
edge_effect: >-
  Locks the physical ontology of terminal heat-scale windows. They are not
  independent packet events and not arbitrary physical cylinders. They are
  bounded-overlap samples of one original smooth material history in the
  same-material log-scale clock atlas. Physical terminal cylinders may be
  nested at the candidate point; the bounded multiplicity is carried by the
  dyadic material radius/log-scale label and the transported material annular
  atlas. This discharges the sampling/readout correction, while leaving the
  finite full material clock as the remaining producer.
parents:
  - problems/navier-stokes/theorem-construction/mpp-same-material-dyadic-packet-overlap-selection-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-terminal-zeno-annular-return-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-force-action-vs-native-material-stack-audit-20260625.md
---

# Same-Material Heat-Scale Sampling Invariant

Date: 2026-06-25

## 0. Statement

Terminal heat-scale windows used in the forward-gold material-spike route must
be read as samples of one original smooth material history.

Let the sampled packet radius be

```math
\rho_m>0,
\qquad
\Sigma_m=-\log\rho_m .
```

The packet is represented in the full material clock atlas as

```math
\widehat P_m
\subset
\{\sigma:|\sigma-\Sigma_m|\le c_\sigma\}
\times
\{(s,x):x=X_m(a,s),\ a\in A_m^\ast\},
```

where `X_m` is the smooth preterminal material map and `A_m^*` is the selected
material annular label at radius comparable to `rho_m`.

The invariant is:

```math
\sum_m \mathbf 1_{\widehat P_m}\le K
```

after passing to a separated log-scale subfamily and using the finite material
annular atlas. Consequently, for every nonnegative same-material clock measure
`dOmega`,

```math
\sum_{m=J}^{M}\int_{\widehat P_m}d\Omega
\le
K\int_{\{\sigma\ge \Sigma_J-c_\sigma\}}d\Omega .
```

This is the precise meaning of bounded-overlap heat-scale sampling.

## 1. Proof

The proof is exactly the installed `SameMaterialDyadicPacketOverlapSelection.A`.
For completeness, the mechanism is as follows.

First, choose a terminal subsequence with separated log scales:

```math
|\Sigma_m-\Sigma_n|>2c_\sigma
\qquad (m\ne n).
```

This is always possible when the sampled terminal scales satisfy
`Sigma_m -> infinity`.

Second, at each fixed scale, choose material annular labels with finite
multiplicity in material coordinate space:

```math
\sum_\ell \mathbf 1_{A_{m,\ell}^\ast}(a)\le K_a .
```

This is the standard dyadic/Vitali-Besicovitch material atlas selection.

Third, transport those labels by the same smooth flow map:

```math
x=X_m(a,s).
```

Because the preterminal material map is a diffeomorphism on each retained
smooth packet, it preserves the material multiplicity count:

```math
\sum_\ell \mathbf 1_{X_m(A_{m,\ell}^\ast,s)}(x)
=
\sum_\ell \mathbf 1_{A_{m,\ell}^\ast}(X_m^{-1}(x,s))
\le K_a .
```

The log-scale separation allows at most one selected scale at a fixed
`sigma`. The material atlas gives finite overlap inside that scale. Multiplying
those two facts gives the bounded-overlap count for the full clock packets.

## 2. What this corrects

The count is not a claim that nested physical cylinders near the terminal point
have bounded overlap in physical spacetime. They do not have to. The count is
performed in the same-material clock atlas, where each packet carries its
material annular label and dyadic/log-scale coordinate.

So the physical picture stays intact:

- one original smooth material history,
- same transported annular layers,
- heat-scale windows as samples of that history,
- no independent packet events introduced by rescaling.

## 3. Consequence

Whenever a terminal recurrence argument produces infinitely many sampled
heat-scale windows, those windows can be read through this same material atlas.
Thus any fixed positive amount of full material clock on each sampled window
would force

```math
\sum_m \int_{\widehat P_m}d\Omega=\infty,
```

while finite full clock would give

```math
\sum_m \int_{\widehat P_m}d\Omega
\le
K\int d\Omega<\infty.
```

This sampling lemma is therefore discharged.

It does not prove the finite full material clock itself. The remaining producer
is still the global same-packet full material clock estimate on the original
smooth material history.