# Opposite-Sign Positive Source Evacuation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `OppositeSignPositiveSourceEvacuation.A` is not installed
by the current source-mode readout, mode-sign localization, gauge, or selector
inputs.

This is the reverse-direction sign obstruction.  Negative-mode sink routing
handles negative source on the negative side of a mode test.  Here the source is
positive, while the mode test is negative.  The native positive source carrier
sees it, but the positive mode score does not.

## 1. Target under test

Let

```math
q_m(P)
:=
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt,
\qquad
|\psi_m(P)|\le1.
\tag{OSPS.1}
```

For fixed \(0<\kappa<1\), define the negative mode lobe

```math
\mathcal P_m^-(\kappa)
:=
\{P:\psi_m(P)\le-\kappa\}.
\tag{OSPS.2}
```

The opposite-sign positive source mass is

```math
O_m^+(\kappa)
:=
\sum_{P\in\mathcal P_m^-(\kappa)}
[q_m(P)]_+.
\tag{OSPS.3}
```

The desired evacuation statement is

```math
\boxed{
O_m^+(\kappa)
\le
\operatorname{Legal}^{opp}_{m,\kappa}+o_m(1).
}
\tag{OSPS.4}
```

This is exactly the missing reverse-direction clause in the two-sided
source/mode score comparison:

```math
\kappa[q_m(P)]_+
\le
[q_m(P)\psi_m(P)]_+ + b_m(P).
\tag{OSPS.5}
```

On \(\mathcal P_m^-(\kappa)\) with \(q_m(P)>0\), the left side is positive and
the mode score is zero.  Thus all such packets must be placed in the error
\(b_m\), and `(OSPS.4)` is the claim that this error is legal.

## 2. Immediate one-packet failure

With one selected packet, set

```math
\psi_m(P)=-1,
\qquad
q_m(P)=A,
\qquad
A>0.
\tag{OSPS.6}
```

Then

```math
[q_m(P)]_+=A,
\qquad
[q_m(P)\psi_m(P)]_+=0.
\tag{OSPS.7}
```

So the native positive source score is nonzero while the positive mode score is
zero.  This violates `(OSPS.5)` unless \(A\) is paid by
`Legal^{opp}_{m,kappa}`.

This example satisfies finite source mass, bounded overlap, and mode-test
admissibility.  It is not a negative-mode sink, because the source has the
positive sign.

## 3. Why flipping the mode sign is not enough

For a single packet, replacing \(\psi_m\) by \(-\psi_m\) fixes `(OSPS.6)`.
For a selected source carrier with mass on both mode lobes, one global sign
choice cannot make both lobes positive.

Take two packets:

```math
\psi_m(P_1)=1,
\qquad
\psi_m(P_2)=-1,
\tag{OSPS.8}
```

and

```math
q_m(P_1)=A,
\qquad
q_m(P_2)=A,
\qquad
A>0.
\tag{OSPS.9}
```

With \(\psi_m\), packet \(P_2\) contributes

```math
[q_m(P_2)]_+=A,
\qquad
[q_m(P_2)\psi_m(P_2)]_+=0.
\tag{OSPS.10}
```

With \(-\psi_m\), packet \(P_1\) has the same failure.  Therefore sign choice
alone does not prove `(OSPS.4)` for the whole selected source carrier.

The obstruction is not orientation only.  It is carrier/lobe alignment.

## 4. What would prove it

There are two genuine ways to pay `(OSPS.4)`.

First, prove positive-lobe concentration of the native source carrier:

```math
\boxed{
\sum_{P:\psi_m(P)<\kappa}
[q_m(P)]_+
\le
\operatorname{Legal}^{lobe}_{m,\kappa}+o_m(1).
}
\tag{OSPS.11}
```

This is the theorem

```math
\boxed{
\text{ModePositiveLobeCarrierConcentration.A}.
}
\tag{OSPS.12}
```

Second, change the selected carrier by splitting it into mode lobes and selecting
the positive lobe as the carrier for that mode:

```math
F_m^{src}
=
F_{m,+}^{src,\psi}
\cup
F_{m,-}^{src,\psi}
\cup
F_{m,0}^{src,\psi},
\tag{OSPS.13}
```

with

```math
\sum_{P\in F_{m,-}^{src,\psi}\cup F_{m,0}^{src,\psi}}
[q_m(P)]_+
\le
\operatorname{Legal}^{split}_{m,\kappa}+o_m(1)
\tag{OSPS.14}
```

for the mode-selected subcarrier.  This is a carrier refinement, not a proof that
the original carrier satisfied `(OSPS.4)`.

## 5. Relation to existing children

`NodalZoneSourceEvacuation.A` pays the small-mode region
\(|\psi_m|<\kappa\).  It does not pay the whole negative lobe
\(\psi_m\le-\kappa\), which can have large reference measure.

`NegativeModeSinkRouting.A` pays negative source on the negative lobe:

```math
q_m(P)<0,
\qquad
\psi_m(P)\le-\kappa.
\tag{OSPS.15}
```

It does not pay positive source on the negative lobe:

```math
q_m(P)>0,
\qquad
\psi_m(P)\le-\kappa.
\tag{OSPS.16}
```

`SourceResolvedNativeModeReadout.A` is one-sided in the opposite direction.  It
can make positive mode score visible in the native source carrier after sign and
sink defects are paid.  It does not force every native positive source packet to
produce positive mode score.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{OppositeSignPositiveSourceEvacuation.A}
\Leftarrow
\text{ModePositiveLobeCarrierConcentration.A}.
}
\tag{OSPS.17}
```

The concentration theorem itself is supplied only by one of the following:

```math
\boxed{
\text{SourceAlignedModeOrientation.A}
+
\text{SingleLobeSourceCarrier.A},
}
\tag{OSPS.18}
```

or

```math
\boxed{
\text{ModeLobeRefinedNativeCarrier.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}.
}
\tag{OSPS.19}
```

The first route proves that the original selected source carrier lies in one
positive mode lobe.  The second route changes the carrier by refining it by mode
lobes and then proves that the refined carrier still controls the modulation
directions and remains legal in the local pre-Cauchy ledger.

## Verdict

`OppositeSignPositiveSourceEvacuation.A` is a real missing reverse-direction
bridge.  It is not supplied by nodal evacuation, negative-mode sink routing, or a
choice of mode sign.

It exposes a sharper fork for score comparison: either prove the native selected
positive source carrier is concentrated in a positive lobe of the selected mode,
or rebuild the carrier/test package after a mode-lobe refinement and pay the
new Jacobian and commutator obligations.
