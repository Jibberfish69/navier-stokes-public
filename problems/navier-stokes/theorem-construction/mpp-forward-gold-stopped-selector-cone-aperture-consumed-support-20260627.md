---
theorem_id: forward-gold-stopped-selector-cone-aperture-consumed-support-20260627
status: consumed-as-structural-support-not-independent-frontier
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedSelectorConeAperture.A
  - FreshCommonSelectorRefinementNoLoss.A
  - FreshSelectedPrimitiveAlignment.A
---

# Stopped selector cone aperture as consumed support

## 1. Target

The stopped-core alignment note required a uniform cone aperture:

```math
\mathcal C_{\mathfrak R}^{\theta}
=\{S:\Gamma_{\mathfrak R}(S)\ge \theta\|S\|_{sel}\},\qquad \theta>0.
```

The question is whether this is an additional analytic theorem or already part of the stopped common-selector construction.

## 2. Structural role of the stopped selector

The stopped carrier record is

```math
\mathfrak R(Q)=(\mathfrak C(Q),\sigma(Q),\chi(Q),P(Q),\kappa(Q)).
```

Here `chi(Q)` is the selector/order-lock datum and `sigma(Q)` is the signed primitive channel. A child remains in the stopped-core branch only when

```math
\mathfrak R(Q')=\mathfrak R(Q).
```

Therefore the retained selected source cannot leave the fixed selected cone without changing the stopped record.

If a fresh source increment `S` satisfies

```math
\Gamma_{\mathfrak R}(S)<\theta\|S\|_{sel},
```

then one of the following occurs:

1. the selector/order-lock changes, so the transaction is in the fresh-reset branch;
2. the increment is not retained by the stopped selector;
3. the transfer to another selector/channel is paid by legal/donor loss.

Hence, inside the stopped-core branch, the aperture condition is part of the branch definition after `FreshCommonSelectorRefinementNoLoss.A`.

## 3. Consequence

For every retained unpaid stopped-core transaction,

```math
S\in\mathcal C_{\mathfrak R}^{\theta},
```

so

```math
\|S\|_{sel}\le \theta^{-1}[\Gamma_{\mathfrak R}(S)]_+.
```

Thus the selector cone aperture supplies the signed-channel coercivity needed for primitive PLS realization, modulo primitive-record compatibility.

## 4. Result

`StoppedSelectorConeAperture.A` is not a separate analytic frontier. It is consumed structural support from the stopped common-selector refinement.

The stopped-core branch frontier therefore moves to the actual finite-return estimate:

```text
StoppedNegativeScaleReturnCharge.A
```

The reset branch remains:

```text
FreshSelectedCoefficientOverrunPayment.A / CriticalWeightedParentChildResetCarleson.A.
```