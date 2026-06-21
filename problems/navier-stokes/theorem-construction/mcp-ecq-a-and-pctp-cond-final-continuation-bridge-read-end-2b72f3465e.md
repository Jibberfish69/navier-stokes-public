# ECQ.A and PCTP.cond Final Continuation Bridge

Status: conditional final continuation bridge.

## Inputs

The readout route supplies old pointwise endpoint closure:

```math
End_{NS}.
```

The pointwise class-membership chain supplies

```math
CFI.A.
```

Together these give

```math
OLD.MAIN.A:
CFI.A+End_{NS}
\Longrightarrow
\text{absence of finite-time class exit}.
```

## ECQ.A

The installed continuation equivalence is

```math
ECQ.A:
T_*<\infty
\Longleftrightarrow
\text{finite-time class exit on a retained same-fluid approach window}.
```

Thus

```math
\text{absence of finite-time class exit}
\Longrightarrow
T_*=\infty.
```

## PCTP.cond

The class witness is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

At route depth `N` dominating some `s>5/2`, the installed class readout supplies

```math
CM_{N,r,Q}\text{ persists on the terminal retained cover}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Set \(M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}\).  Periodic \(H^s\) local theory
gives a lifespan \(\tau=\tau(\nu,s,M_s)>0\) for every datum with norm at most
\(M_s\).  Choose \(t_j\uparrow T_*\) with \(T_*-t_j<\tau/2\).  The solution
relaunched from \(u(t_j)\) exists past \(T_*\), and uniqueness identifies it with
the original solution on the overlap. Hence

```math
T_*=\infty.
```

## Final conditional chain

The assembled route is

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

The mathematics in this loop tranche is conditionally assembled through the averaged route and readout bridge. Release/promotion status remains governed by the matrix, audit, review, and release ledgers.
