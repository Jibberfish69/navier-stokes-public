---
theorem_id: forward-gold-laminar-positive-flux-inheritance-direct-attack-20260626
status: direct-attack-installed-raw-root-bellman-fails-strong-root-equivalent-to-first-ratio
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: LaminarPositiveFluxInheritance.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-parent-child-flux-bellman-target-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-flux-bellman-monotonicity-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-flux-reserve-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-positive-flux-inheritance-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-ratio-tail-obstruction-20260626.md
---

# Laminar Positive-Flux Inheritance Direct Attack

This note attacks the current Bellman hinge:

```text
LaminarPositiveFluxInheritance.A
```

The target is to construct a nonnegative gauge-reduced parent reserve \(B(Q)\)
such that, for every laminar material node \(Q\),

```math
\sum_{Q'\in ch(Q)}A(Q')
+\sum_{Q'\in ch(Q)}B(Q')
\le
B(Q)+R_{\rm legal}(Q),
\tag{LPI.1}
```

with \(B(Q_{\rm root})\) finite from original data.

## 1. Telescoping consequence

On a one-child laminar chain

```math
Q_0\supset Q_1\supset Q_2\supset\cdots,
```

`(LPI.1)` gives, for every \(M\),

```math
\sum_{k=1}^{M}A(Q_k)+B(Q_M)
\le
B(Q_0)+\sum_{k=0}^{M-1}R_{\rm legal}(Q_k).
\tag{LPI.2}
```

Since \(B\ge0\),

```math
\sum_{k=1}^{M}A(Q_k)
\le
B(Q_0)+\sum_{k=0}^{M-1}R_{\rm legal}(Q_k).
\tag{LPI.3}
```

Thus finite root \(B(Q_0)\) plus summable legal error immediately proves finite
first ratio action on the chain.

So monotone inheritance is not a small add-on to the laminar structure.  It is a
full first-ratio-moment reserve.

## 2. Raw finite root reserves fail

The localized affine matching audit gives heat-scale packets with raw costs

```math
E_{\rm raw}(r)\lesssim r,
\qquad
D_{\rm raw}(r)\lesssim r,
```

and the same radius scaling for fixed-collar, convective, viscous, and pressure
work, while the normalized material action remains

```math
\int_0^{r^2}|A_r|\,dt\simeq 1.
```

Consequently a dyadic terminal chain \(r_k=2^{-k}\) has

```math
\sum_k r_k<\infty,
\qquad
\sum_k A(Q_k)\simeq\sum_k1=\infty.
\tag{LPI.4}
```

This is the same separation as the half-tail:

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
```

Any \(B(Q_{\rm root})\) controlled by raw energy, raw dissipation, fixed-annulus
stress action, or fixed-collar service is finite on `(LPI.4)`.  Such a \(B\)
cannot satisfy `(LPI.3)`.

## 3. Signed boundary flux is not enough

The transported local energy identity supplies a signed same-packet boundary
transaction:

```math
{d\over dt}E_Q(t)+D_Q(t)=F_Q(t).
```

This attaches child service to the parent material packet.  It gives variation
control of the signed boundary flux, not monotone loss of a positive parent
reserve:

```math
A(Q')\le {\rm Var}(F_Q)+R_{\rm legal},
```

rather than

```math
A(Q')+B(Q')\le B(Q)+R_{\rm legal}.
```

Taking \(B(Q)=[F_Q]_+\) fails because the child can regenerate positive
gauge-reduced boundary flux from the same pressure-Hodge-stress interface after
sign change.  Taking a total-variation reserve makes the root finite only if
the first ratio action is already finite.

## 4. Direct verdict

There are two cases.

First, \(B(Q_{\rm root})\) is finite from installed raw ledgers.  Then \(B\) is
too weak to inherit high-ratio children; the affine half-tail violates the
telescoping consequence.

Second, \(B\) is strong enough to satisfy monotone inheritance.  Then
`(LPI.2)` shows that \(B(Q_{\rm root})\) already contains the first ratio moment.
Root finiteness of this \(B\) is equivalent to the missing full-action theorem.

So the direct attack does not close the Gold route.  It sharpens the remaining
theorem:

```text
RootPositiveFluxReserveCoercivity.A
```

Plain statement:

Construct a genuinely weight-bearing same-material positive-flux reserve whose
root value is finite from original data by a noncircular coercivity law.  A raw
boundary reserve, signed flux attachment, or positive-part flux readout cannot
do this.

## 5. Result

`LaminarPositiveFluxInheritance.A` remains valid only as the strong Bellman
form of the missing first-ratio reserve.  It is not proved by the current
installed ledgers.

The active Gold edge is now the noncircular root-coercivity theorem for the
strong positive-flux reserve, equivalently the original same-material
weight-beating tail law.
