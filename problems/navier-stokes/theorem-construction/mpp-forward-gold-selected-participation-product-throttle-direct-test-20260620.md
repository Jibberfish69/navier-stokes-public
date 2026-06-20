---
ns_viewer:
  theorem_id: forward-gold-selected-participation-product-throttle-direct-test-20260620
  status: direct-product-throttle-test-complete-not-proved-from-installed-inputs
  proof_role: forward_gold_linear_to_square_supplier_test
  logical_landing_node: selected_participation_product_throttle
  edge_effect: "Makes the time-Cauchy linear-to-square condition first-class. The product throttle is sufficient for SelectedParticipationSquareBudget.A, but current inputs do not prove it. Endpoint uniform integrability kills terminal atoms, but it does not by itself pay the selected square reserve."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-square-budget-direct-attempt-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-law-square-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-super-l1-source-residence-sharpness-after-zeno-child-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-height-source-residence-production-boundary-20260620.md
  downstream_refinement:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-product-throttle-failure-trichotomy-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620.md
  downstream_consequence: "Product throttle is not an installed lower theorem. It is a precise sufficient route from linear same-carrier participation residence to the unweighted selected square reserve. The remaining forward-gold burden is still square-strength same-carrier control, not mere endpoint no-atom visibility."
---

# MPP Forward-Gold Selected Participation Product-Throttle Direct Test

Date: 2026-06-20

## Status

Direct test complete.

The product throttle exposed by time Cauchy is a real sufficient route from
linear participation to square reserve.  It is not proved by the current
installed inputs.

The important refinement is that endpoint uniform integrability is weaker than
this square-payment condition.  Endpoint UI kills a terminal atom.  It does not
by itself pay the retained selected square reserve.

## 1. The product throttle

Let \(\lambda_j=2^j\), let

```math
I_j=(t_j-c\lambda_j^{-2},t_j],
```

and let

```math
\Pi_j(t):=\Pi_j^{part,+}(t)\ge0
```

be the selected positive same-fluid participation current after pressure,
convection, viscosity, cutoff, projection, commutator, selector, and legal
exits have been assembled on the same carrier.

The selected square reserve is

```math
R_j
:=
\int_{I_j}\lambda_j\Pi_j(t)^2\,dt.
\tag{SPT.1}
```

Time Cauchy gives the exact linear-to-square upper bound

```math
R_j
\le
\lambda_j\|\Pi_j\|_{L^\infty(I_j)}
\int_{I_j}\Pi_j(t)\,dt.
\tag{SPT.2}
```

Thus the product-throttle supplier would be

```math
\boxed{
\lambda_j\|\Pi_j\|_{L^\infty(I_j)}
\int_{I_j}\Pi_j(t)\,dt
\le
Legal_j+o_j(1).
}
\tag{SPT.3}
```

This proves `SelectedParticipationSquareBudget.A` immediately through
`(SPT.2)`.

The converse is not claimed.  A square estimate can be proved by another
coercive mechanism without first proving `(SPT.3)`.  This note tests only the
time-Cauchy product route.

## 2. Normalized form

Set

```math
s=\lambda_j^2(t-t_j),
\qquad
a_j(s)=\lambda_j^{-1/2}\Pi_j(t_j+\lambda_j^{-2}s).
\tag{SPT.4}
```

Then, on a fixed normalized heat interval,

```math
R_j=\int a_j(s)^2\,ds,
\tag{SPT.5}
```

while

```math
\int_{I_j}\Pi_j(t)\,dt
=
\lambda_j^{-3/2}\int a_j(s)\,ds.
\tag{SPT.6}
```

The product throttle becomes the normalized height-times-mass condition

```math
\|a_j\|_{L^\infty}
\int a_j(s)\,ds
\le
Legal_j+o_j(1).
\tag{SPT.7}
```

So the point is not merely that physical linear residence vanishes.  Physical
linear residence has the prefactor \(\lambda_j^{-3/2}\), and can vanish while
the normalized square reserve remains order one.

## 3. Heat-window pulse

The full heat-window pulse is

```math
\Pi_j(t)=\lambda_j^{1/2}{\bf 1}_{I_j}(t).
\tag{SPT.8}
```

