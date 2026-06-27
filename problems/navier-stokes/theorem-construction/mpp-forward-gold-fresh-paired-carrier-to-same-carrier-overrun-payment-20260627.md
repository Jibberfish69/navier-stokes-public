---
theorem_id: forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627
status: paired-carrier-sharpens-to-fresh-same-carrier-identity-plus-selected-overrun-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh source weighted paired carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
  - SameMaterialDERplusAQKFreshSourceRoute.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-subagent-audit-20260627.md
  - problems/navier-stokes/theorem-construction/weighted-tail-flux-lifted-j-sum-audit.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fbe-source-square-dominance-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-failure-split-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-coefficient-overrun-critical-factor-ui-bridge-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
edge_effect: >-
  The paired-carrier proof mechanisms do not yet close the Gold hinge. The
  factorized two-scale route is honest only as a coupled same-material theorem,
  and the DER route has been sharpened from a generic endpoint-pressure clause
  to DER plus affine quotient kill. The native endpoint/source-square hierarchy
  then reduces the useful source-square path to the fresh same-carrier identity
  plus the selected coefficient-overrun payment on the actual selected carrier.
downstream_consequence: >-
  The next noncircular producer is no longer the bare F2S or DER label. It is
  the fresh instance of SameCarrierIdentity.A together with
  SelectedCoefficientOverrunPayment.A on the actual fresh selected carrier; the
  bounded-coefficient branch is paid by the source-square parent tail once the
  carrier identity is in force.
---

# Fresh Paired Carrier To Same-Carrier Overrun Payment

## Status

This note does not prove `FreshSourceWeightedPairedCarrierBound.A`. It records
the sharper current obstruction after the proof-mechanism audit.

The current paired carrier is

```math
I_{fresh}(P)
:=
\int_0^{T^*}
\sum_{k>N+M}2^k a_k^{fresh}(t)
\mathcal D_k^{\uparrow,fresh}(t)\,dt.
\tag{FOP.1}
```

The previous direct attack and the weighted tail-flux audit show that the
one-sided scale-gap kernel is real, but after the selected `j`-sum the residual
factor is exactly the selected weight in `(FOP.1)`. That is the remaining
theorem content.

## 1. The minimal bad profile

The paired-carrier obstruction is already visible on a one-child laminar
same-material chain. Set

```math
a_k^{fresh}=2^{-k/2}(k+1)^{-1/2},
\qquad
D_{k+4}^{fresh}\simeq 2^{-k/2}(k+1)^{-1/2}.
\tag{FOP.2}
```

Then

```math
\mathcal D_k^{\uparrow,fresh}
=
\sum_{\ell\ge k+4}2^{-\sigma(\ell-k)}D_\ell^{fresh}
\simeq
2^{-k/2}(k+1)^{-1/2}.
\tag{FOP.3}
```

The raw square tests pass:

```math
\sum_k(a_k^{fresh})^2<\infty,
\qquad
\sum_k(\mathcal D_k^{\uparrow,fresh})^2<\infty,
\qquad
\sum_k a_k^{fresh}\mathcal D_k^{\uparrow,fresh}<\infty.
\tag{FOP.4}
```

But the selected paired carrier diverges:

```math
\sum_k2^k a_k^{fresh}\mathcal D_k^{\uparrow,fresh}
\simeq
\sum_k{1\over k+1}
=\infty.
\tag{FOP.5}
```

Therefore same-material co-location is still too weak. The theorem must make
the lower fresh source and the upper active queue one selected-weighted charged
transaction.

## 2. What the two named mechanisms really say

The factorized route is valid only as a coupled two-scale theorem. It must
control

```math
\mathcal A_{\ell,r}^{fresh}(t)
=
\int \widetilde\Sigma_r^{fresh}(x,t)z_{fresh}(\ell,x,t)\,dx,
\qquad r\ge c_1\ell,
\tag{FOP.6}
```

with square budgets on the two factors. The installed spatial Holder and
far-corona factorizations do not supply this. They collapse to the finite-band
endpoint/source-square wall.

The DER route is also sharper than the old wording. The proof-mechanism audit
demotes generic `EP` language and identifies the second component as affine
quotient kill. Thus the honest route is

```math
\text{DER}+\text{AQK}\Longrightarrow\text{far-corona closure}.
\tag{FOP.7}
```

The installed signed scale descent is one derivative short: it removes the
constant quotient but leaves the scale-average potential / positive endpoint
mass. So DER+AQK is a real mechanism, not a proved supplier.

## 3. Endpoint square collapses to source-square

The fixed-band endpoint route is not an independent branch. The source-square
dominance note proves

```math
\mathrm{FBE}_N(W)
\le
C_{I,J,E_0}\mathcal R_{N-C_{I,J}}(W).
\tag{FOP.8}
```

Hence a native source-square reserve proves the fixed-band endpoint theorem,
then the endpoint/AQK consumer. The reverse implication is not available.
The useful endpoint branch therefore points back to the source-square / active
square reserve, not to a separate endpoint theorem.

