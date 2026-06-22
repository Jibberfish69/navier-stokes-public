---
theorem_id: forward-gold-gauge-fixed-fourbody-storage-coercivity-direct-attempt-20260621
status: direct-attempt-fails-current-storage-lacks-base-meanfree-energy-control
logical_landing_node: gauge_fixed_fourbody_storage_coercivity_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-storage-controls-normalized-terminal-packet-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# Gauge-Fixed Four-Body Storage Coercivity Direct Attempt

Date: 2026-06-21

## 0. Target

The needed gold-only subline is

```math
\boxed{
\|U_m\|_{L_s^\infty L_y^2(Q_1)}^2
+\|\nabla_yU_m\|_{L^2_{s,y}(Q_1)}^2
\le
C\,L_{4B,m}^{gq}+R_{legal,m},
}
\tag{GSC.1}
```

where

```math
U_m(s,y)=V_m(s,y)-\langle V_m(s)\rangle_{\eta_m}
```

is the Galilean-quotient velocity.

This would feed the endpoint trace producer by interpolation:

```math
U_m\in L_{s,y}^{10/3},
\qquad
\int_{collar}|U_m|^3\in L_s^{10/9}.
```

## 1. What Poincare gives

For each fixed time,

```math
\int_{B_1}\eta_m^2|U_m(s)|^2\,dy
\le
C\int_{B_1}|\nabla_yV_m(s)|^2\,dy
+R_{cut,m}(s).
\tag{GSC.2}
```

This is a pointwise-in-time inequality.  It yields

```math
\|U_m(s)\|_{L_y^2}^2\lesssim \|\nabla_yV_m(s)\|_{L_y^2}^2+R_{cut,m}(s).
```

Thus pointwise mean-free energy is controlled by pointwise gradient, not by the time-integrated four-body drain.

The current four-body drain gives

```math
\int_{-1}^{0}\|\nabla_yV_m(s)\|_{L_y^2}^2\,ds\le C
```

when the base viscous drain is included.  This controls `U_m` in `L_s^2L_y^2`, not in `L_s^\infty L_y^2`.

## 2. The precise obstruction

A time-concentrating mean-free model shows the gap between integrated drain and supremum storage.

Let \(\phi\in C_c^\infty(B_1)\) with mean zero and set

```math
U_m(s,y)=A_m\,\mathbf 1_{(-\tau_m,0]}(s)\,\phi(y),
\qquad
A_m=\tau_m^{-1/2},
\qquad
\tau_m\downarrow0.
\tag{GSC.3}
```

Then

```math
\int_{-1}^{0}\int|\nabla U_m|^2\,dy\,ds
=A_m^2\tau_m\int|\nabla\phi|^2\,dy
=\int|\nabla\phi|^2\,dy,
\tag{GSC.4}
```

but

```math
\|U_m\|_{L_s^\infty L_y^2}^2
=A_m^2\|\phi\|_2^2
=\tau_m^{-1}\|\phi\|_2^2\to\infty.
\tag{GSC.5}
```

This model is not asserted as a Navier-Stokes solution.  It proves a structural fact about the proposed coercivity: integrated drain plus Galilean quotient is not enough to produce the required `L_s^\infty L_y^2` control. A positive base local-energy storage or a genuine time-trace/no-jump modulus is required.

## 3. What current four-body storage controls

The installed four-body storage is a bounded-below capacity/drop for selected participation. It controls the order-locked full-packet activity through

```math
\partial_\sigma L_{4B}+D_{4B}+cA_{4B}\le R_{4B}.
\tag{GSC.6}
```

This supplies:

```math
\int D_{4B}<\infty,
\qquad
\int A_{4B}<\infty,
```

provided the endpoint no-jump/Hardy issue is handled.

It does not presently contain the positive base storage

```math
M_m^{gq}(s)={1\over2}\int\eta_m^2|U_m(s)|^2\,dy.
\tag{GSC.7}
```

Therefore it cannot imply

```math
\sup_s M_m^{gq}(s)\le C
```

by coercivity alone.

## 4. The only way this line closes on the gold route

There are two valid gold-only repairs.

### Repair A: add base gauge-fixed storage to the four-body functional

Define

```math
\widetilde L_{4B}=L_{4B}+M^{gq}.
\tag{GSC.8}
```

Then storage coercivity is tautological:

```math
M^{gq}(s)\le \widetilde L_{4B}(s)-L_{4B}(s).
```

But differentiating `M^{gq}` gives the local energy boundary flux:

```math
\partial_s M^{gq}+\nu\int\eta^2|\nabla V|^2
=H^{gq}_{collar}+H^{gq}_{press}+H^{gq}_{cut}+H^{gq}_{gauge}.
\tag{GSC.9}
```

So Repair A closes only after the added boundary flux is paid by the same endpoint trace producer. This is not a free proof; it moves the problem to `FourBodyEndpointTraceLpProducer.A` with base energy included as storage.

### Repair B: prove endpoint trace Lp directly without an L-infinity energy bound

The Hardy route only needs

```math
[H_m]_+\in L_s^p,\qquad p>1.
```

A direct `L_s^p` estimate could avoid proving `L_s^\infty L_y^2`.  This would be a stronger endpoint trace theorem and would bypass `(GSC.1)` as a sufficient route.

## 5. Result

`GaugeFixedFourBodyStorageCoercivity.A` is not produced by the current four-body storage.

The precise failed implication is:

```math
\int_{-1}^{0}\|\nabla V_m\|_2^2\,ds<\infty
\quad\not\Rightarrow\quad
\sup_s\|V_m-\langle V_m\rangle\|_2^2<\infty
```

with uniform constants on terminal heat-scale packets.

Thus the gold-only frontier is sharpened:

```math
\boxed{
\text{install base gauge-fixed local-energy storage in }L_{4B}
\text{ and pay its boundary flux,}
}
```

or

```math
\boxed{
\text{prove the endpoint trace }L_s^p\text{ reserve directly without }L_s^\infty L_y^2.
}
```

Current installed inputs do neither.  The next gold attempt should therefore target the base-storage enlargement and its boundary flux in one combined local-energy endpoint trace estimate.