# SimultaneousMaterialFourBodyPacketCoercivity Direct Proof Attempt

## Target

Prove

```math
d\mathfrak L_{4B,N}
+c\bigl(dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{\rm iface}\bigr)
+d\mathcal L_{4B,N}
\le dR_{4B,N}.
\tag{1}
```

## Same-packet setup

Let the simultaneous material packet be

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N)
```

and write its frozen/material linearized evolution schematically as

```math
d\mathfrak U_N = L_\sigma \mathfrak U_N\,d\sigma + d\mathcal E_\sigma,
```

where `dE_sigma` denotes legal lower-order/summable residuals produced by the material Navier--Stokes identities

```math
\partial_s v+A^T\nabla_a q=\nu\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
```

Let

```math
\mathfrak L_{4B,N}=\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle,
\qquad H_\sigma=I+K_{SQ}+K_{QC}+K_{CG}+K_{GS}.
```

Then

```math
d\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,(\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^*H_\sigma)\mathfrak U_N\rangle\,d\sigma
+dR_H,
```

where `dR_H` is legal if the coefficient/log-variation terms are controlled by the same material record.

## Necessary and sufficient signed pointwise inequality

The target estimate `(1)` follows if one proves the signed symmetrizer inequality

```math
-\langle Z,(\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^*H_\sigma)Z\rangle
\ge
c\,W_{clock,\sigma}(Z)+M_{loss,\sigma}(Z)-R_\sigma(Z)
\tag{2}
```

for every same-packet state `Z` on the quotient by harmless Galilean/affine-pressure gauge, where

```math
W_{clock,\sigma}\,d\sigma
= dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{\rm iface}
```

and

```math
M_{loss,\sigma}\,d\sigma=d\mathcal L_{4B,N}.
```

Indeed, substituting `(2)` into the derivative formula gives `(1)`, after absorbing `dR_H+R_sigma d sigma` into `dR_{4B,N}`.

Conversely, if `(1)` holds for all packets with `mathfrak L=<U,H U>`, then the absolutely continuous part of `(1)` forces a weak form of `(2)`. Thus the displayed coercive identity is equivalent to the signed same-packet symmetrizer/commutator inequality.

## What is currently proved

The interface envelope proves only

```math
dK_{orient}^+
\le dD_S^{rad}+dD_Q^w+d\mathcal K_{iface}+dR_{legal}.
\tag{3}
```

This is an algebraic envelope. It identifies every orientation defect as strict tower/viscous loss, a named same-packet interface defect, or legal residual. It does not imply the signed estimate `(2)`, because `(3)` still places `dK_iface` on the residual/envelope side unless the full terminal clock is already produced.

The terminal-clock correction note shows that `dK_iface` is not an independent producer; it is a component of the desired clock:

```math
d\mathfrak C_N
=dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}+\cdots.
```

Therefore `dK_iface` is controlled once `(1)` is proved, but `(1)` is not obtained from the envelope alone.

## Failure point

The attempted proof fails exactly at the signed commutator estimate `(2)`. The required missing theorem is

```math
\boxed{\texttt{SignedFourBodyMaterialSymmetrizer.A}}
```

or equivalently

```math
\boxed{
\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^*H_\sigma
\le
-cW_{clock,\sigma}-M_{loss,\sigma}+R_\sigma
}
```

on the same transported material packet.

## Conclusion

The desired coercive identity is not proved by the existing interface-envelope lemmas. It is exactly equivalent to constructing a positive same-packet symmetrizer `H_sigma=I+K_sigma` whose differentiated material Navier--Stokes commutator has the signed lower bound `(2)`. This is the remaining local theorem, not a consequence already installed in the repo.