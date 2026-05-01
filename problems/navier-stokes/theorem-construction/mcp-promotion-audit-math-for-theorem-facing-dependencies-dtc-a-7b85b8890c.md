# Promotion-Audit Math For Theorem-Facing Dependencies

Status: conditional theorem-facing audit.

## Claim under audit

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
```

## Dependency order

`TGC.A` supplies the terminal-good-cover split:

```math
Jump_{avg}\vee\text{finite scheduled SCF-good averaged cover}.
```

On the no-`Jump_avg` branch, `AACT.Global.noJump` consumes the finite cover, local `ATD_m^epsilon`, and local averaged ACT estimates to produce

```math
DTC.A_{avg}.
```

The averaged receiver/source/consumer chain then gives

```math
DTC.A_{avg}
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

`AVG.END.A` consumes

```math
CFI.A_{avg}+AVG.END.Cert
```

and produces

```math
End_{NS,avg}.
```

Only after `End_NS_avg`, the readout layer enters:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

The recovered pointwise endpoint package and the pointwise class route yield

```math
End_{NS}+CFI.A
\Longrightarrow
PCTP.hard.
```

## Type ledger

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

No averaged object is consumed as its pointwise counterpart before the explicit readout bridge.

## Audit conclusion

The theorem-facing dependency order is coherent:

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
```

The mathematical audit supports the local theorem-program chain. It does not itself update release, review, submission, or reproducibility surfaces.