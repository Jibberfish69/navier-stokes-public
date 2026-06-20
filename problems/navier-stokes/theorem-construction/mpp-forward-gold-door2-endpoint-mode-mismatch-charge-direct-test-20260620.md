# Door 2 Endpoint Mode Mismatch Charge Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `EndpointModeMismatchCharge.A` is not proved by the
current Door 2 source-mode inputs.

The obstruction is exact: a co-transported donor test can be constant along
retained donor edges, but the proof needs the canonical Door 2 dual mode test.
The difference between those two tests is multiplied by the selected source
weight.  Existing Bessel, lower-frame, and normalized-adjoint inputs do not
control that weighted difference.

## 1. Target under test

Let `psi_i(P)` be the canonical Door 2 dual mode test on terminal packet `P`,
let `theta_i(P)` be the co-transported donor test, and let `q_m(P)` be the
signed selected source weight.  The needed endpoint charge is

```math
\sum_{P\in\mathcal S_m}
|q_m(P)|\,|\psi_i(P)-\theta_i(P)|
\le
\operatorname{Legal}^{mis}_{m,i}+o_m(1).
\tag{EMM.1}
```

This is the missing payment term in the co-transported mode-shadow route.

## 2. Immediate sufficient inputs

The charge follows from uniform endpoint agreement on the selected carrier:

```math
\sup_{P\in\mathcal S_m}
|\psi_i(P)-\theta_i(P)|
\le
\epsilon_m,
\qquad
\sum_{P\in\mathcal S_m}|q_m(P)|\le C,
\qquad
\epsilon_m\to0.
\tag{EMM.2}
```

Then

```math
\sum_{P\in\mathcal S_m}
|q_m(P)|\,|\psi_i(P)-\theta_i(P)|
\le C\epsilon_m.
\tag{EMM.3}
```

It also follows from a source-weighted gauge travel charge:

```math
|\psi_i(P)-\theta_i(P)|
\le
L_i\,d_{\rm mod}(P),
\tag{EMM.4}
```

and

```math
\sum_{P\in\mathcal S_m}
|q_m(P)|\,d_{\rm mod}(P)
\le
\operatorname{Legal}^{gauge}_{m,i}+o_m(1).
\tag{EMM.5}
```

Neither `(EMM.2)` nor `(EMM.5)` is installed in the current Door 2 package.

## 3. One-packet obstruction

Finite `L^1` selected source mass does not imply `(EMM.1)`.  Take one selected
packet `P_m` with

```math
|q_m(P_m)|=A,
\qquad
\psi_i(P_m)=1,
\qquad
\theta_i(P_m)=-1.
\tag{EMM.6}
```

Then

```math
\sum_P |q_m(P)|=A,
\tag{EMM.7}
```

but

```math
\sum_P |q_m(P)|\,|\psi_i(P)-\theta_i(P)|
=2A.
\tag{EMM.8}
```

Thus finite selected source mass alone leaves endpoint mismatch equal to `2A`.

## 4. Two-donor lower-frame obstruction

The donor-adjoint lower-frame package does not charge `(EMM.1)`.  The reason is
the same no-null-source obstruction already found for `DonorReserveAdjointTrace.A`.

Let the selected source cloud be `A=(a_1,a_2)` and the child observation map be

```math
B(a_1,a_2)=a_1-a_2.
\tag{EMM.9}
```

The Bessel direction holds:

```math
|B(a_1,a_2)|^2
\le
2(a_1^2+a_2^2).
\tag{EMM.10}
```

For the source cloud

```math
A=(1,1),
\tag{EMM.11}
```

the donor mass is nonzero but

```math
BA=0.
\tag{EMM.12}
```

Now choose a mode mismatch vector

```math
\delta\psi
=
(\psi_i-\theta_i)
=
(1,1).
\tag{EMM.13}
```

Then the endpoint mismatch is nonzero:

```math
\langle A,\delta\psi\rangle=2,
\tag{EMM.14}
```

while the child observation still sees zero:

```math
BA=0.
\tag{EMM.15}
```

So an adjoint Bessel estimate and a terminal response lower frame cannot
control endpoint mode mismatch unless the selected donor cloud is known to have
no uncharged null component relative to the mode endpoint test.

## 5. Heat-window persistence

Time localization does not remove the obstruction.  On a terminal heat window
`I_j` of length `h_j`, set

```math
A_j(t)
=
h_j^{-1/2}(1,1){\bf 1}_{I_j}(t),
\qquad
\delta\psi_j=(1,1).
\tag{EMM.16}
```

Then

```math
\int_{I_j}\|A_j(t)\|_{\ell^2}^2\,dt=2,
\qquad
\int_{I_j}\|B A_j(t)\|_{\ell^2}^2\,dt=0,
\tag{EMM.17}
```

and

```math
\int_{I_j}
|\langle A_j(t),\delta\psi_j\rangle|^2\,dt
=4.
\tag{EMM.18}
```

Thus the endpoint mode mismatch can remain fixed on the terminal heat scale
while the selected child observation is zero.

## 6. Exact reduction

At current input strength, the usable conditional theorem is

```math
\boxed{
\text{EndpointModeMismatchCharge.A}
\Leftarrow
\text{UniformEndpointModeAgreementOnSelectedCarrier.A}
}
\tag{EMM.19}
```

or

```math
\boxed{
\text{EndpointModeMismatchCharge.A}
\Leftarrow
\text{ModeEndpointLipschitz.A}
+
\text{SameShadowSourceWeightedGaugeTravelCharge.A}.
}
\tag{EMM.20}
```

or

```math
\boxed{
\text{EndpointModeMismatchCharge.A}
\Leftarrow
\text{LowerFrameNoNullAdjointModeReadout.A}.
}
\tag{EMM.21}
```

These inputs are not installed.

## Verdict

`EndpointModeMismatchCharge.A` is not a free consequence of finite selected
source mass, co-transport, Bessel embedding, terminal response lower frame, or
normalized-adjoint propagation.  It is another form of the same missing
source-weighted visibility theorem: selected terminal source must not carry an
uncharged null, near-null, or endpoint-gauge component invisible to the native
adjoint/readout ledger.

So this branch returns to the already-live currencies:

```math
\text{NoNullSourceParentCloud.A}
+
\text{SelectedPolarSaturation.A},
\tag{EMM.22}
```

or the stronger native suppliers

```math
\text{SourceSquareReserve.A},
\quad
\text{SameShadowSourceWeightedGaugeTravelCharge.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{EMM.23}
```
