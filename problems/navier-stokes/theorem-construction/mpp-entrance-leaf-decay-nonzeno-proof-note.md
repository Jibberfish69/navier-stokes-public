# MPP EntranceLeafDecay.A Non-Zeno Proof Note

## Status

This note proves the non-Zeno leaf half used in
`mpp-refilltree-wellfounded-direct-attempt-note.md`.

It does not prove `SourcePulseExclusion.A`, because the terminal Zeno branch
remains open.  It does prove that any source-refill ancestry branch reaching a
fixed preterminal entrance surface is harmless.

## Statement

Let `\mathcal T_N(P^0)` be a legal finite source-refill tree rooted at a
terminal source-pulse packet with shell threshold `N`.  Assume every boundary
leaf `v\in\partial\mathcal T_N` lies on a fixed entrance surface of one of the
following types:

1. **preterminal time entrance**

```math
t_v\le T_\ast-\tau
\qquad(\tau>0);
```

2. **positive-scale entrance**

```math
r_v\ge r_\ast>0
```

inside a compact preterminal same-fluid window.

Assume the scheduler has bounded overlap on the entrance leaves.

Then:

```math
\boxed{
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)\to0
\qquad(N\to\infty).
}
\tag{ELD.1}
```

Consequently finite-tree donor telescoping gives:

```math
\boxed{
\sum_{e\in\mathcal T_N}\pi(e)
\le
C_{\mathrm{tel}}
\left(
o_N(1)+\sum_{v\in\mathcal T_N}\ell(v)
\right).
}
\tag{ELD.2}
```

Thus a terminal source-pulse lower bound cannot be supported by a non-Zeno
ancestry tree whose leaves all reach the fixed entrance surface and whose legal
losses are summable.

## Proof

Original smooth data gives a smooth classical solution on every compact
preterminal interval:

```math
[0,T_\ast-\tau]\subset[0,T_\ast).
```

For any `s>0`,

```math
\sup_{t\le T_\ast-\tau}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
\tag{ELD.3}
```

Let `P_{\ge N}` denote the high Littlewood-Paley tail.  From `(ELD.3)`,

```math
\sup_{t\le T_\ast-\tau}\|P_{\ge N}u(t)\|_{L^2}^2
\le
2^{-2sN}
\sup_{t\le T_\ast-\tau}\|u(t)\|_{H^s}^2
\to0.
\tag{ELD.4}
```

The localized leaf energy is dominated by the corresponding global high tail,
up to the bounded overlap and fixed cutoff constants:

```math
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)
\le
C_{\mathrm{leaf}}C_{\mathrm{ov}}
\sup_{t\le T_\ast-\tau}\|P_{\ge N-C}u(t)\|_{L^2}^2.
\tag{ELD.5}
```

This proves `(ELD.1)` for preterminal time entrance.

For positive-scale entrance inside a compact preterminal same-fluid window,
the same argument applies after pulling back by the retained same-fluid chart.
The fixed positive scale and bounded pack distortion give uniform equivalence
between packet-local shell energy and Eulerian high-frequency tail on a compact
preterminal interval.  Hence `(ELD.5)` remains valid with constants depending
only on the entrance packet, the overlap bound, and retained pack distortion.

Finally combine `(ELD.1)` with the finite-tree donor-balance telescoping from
`mpp-two-tower-donor-balance-modulo-refill-note.md`:

```math
\sum_{e\in \mathcal T_N}\pi(e)
\le
C_{\mathrm{tree}}
\left(
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)
+\sum_{v\in\mathcal T_N}\ell(v)
+\operatorname{Boundary}_{overlap}(\mathcal T_N)
\right).
```

Bounded overlap absorbs the boundary term into the same legal-loss ledger.
This gives `(ELD.2)`.

## Export

The non-Zeno branch is discharged:

```math
\boxed{
EntranceLeafDecay.A.
}
```

Therefore `RefillTreeWellFounded.A` is reduced to the terminal Zeno branch:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\vee\quad
ZenoSourceResidueRigidity.A.
}
```