On the selected native trilinear carrier, the source-square wall has already
been split. Once the same carrier has been identified, the bounded-coefficient
branch

```math
\alpha_j^+\le K\nu r_j^{-2}
\tag{FOP.9}
```

is paid by the parent source-square tail. The only same-carrier product branch
left is

```math
\alpha_j^+>K\nu r_j^{-2}
\tag{FOP.10}
```

on the actual selected carrier.

## 4. Fresh same-carrier overrun statement

The sharpened conditional producer is the fresh instance of the existing split:

```math
\boxed{
\text{FreshSameCarrierIdentity.A}
+
\text{FreshSelectedCoefficientOverrunPayment.A}
}
\tag{FOP.11}
```

Here `FreshSameCarrierIdentity.A` means that the lower fresh visible/silent /
exchange source and the upper active queue in `(FOP.1)`, after localization,
projection, packet selection, lifting/weighting, and positive-part extraction,
are identified with the same selected positive native trilinear carrier to
which the source-square failure split applies.

`FreshSelectedCoefficientOverrunPayment.A` means a payment theorem on the same
selected overrun layer. In normalized variables the overrun product has the
form

```math
\Sigma_j^+|W_j|^2,
\qquad
\Sigma_j^+>K\nu.
\tag{FOP.12}
```

The installed consumer bridge gives the exact Holder route:

```math
\int_{E_{j,\theta}^{over}}\Sigma_j^+|W_j|^2
\le
\left(
\int_{E_{j,\theta}^{over}}(\Sigma_j^+)^{5/2}
\right)^{2/5}
\left(
\int_{E_{j,\theta}^{over}}|W_j|^{10/3}
\right)^{3/5}.
\tag{FOP.13}
```

So the overrun payment must produce one of the following on the same layer:

```math
\boxed{
\begin{array}{c}
\text{critical-strain terminal tail depletion},\\[1mm]
\text{velocity-critical terminal tail depletion},\\[1mm]
\text{strict exponent slack on one factor},\\[1mm]
\text{same-carrier source-square/product control},\\[1mm]
\text{strict no-waste, square saturation, no-free Zeno, or profile rigidity}.
\end{array}}
\tag{FOP.14}
```

Uniform critical bounds alone do not pay `(FOP.12)`, because both critical
factors can concentrate on the same terminal strip while their individual
critical norms stay bounded.

## 5. Conditional reduction

The source-square branch of the paired-carrier program is therefore:

```math
\boxed{
\text{FreshSameCarrierIdentity.A}
+
\text{FreshSelectedCoefficientOverrunPayment.A}
\Longrightarrow
\text{Fresh selected source-square domination}
}
\tag{FOP.15}
```

Together with the existing source-square-to-endpoint consumer bridges, this is
a concrete route for paying the finite-band/AQK endpoint survivor inside the
paired-carrier proof mechanisms.

The reduction is still conditional. If `(FOP.1)` is not the same selected
positive native carrier, the live wall is `FreshSameCarrierIdentity.A`. If the
identity is in force, the bounded coefficient part is already paid and the live
wall is `FreshSelectedCoefficientOverrunPayment.A`.

## 6. Current next hinge

The better Gold object is now:

```text
FreshSameCarrierIdentityAndSelectedOverrunPayment.A
```

Statement:

For every retained stopped root `P`, after spent-source projection,
selector/reselection payment, silent-source normal form, full-exchange refunds,
entrance/legal, subheat, recirculation, and weighted tail-flux reductions,
either

```math
\int_0^{T^*}
\sum_{k>N+M}2^k a_k^{fresh}(t)
\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{FOP.16}
```

or the remaining failure is exactly one of:

```math
\boxed{
\text{fresh same-carrier identity failure}
\quad\text{or}\quad
\text{fresh selected coefficient-overrun payment failure}.
}
\tag{FOP.17}
```

A direct bounded-below storage form would also close the local fresh theorem:

```math
d\mathscr A_{P,fresh}
+c_N\sum_{k>N+M}2^k a_k^{fresh}(t)
\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
dR_P^{legal}(t),
\qquad
\mathscr A_{P,fresh}\ge -C_N(u_0)\mathcal R(P).
\tag{FOP.18}
```

But `(FOP.18)` is the local fresh paired-carrier theorem itself. The sharper
attack is to prove `(FOP.11)`: identify the actual selected fresh carrier, then
pay the overrun layer where \(\alpha_j^+>K\nu r_j^{-2}\).

## 7. Result

This work unit does not close Gold. It changes the active attack surface. Bare
`SameMaterialFactorizedTwoScaleFreshSourceCarleson.A` and bare
`SameMaterialDERplusAQKFreshSourceRoute.A` are mechanism names until they
produce the coupled same-material estimate. The source-square/endpoint branch
now has a sharper live producer: fresh same-carrier identity plus selected
coefficient-overrun payment on the actual carrier.