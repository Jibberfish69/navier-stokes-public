# Lobe-Weight Readout Compatibility Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `LobeWeightReadoutCompatibility.A` is not a Navier-Stokes
coercivity theorem and is not supplied by a single signed mode readout.  It is
only a test-class statement: either the usable readout norm contains the two
lobe tests, or the compatibility estimate is false.

This closes the formal side condition in the lobe-weighted saturation assembly.
It does not prove lobe-weighted terminal signed saturation.

## 1. Target

For a legal mode value \(\psi_N(P)\), set

```math
\psi_N^+(P)=[\psi_N(P)]_+,
\qquad
\psi_N^-(P)=[-\psi_N(P)]_+.
\tag{LRC.1}
```

The lobe-weighted saturation assembly uses the readouts

```math
L_{\psi^+,N}q_N,
\qquad
L_{\psi^-,N}(-q_N).
\tag{LRC.2}
```

To express the final estimate using the original mode norm
\(\|L_{\psi,N}q_N\|_N\), one would need

```math
\|L_{\psi^+,N}q_N\|_N
+
\|L_{\psi^-,N}(-q_N)\|_N
\le
C\|L_{\psi,N}q_N\|_N
+
\operatorname{Legal}_{\psi,N}
+
o_N(1).
\tag{LRC.3}
```

This is `LobeWeightReadoutCompatibility.A`.

## 2. The bare signed mode estimate is false

Take two selected packets with

```math
\psi(P_1)=1,
\qquad
\psi(P_2)=-1,
\tag{LRC.4}
```

and

```math
q(P_1)=A,
\qquad
q(P_2)=A,
\qquad
A>0.
\tag{LRC.5}
```

Then the single signed mode readout cancels:

```math
\sum_P q(P)\psi(P)=A-A=0.
\tag{LRC.6}
```

But the two lobe readouts are both nonzero:

```math
\sum_P\psi^+(P)q(P)=A,
\qquad
\sum_P\psi^-(P)(-q(P))=-A.
\tag{LRC.7}
```

Therefore

```math
\left|\sum_P\psi^+(P)q(P)\right|
+
\left|\sum_P\psi^-(P)(-q(P))\right|
=2A.
\tag{LRC.8}
```

No constant \(C\) can make `(LRC.3)` true for the bare signed mode norm.  The
failure is algebraic.  It is independent of pressure, viscosity, cutoff
commutators, or donor-chain bookkeeping.

## 3. Exact legal fix

Define the enriched lobe readout norm by

```math
\|q_N\|_{\psi,\operatorname{lob}}:=
\|L_{\psi,N}q_N\|_N
+
\|L_{\psi^+,N}q_N\|_N
+
\|L_{\psi^-,N}(-q_N)\|_N.
\tag{LRC.9}
```

Then

```math
\|L_{\psi^+,N}q_N\|_N
+
\|L_{\psi^-,N}(-q_N)\|_N
\le
\|q_N\|_{\psi,\operatorname{lob}}.
\tag{LRC.10}
```

This proves `LobeWeightReadoutCompatibility.A` by definition of the enlarged
readout norm.

For packet-label lobe tests, this enlargement introduces no spatial lobe cutoff
inside a packet.  The earlier oriented-lobe compatibility proof shows that sign
change and subfamily restriction inherit the original packet-level mode-test
admissibility.  For soft lobe tests, the earlier soft-lobe test-class proof
gives the corresponding bounded packet-function route.

## 4. What this does not pay

The enriched norm makes the assembly well-typed.  It does not prove

```math
C_{\psi^+,N}^+(q_N)
\le
C\|L_{\psi^+,N}q_N\|_N
+
\operatorname{Legal}_{+,N}
+
o_N(1),
\tag{LRC.11}
```

or

```math
C_{\psi^-,N}^+(-q_N)
\le
C\|L_{\psi^-,N}(-q_N)\|_N
+
\operatorname{Legal}_{-,N}
+
o_N(1).
\tag{LRC.12}
```

Those are the two lobe-weighted selected polar saturation estimates.  They are
blocked by the same two-packet cancellation models already recorded in the
positive-lobe and negative-lobe direct tests.

Thus readout compatibility has only two exact statuses:

```math
\boxed{
\text{bare signed mode readout: false}
}
\tag{LRC.13}
```

and

```math
\boxed{
\text{lobe-enriched readout norm: true by definition of the test class.}
}
\tag{LRC.14}
```

Neither status supplies positive-carrier saturation.

## Verdict

`LobeWeightReadoutCompatibility.A` is discharged only as a legal readout
bookkeeping condition after lobe tests are admitted into the usable readout
norm.  It is false for the original single signed mode readout.  The lobe route
therefore still ends at

```math
\boxed{
\text{LobeWeightedTerminalSignedSaturation.A}(q,\psi^+)
+
\text{LobeWeightedTerminalSignedSaturation.A}(-q,\psi^-).
}
\tag{LRC.15}
```

The remaining obstruction is not lobe readout compatibility.  It is the
positive-carrier saturation/no-free-terminal-Zeno/no-jump theorem on the actual
selected carrier.
