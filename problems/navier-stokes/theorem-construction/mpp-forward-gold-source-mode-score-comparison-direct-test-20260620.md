# Source / Mode Score Comparison Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SourceModeScoreComparison.A` is not installed by the
current source-mode readout package.

The reason is precise: score comparison is two-sided.  The existing
source-resolved mode readout is mainly the direction

```math
\text{positive mode score}
\Longrightarrow
\text{native positive source carrier}.
\tag{SMSC.1}
```

For selector-family identification one also needs the reverse direction:

```math
\text{native positive source carrier}
\Longrightarrow
\text{positive mode score}.
\tag{SMSC.2}
```

The reverse direction fails when positive source sits in the nodal zone or on
the negative side of the selected mode test.

## 1. Target under test

On a selected packet family let

```math
q_m(P)
:=
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt,
\qquad
|\psi_m(P)|\le1.
\tag{SMSC.3}
```

Define the native positive source score and mode score by

```math
s_m^{src}(P):=[q_m(P)]_+,
\qquad
s_m^{mode}(P):=[q_m(P)\psi_m(P)]_+.
\tag{SMSC.4}
```

The comparison needed by `ModeNativeCarrierFamilyIdentification.A` is a
two-sided estimate:

```math
\boxed{
\kappa s_m^{src}(P)
\le
s_m^{mode}(P)+b_m(P),
\qquad
s_m^{mode}(P)
\le
s_m^{src}(P)+b_m(P),
}
\tag{SMSC.5}
```

with

```math
0<\kappa<1,
\qquad
\sum_P b_m(P)\le \operatorname{Legal}^{score}_m+o_m(1).
\tag{SMSC.6}
```

Summing `(SMSC.5)` over packets gives the score comparison used by the selector
identity note.

## 2. Exact sign partition

For fixed \(\kappa\), split the selected family into

```math
\mathcal P_m^+(\kappa)=\{P:\psi_m(P)\ge\kappa\},
\tag{SMSC.7}
```

```math
\mathcal P_m^0(\kappa)=\{P:|\psi_m(P)|<\kappa\},
\tag{SMSC.8}
```

```math
\mathcal P_m^-(\kappa)=\{P:\psi_m(P)\le-\kappa\}.
\tag{SMSC.9}
```

On \(\mathcal P_m^+(\kappa)\), `(SMSC.5)` is automatic with \(b_m(P)=0\):

```math
\kappa[q_m(P)]_+
\le
[q_m(P)\psi_m(P)]_+
\le
[q_m(P)]_+.
\tag{SMSC.10}
```

So the whole theorem is exactly the assertion that the source contribution
outside \(\mathcal P_m^+(\kappa)\) is paid.

## 3. The two failures

First, nodal loss.  If

```math
\psi_m(P)=0,
\qquad
q_m(P)=A,
\qquad
A>0,
\tag{SMSC.11}
```

then

```math
s_m^{src}(P)=A,
\qquad
s_m^{mode}(P)=0.
\tag{SMSC.12}
```

The native positive source score remains while the mode score vanishes.

Second, opposite-side loss.  If

```math
\psi_m(P)=-1,
\qquad
q_m(P)=A,
\qquad
A>0,
\tag{SMSC.13}
```

then again

```math
s_m^{src}(P)=A,
\qquad
s_m^{mode}(P)=0.
\tag{SMSC.14}
```

This failure is not covered by the negative-mode sink model, because the local
source is positive, not negative.  It is the reverse-direction score-comparison
failure.

The one-sided source-resolved readout has the opposite sign obstruction.  If

```math
\psi_m(P)=-1,
\qquad
q_m(P)=-A,
\qquad
A>0,
\tag{SMSC.15}
```

then

```math
s_m^{src}(P)=0,
\qquad
s_m^{mode}(P)=A.
\tag{SMSC.16}
```

This is the negative-mode sink already isolated in the Door 2 notes.

## 4. Conditional comparison theorem

The two-sided comparison follows from the following paid complement estimate:

```math
\boxed{
\sum_{P\in\mathcal P_m^0(\kappa)} |q_m(P)|
+
\sum_{P\in\mathcal P_m^-(\kappa)} |q_m(P)|
\le
\operatorname{Legal}^{comp}_{m,\kappa}+o_m(1).
}
\tag{SMSC.17}
```

Indeed, define

```math
b_m(P)
:=
|q_m(P)|{\bf 1}_{\mathcal P_m^0(\kappa)\cup\mathcal P_m^-(\kappa)}(P).
\tag{SMSC.18}
```

Then `(SMSC.10)` gives `(SMSC.5)` on \(\mathcal P_m^+(\kappa)\), and `(SMSC.18)`
trivially gives `(SMSC.5)` on the complement.  Summing and using `(SMSC.17)`
proves `SourceModeScoreComparison.A`.

Thus

```math
\boxed{
\text{SourceModeScoreComparison.A}
\Leftarrow
\text{ModePositiveSideCarrierRetention.A}.
}
\tag{SMSC.19}
```

where `ModePositiveSideCarrierRetention.A` is exactly `(SMSC.17)`.

## 5. Relation to existing children

The complement estimate splits into two already visible pieces plus one
reverse-direction piece:

```math
\boxed{
\text{ModePositiveSideCarrierRetention.A}
\Leftarrow
\text{NodalZoneSourceEvacuation.A}
+
\text{NegativeModeSinkRouting.A}
+
\text{OppositeSignPositiveSourceEvacuation.A}.
}
\tag{SMSC.20}
```

`NodalZoneSourceEvacuation.A` pays \(\mathcal P_m^0(\kappa)\).

`NegativeModeSinkRouting.A` pays the part of \(\mathcal P_m^-(\kappa)\) where
`q_m(P)<0`, because that part creates positive mode score without native
positive source score.

The additional reverse-direction child is

```math
\boxed{
\text{OppositeSignPositiveSourceEvacuation.A},
}
\tag{SMSC.21}
```

which pays the part of \(\mathcal P_m^-(\kappa)\) where `q_m(P)>0`.  Without it,
native positive source can remain invisible to the selected positive mode score.

This is not a new physical supplier.  It is the missing reverse side of the same
sign-coherent selected-shadow localization problem.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{SourceModeScoreComparison.A}
\Leftarrow
\text{NodalZoneSourceEvacuation.A}
+
\text{NegativeModeSinkRouting.A}
+
\text{OppositeSignPositiveSourceEvacuation.A}.
}
\tag{SMSC.22}
```

The first term returns to same-shadow source-square / super-\(L^1\) / strict
no-waste control plus mode-nodal geometry.  The second term returns to the Door
1 signed-current donor-chain wall.  The third term says the chosen mode
orientation must retain the native positive source carrier on its positive side,
or the selector comparison fails.

## Verdict

`SourceModeScoreComparison.A` is stronger than the existing one-sided
source-resolved mode readout.  It requires source mass to live on the positive
side of the selected mode test, modulo paid nodal and opposite-sign complements.

This refines the previous child chain: `ModeNativeCarrierFamilyIdentification.A`
cannot use `SourceResolvedNativeModeReadout.A` alone.  It needs two-sided
mode/source score comparison, whose missing reverse-direction clause is
`OppositeSignPositiveSourceEvacuation.A`.
