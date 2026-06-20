# Mode-Weighted Signed Saturation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `ModeWeightedSignedSaturation.A` is not installed by
mode-projected signed readout, finite donor boundary coherence, endpoint
readout polarization, or scalar terminal signed saturation.

The exact algebra shows that this theorem is a lobe-oriented version of the
same selected positive carrier saturation wall.

## 1. Target

Let \(q_N(P)\) be the signed local pre-Cauchy source on the selected packet
family, and let \(\psi_N(P)\) be a legal mode multiplier with
\(|\psi_N(P)|\le1\).  The positive mode-weighted carrier is

```math
M_{\psi,N}^+(q_N)
:=
\sum_{P\in\mathcal F_N^{sel}}
[q_N(P)\psi_N(P)]_+ .
\tag{MWS.1}
```

The desired saturation estimate is

```math
\boxed{
M_{\psi,N}^+(q_N)
\le
C\|L_{\psi,N}q_N\|_N
+\operatorname{Legal}_{\psi,N}
+o_N(1).
}
\tag{MWS.2}
```

Here \(L_{\psi,N}q_N\) is the usable same-shadow signed readout in the mode
test class.

## 2. Exact lobe split

Write

```math
\psi_N^+(P):=[\psi_N(P)]_+,
\qquad
\psi_N^-(P):=[-\psi_N(P)]_+.
\tag{MWS.3}
```

Then pointwise,

```math
[q_N(P)\psi_N(P)]_+
=
\psi_N^+(P)[q_N(P)]_+
+
\psi_N^-(P)[-q_N(P)]_+ .
\tag{MWS.4}
```

Therefore

```math
M_{\psi,N}^+(q_N)
=
\sum_P\psi_N^+(P)[q_N(P)]_+
+
\sum_P\psi_N^-(P)[-q_N(P)]_+ .
\tag{MWS.5}
```

This is the whole sign content.  The mode-positive carrier is the sum of two
lobe carriers:

```math
\boxed{
\text{positive source on the positive mode lobe}
}
\tag{MWS.6}
```

and

```math
\boxed{
\text{negative source on the negative mode lobe}.
}
\tag{MWS.7}
```

The second term is the negative-mode sink branch.

## 3. Why signed readout coherence is insufficient

Finite donor boundary coherence controls signed endpoint readouts such as

```math
\left|
\sum_\alpha a_\alpha
\bigl(\psi(R_\alpha)-\psi(D_\alpha)\bigr)
\right|.
\tag{MWS.8}
```

It does not control the positive mode-weighted carrier `(MWS.1)`.

Take two retained packets with

```math
\psi(P_1)=1,
\qquad
\psi(P_2)=1,
\tag{MWS.9}
```

and

```math
q(P_1)=A,
\qquad
q(P_2)=-A,
\qquad
A>0.
\tag{MWS.10}
```

Then

```math
\sum_P q(P)\psi(P)=0,
\tag{MWS.11}
```

while

```math
M_\psi^+(q)=A.
\tag{MWS.12}
```

So endpoint readout polarization, scalar retained partners, and finite signed
telescoping can all hold while `(MWS.2)` fails.

This is the same positive-part-after-selection obstruction as
`SelectedPositivePolarSaturation.A`, now applied to the mode-weighted ledger.

## 4. Conditional saturation theorem

The estimate `(MWS.2)` follows from two lobe saturation estimates.

Positive lobe:

```math
\sum_P\psi_N^+(P)[q_N(P)]_+
\le
C_+\|L_{\psi,N}q_N\|_N
+\operatorname{Legal}_{+,N}
+o_N(1).
\tag{MWS.13}
```

Negative lobe:

```math
\sum_P\psi_N^-(P)[-q_N(P)]_+
\le
C_-\|L_{\psi,N}q_N\|_N
+\operatorname{Legal}_{-,N}
+o_N(1).
\tag{MWS.14}
```

Adding `(MWS.13)` and `(MWS.14)` and using `(MWS.5)` proves `(MWS.2)` with
\(C=C_++C_-\).

Thus

```math
\boxed{
\text{ModeWeightedSignedSaturation.A}
\Leftarrow
\text{PositiveLobeCarrierSaturation.A}(\psi^+)
+
\text{NegativeLobeSinkSaturation.A}(\psi^-).
}
\tag{MWS.15}
```

## 5. What the two lobe estimates require

`PositiveLobeCarrierSaturation.A` is the Door 1 selected positive carrier
saturation restricted by the lobe weight \(\psi^+\).  It is not supplied by
signed readout coherence.

`NegativeLobeSinkSaturation.A` is the same signed-current accounting applied to
\(-q\) on the negative mode lobe.  Its finite donor part is the
negative-mode-sink donor graph.  Its infinite part is the terminal Zeno donor
chain in the lobe-weighted shadow.

Both lobe estimates are paid by the same kinds of inputs:

```math
\boxed{
\text{retained signed partners}
+
\text{legal spill}
+
\text{finite donor depletion}
+
\text{finite endpoint lobe coherence}
+
\text{no-free terminal Zeno donor-chain control}.
}
\tag{MWS.16}
```

Current inputs pay only the formal finite signed telescoping and legal bounded
test pieces.  They do not install the lobe carrier saturation, endpoint carrier
polarization, or no-free terminal Zeno donor-chain theorem needed for `(MWS.13)`
and `(MWS.14)`.

## Verdict

`ModeWeightedSignedSaturation.A` is not a new independent mode theorem.  It is
the selected positive polar saturation problem applied to the mode-weighted
signed ledger:

```math
[q\psi]_+
=
\psi^+[q]_+
+
\psi^-[-q]_+.
\tag{MWS.17}
```

The finite signed-readout package controls only oriented readouts.  The positive
mode-weighted carrier still needs lobe carrier saturation.  At current input
strength this reduces to

```math
\boxed{
\text{PositiveLobeCarrierSaturation.A}
+
\text{NegativeLobeSinkSaturation.A},
}
\tag{MWS.18}
```

with the same terminal Zeno donor-chain/no-waste/source-square wall on the
unpaid infinite branch.
