---
theorem_id: forward-gold-c0-negative-return-square-to-linear-admission-verdict-20260707
date: 2026-07-07
lane: forward-gold
target: c_0 epsilon extraction
status: checked-strict-reduction-not-proof
verdict: negative-return-is-square-geometry-consumer-plus-selected-return-admission
---

# Negative Return: Square Geometry Consumer Plus Selected-Return Admission

## Completion truth

This note does not prove `c_0 > 0`. It corrects the repeated-core branch of the
same-edge strict half-barrier proof pass.

`SameEdgeNegativeScaleReturnCharge.A` is not an independent source theorem. A
fixed parent-known stopped score gives a noncircular square payment for return
motion, but linear one-way return BV needs selected-return admission in the same
parent-owned bill currency. Thus the repeated-core branch lowers to:

```text
fixed same-edge stopped score / signed lift
+ original-history potential-record root bound
+ selected-return square-to-linear admission.
```

The unresolved part is the selected-return admission/lower-thickness theorem,
which is the return-side face of same-edge pre-readout custody and
parent-owned bill currency.

## Physical object

The object is a repeated-core retained record on one original Navier-Stokes
material history. The parent-known stopped channel fixes

```math
P_R=\Gamma_R Z^S
\tag{NRV.1}
```

before selected positive-part readout. Here \(Z^S\) is the stopped routed
carrier/current coordinate and \(\Gamma_R\) is the parent-known selector,
covector, order-lock, and frame readout.

Moving \(P_R\) is not a detached scalar oscillation. Its derivative is

```math
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S.
\tag{NRV.2}
```

The two terms are same-fluid carrier motion and selector/frame/connection
motion. This is the real physical content of the fixed stopped score.

## What the fixed score pays

For a return interval \(I\),

```math
\Delta_I^-P_R=[P_R(\sigma_-)-P_R(\sigma_+)]_+.
\tag{NRV.3}
```

Weighted Cauchy gives

```math
(\Delta_I^-P_R)^2
\le
\left(\int_Iw^{-1}\,d\sigma\right)
\left(\int_Iw|\partial_\sigma P_R|^2\,d\sigma\right).
\tag{NRV.4}
```

Equivalently, with harmonic active weight

```math
H_I={|I|^2\over \int_Iw^{-1}\,d\sigma},
\tag{NRV.5}
```

one has

```math
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
\int_Iw|\partial_\sigma P_R|^2\,d\sigma.
\tag{NRV.6}
```

Using `(NRV.2)' and stopped overlap, the available original-history estimate is

```math
\sum_I
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N\int_{\operatorname{Hist}(P)}
w|G_{\rm root}|^2
+Legal+Stop.
\tag{NRV.7}
```

This proves that negative return is not a free scalar signal once the stopped
score is parent-known. It gives square return currency.

## What it does not pay

The c_0 repeated-core record/return descent needs the linear statement

```math
\sum_I\Delta_I^-P_R
\le
C_N(u_0)+Legal+Stop.
\tag{NRV.8}
```

Equation `(NRV.8)' does not follow from `(NRV.7)' alone. If

```math
a_I=\sqrt{H_I}{\Delta_I^-P_R\over |I|},
\tag{NRV.9}
```

then `(NRV.7)' controls \(\sum_Ia_I^2\), while linear BV reads

```math
\sum_I\Delta_I^-P_R
=
\sum_I{|I|\over\sqrt{H_I}}a_I.
\tag{NRV.10}
```

So square control becomes linear BV only after one more same-edge admission
fact: retained selected returns must have lower thickness, bounded inverse
weight, or an equivalent normalization inside the harmonic square currency.

The concrete admission forms are:

```math
\Delta_I^-P_R\ge \eta |I|
\quad\text{on retained selected returns,}
\tag{NRV.11}
```

or

```math
\sum_I\int_Iw^{-1}\,d\sigma
\le
C_N\mathcal R(P)+Legal+Stop,
\tag{NRV.12}
```

or the selected normalization that every retained return counted by the record
is counted in `(NRV.7)' with finite overlap.

## Same-edge verdict

The repeated-core branch should therefore not carry
`SameEdgeNegativeScaleReturnCharge.A` as a separate bottom. The sharper input is

```text
SameEdgeSelectedReturnAdmissionToLinearBV.A.
```

This theorem says that a return counted by the selected record is the same
parent-known event, same primitive face, same chart/projector-licensed edge,
and same harmonic bill-visible interval used by the square return currency.

Equivalently:

```text
fixed stopped score + square root-geometry return payment
+ SameEdgeSelectedReturnAdmissionToLinearBV.A
=> SameEdgeNegativeScaleReturnCharge.A.
```

The first two clauses are fixed-channel consumers. The admission clause is the
remaining producer.

## Consequence for the same-edge half-barrier pass

The repeated-core side of
`OriginalHistorySameEdgeStrictHalfBarrierOrTypedExit.A` now lowers as:

```text
SameEdgePrimitiveSignedScalePotentialLift.A
+ SameEdgePotentialRecordRootBound.A
+ SameEdgeSelectedReturnAdmissionToLinearBV.A
=> repeated-core half-tail exclusion.
```

The shrinking-core branch remains

```text
SameEdgeEscapingCoreCapacityPacking.A.
```

Thus the current same-edge direct pass has three repeated-core producer inputs
and one shrinking-core producer input. The return-side producer is not negative
return as a scalar bill; it is selected-return admission into the same
parent-owned square bill currency before readout.
