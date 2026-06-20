# Negative-Lobe Sink Saturation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `NegativeLobeSinkSaturation.A` is not installed by
`NegativeModeSinkRouting.A` alone.  The routing theorem finds or charges signed
partners; the saturation theorem must also control the negative-lobe carrier by
the usable same-shadow signed readout plus legal costs.

The theorem is the sign-reflected version of positive-lobe carrier saturation.

## 1. Target

Let \(q_N(P)\) be the signed local pre-Cauchy source on the selected packet
family, and let

```math
\zeta_N(P):=\psi_N^-(P)=[-\psi_N(P)]_+,
\qquad
0\le \zeta_N(P)\le1.
\tag{NLS.1}
```

The negative-lobe sink carrier is

```math
S_{\zeta,N}^-(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
\zeta_N(P)[-q_N(P)]_+ .
\tag{NLS.2}
```

The signed lobe readout is

```math
R_{\zeta,N}(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
\zeta_N(P)q_N(P).
\tag{NLS.3}
```

The desired saturation estimate is

```math
\boxed{
S_{\zeta,N}^-(q_N)
\le
C|R_{\zeta,N}(q_N)|
+\operatorname{Legal}_{\zeta,N}
+o_N(1).
}
\tag{NLS.4}
```

or the corresponding estimate with \(R_{\zeta,N}\) replaced by the usable
same-shadow signed readout norm in the negative-lobe test class.

## 2. Sign reflection

Set

```math
r_N(P):=-q_N(P).
\tag{NLS.5}
```

Then

```math
S_{\zeta,N}^-(q_N)
=
\sum_P\zeta_N(P)[r_N(P)]_+,
\tag{NLS.6}
```

and

```math
R_{\zeta,N}(q_N)
=
-\sum_P\zeta_N(P)r_N(P).
\tag{NLS.7}
```

Thus `(NLS.4)` is exactly positive-lobe carrier saturation for the reflected
source \(r_N=-q_N\).  No new sign algebra is available on the negative lobe.

## 3. Routing is weaker than saturation

`NegativeModeSinkRouting.A` proves only a conditional routing statement: a
negative source on the negative lobe must have a retained signed partner, legal
exit, finite donor path, or terminal Zeno donor chain.

That is not the same as `(NLS.4)`.  The retained partner can make the signed
readout vanish while the negative-lobe sink carrier remains positive.

Take two selected packets with

```math
\zeta(P_1)=1,
\qquad
\zeta(P_2)=1,
\tag{NLS.8}
```

and

```math
q(P_1)=-A,
\qquad
q(P_2)=A,
\qquad
A>0.
\tag{NLS.9}
```

Then

```math
R_\zeta(q)=-A+A=0,
\tag{NLS.10}
```

while

```math
S_\zeta^-(q)=A.
\tag{NLS.11}
```

The positive packet \(P_2\) is the signed partner of the negative sink packet
\(P_1\), so routing can identify the partner.  Saturation still fails unless
that retained partner is charged in the same legal ledger or the carrier is
controlled by a stronger same-carrier theorem.

## 4. Exact relation to the donor graph

After the signed mode identity is installed on the same selected shadow, finite
negative-lobe donor chains reduce to retained partner, legal exit, entrance
leaf, or finite endpoint terms.  Those are paid only in the negative-lobe
saturation estimate when they enter the permitted legal/readout ledger.

The infinite branch is unchanged:

```math
P_0\leftarrow P_1\leftarrow P_2\leftarrow\cdots,
\qquad
t_m\uparrow T^\ast.
\tag{NLS.12}
```

It is the terminal Zeno donor-chain obstruction for the reflected source
\(-q_N\) on the lobe weight \(\zeta_N\).

Thus

```math
\boxed{
\text{NegativeLobeSinkSaturation.A}(\zeta)
\Leftarrow
\text{TerminalSignedSaturation.A on }-\zeta q
\Leftarrow
\text{NoFreeTerminalZenoDonorChain.A}
}
\tag{NLS.13}
```

provided the negative-lobe weight is legal on the same selected carrier and the
associated cutoff, lift/projection, and mode commutators are paid.

## Verdict

`NegativeLobeSinkSaturation.A` is not a new Door 2 theorem and it is not
discharged by negative-mode routing alone.  It is positive polar saturation for
the reflected source on the negative lobe:

```math
\sum_P\zeta(P)[-q(P)]_+
\quad\text{must be controlled by}\quad
\sum_P\zeta(P)q(P)
\tag{NLS.14}
```

modulo legal and donor costs.  Current inputs reduce it to lobe-weighted
terminal signed saturation, no-free terminal Zeno donor-chain control, endpoint
carrier polarization, or same-carrier source-square/strict no-waste domination.
