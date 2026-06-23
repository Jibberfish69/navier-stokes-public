# Residual Non-Summable Interface Defect Identification

## Claim

After the four interface envelope lemmas, retained-branch vanishing, and
non-retained branch-loss classification, the only remaining non-summable defect
is the unsigned non-retained interface-exit measure

```math
d\mathcal K_{\rm iface}^{exit}.
```

It is defined as the restriction of

```math
d\mathcal K_{\rm iface}
```

to intervals/scales where at least one retained exact-current interface
criterion fails.

## Proof of identification

The algebraic envelope gives

```math
dK_{\rm orient}^+
\le dD_S^{rad}+dD_Q^w+d\mathcal K_{\rm iface}+dR_{\rm legal}.
\tag{1}
```

The retained branch theorem gives

```math
d\mathcal K_{\rm iface}=0
```

whenever all four retained interface criteria hold.

The branch-loss theorem gives that every nonzero component of
`d\mathcal K_{\rm iface}` is a strict loss from the retained exact-current
class, i.e. positive failure of one of the same-packet interface graph
conditions.

Therefore `d\mathcal K_{\rm iface}` splits as

```math
d\mathcal K_{\rm iface}
=0\cdot\mathbf 1_{retained}
+d\mathcal K_{\rm iface}^{exit}\cdot\mathbf 1_{nonretained}.
```

No other residual term remains in the envelope except the already legal term
`dR_{legal}` and strict losses `dD_S^{rad}`, `dD_Q^w`.

## Why this is still not closed

The currently proved estimate is still

```math
dL_{4B,N}+dD_{4B,N}+dA_{4B,N}
\le dR_{4B,N}+d\mathcal K_{\rm iface}^{exit}.
\tag{2}
```

The sign of `d\mathcal K_{\rm iface}^{exit}` is residual-side in `(2)`. The
previous test showed that it cannot be moved to the left merely by relabeling it
as loss. To close the gold proof, one needs one of the following new signed PDE
statements:

```math
d\mathcal K_{\rm iface}^{exit}\le d\mathcal L_{4B,N}^{strict}
```

with this strict loss appearing on the left side of the simultaneous material
identity, or

```math
\int_{\sigma_0}^{\infty}d\mathcal K_{\rm iface}^{exit}<\infty.
```

Neither statement is presently derived from the installed material
participation law.

## Final live obstruction

The precise remaining obstruction is therefore

```math
\boxed{
\texttt{SignedInterfaceExitProduction.A}:
\quad
d\mathcal K_{\rm iface}^{exit}
\text{ is produced as left-side same-packet loss, or has summable tail.}
}
```

This is a narrower statement than the previous
`SamePacketInterfaceDefectSummabilityOrStrictLoss.A`. All retained-branch and
classification subclaims have been reduced; the unresolved part is exactly the
signed production or summability of the non-retained interface-exit measure.

## Status

This note identifies a hard mathematical obstruction rather than discharging it.
The MPP smoothness proof is not closed until
`SignedInterfaceExitProduction.A` is proved.