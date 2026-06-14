# MPP NOHOP.A Active-Window Chain Attempt Note

## Status

Failed theorem-facing bounded solve attempt.

This note attacks the final local form of the active-window source-normalization
wall:

```math
NOHOP.A:
\quad
\text{uncharged affine-amplitude terminal hops cannot persist indefinitely}.
```

It does not prove `NOHOP.A`.

## Target

From the local-energy persistence alternative in
`mpp-original-data-to-awg-attempt-note.md`, an uncharged active window

```math
A_R^{aff}\ge a_m,
\qquad
SCF_{norm}^{\nu}(Q_R^\Phi)\ll1
```

forces a comparable earlier active window unless dissipation, local pressure, or
an active reserve is spent.

`NOHOP.A` asks to prove that an infinite terminal chain

```math
Q_{R_{\ell+1}}^\Phi \leadsto Q_{R_\ell}^\Phi,
\qquad
R_\ell\downarrow0,
\qquad
t_\ell\uparrow T_\ast
```

cannot remain uncharged.

## Direct Compactness Attempt

If the chain stayed at one fixed positive scale, finite energy plus compactness
would forbid infinitely many disjoint high-amplitude packets without spending a
raw energy budget. But the `Jump_avg` schedule is terminal and scale-degenerate:
`R_\ell` may shrink to zero and the cylinders may move along the same-fluid
transport.

Raw energy controls

```math
\sup_t\|u(t)\|_2^2
```

and raw dissipation controls

```math
\iint|\nabla u|^2.
```

Neither directly controls the count of scale-normalized affine-amplitude packets
when the radii shrink.

## Local-Energy Iteration Attempt

Iterating the local energy inequality backward gives the recurrence

```math
A_\ell
\le
A_{\ell-1}
+Charge_\ell
+Reserve_\ell.
```

Summing this over the terminal chain telescopes only if the earlier amplitude
chain reaches a fixed entrance time/scale or if the reserve terms are already
known summable. In the terminal `Jump_avg` setting, the chain can keep moving
to earlier adjacent heat-scale windows while the radii also shrink. The current
route has no compactness theorem forcing finite termination of that backward
chain.

## Scalar Model Obstruction

The dyadic shell analogue is

```math
E_j'(t)+c\nu2^{2j}E_j(t)\le F_j(t).
```

An active pulse can be maintained or recreated by the source term `F_j`. A
no-hopping theorem is therefore equivalent to proving that the nonlinear shell
flux cannot source-balance those pulses on the terminal active schedule. That is
the same source-normalization theorem identified in the active-square and
square-source notes.

## Verdict

`NOHOP.A` is not proved from finite energy, pressure Poisson structure, bounded
pack geometry, and same-fluid transport.

The exact remaining primitive is unchanged:

```math
\boxed{
\text{active-window nonlinear source normalization}
}
```

in any of the equivalent forms:

```math
\text{heat-scale square-source estimate},
```

```math
\text{direct active-window Carleson estimate},
```

```math
\text{signed weighted lifted-remainder cancellation plus active-square residual-tail},
```

or

```math
\text{monotone/source-dominance no-pulse theorem}.
```

Thus the no-`Field_avg` `Jump_avg` branch is conditionally closed under
`AWG.A`, but not unconditionally eliminated from current inputs.
