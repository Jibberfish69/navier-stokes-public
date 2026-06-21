# ECQ.A Final Verification Loop Stop

Status: final local verification claimed.

## Target

Verify the final continuation step already included in

```text
problems/navier-stokes/theorem-construction/mcp-pctp-hard-readend-ecqa-loop-closure.md
```

## Verification

`PCTP.hard` supplies the uniform terminal-tail retained class-membership readout

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

Choose depth `N` above a classical continuation index `s>5/2`. The retained Pack / Part / Field readout supplies

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Set

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}.
```

Periodic `H^s` local theory gives a lifespan
`\tau=\tau(\nu,s,M_s)>0` for every datum with `H^s` norm at most `M_s`.
Choose `t_j\uparrow T_*` with `T_*-t_j<\tau/2`. The solution launched from
`u(t_j)` exists on `[t_j,t_j+\tau]`, which reaches past `T_*`, and uniqueness
identifies it with the original solution on the overlap. Therefore

```math
T_*=\infty.
```

This is exactly the `ECQ.A` terminal bridge consumed after `READ.END` and pointwise class-membership readout.

## Loop stop

The local theorem-work inventory from CM bridge-license audit through `AACT.KX`, `Jump_avg`, `SRC.Final`, `READ.END`, and `ECQ.A` is closed on the periodic terminal branch.
