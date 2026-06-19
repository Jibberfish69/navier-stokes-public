# Periodic Clay Terminal-Promotion Theorem

## Status

This note repairs the earlier terminal-promotion claim for the periodic
`T^3`, zero-force Clay branch.  The previous statement spent the installed
Theorem 2.1 class-membership warrant plus `End_NS` as though those inputs alone
excluded a first finite classical endpoint.  That is too weak: compact-subinterval
class membership and endpoint-face typing do not by themselves give the terminal
continuation norm.

The exact theorem here is conditional on the same-branch terminal-tail readout
used by `PCTP.cond`.

## Theorem `PCT.A` (conditional periodic terminal promotion)

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`. Let `(u,p)` be
the maximal classical solution of the three-dimensional incompressible
Navier-Stokes equations with `f=0` on `[0,T_*)`.

Assume the installed Theorem 2.1 class-membership warrant on the periodic
branch:

```math
CFI.A + End_{NS}\Longrightarrow \text{no finite-time class exit}.
```

Assume also that the terminal six-burden route supplies the two inputs in the
recorded order:

```math
LCI.A + FCI.5f \Longrightarrow CSP.A \Longrightarrow OFP.A \Longrightarrow CFI.A,
```

and

```math
DTC\text{-to-TowerBound}+END.Exh+END.Cross+END.Pack+END.Field\Longrightarrow End_{NS}.
```

Finally assume that these terminal-tail inputs produce the same-branch
continuation readout

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty
\qquad\text{for some }s>5/2.
```

Then `T_* = +\infty`.

## Proof

Suppose `T_*<\infty`.  Set

```math
M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Periodic `H^s`, `s>5/2`, local well-posedness gives a lifespan

```math
\tau=\tau(\nu,s,M_s)>0
```

for every restart from a time slice with `\|u(t)\|_{H^s}\le M_s`.  Choose
`t_j\uparrow T_*` with `T_*-t_j<\tau/2`.  Relaunching the same classical
Navier-Stokes solution at `t_j` extends it beyond `T_*`; uniqueness identifies
the relaunched solution with `(u,p)` on the overlap.  This contradicts
maximality.  Hence no finite `T_*` exists.

The class-membership warrant and endpoint package are upstream support only to
the extent that they produce the displayed terminal-tail `H^s` readout on the
same maximal branch.

## Boundary

The proof is still on the original periodic Clay surface: it does not replace
the equation by a regularized, morphic, auxiliary, or downstream export surface.
It also does not claim the whole-space `R^3` branch without a separate
whole-space discharge theorem.

The remaining Clay-level burden is not the relaunch step.  It is `PCTP.hard`:
prove from the original periodic dynamics that the terminal-tail package
supplies the uniform `H^s`, `s>5/2`, continuation readout above, or directly
prove that no first finite endpoint realizes the remaining endpoint faces.

## Matrix effect

- `debt-theorem-upgrade-1-periodic-clay-terminal-promotion-bridge`: reduced to
  `PCTP.cond` plus the terminal-tail readout production burden.
- `debt-theorem-upgrade-2-discharge-the-full-mpp-overlay...`: not discharged by
  this note alone; it requires `PCTP.hard` / `TTU.A` on the original periodic
  branch.
