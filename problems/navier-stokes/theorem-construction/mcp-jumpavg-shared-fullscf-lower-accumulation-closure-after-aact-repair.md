# Jump_avg lower accumulation for an equivalent shared full-SCF charge

## Status

Discharged for the stated alternative: positive terminal lower accumulation for an equivalent shared charge.

The narrow charge

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}
```

has an `E_u` component-selection escape. The closed lower-side object is the enlarged full-SCF charge

```math
\nu_{fullSCF}:=\mu_E+\mu_D+\sum_\chi\mu_{P,\chi}+\mu_G.
```

This charge carries every component appearing in the normalized `SCF_base` packet.

## Theorem

Assume `Jump_avg(\mathcal T)` on a bounded-distortion same-fluid terminal tail. Then there exists a separated or bounded-overlap terminal family of admissible same-fluid windows `Q_k` such that

```math
\nu_{fullSCF}(Q_k)\ge c_m>0
```

for every `k`. Hence the `Jump_avg` branch has positive terminal lower accumulation for the equivalent shared full-SCF charge.

## Proof

By `Jump_avg`, every terminal subtail contains loss of positive SCF-good material scale. Therefore one can choose a terminal sequence of admissible same-fluid windows `Q_k` with

```math
SCF_{base}(Q_k)>\varepsilon_m.
```

Work in the pulled-back same-fluid parabolic metric on the bounded-distortion
atlas.  For each finite tail of the terminal family, apply the finite `5r`
selection lemma: choose disjoint core windows whose fixed `5`-dilates cover the
tail union.  The parabolic doubling constant is dimensional, and pushing
forward by an atlas with distortion `M_\sharp` changes the overlap by at most a
constant `\Omega_4(M_\sharp)`.  Applying this selection on tails and taking a
diagonal subsequence gives an infinite terminal subfamily with fixed-dilate
overlap bounded by `\Omega_4(M_\sharp)`.  Terminal recurrence is preserved
because every tail still contributes at least one selected window.

On each selected window, decompose the base packet as

```math
SCF_{base}(Q_k)=E_u(Q_k)+D_u(Q_k)+P(Q_k)+G_\Phi(Q_k),
```

where the components are represented by the additive measures in `\nu_{fullSCF}`. Since the threshold is fixed, at least one represented component is bounded below. After absorbing atlas constants into `c_m`,

```math
\nu_{fullSCF}(Q_k)
=
\mu_E(Q_k)+\mu_D(Q_k)+\sum_\chi\mu_{P,\chi}(Q_k)+\mu_G(Q_k)
\ge c_m>0.
```

Thus

```math
\liminf_k \nu_{fullSCF}(Q_k)\ge c_m>0.
```

This proves positive terminal lower accumulation for the equivalent shared charge.

## Consequence

The lower side of the `Jump_avg` no-escape route is closed after replacing the narrow `\nu_{SCF}` by `\nu_{fullSCF}`. The remaining upper-side theorem is exactly active-window amplitude gain, or an equivalent heat-scale square-source estimate, for the `E_u` component of `\nu_{fullSCF}`.

## Boundary

This note closes the lower side only. It does not close the upper side or the full `Jump_avg` contradiction.
