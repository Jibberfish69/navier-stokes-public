# ECQ.A Continuation Readout Certification After `READ.END`

Status: conditional final continuation bridge certified.

## Inputs

The averaged route plus readout layer has recovered the old pointwise endpoint package:

```math
End_{NS}.
```

The pointwise terminal class-membership route supplies

```math
CFI.A.
```

Together these give the old main class-exit exclusion:

```math
OLD.MAIN.A:
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

## ECQ.A

The installed continuation bridge is

```math
ECQ.A:
T_*<\infty
\Longleftrightarrow
\text{finite-time class exit on a retained same-fluid approach window}.
```

Equivalently,

```math
\text{absence of finite-time class exit}
\Longrightarrow
T_*=\infty.
```

## Certification

The class witness is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

The route depth `N` is chosen large enough to dominate a classical continuation index

```math
s>5/2.
```

Persistence of `CM` on the retained same-fluid cover gives the continuation readout

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The `H^s`, `s>5/2`, local theory then gives a common lifespan

```math
\tau=\tau\left(\sup_{t<T_*}\|u(t)\|_{H^s}\right)>0.
```

For any sequence `t_j\uparrow T_*`, large `j` satisfies

```math
t_j+\tau>T_*.
```

The relaunched classical solution agrees with the original solution on the overlap by uniqueness and extends past `T_*`. Hence finite `T_*` forces a class exit. Therefore absence of class exit gives

```math
T_*=\infty.
```

## Final route implication

The certified terminal route is

```math
AVG.MAIN.A
\Longrightarrow
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

Then

```math
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

Finally,

```math
OLD.MAIN.A+ECQ.A
\Longrightarrow
T_*=\infty.
```

## Boundary

`ECQ.A` is terminal in the dependency order. It is not used to build `SCF_base`, `ATD_m^\varepsilon`, `AACT.KX`, `AVG.RCV.A`, `CFI.A_avg`, `End_NS_avg`, `READ.COVER`, `Field.Read`, `DTC.Read`, or `READ.END`.

The remaining administrative item is to update the proof matrix and review surfaces if the averaged route is promoted beyond conditional status.
