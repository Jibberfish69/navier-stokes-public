# Selector Plateau Fixed-Collar Buffer Construction Result

## Target

Construct a selector weight `w_j` and plateau set `\mathcal P_j` such that

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})^{+M}
\subseteq
\mathcal P_j,
\qquad
w_j=1\text{ on }\mathcal P_j.
\tag{SPB.1}
```

For smooth Littlewood-Paley cutoffs, support is read in the localized theorem-facing sense: either the exact support after `\widetilde Q_i`, or a fixed rapid-decay support core with the kernel tail placed in the lower-order ledger.

## Collar core

Let

```math
K_{i,j}(t)
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}.
\tag{SPB.2}
```

Fix a buffer radius

```math
\delta_j:=L2^{-j},
\qquad L>0,
\tag{SPB.3}
```

large enough to dominate the fixed multiplier collar width. Define

```math
\mathcal P_j(t):=K_{i,j}(t)^{+\delta_j},
\qquad
\mathcal S_j(t):=K_{i,j}(t)^{+2\delta_j}.
\tag{SPB.4}
```

## Weight construction

Choose a smooth cutoff `\chi:[0,\infty)\to[0,1]` with

```math
\chi(r)=1\text{ for }0\le r\le1,
\qquad
\chi(r)=0\text{ for }r\ge2.
\tag{SPB.5}
```

Let `d_j(x,t)` be a smooth regularized distance to `K_{i,j}(t)` satisfying

```math
c\operatorname{dist}(x,K_{i,j}(t))
\le d_j(x,t)
\le
C\operatorname{dist}(x,K_{i,j}(t))
\tag{SPB.6}
```

and

```math
\|\nabla_x^k d_j(\cdot,t)\|_\infty
\le
C_k\delta_j^{1-k}
\qquad k\ge1
\tag{SPB.7}
```

on the collar annulus. Define

```math
w_j(x,t):=\chi\left(\frac{d_j(x,t)}{\delta_j}\right).
\tag{SPB.8}
```

Then

```math
w_j=1\text{ on }\mathcal P_j(t),
\qquad
\operatorname{supp}w_j\subseteq\mathcal S_j(t),
\tag{SPB.9}
```

and

```math
\|\nabla_x^k w_j(\cdot,t)\|_\infty
\le
C_{k,L}2^{kj}.
\tag{SPB.10}
```

## Theorem SPB

The construction gives fixed-collar plateau containment:

```math
K_{i,j}(t)
\subseteq
\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{SPB.11}
```

Consequently,

```math
w_j=1\text{ on }K_{i,j}(t),
\qquad
(1-w_j)u_{coh}=0\text{ on }K_{i,j}(t).
\tag{SPB.12}
```

The weighted direct branch and weighted collar residual branch both close on the same plateau construction.

## Tail convention

When `P_{\le j}` is implemented by a Schwartz kernel and exact compact support is unavailable, replace `K_{i,j}` by a core support `K_{i,j}^{core}` carrying all terms above the lower-order threshold. The remaining kernel tail is required to satisfy

```math
\|\text{tail}_{i,j}\|_{W^{1,\infty}}
\le
C\Phi(\mathcal E_D(X)).
\tag{SPB.13}
```

Then `SPB.11` holds on the core and the tail is absorbed by the lower-order ledger.

## Boundary

This construction is local to a fixed active collar. A global selector independent of `v_{coh}` requires a prior geometric carrier core whose fixed collar contains all active collar supports.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-plateau-containment-on-fixed-collar-support-result.md`
- `problems/navier-stokes/theorem-construction/weighted-branch-decision-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`