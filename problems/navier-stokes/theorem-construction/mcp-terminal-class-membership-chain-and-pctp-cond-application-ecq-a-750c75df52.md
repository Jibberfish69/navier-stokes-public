# Terminal Class-Membership Chain And `PCTP.cond` Application

Status: conditional terminal assembly. `PCTP.cond` applies after the uniform terminal-tail continuation readout is supplied.

## Inputs

The readout route has recovered the repaired pointwise endpoint package on the
same terminal packet:

```math
End_{NS}
:=
END.Pack
\wedge END.PartMargin
\wedge END.Field
\wedge END.TowerBound
\wedge END.Cross
\wedge END.Exh.
```

The class-membership chain supplies the pointwise forward-invariance output:

```math
CFI.A.
```

The terminal contradiction engine is therefore

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

## Chain

Recovered `End_NS` excludes the pointwise endpoint faces only with the repaired
Part response-margin input included:

```math
Dead,
\quad response\text{-}margin\text{-}collapse,
\quad packing\text{-}detached,
\quad tower\text{-}blown,
\quad Jump.
```

Here `END.PartMargin` is the exact hypothesis that the terminal Part predicate
is closed, or that the strict Part response margins remain bounded below on the
same terminal tail. Without that input, `response-margin-collapse` is still a
Part-side endpoint face.

`CFI.A` supplies forward-invariance of the class-membership witness on the
terminal same-fluid branch. Together with the repaired endpoint package, it
excludes a finite first class exit:

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

If the retained class-membership readout additionally supplies a uniform continuation norm

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2,
```

then `PCTP.cond` applies.

## `PCTP.cond`

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`, with zero force.
Let `(u,p)` be the maximal classical solution on `[0,T_*)`. Under the uniform
terminal-tail `H^s`, `s>5/2`, readout above, set

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The periodic `H^s` local well-posedness/relaunch theorem gives a common
lifespan

```math
\tau=\tau(\nu,s,M_s)>0.
```

Choose `t_j\uparrow T_*`. For large `j`,

```math
t_j+\tau>T_*.
```

Relaunching the classical solution at `t_j` extends beyond `T_*`, and uniqueness identifies the relaunched solution with `(u,p)` on the overlap. This contradicts maximality. Hence

```math
T_*=\infty.
```

## Boundary

The conditional endpoint/readout chain has advanced to the exact entry point of `PCTP.cond`. The remaining promotion bridge is the uniform terminal-tail continuation readout:

```math
CM.Readout/ECQ.A
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2.
```

Until that readout is audited for the original maximal solution, `PCTP.hard` remains the active theorem boundary.
