# Positive Cone Separation No-Null Normal Form

Date: 2026-06-20

## Status

Normal form complete.  This note does not prove
`SelectedPositiveConeNoNullReadout.A`.  It converts that theorem into an exact
compact-cone separation statement and identifies the missing uniform margin.

## 1. Object

Work after legal exits, retained finite signed partners, and finite donor
telescoping have been removed.  Let

```math
C_N^+
\tag{PCS.1}
```

be the selected positive native source cone at level \(N\).  Let

```math
M_N^+(q)
\tag{PCS.2}
```

be the selected positive native carrier mass, and let

```math
L_N q
\tag{PCS.3}
```

be the usable same-shadow signed readout on the same selected packet family.

The no-null readout theorem is

```math
M_N^+(q_N)=1
\quad\Longrightarrow\quad
\liminf_N \|L_N q_N\|_N>0.
\tag{PCS.4}
```

This is a lower bound on the signed readout before the selected positive carrier
can hide in a kernel.

## 2. Finite compact separation

Define the normalized positive carrier slice

```math
K_N
:=
\{q\in C_N^+:\ M_N^+(q)=1\}.
\tag{PCS.5}
```

Define the separation constant

```math
c_N
:=
\inf_{q\in K_N}\|L_Nq\|_N .
\tag{PCS.6}
```

If \(K_N\) is compact and

```math
K_N\cap\ker L_N=\varnothing,
\tag{PCS.7}
```

then

```math
c_N>0.
\tag{PCS.8}
```

Proof.  If \(c_N=0\), choose \(q_j\in K_N\) with
\(\|L_Nq_j\|_N\to0\).  Compactness gives a convergent subsequence
\(q_j\to q_\ast\in K_N\).  Continuity gives \(L_Nq_\ast=0\), contradicting
\(K_N\cap\ker L_N=\varnothing\).  Hence \(c_N>0\).

This proves only a levelwise lower bound.

## 3. The forward-gold theorem needs a uniform margin

The forward-gold no-null readout needs

```math
\boxed{
\inf_N c_N>0.
}
\tag{PCS.9}
```

Equivalently, the selected positive carrier slices must stay uniformly separated
from the same-shadow signed kernel:

```math
\boxed{
\operatorname{dist}_N(K_N,\ker L_N)\ge \delta_0>0.
}
\tag{PCS.10}
```

after the norms and packet families are fixed.

The levelwise statement

```math
K_N\cap\ker L_N=\varnothing
\tag{PCS.11}
```

does not imply (PCS.9).  The angles between \(K_N\) and \(\ker L_N\) can tend to
zero with \(N\), giving

```math
M_N^+(q_N)=1,
\qquad
\|L_Nq_N\|_N\to0.
\tag{PCS.12}
```

This is exactly the compact positive-cone kernel obstruction.

## 4. Dual certificate form

A finite readout family proves no-null only when it gives a separating
certificate for the normalized selected cone.  In finite dimension, this can be
written as

```math
\forall q\in K_N,\qquad
\|L_Nq\|_N\ge c_0
\tag{PCS.13}
```

with \(c_0\) independent of \(N\).  By finite-dimensional separation, such a
bound is equivalent to excluding every normalized selected carrier from the
zero fiber of the readout map with a uniform margin.

The certificate is not supplied by response lower frames or Bessel bounds,
because those estimates act on \(L_Nq\) after cancellation.  The missing input is
carrier-side transversality before the signed readout has erased the positive
native carrier.

## 5. Relation to existing suppliers

The carrier-first mode route can close the no-null theorem only after it proves
uniform transversality on the actual selected native carrier:

```math
\boxed{
\text{UniformPositiveConeTransversality.A}.
}
\tag{PCS.14}
```

Current named suppliers can feed (PCS.14) only through stronger carrier
identification:

```math
\text{SameLedgerPositiveCarrierFidelity.A}
\tag{PCS.15}
```

or through a carrier-first atlas plus a Jacobian lower bound on the same native
carrier:

```math
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModeSignCoherentShadowLocalization.A}.
\tag{PCS.16}
```

Those inputs remain open on the actual selected positive native carrier.

## Verdict

`SelectedPositiveConeNoNullReadout.A` has the exact normal form

```math
\boxed{
\text{compact normalized selected positive cone}
+
\text{uniform separation from the same-shadow signed kernel}.
}
\tag{PCS.17}
```

The compactness part is a structural condition on the selected carrier family.
The production burden is the uniform separation margin.  Without that margin,
the retained terminal branch is a compact positive native carrier with zero
usable signed readout, which is not a forward-gold proof and is only a CM
Part/Field readout after same-witness admission.
