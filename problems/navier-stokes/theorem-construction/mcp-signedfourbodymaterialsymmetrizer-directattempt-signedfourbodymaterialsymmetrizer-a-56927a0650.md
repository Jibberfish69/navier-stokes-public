# Signed Four-Body Material Symmetrizer Direct Attempt

## Target

Construct

```math
H_\sigma=I+K_{SQ}+K_{QC}+K_{CG}+K_{GS}
```

such that the same-packet material evolution operator `L_sigma` satisfies

```math
-\langle Z,(\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^*H_\sigma)Z\rangle
\ge
c\,W_{clock,\sigma}(Z)+M_{loss,\sigma}(Z)-R_\sigma(Z),
\tag{SFS.1}
```

where

```math
W_{clock,\sigma}\,d\sigma
=dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}
```

and

```math
M_{loss,\sigma}\,d\sigma=d\mathcal L_{4B,N}.
```

If `(SFS.1)` holds and `R_sigma d sigma` is summable, then

```math
d\mathfrak L_{4B,N}
+c(dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface})
+d\mathcal L_{4B,N}
\le dR_{4B,N}
```

follows immediately by differentiating

```math
\mathfrak L_{4B,N}=\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle.
```

## Attempted construction

Write the frozen same-material operator schematically as

```math
L_\sigma=A_\sigma-B_\sigma+E_\sigma,
```

where `A_sigma` is the oriented four-body exchange operator, `B_sigma` is the
visible strict loss operator, and `E_sigma` is legal lower-order residual. Then
`H=I+K` gives

```math
-(H L+L^*H)
=2B-(A^*K+KA) + (B^*K+KB) - (E^*H+HE).
```

Thus a sufficient pointwise operator inequality is

```math
2B_\sigma-(A_\sigma^*K_\sigma+K_\sigma A_\sigma)
\ge cW_{clock,\sigma}+M_{loss,\sigma}+Err_\sigma,
\tag{SFS.2}
```

with the remaining terms

```math
\partial_\sigma H_\sigma,
\quad B^*K+KB,
\quad E^*H+HE
```

absorbed by `Err_sigma` and the legal residual.

The four off-diagonal pieces would have to satisfy the cyclic equations

```math
K_{SQ}: S\leftrightarrow Q,
\quad
K_{QC}: Q\leftrightarrow C,
\quad
K_{CG}: C\leftrightarrow G,
\quad
K_{GS}: G\leftrightarrow S,
```

so that the cross terms produce the full clock component `W_clock`, including
`dK_iface`.

## Obstruction

The installed interface-envelope theorem gives only

```math
dK_{orient}^+\le dD_S^{rad}+dD_Q^w+d\mathcal K_{iface}+dR_{legal}.
\tag{SFS.3}
```

This is an unsigned envelope. It does not imply `(SFS.2)`. In `(SFS.2)`, the
same interface terms must appear with the correct sign inside the commutator

```math
-(A^*K+KA).
```

The available envelope identifies where the defects are; it does not construct
the off-diagonal operator `K` whose commutator makes those defects a negative
term in `d\mathfrak L_{4B,N}`.

The usual construction would be an infinite-time/stable Lyapunov symmetrizer,

```math
H_\sigma=\int_0^\infty e^{tL_\sigma^*}W_{clock,\sigma}e^{tL_\sigma}\,dt,
```

but this requires a no-return/stability theorem. Using that here would be
circular unless no-return is independently proved from the same material PDE.

The finite-window Gramian is also insufficient because

```math
L^*G_T+G_TL=e^{TL^*}We^{TL}-W,
```

leaving the endpoint readout with the wrong sign.

## Conclusion

The signed symmetrizer theorem is not proved by the current material-interface
envelope. The exact missing statement is

```math
\boxed{
2B_\sigma-(A_\sigma^*K_\sigma+K_\sigma A_\sigma)
\ge cW_{clock,\sigma}+M_{loss,\sigma}-R_\sigma
}
```

for one same transported material packet, with `H=I+K` positive and
`R_sigma d sigma` summable.

Until this signed commutator inequality is proved, the simultaneous coercive
identity remains open. This is the hard local theorem; it cannot be obtained by
renaming the already-proved interface envelope.