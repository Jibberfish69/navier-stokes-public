# First-pulse compactness and ancestry kill `FPK.A`

## Status

Local theorem note for the source-drain branch of the principal-flow adjoint route.

Claimed status: conditional. The note proves the first-pulse kill once the localized positive source-pulse measure, threshold-stable compactness, and parent/charge licenses are available on the same packet family.

## Pulse functional and selector

For a parabolic cylinder `Q_r(x,t)=B_r(x)\times(t-r^2,t]`, define

```math
\mathcal P(Q_r(x,t))
=
r^{-1}\int_{t-r^2}^t\int_{B_r(x)}[F^{src}_{>1/r}]_+.
```

Work on a countable dyadic cylinder family

```math
\mathfrak Q
=\{Q_{2^{-j}}(x_{j,a},t_{j,b})\}_{j,a,b},
```

with rational or dyadic centers and times. Order `\mathfrak Q` first by upper time, then by scale, then lexicographically by the spatial/time grid indices. Define `T_n` to be the first cylinder satisfying

```math
\mathcal P(Q_{T_n})\ge\eta.
```

Since every event `\{\mathcal P(Q)\ge\eta\}` is measurable and the search set is countable, this selector is measurable.

## Compactness statement

Rescale around the selected tile:

```math
x=x_n+r_n y,
\qquad
 t=t_n+r_n^2s,
```

where `Q_{T_n}=Q_{r_n}(x_n,t_n)`. Let `\nu_n` be the rescaled positive source-pulse measure. Assume the local source-mass bound

```math
\sup_n \nu_n(K)<\infty
```

for every compact backward cylinder `K\subset \mathbb R^3\times(-\infty,0]`. By local compactness of Radon measures, after passing to a subsequence,

```math
\nu_n\rightharpoonup\nu_*
```

weakly on compact backward cylinders.

The selected cylinder has normalized mass

```math
\nu_n(Q_1(0,0))\ge\eta,
```

 so the limiting object carries nontrivial terminal source residue, up to the
 fixed boundary-null cylinder choice.

## Earliest-pulse exclusion of backward source mass

Fix `a>0`. Suppose the selected source-pulse class has

```math
\nu_*(\{s<-a\})>0.
```

By inner regularity, choose a compact set `K\subset\{s<-a\}` with positive `\nu_*` mass. Cover `K` by finitely many dyadic backward cylinders whose upper times are at most `-a/2`. Threshold stability for the selected pulse class gives one dyadic cylinder `Q^-` with normalized pulse mass at least a fixed retained threshold `\eta'`, where `0<\eta'\le\eta` is chosen before the dyadic selection and depends only on the stability loss of the selected pulse class, not on the approximating index.

In original variables, `Q^-` is a legal source-pulse tile strictly earlier than `T_n`, contradicting the earliest dyadic selection. Therefore

```math
\boxed{\nu_*(\{s<-a\})=0\quad\text{for every }a>0.}
```

Thus every inherited positive source-pulse mass in the ancient limit is concentrated at the terminal slice `s=0` in the selected source-pulse class.

## Backward ancestry contraction

Let `B_m(T_0)` be the unpaid normalized ancestry mass after `m` backward generations from a selected terminal tile `T_0`. The previous gates give the following alternatives for every edge:

1. coefficient-stop or gain-stop edge: converted into weighted residual charge or an earlier source-pulse ancestor;
2. quiet inherited edge: retained in the parent kernel and contracted by the quiet-edge estimate.

The residual-charge alternatives are already paid by `WeightedAdjRes.A`. First-pulse selection removes the earlier source-pulse ancestor alternative in the ancient limit by the slice exclusion above. Hence only quiet inherited edges remain in the unpaid ancestry mass.

The quiet parent-kernel estimate gives a fixed `\delta>0` such that, for every generation,

```math
B_{m+1}(T_0)\le(1-\delta)B_m(T_0)+e_m,
```

where `e_m\to0` along the first-pulse compactness limit for each fixed `m`. Iterating yields

```math
B_m(T_0)
\le(1-\delta)^mB_0(T_0)
+
\sum_{\ell=0}^{m-1}(1-\delta)^{m-1-\ell}e_\ell.
```

For fixed `m`, the error sum tends to zero along the selected sequence. Thus

```math
\limsup_n B_m^{(n)}(T_0)
\le(1-\delta)^mB_0(T_0).
```

Sending `m\to\infty` gives

```math
\boxed{\lim_{m\to\infty}\limsup_n B_m^{(n)}(T_0)=0.}
```

Equivalently, in the notation of the closure chain,

```math
B_m(T_0)
\le(1-\delta)^mB_0(T_0)+o(1),
\qquad
\lim_{m\to\infty}B_m(T_0)=0.
```

This is `FirstPulseKill.A`.

## Boundary of the result

The proof separates the selection/compactness logic from the source-parent construction. Repo source-pulse surfaces record the parent measure and compact-Liouville route as conditional atoms: `ParentConcentrationOrDiffuseCharge.A`, `BackwardDrainFunctional.A`, or `BoundedAncestryClass.A+SourceResidueLiouville.A`. This note supplies the first-pulse kill once those atoms provide the localized positive measure, same-fluid edge fidelity, and compactness required above.

## Downstream use

With `FirstPulseKill.A`, the terminal unpaid ancestry term in the source-drain iteration vanishes. The remaining terms are residual charges controlled by `WeightedAdjRes.A` and quiet parent contributions controlled by `ParentKernel.A`. This is the final input needed for the assembly of `LemmaB.SourceDrain` on the branch-support route.
