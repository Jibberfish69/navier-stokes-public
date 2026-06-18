# Terminal Class-Membership Chain And `PCTP.cond` Application

Status: conditional terminal assembly. `PCTP.cond` applies after the uniform terminal-tail continuation readout is supplied.

## Inputs

The readout route has recovered the old endpoint package:

```math
End_{NS}.
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

Recovered `End_NS` removes the old pointwise endpoint faces:

```math
Dead,
\quad packing\text{-}detached,
\quad tower\text{-}blown,
\quad Jump.
```

`CFI.A` supplies forward-invariance of the class-membership witness on the terminal same-fluid branch. Together they exclude a finite first class exit:

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

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`, with zero force. Let `(u,p)` be the maximal classical solution on `[0,T_*)`. Under the uniform terminal-tail `H^s`, `s>5/2`, readout above, the periodic `H^s` local well-posedness/relaunch theorem gives a common lifespan

```math
\tau=\tau\left(\sup_{t<T_*}\|u(t)\|_{H^s}\right)>0.
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
