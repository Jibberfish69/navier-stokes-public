---
ns_viewer:
  theorem_id: scale-critical-payment-throttle-energy-only-direct-test-20260611
  status: energy-only-throttle-false-at-critical-scale
  proof_role: forward_positive_payment_throttle_test
  logical_landing_node: scale_critical_payment_throttle
  edge_effect: "Tests whether finite total energy and the fixed-scale packet ledger can by themselves prove ScaleCriticalPaymentThrottle.A. They cannot: critical packets have vanishing stored energy but require divergent payment power, and the known flux bound contains scale-critical or supercritical terms."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cone-payment-closure-package-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-estimate-direct-audit-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md
  downstream_consequence: "ScaleCriticalPaymentThrottle.A cannot be supplied by total energy decay or fixed-scale accounting alone. It requires a new scale-critical flux-pressure-dissipation estimate, a cancellation theorem, or prior cone scale-critical smallness."
---

# MPP ScaleCriticalPaymentThrottleEnergyOnlyDirectTest.A

Date: 2026-06-11

Status: direct test of the energy-only throttle idea. The energy-only version is
false at the critical scaling.

## 1. Critical Packet Accounting

At spatial scale `r`, define the critical velocity unit

```text
U_c(r) = nu/r.
```

For a dimensionless benchmark amplitude `A`, set

```text
U_bench(r;A) = A nu/r.
```

define the benchmark stored kinetic energy in a ball of radius `r` by

```text
E_A(r;A) = omega_3 A^2 nu^2 r.
```

This is a benchmark amplitude, not a local profile assertion.  It does not say
that the velocity changes linearly across `B_r`, and it does not identify the
actual oscillation with `U_bench(r;A)`.  Any use on a real packet must come from a
separate oscillation, gradient, carrier, or concentration hypothesis.

The viscous time scale is

```text
tau_nu(r) = r^2/nu.
```

So the payment power needed to build or sustain that packet on its natural
clock is

```text
P_A(r;A) = E_A(r;A)/tau_nu(r)
         = omega_3 A^2 nu^3/r.
```

The key asymmetry is:

```text
E_A(r;A) -> 0       when A is bounded and r -> 0,
P_A(r;A) -> infinity.
```

Finite total energy can exclude large stored energy. It does not exclude a
critical small-scale packet by amount, because the amount tends to zero.

## 2. Total Energy Does Not Bound Instantaneous Local Payment Power

The fixed-scale packet ledger gives

```text
Rate_E(r,t)
<= C r^{-1} int_{A_r} |u|^3
 + C r^{-1} int_{A_r} |p-c_r||u|
 + C nu r^{-2} int_{A_r} |u|^2.
```

The last term alone gives, from total energy `E0`,

```text
C nu r^{-2} int_{A_r} |u|^2
<= C nu E0 r^{-2}.
```

The full-volume benchmark payment demand is

```text
P_A(r;A)=omega_3 A^2 nu^3/r.
```

For bounded `A`, the energy-only upper bound is larger by one power of
`1/r`:

```text
nu E0 r^{-2}
versus
nu^3 r^{-1}.
```

So total energy does not throttle the rate below the critical demand as
`r -> 0`.

The cubic and pressure terms are stronger still. At benchmark amplitude, the
cubic transport load has this value only under an explicit positive-measure
amplitude hypothesis. If an annulus `A_r` has volume constant `omega_A` and
`|u|=A nu/r` on that benchmark annulus, then

```text
r^{-1} int_{A_r} |u|^3
= omega_A A^3 nu^3/r.
```

Without that hypothesis, the proof keeps the actual term
`r^{-1} int_{A_r}|u|^3`. Under a weaker superlevel hypothesis
`|G_r(t)|>=theta |A_r|` and `|u|>=c A nu/r` on `G_r(t)`, the lower bill is
`theta c^3 omega_A A^3 nu^3/r`. This has the same `r^{-1}` power as the
critical payment demand when `A` is bounded above and below, and larger
amplitude power when `A` grows.

## 3. Time-Integrated Dissipation Is Also Not A Pointwise Throttle

The global energy inequality supplies

```text
sup_t int |u(t)|^2 dx
+ 2nu int_0^T int |nabla u|^2 dx dt
<= E0.
```

This gives finite total dissipation over time. It does not give a uniform
pointwise-in-time cap on the local rate entering one shrinking receiver.

On intervals of length `r^2/nu`, a finite integral allows large values on small
subintervals unless an additional reverse-Holder, local smoothing, or
scale-critical spacetime estimate is proved. That additional theorem is exactly
what `ScaleCriticalPaymentThrottle.A` would need to supply.

## 4. Result

The energy-only payment throttle is not a valid forward-positive closure:

```text
finite total energy
+ fixed-scale packet ledger
does not imply
Pay_in(rho;I_r) < the explicit benchmark/superlevel payment bill
uniformly as r -> 0.
```

The remaining valid target is narrower:

```text
ScaleCriticalPaymentThrottle.A
```

must prove a genuinely scale-critical bound on the transport, pressure, viscous
wall, and donor terms, or derive a cancellation/attenuation law that lowers
their combined contribution below the critical payment demand.

Without that structural estimate, the transfer-rate route is an accounting
identity plus a scaling threshold, not a proof of regularity at the cone tip.
