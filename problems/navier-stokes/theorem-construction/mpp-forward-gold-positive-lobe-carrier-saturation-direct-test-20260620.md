# Positive-Lobe Carrier Saturation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `PositiveLobeCarrierSaturation.A` is not installed by
single-lobe concentration, mode-positive lobe concentration, finite signed
readout coherence, endpoint readout polarization, or scalar retained partners.

The theorem is the selected positive polar saturation problem restricted to a
nonnegative lobe weight.

## 1. Target

Let \(q_N(P)\) be the signed local pre-Cauchy source on the selected packet
family.  Let

```math
\zeta_N(P):=\psi_N^+(P)=[\psi_N(P)]_+,
\qquad
0\le \zeta_N(P)\le1.
\tag{PLC.1}
```

The positive-lobe carrier is

```math
C_{\zeta,N}^+(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
\zeta_N(P)[q_N(P)]_+ .
\tag{PLC.2}
```

The signed lobe readout is

```math
R_{\zeta,N}(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
\zeta_N(P)q_N(P).
\tag{PLC.3}
```

The desired saturation estimate is

```math
\boxed{
C_{\zeta,N}^+(q_N)
\le
C|R_{\zeta,N}(q_N)|
+\operatorname{Legal}_{\zeta,N}
+o_N(1).
}
\tag{PLC.4}
```

or the same estimate with \(R_{\zeta,N}\) replaced by the full usable
same-shadow signed readout norm in the finite lobe test class.

## 2. The automatic inequality has the wrong direction

For every selected family,

```math
C_{\zeta,N}^+(q_N)
\ge
\left[R_{\zeta,N}(q_N)\right]_+.
\tag{PLC.5}
```

This follows from

```math
\sum_P \zeta_N(P)[q_N(P)]_+
\ge
\left[
\sum_P\zeta_N(P)q_N(P)
\right]_+ .
\tag{PLC.6}
```

The gold route needs control in the opposite direction, modulo legal and donor
costs.  That opposite direction is exactly the saturation theorem.

## 3. Single-lobe concentration does not prove saturation

Even when all positive source lies in one positive lobe, signed cancellation can
hide it.

Take two selected packets with

```math
\zeta(P_1)=1,
\qquad
\zeta(P_2)=1,
\tag{PLC.7}
```

and

```math
q(P_1)=A,
\qquad
q(P_2)=-A,
\qquad
A>0.
\tag{PLC.8}
```

Then the signed lobe readout vanishes:

```math
R_{\zeta}(q)=A-A=0,
\tag{PLC.9}
```

while the positive-lobe carrier is nonzero:

```math
C_{\zeta}^+(q)=A.
\tag{PLC.10}
```

This example satisfies the single-lobe location condition for the positive
source.  It also satisfies finite selected source mass and bounded overlap.
Thus `SingleLobeSourceCarrier.A` and `ModePositiveLobeCarrierConcentration.A`
do not imply `(PLC.4)`.

## 4. Endpoint readout polarization is also insufficient

Finite endpoint readout polarization controls oriented signed quantities such
as

```math
\left|
\sum_\alpha a_\alpha
\bigl(\zeta(R_\alpha)-\zeta(D_\alpha)\bigr)
\right|.
\tag{PLC.11}
```

It does not control

```math
\sum_\alpha a_\alpha\zeta(R_\alpha).
\tag{PLC.12}
```

When \(\zeta(R_\alpha)=\zeta(D_\alpha)=1\), the signed endpoint readout is zero
and the positive receiver carrier remains \(a_\alpha\).  This is the endpoint
carrier/readout split already isolated by
`EndpointCarrierPolarSaturation.A`.

## 5. Exact reduction

`PositiveLobeCarrierSaturation.A` is precisely the lobe-restricted form of
selected positive polar saturation:

```math
\boxed{
\text{PositiveLobeCarrierSaturation.A}(\zeta)
=
\text{EndpointCarrierPolarSaturation.A}(\zeta)
\text{ / same-ledger selected polar saturation on }\zeta q.
}
\tag{PLC.13}
```

After retained signed partners, legal exits, entrance leaves, and finite donor
chains are paid, the only unpaid branch is the same terminal Zeno donor-chain
branch:

```math
\boxed{
\text{PositiveLobeCarrierSaturation.A}(\zeta)
\Leftarrow
\text{TerminalSignedSaturation.A on the }\zeta\text{-weighted ledger}
\Leftarrow
\text{NoFreeTerminalZenoDonorChain.A}
}
\tag{PLC.14}
```

provided the lobe weight is legal on the same selected carrier and the
associated lift/projection/cutoff commutators are paid.

## Verdict

`PositiveLobeCarrierSaturation.A` is not a lobe-location theorem.  It remains a
same-ledger saturation theorem:

```math
\sum_P\zeta(P)[q(P)]_+
\quad\text{must be controlled by}\quad
\sum_P\zeta(P)q(P)
\tag{PLC.15}
```

modulo legal and donor costs.  Current inputs do not install that control.  The
branch reduces to lobe-weighted terminal signed saturation, endpoint carrier
polarization, no-free terminal Zeno donor-chain control, or same-carrier
source-square/strict no-waste domination.
