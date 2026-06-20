# Uniform Positive Cone Transversality Source-Mode Factorization

Date: 2026-06-20

## Status

Factorization complete.  This note does not prove
`UniformPositiveConeTransversality.A`.  It gives the exact source-mode route
that would prove it and shows where the current carrier-first mode package is
missing a signed-saturation input.

## 1. Target

Let

```math
K_N
:=
\{q\in C_N^+:\ M_N^+(q)=1\}
\tag{UPT.1}
```

be the normalized selected positive source cone after legal exits, retained
finite signed partners, and finite donor telescoping have been removed.  The
uniform transversality target is

```math
\boxed{
\inf_{q\in K_N}\|L_Nq\|_N\ge c_0>0
\quad\text{uniformly in }N.
}
\tag{UPT.2}
```

This is the same lower bound as `SelectedPositiveConeNoNullReadout.A`, expressed
as uniform separation from the same-shadow signed kernel.

## 2. Source-mode factorization

Let \(\Psi_N\) be a finite legal mode family on the same selected carrier.  For
\(\psi\in\Psi_N\), define the signed mode shadow and positive mode score:

```math
S_N(q,\psi)
:=
\sum_{P\in\mathcal F_N^{sel}} q(P)\psi(P),
\tag{UPT.3}
```

```math
S_N^+(q,\psi)
:=
\sum_{P\in\mathcal F_N^{sel}} [q(P)\psi(P)]_+ .
\tag{UPT.4}
```

The source-mode proof of `(UPT.2)` requires two inequalities.

First, lower capture of the selected positive carrier by a mode-positive score:

```math
\boxed{
\forall q\in K_N\quad
\exists \psi\in\Psi_N:
S_N^+(q,\psi)\ge \alpha_0>0.
}
\tag{UPT.5}
```

Second, same-shadow signed saturation of that mode-positive score by the usable
signed readout:

```math
\boxed{
S_N^+(q,\psi)
\le
C_0\|L_Nq\|_N+\operatorname{Legal}_N+o_N(1)
}
\tag{UPT.6}
```

uniformly for the selected family and the chosen legal modes.

Then `(UPT.2)` follows.  Indeed, choose \(\psi\) from `(UPT.5)`.  Legal exits
and finite donor terms have already been removed on the normalized branch, so
`(UPT.6)` gives

```math
\alpha_0
\le
C_0\|L_Nq\|_N+o_N(1).
\tag{UPT.7}
```

Thus, along the retained subsequence,

```math
\|L_Nq\|_N\ge{\alpha_0\over 2C_0}
\tag{UPT.8}
```

for \(N\) large enough.  This proves uniform positive-cone transversality with
\(c_0=\alpha_0/(2C_0)\).

## 3. What lower capture requires

`(UPT.5)` is the carrier-to-mode direction.  The existing source/mode score
comparison note proves that this direction is not automatic.  It needs source
outside the positive lobe of the chosen mode to be paid:

```math
\sum_{P:\ |\psi(P)|<\kappa}|q(P)|
+
\sum_{P:\ \psi(P)\le-\kappa}|q(P)|
\le
\operatorname{Legal}_{N,\kappa}+o_N(1).
\tag{UPT.9}
```

Equivalently, it needs

```math
\boxed{
\text{NodalZoneSourceEvacuation.A}
+
\text{OppositeSignPositiveSourceEvacuation.A}
+
\text{NegativeModeSinkRouting.A}.
}
\tag{UPT.10}
```

on the same selected native carrier.  Without `(UPT.9)`, a normalized positive
source carrier can sit near a mode nodal set or on the wrong sign lobe, while
the positive mode score misses it.

## 4. What signed saturation requires

`(UPT.6)` is stronger than selecting a good mode.  It forbids cancellation
inside the signed mode shadow after the positive mode score has been formed.

The one-mode cancellation model is

```math
\psi(P_1)=1,\qquad q(P_1)=A,
\tag{UPT.11}
```

```math
\psi(P_2)=1,\qquad q(P_2)=-A,
\qquad A>0.
\tag{UPT.12}
```

Then

```math
S_N^+(q,\psi)=A,
\qquad
S_N(q,\psi)=0.
\tag{UPT.13}
```

The positive mode score is nonzero, but the signed mode readout cancels.  Thus
`(UPT.6)` needs a same-shadow saturation theorem for the mode-weighted selected
ledger:

```math
\boxed{
\text{ModeWeightedSignedSaturation.A}.
}
\tag{UPT.14}
```

Concretely, every negative mode-weighted contribution must retain its signed
partner, pay a legal spill, pay a donor/sink ledger, or enter the same terminal
Zeno donor-chain branch already isolated on Door 1.

## 5. Relation to the carrier-first mode atlas

`NativeCarrierModeAtlas.A + ModeJacobianOnNativeCarrier.A` can supply a finite
family of modes and a signed tangent lower frame only after source-active
tangent observability is proved.  That still does not prove `(UPT.5)` or
`(UPT.6)` on the scalar selected positive carrier.

The full carrier-first route to uniform transversality is therefore

```math
\boxed{
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModePositiveSideCarrierRetention.A}
+
\text{ModeWeightedSignedSaturation.A}
\Longrightarrow
\text{UniformPositiveConeTransversality.A}.
}
\tag{UPT.15}
```

where `ModePositiveSideCarrierRetention.A` is `(UPT.9)`.

This route is not circular only if `ModeWeightedSignedSaturation.A` is proved by
retained signed partners, legal spill, finite donor depletion, a no-free
terminal Zeno donor-chain theorem, or a same-carrier source-square/no-waste
estimate.  Proving it by citing `SelectedPositivePolarSaturation.A` would reuse
the theorem that uniform transversality is meant to supply.

## Verdict

Uniform positive-cone transversality has an exact source-mode factorization:

```math
\boxed{
\text{lower capture of the native positive carrier}
+
\text{signed saturation of the mode-positive score}.
}
\tag{UPT.16}
```

The current mode/Jacobian package can contribute to the lower-capture side only
after nodal-zone, opposite-sign, and negative-sink losses are paid on the same
selected carrier.  The signed-saturation side is the Door 1 signed-current
mismatch in mode-weighted form.  Thus the carrier-first mode route does not
close the forward-gold no-null theorem from current inputs; it reduces it to
`ModePositiveSideCarrierRetention.A + ModeWeightedSignedSaturation.A`.
