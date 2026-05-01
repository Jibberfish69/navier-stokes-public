# Persistent Carrier Core Construction Result

## Target

Construct the carrier-level core used by the global plateau selector.

Let `\Gamma_j(t)` be the persistent coherent carrier support and let

```math
r_{j,M}:=C_M2^{-j}
\tag{PCC.1}
```

be the fixed collar radius.

## Carrier core

Define

```math
\mathcal K_j(t):=\Gamma_j(t)^{+M}
=
\{x:\operatorname{dist}(x,\Gamma_j(t))\le r_{j,M}\}.
\tag{PCC.2}
```

This core is independent of the test readout `v_{coh}`.

## Plateau set

Choose a plateau buffer

```math
\delta_j:=L2^{-j},
\qquad L>C_M.
\tag{PCC.3}
```

Define

```math
\mathcal P_j(t):=\mathcal K_j(t)^{+\delta_j},
\qquad
\mathcal S_j(t):=\mathcal K_j(t)^{+2\delta_j}.
\tag{PCC.4}
```

Let `d_{\mathcal K,j}` be a regularized distance to `\mathcal K_j(t)` and define

```math
w_j(x,t):=\chi\left(\frac{d_{\mathcal K,j}(x,t)}{\delta_j}\right),
\tag{PCC.5}
```

where `\chi=1` on `[0,1]` and `\chi=0` on `[2,\infty)`.

Then

```math
w_j=1\text{ on }\mathcal P_j(t),
\qquad
\operatorname{supp}w_j\subseteq\mathcal S_j(t),
\tag{PCC.6}
```

and

```math
\|\nabla_x^k w_j\|_\infty
\le C_{k,L}2^{kj}.
\tag{PCC.7}
```

## Containment theorem

Assume the active coherent readout class is carrier-localized:

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})
\subseteq
\Gamma_j(t).
\tag{PCC.8}
```

Then every fixed collar support satisfies

```math
K_{i,j}(t)
:=\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})^{+M}
\subseteq
\mathcal K_j(t)
\subseteq
\mathcal P_j(t).
\tag{PCC.9}
```

Consequently,

```math
w_j=1\text{ on }K_{i,j}(t),
\qquad
(1-w_j)u_{coh}=0\text{ on }K_{i,j}(t).
\tag{PCC.10}
```

## Properness

If `\Gamma_j(t)^{+M}\subsetneq\mathbb R^3`, then the carrier core is proper. If `\Gamma_j(t)^{+M}=\mathbb R^3`, the construction gives the full-space plateau and carries algebraic closure without localization gain.

## Source surfaces

- `problems/navier-stokes/theorem-construction/proper-persistent-carrier-collar-result.md`
- `problems/navier-stokes/theorem-construction/active-coherent-readout-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`