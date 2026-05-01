# Global Selector Plateau Core Result

## Target

Construct a carrier-level core independent of `v_{coh}` such that every fixed collar support satisfies

```math
K_{i,j}(t)
\subseteq
\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{GSP.1}
```

Here

```math
K_{i,j}(t)
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}.
\tag{GSP.2}
```

## Carrier-core hypothesis

Assume the route supplies a carrier-level active core `\mathcal K_j(t)` independent of the test readout `v_{coh}` such that every collar support is contained in it:

```math
K_{i,j}(t)
\subseteq
\mathcal K_j(t)
\qquad\text{for all active }v_{coh}.
\tag{GSP.3}
```

Fix a buffer radius

```math
\delta_j=L2^{-j},
\tag{GSP.4}
```

large enough to dominate the fixed collar width. Define

```math
\mathcal P_j(t):=\mathcal K_j(t)^{+\delta_j},
\qquad
\mathcal S_j(t):=\mathcal K_j(t)^{+2\delta_j}.
\tag{GSP.5}
```

Choose a smooth regularized distance `d_{\mathcal K,j}` to `\mathcal K_j(t)` and a cutoff `\chi` with `\chi=1` on `[0,1]` and `\chi=0` on `[2,\infty)`. Set

```math
w_j(x,t):=\chi\left(\frac{d_{\mathcal K,j}(x,t)}{\delta_j}\right).
\tag{GSP.6}
```

Then

```math
w_j=1\text{ on }\mathcal P_j(t),
\qquad
\operatorname{supp}w_j\subseteq\mathcal S_j(t),
\tag{GSP.7}
```

and

```math
\|\nabla_x^k w_j(\cdot,t)\|_\infty
\le
C_{k,L}2^{kj}.
\tag{GSP.8}
```

## Theorem GSP

Under the carrier-core containment hypothesis `GSP.3`, the global selector construction `GSP.5`--`GSP.6` satisfies the target `GSP.1` for every active collar support.

### Proof

From `GSP.3`, every collar support `K_{i,j}(t)` lies inside `\mathcal K_j(t)`. Since `\mathcal K_j(t)\subseteq\mathcal P_j(t)` by construction, `K_{i,j}(t)\subseteq\mathcal P_j(t)`. The cutoff construction gives `w_j=1` on `\mathcal P_j(t)`. ∎

## Tail convention

For smooth Littlewood-Paley kernels, exact support may be replaced by a core/tail split. The core collar supports must satisfy `GSP.3`; the tails must satisfy the lower-order bound

```math
\|\text{tail}_{i,j}\|_{W^{1,\infty}}
\le
C\Phi_*(\mathcal E_D(X)).
\tag{GSP.9}
```

## Boundary

The construction is complete once `\mathcal K_j(t)` is supplied. The genuinely geometric theorem is therefore the carrier-core containment statement `GSP.3`, independent of the test readout.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-containment-on-fixed-collar-support-result.md`
- `problems/navier-stokes/theorem-construction/weighted-branch-final-closure-from-plateau-result.md`