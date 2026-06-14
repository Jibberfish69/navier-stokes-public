# ScaleCriticalTreeCarleson.A square-first-pulse solve attempt: Gate 2 obstruction

## Status

Direct solve attempt for `ScaleCriticalTreeCarleson.A` after the post-reconcile source-wall split.

Claimed status: failed.

## Target

The direct root theorem is

```math
ScaleCriticalTreeCarleson.A:
\quad
\int_I
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le
o_N(1)+Loss_{legal}.
```

Equivalently, in packet language, prove finite square reserve for the donor factors left after `ParentSquareEmbed.A`:

```math
\mathcal R_N(I)
:=
\int_I\sum_{P^-}|A_{P^-}(t)|^2dt
\le o_N(1)+Loss_{legal}.
```

## Installed static reduction

`ParentSquareEmbed.A` gives the static diffuse-parent estimate

```math
\sum_P
\left|\sum_{P^-\prec P}K(P,P^-)A_{P^-}\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
```

Therefore the positive localized source satisfies

```math
\sum_P [B_P\sum_{P^-}K(P,P^-)A_{P^-}]_+
\le
\theta\sum_P D_P
+C_\theta \mathcal R_N(I)
+Loss_{legal}+o_N(1).
```

This successfully removes the bounded-parent selector obstruction.  Diffuse parent clouds are priced into the full square reserve `\mathcal R_N`.

## SquareFirstPulse.A attempt

Assume failure of `ScaleCriticalTreeCarleson.A`.  Then there are terminal windows `W_m` and depths `N_m\to\infty` with

```math
\mathcal R_{N_m}(W_m)\ge\eta>0.
```

Choose the earliest dyadic same-fluid window crossing this square-reserve threshold.

The intended argument is:

```math
\mathcal R_N(W)
\le
Charge(W)
+(1-\delta)\mathcal R_N(Past_s(W))
+Loss_{legal}+o_N(1),
```

then use firstness to remove the past term and use tail dissipation to control the charge.

## Failing gate

The missing theorem is the displayed square-reserve parent-or-charge inequality itself.

The normalized-adjoint parent-or-charge mechanism controls the child packet mass

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2
```

and charges it through `WeightedAdjRes.A`:

```math
\sum_T Charge(T)
\le C\int\sum_{q>N}D_q+o_N(1).
```

That mechanism does not supply a dynamic law for the donor square factor

```math
|A_{P^-}|^2
```

appearing in `\mathcal R_N`.  `ParentSquareEmbed.A` is an operator inequality.  It maps diffuse parentage into `\mathcal R_N`, then stops.  It gives no time evolution, no dissipation, and no residual-charge alternative for `\mathcal R_N` itself.

Therefore selecting the first `\mathcal R_N` pulse removes only earlier reserve pulses.  It does not rule out first-time creation of square reserve on a short terminal heat window.

The scalar pulse obstruction remains:

```math
F_k(t)=A_k h_k^{-1}{\bf 1}_{I_k}(t),\qquad |I_k|=h_k,
```

with

```math
\int F_k=A_k,
\qquad
\int 2^k F_k^2 =2^k A_k^2h_k^{-1}.
```

One can make the first moment small while keeping the scale-critical square reserve positive by taking `h_k` sufficiently small.

## Relation to the cubic normal form attempt

The parabolic cubic normal-form route exposes the same issue.  It creates the active-square density through a quadratic Bellman, then the quartic remainder contains a terminal active-tree coefficient:

```math
|R_{4,N}|
\le C_{R4}
\mathfrak S_N(t)
\mathcal A_N(t)+Loss_{legal},
\qquad
\mathcal A_N(t)=\sum_{j>N}2^{-j}D_j(t)^2.
```

Absorbing this term requires active-tree coefficient Carleson control, which is another presentation of the source wall.

## Verdict

`SquareFirstPulse.A` is a useful route design, but current installed inputs leave Gate 2 open:

```math
\boxed{
\text{no dynamic parent-or-charge inequality is installed for }\mathcal R_N.
}
```

Consequently the direct solve attempt does not prove `ScaleCriticalTreeCarleson.A`.

## Correct next theorem

The live root theorem is sharpened to one of the following:

```math
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge(W)+(1-\delta)\mathcal R_N(Past(W))+Loss_{legal}+o_N(1),
```

or

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Without `SquareReserveEvolution.A` or a rigid Zeno route, `ScaleCriticalTreeCarleson.A` remains open.
