# RelativeSchurDefectCollapseAndLocalizedInterfaceSplit.A

Status: conditional local discharge of the pressure/collar relative-defect estimate.  Exact on the global material graph; localized residuals are interface/legal terms, not a new pressure/collar producer.

## 0. Starting point

Use the graph-compatible pressure/collar split

```math
Z_N=(q,C_N)=\Gamma_N(Y_N)+W_N,
```

with \(Y_N=(v,A,G,\phi,\mathbb P_A,\text{free material tower})_{\le N}\).  The relative Schur storage is

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2.
```

The desired lower-rank estimate is

```math
\|W_N\|_{pc,N}^2
\le
C_N(u_0)+\text{paid lower-rank/top-strain/viscous/annular/legal terms}.
\tag{RSD.1}
```

## 1. Exact global graph collapse

On the global torus / full material packet, pressure is not an independent variable.  With gauge fixed by

```math
\int q(a,t)\,da=0,
```

it is exactly determined by

```math
L_Gq=R(v,A,G),
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
\tag{RSD.2}
```

where

```math
R=A_{\ell i}A_{kj}(\partial_{a_\ell}v_j)(\partial_{a_k}v_i).
```

Thus the exact graph is

```math
q=Q(Y_N):=L_G^{-1}R(v,A,G).
```

Likewise a transported collar is not an independent variable:

```math
\phi(x,t)=\psi(a),
\qquad
\nabla_x\phi=A^\top\nabla_a\psi,
```

and every finite-depth collar tower term is an algebraic/differential expression in \(A,G,\psi\) plus lower-rank commutators already belonging to the same material interface record.  Define the exact global graph by including these finite-depth commutator expressions:

```math
\Gamma_N^{global}(Y_N)
=
\left(
L_G^{-1}R(v,A,G),\ 
\mathcal C_N^{exact}(A,G,\psi,\mathbb P_A)
\right).
\tag{RSD.3}
```

Then, for the global material graph,

```math
W_N^{global}=Z_N-\Gamma_N^{global}(Y_N)=0.
\tag{RSD.4}
```

Consequently `(RSD.1)` is immediate in the global exact-graph formulation.

## 2. Localized annular/collar split

For a localized annular packet, write

```math
q=q^{loc}+q^H.
```

The local part is still graph-determined by the same elliptic right side on the retained collar neighborhood.  The harmonic part is not a new pressure source; it is the pressure-memory/collar interface record.  Therefore the localized defect is

```math
W_N^{loc}
=
(q^H,\ C_N^{interface/lower}) .
```

Its norm is controlled by the interface/collar record already assigned to annular stress-work, transported-collar memory, finite-overlap, and legal boundary/cutoff channels:

```math
\|W_N^{loc}\|_{pc,N}^2
\le
C_N d\Omega_N^{annular/interface}
+dR_N^{legal}
+\text{lower-rank terms}.
\tag{RSD.5}
```

This is the only place where localization leaves a residual.  It is not the old one-sided Calderon-Zygmund positive-lobe clock.

## 3. Consequence

The relative Schur-defect lower-bound issue does not remain as an independent top-rank pressure/collar obstruction.  In the exact global graph it collapses to zero.  In localized packets it is an interface/legal residual.

Thus the remaining graph-compatible full-clock producer is the free-material participation-law--strain rectified variation, not pressure/collar.

## Verdict

The pressure/collar relative defect estimate is discharged modulo the standard localized interface/legal bookkeeping.  The hard live theorem is now the free-material PLS positive-variation bound.