Equivalently,

```math
a_j(s)={\bf 1}_{[-c,0]}(s).
\tag{SPT.9}
```

It has

```math
\int_{I_j}\Pi_j(t)\,dt
=
c\lambda_j^{-3/2}
\to0,
\tag{SPT.10}
```

but

```math
R_j=c,
\qquad
\|a_j\|_{L^\infty}\int a_j\,ds=c.
\tag{SPT.11}
```

Therefore linear same-window participation residence does not imply the
product throttle or the square reserve.

## 4. Endpoint UI is not enough for square payment

Endpoint uniform integrability of the normalized measures \(a_j(s)\,ds\) is the
right no-atom condition:

```math
\lim_{\theta\downarrow0}
\limsup_j
\int_{-\theta}^{0}a_j(s)\,ds
=0.
\tag{SPT.12}
```

This kills a terminal time-face atom.  It does not imply `(SPT.7)` or
`(SPT.5)`.

Indeed, take

```math
a_m(s)=m\,{\bf 1}_{(-m^{-2},0]}(s).
\tag{SPT.13}
```

Then

```math
\int_{-1}^{0}a_m(s)\,ds=m^{-1}\to0,
\tag{SPT.14}
```

so the endpoint UI condition `(SPT.12)` holds trivially.  But

```math
\|a_m\|_{L^\infty}\int a_m\,ds=1,
\qquad
\int_{-1}^{0}a_m(s)^2\,ds=1.
\tag{SPT.15}
```

Thus endpoint UI is a no-jump theorem, not a selected square-reserve theorem.
To pay the square reserve one needs a source-square estimate, a height cap
paired with mass decay, a product throttle, a sufficiently strong Orlicz
condition implying square tightness, or a different coercive identity.

## 5. Tested inputs

The current installed inputs do not prove `(SPT.3)`.

Finite physical energy and finite dissipation give radius-discounted physical
bills.  They do not bound the normalized height \(\|a_j\|_\infty\) or the
normalized square mass.

Linear participation identifies the same carrier and gives same-window
residence, but it controls only the first moment.

Pressure ellipticity is time-slice-local.  It does not spread a terminal time
layer.

Critical Holder gives the correct exponents for products such as selected
strain times selected velocity-square, but it gives critical \(L^1\) product
control unless a same-carrier reverse-Holder, Carleson, Orlicz, or square
reserve seed is added.

Endpoint UI removes a terminal atom, but `(SPT.13)`--`(SPT.15)` shows it does
not remove a thin low-mass pulse with order-one square reserve.

## 6. Exact remaining suppliers

The product-throttle route closes from any same-carrier estimate that gives

```math
\|a_j\|_\infty\int a_j\to0,
\tag{SPT.16}
```

for the actual selected carrier.

Examples are:

```math
\sup_j\|a_j\|_\infty<\infty
\quad\text{and}\quad
\int a_j\to0,
\tag{SPT.17}
```

or a direct source-square estimate

```math
\int a_j^2\,ds\le Legal_j+o_j(1),
\tag{SPT.18}
```

or a selected critical-strain / normalized-CKN Carleson theorem strong enough
to imply `(SPT.18)`, or a strict no-waste Lyapunov identity whose drop carries
the critical square action.

None of these is installed by the present local energy, pressure, linear
participation, endpoint UI, donor-chain, or fixed-radius throttle inputs.

## Verdict

`SelectedParticipationProductThrottle.A` is a valid sufficient supplier for
`SelectedParticipationSquareBudget.A`.

It is not produced by current inputs.

The clean separation is:

```math
\text{endpoint UI}
\quad\text{kills terminal atoms,}
```

whereas

```math
\text{product throttle / source-square}
\quad\text{pays the selected square reserve.}
```

The forward-gold square wall therefore remains square-strength same-carrier
control on the actual selected positive participation carrier.

The failure normal form is recorded separately in
`mpp-forward-gold-product-throttle-failure-trichotomy-20260620.md`: after
endpoint atoms, source-pulse linear residence, and non-source-residue
participation residence are separated, the pure remaining product-throttle
failure is a square-only height blowup.
