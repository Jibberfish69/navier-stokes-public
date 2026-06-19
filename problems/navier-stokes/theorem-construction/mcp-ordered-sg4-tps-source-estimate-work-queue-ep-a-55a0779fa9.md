# Ordered SG4 TPS Source-Estimate Work Queue

## Status

Active local branch queue.

The ordered source estimates are:

```text
1. Err_cmp^frame / gamma_J -> 0
2. in-plane anisotropy drain
3. relative Gramian error control
4. lower singular-value floor on positive mass
5. weighted support localization for beta_J
6. nu_J(B_J) -> 0
7. uniform Lp(dnu_J) control for beta_J with p > 2
```

where

```math
\beta_J:=\Lambda_J^{boot}\eta_J^{boot},
\qquad
 d\nu_J:=M_J^2d\mu_J.
```

## Ordered conditional implication chain

```text
Err_cmp^frame/gamma_J -> 0
=> BridgeA
```

```text
in-plane anisotropy drain
+ relative Gramian error control
+ lower singular-value floor on positive mass
=> DG-Line^sharp
```

```text
supp beta_J subset B_J
+ nu_J(B_J) -> 0
+ ||beta_J||_{Lp(dnu_J)} <= C, p > 2
=> BootSquare
```

Therefore

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B
```

This queue does not prove the seven source estimates above.  It records the
ordered downstream implication that becomes available only after those estimates
are supplied.

## Next target

```text
Err_cmp^frame / gamma_J -> 0
```

This is the first source estimate in the queue.
