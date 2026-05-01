# Minimal Final Lemma Inventory

Status: conditional inventory note.

## 1. `TGC.A`

Hypotheses:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon
```

on a bounded-distortion same-fluid terminal tail.

Conclusion:

```math
Jump_{avg}\quad\vee\quad
\text{finite positive-scale SCF-good scheduled averaged cover}.
```

## 2. `AACT.Global.noJump`

Hypotheses:

```math
\neg Jump_{avg}
```

and the finite scheduled cover from `TGC.A`, with local `AACT.KX` estimates.

Conclusion:

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

## 3. `AVG.END.A`

Hypotheses:

```math
CFI.A_{avg}+AVG.END.Cert.
```

Conclusion:

```math
End_{NS,avg}.
```

## 4. `READ.END`

Hypotheses:

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read.
```

Conclusion:

```math
End_{NS}.
```

## 5. `PCTP.hard`

Hypotheses:

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END.
```

Conclusion:

```math
PCTP.hard
```

or equivalently

```math
TTU.A.
```

## 6. `ECQ.A`

Hypotheses:

```math
PCTP.hard
```

and the classical continuation equivalence.

Conclusion:

```math
T_* = \infty.
```

## Chain

```text
TGC.A
=> AACT.Global.noJump
=> AVG.END.A
=> READ.END
=> PCTP.hard
=> ECQ.A
=> T_* = infinity
```