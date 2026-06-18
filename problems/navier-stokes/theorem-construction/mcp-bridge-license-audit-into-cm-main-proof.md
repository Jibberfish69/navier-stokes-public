# Bridge-License Audit Into CM For Main Proof Support Branches

Status: conditional local audit.

## Canonical CM object

The proof-facing class object is

```math
CM_{N,r,Q}(u,p,\Phi)=Pack_Q(u,\Phi)\wedge Part_{N,Q}(u,p)\wedge Field_{N,r,Q}(u,p).
```

`CMW.A` licenses this object as the analytic witness for membership of the same restricted Navier-Stokes fluid object on the retained window `Q`.

## Required branch bridges

The averaged analytic branch has license through

```math
DTC.A_{avg}\to AVG.RCV.A\to LCI.A_{avg}\to CSP.A_{avg}\to OFP.A_{avg}\to CFI.A_{avg}.
```

The source branch has license through

```math
\operatorname{Hyp}(FFSRC.A)\ \text{or}\ FPCR.C+FSCR.C+FCC.C1+FCC.C1a\to FCI.5f,
```

then through the same collar / one-field / CFI chain.

The field readout branch has license through

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\to Field.Read\to Field_{N,r,Q}.
```

The tower readout branch has license through

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\to DTC.Read\to DTC.A\to DTC\text{-}to\text{-}TowerBound\to END.TowerAmp\to END.TowerBound.
```

The endpoint branch has license through

```math
END.Pack+END.Field+END.TowerBound+END.Cross+END.Exh\to End_{NS}.
```

The terminal readout order is

```math
End_{NS,avg}\to READ.COVER\to Field.Read+DTC.Read\to READ.END\to End_{NS}.
```

The final continuation bridge is

```math
CFI.A+End_{NS}\to\text{absence of finite-time class exit}\to ECQ.A\to T_*=\infty.
```

## Audit decision

The main proof branch list is CM-licensed under the three active gates:

1. repair `AACT.KX` absorption;
2. eliminate `Jump_avg`;
3. verify pressure/source suppliers into `SRC.Final`.

Every support branch used by the main proof now has an explicit bridge into `Pack_Q`, `Part_{N,Q}`, `Field_{N,r,Q}`, `CFI.A`, `End_NS`, or `ECQ.A` on the same retained same-fluid family.
