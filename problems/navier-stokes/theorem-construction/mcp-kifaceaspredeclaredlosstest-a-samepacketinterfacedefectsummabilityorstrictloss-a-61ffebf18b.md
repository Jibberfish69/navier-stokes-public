# KIface as Predeclared Loss Test

## Question

Can the named interface-defect package

```math
d\mathcal K_{\rm iface}
```

be placed into the predeclared full-cycle loss and thereby close
`SamePacketInterfaceDefectSummabilityOrStrictLoss.A` without circularly enlarging
`A_{4B}`?

## Result

No, not from the currently proved envelope alone.

The current algebraic interface envelope is

```math
dK_{\rm orient}^+
\le
 dD_S^{rad}+dD_Q^w+d\mathcal K_{\rm iface}+dR_{\rm legal}.
\tag{1}
```

Equivalently, the currently available simultaneous inequality has the residual
form

```math
dL_{4B,N}+dD_{4B,N}+dA_{4B,N}
\le dR_{4B,N}+d\mathcal K_{\rm iface}.
\tag{2}
```

If one simply declares

```math
d\mathcal L_{4B,N}^{\sharp}
:=d\mathcal L_{4B,N}+d\mathcal K_{\rm iface},
```

then the desired coercive estimate would be

```math
dL_{4B,N}+dD_{4B,N}+d\mathcal K_{\rm iface}+dA_{4B,N}
\le dR_{4B,N}.
\tag{3}
```

But `(2)` does not imply `(3)`. The sign is wrong. In `(2)`,
`d\mathcal K_{\rm iface}` is a right-side residual. Moving it to the left
requires an additional signed theorem, not a change of naming convention.

Thus `d\mathcal K_{\rm iface}` may be included as predeclared strict loss only
if each interface theorem is sharpened from an exact-current-or-defect envelope
into an exact-current-or-loss identity. Concretely, for each interface one needs
one of the following stronger statements:

```math
dK_{ij}^+\le dD_{ij}^{strict}+dR_{ij}^{summable},
```

or

```math
dK_{ij}^+=0
```

on the retained branch, with the non-retained branch producing a left-side
strict loss term by the actual sign of the differentiated material packet.

## Noncircular admissible version

It is noncircular to predeclare the full loss as

```math
d\mathcal L_{4B,N}^{\sharp}
:=dD_S^{rad}+dD_Q^w+dK_{\rm sel}+dK_C^+ + dK_G^+ +\cdots
```

provided the simultaneous PDE identity is directly proved in the form

```math
dL_{4B,N}+dA_{4B,N}+d\mathcal L_{4B,N}^{\sharp}
\le dR_{4B,N},
```

from the differentiated material Navier--Stokes law. But that is precisely the
missing production theorem. It cannot be obtained by taking the already-proved
residual envelope and relabeling the residual as loss.

## Boundary

This test leaves the live target unchanged but sharper:

```math
\texttt{SamePacketInterfaceDefectSummabilityOrStrictLoss.A}
```

must prove that every component of `d\mathcal K_{\rm iface}` is either

1. zero on the retained branch,
2. strict same-packet loss by a signed PDE identity, or
3. a summable same-packet residual.

Only after that can the coercive four-body estimate close.