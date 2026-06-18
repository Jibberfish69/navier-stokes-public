# READ.END Consumption Check

Status: conditional readout-order check.

## Statement

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

## Order

First, `End_NS_avg` removes the averaged jump face. With the strict-margin row `CAVG.J_{epsilon_m/2}`, this gives

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

The strict-margin stability and compactness step yields

```math
READ.COVER:
\text{finite positive-scale SCF-good cover}.
```

Second, on that fixed cover,

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field.
```

Third, on the same fixed cover,

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

This includes the pressure part of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Fourth, the old endpoint matrix can consume the pointwise objects only together
with the repaired Part response-margin input:

```math
Field\Longrightarrow END.Field,
\qquad
DTC.A\Longrightarrow END.TowerBound.
```

The `Pack` and `Part` rows are shared. Therefore

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Boundary

`READ.COVER`, `Field.Read`, and `DTC.Read` are downstream of `End_NS_avg`. They do not construct `AVG.MAIN.A`.
