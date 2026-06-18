# PCTP.hard Terminal-Tail Uniformization Assembly

## Status

Conditional theorem-program assembly for the live `PCTP.hard` blocker.

This note assembles the averaged route, the terminal readout layer, and the earlier face-reduction notes. Release status remains governed by `proof_promotion_packet`.

## Target

```math
PCTP.hard:
\qquad
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}.
```

Equivalently, no first finite classical endpoint realizes

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

## Step 1: terminal cover dichotomy

The averaged cover branch gives

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{strict averaged-good terminal branch}\vee Jump_{avg}.
```

The cover-degeneration verification identifies zero terminal SCF-good cover radius with `Jump_avg`, so no separate `CoverCollapse_avg` face is needed.

## Step 2: strict branch scheduler

On the strict averaged-good branch, the finite terminal cover has positive radii and bounded overlap. The common scheduler verification gives one finite scheduler partition for every cover element and every parameter in the finite required route set. Therefore local `AACT.KX` runs on all cover elements and sums to

```math
DTC.A_{avg}.
```

## Step 3: averaged receiver and consumers

The averaged receiver chain gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}.
```

With the strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\text{ among those hypotheses,}
```

the averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

## Step 4: averaged endpoint closure

The averaged endpoint package gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The `Jump_avg` alternative from cover degeneration is an averaged endpoint face and is removed only here, downstream of the averaged endpoint theorem.

## Step 5: terminal pointwise readout

After `End_NS_avg`, the readout layer is legal:

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

Then

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

The pressure part of `DTC.Read` uses the local Poisson split plus the energy far-tail estimate; the viscous part uses the `U_{q+2}` readout.

Thus

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Step 6: classical continuation

The previous face assembly reduced all non-tower first faces into tower-blown, and the terminal readout supplies the old pointwise tower package. With `End_NS`, no old endpoint face remains.

The `H^s` continuation conversion then gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2,
```

for finite route depth `N>s+2`.  Set

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}.
```

Periodic \(H^s\) local theory gives a lifespan
\(\tau=\tau(\nu,s,M_s)>0\) for every datum with norm at most \(M_s\).  Choose
\(t_j\uparrow T_*\) with \(T_*-t_j<\tau/2\).  The solution launched from
\(u(t_j)\) exists beyond \(T_*\), and uniqueness identifies it with the original
solution on the overlap.  This contradicts maximality.

## Non-spending gates

This assembly uses the following order:

```math
SCF_{base}\to ATD_m^\varepsilon\to AACT.KX\to DTC.A_{avg}\to CFI.A_{avg}\to End_{NS,avg}\to READ.COVER\to Field.Read+DTC.Read\to End_{NS}.
```

It does not use `READ.COVER`, old pointwise `DTC.A`, old pointwise `Field`, old `CFI.A`, or old `End_NS` upstream of their readout positions.

## Verdict

Within the theorem-program surfaces, `PCTP.hard` is assembled from the averaged cover dichotomy, the common scheduler theorem, the averaged endpoint package, and the terminal readout layer.

Final promotion remains a separate MCP release decision.
